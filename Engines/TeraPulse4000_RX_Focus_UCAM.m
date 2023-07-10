%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The dotTHz project, 2023 TAG, University of Cambridge
% TeraPulse4000_RX_Focus_UCAM.m for the Cambridge THz converter
% Reflection mode measurement data extraction script
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Tcell = TeraPulse4000_RX_Focus_UCAM(PRJ_count,fullpathname,DEBUGMsgLabel,uiFigure,Tcell)

            % peak location is calcuated based on the center position of
            % two points at maxPer of the maximum value.
            maxPer = 0.70;
            startRowLoc = 18;
            idxStr = 1;
            
            for PRJcnt = 1:PRJ_count
                fullpath = fullpathname{PRJcnt};
                
                if isempty(fullpath)
                     return;
                end
                
                % extracting data from TeraPulse prject file
                HDFDataSet='/TerapulseDocument/Measurements/Spectra Data';
   
                if isempty(fullpath)
                         return;
                end
                
                DEBUGMsgLabel.Text = 'Loading....';
                drawnow
                
                % extract sample data from HDF5 project file
                try
                    HDFDataInfo = h5info(fullpath, HDFDataSet);
                catch ME
                    fig = uiFigure;
                    uialert(fig,'Incorrect HDF5 Data Set','Warning');
                    DEBUGMsgLabel.Text = 'Loading cancelled';
                    return;
                end
                
                assignin('base',"HDFinfo",HDFDataInfo);
                
                MeasCount = size(HDFDataInfo.Groups,1);
        
                for idx=1:MeasCount
                    groupName = HDFDataInfo.Groups(idx).Name;
                    %HDFSet_baselineX =strcat(groupName,'/baseline/sample/xdata');
                    HDFSet_baselineY =strcat(groupName,'/baseline/sample/ydata');
                    HDFSet_sampleX =strcat(groupName,'/sample/xdata');
                    HDFSet_sampleY =strcat(groupName,'/sample/ydata');
                    
                    settingInfo = h5readatt(fullpath,strcat(groupName,"/sample"),'UserScanSettings');
                    waveformRate = str2num(extractBefore(extractAfter(settingInfo,'waveform_rate":'),'}'));
                    coaverage = str2num(extractBefore(extractAfter(settingInfo,'coaverages":'),','));
                    description = char(extractBefore(extractAfter(settingInfo,'description":"'),'",'));
                    ScanStartDateTime = char(extractBefore(extractAfter(settingInfo,'ScanStartDateTime":"'),'.'));
                    measurementMode = 'RX';


                    try
                            sampleName = char(HDFDataInfo.Groups(idx).Groups(2).Attributes(9).Value); 

                    catch ME
                        try
                            sampleName = char(HDFDataInfo.Groups(idx).Groups(1).Attributes(9).Value);
                            %sampleName = char(HDFDataInfo.Groups(idx).Groups(1).Attributes(19).Value);
                        catch ME
                            fig = uiFigure;
                            uialert(fig,'Please check the measurement mode.','Warning');
                            DEBUGMsgLabel.Text = 'Loading aborted';
                            return
                        end
                    end                        

                    try
                        thickness = char(extractBefore(extractAfter(extractAfter(sampleName,'_'),'_'),'mm'));
                        thickness = str2num(thickness);
                    catch ME
                        thickness = 0;
                    end

                    %baseTime = h5read(fullpath,HDFSet_baselineX);
                    baseSig =  h5read(fullpath,HDFSet_baselineY);
                    samTime = h5read(fullpath,HDFSet_sampleX);
                    samSig = h5read(fullpath,HDFSet_sampleY);
                    samSig = samSig - baseSig;
                    scanLength = length(samTime);
                    xSpacing = mean(diff(samTime));
                    timeDelay = 0;

                    Tcell{1,MeasCount-idx+idxStr} = MeasCount-idx+idxStr;
                    Tcell{2,MeasCount-idx+idxStr} = sampleName;
                    Tcell{3,MeasCount-idx+idxStr} = description;

                    Tcell{4,MeasCount-idx+idxStr} = [];
                    Tcell{5,MeasCount-idx+idxStr} = [];
                    Tcell{6,MeasCount-idx+idxStr} = samTime;
                    Tcell{7,MeasCount-idx+idxStr} = samSig;

                    Tcell{8,MeasCount-idx+idxStr} = 0; % instrument profile
                    Tcell{9,MeasCount-idx+idxStr} = 0; % laboratory profile

                    Tcell{10,MeasCount-idx+idxStr} = ScanStartDateTime;
                    Tcell{11,MeasCount-idx+idxStr} = measurementMode;
                    Tcell{12,MeasCount-idx+idxStr} = 0; % refractive index
                    Tcell{13,MeasCount-idx+idxStr} = timeDelay; % time dalay (ps)
                    Tcell{14,MeasCount-idx+idxStr} = thickness; % thickness (mm)
                    Tcell{15,MeasCount-idx+idxStr} = 0; % weight (mg)
                    Tcell{16,MeasCount-idx+idxStr} = 0; % temperature (ps)
                    Tcell{17,MeasCount-idx+idxStr} = 0; % concentration(%)
                    Tcell{18,MeasCount-idx+idxStr} = char('*'); % phase
                    Tcell{19,MeasCount-idx+idxStr} = char('0,0,0'); % cooridnate (x,y,z) (string to vector conversion needed)

                    Tcell{20,MeasCount-idx+idxStr} = 0; % numeric data extension
                    Tcell{21,MeasCount-idx+idxStr} = char('*'); % text data extension
                    Tcell{22,MeasCount-idx+idxStr} = char('0,0,0'); % vector data extension (string to vector conversion needed)

                    
                    progressP = idx/MeasCount*100;
                    progressP = num2str(progressP,'%.0f');
                    progressP = strcat("Loading: ", progressP,"%");
                    DEBUGMsgLabel.Text = progressP;
                    drawnow
                end
                DEBUGMsgLabel.Text = "Complete conversion";                
                idxStr = idxStr + MeasCount;
                %assignin("base","Tcell",Tcell);
            end
end