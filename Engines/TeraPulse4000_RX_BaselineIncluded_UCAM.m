%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The dotTHz project 2023
% TeraPulse4000_RX_Focus_UCAM.m file for CaTx Engine
% Coded by Terahertz Applications Group, University of Cambridge
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Tcell = TeraPulse4000_RX_BaselineIncluded_UCAM(PRJ_count,fullpathname,DEBUGMsgLabel,uiFigure,Tcell)

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
                    DEBUGMsgLabel.Text = 'Loading Cancelled';
                    return;
                end
                
                assignin('base',"HDFinfo",HDFDataInfo);
                
                MeasCount = size(HDFDataInfo.Groups,1);
        
                for idx=1:MeasCount
                    groupName = HDFDataInfo.Groups(idx).Name;
                    HDFSet_baselineX =strcat(groupName,'/baseline/sample/xdata');
                    HDFSet_baselineY =strcat(groupName,'/baseline/sample/ydata');
                    HDFSet_sampleX =strcat(groupName,'/sample/xdata');
                    HDFSet_sampleY =strcat(groupName,'/sample/ydata');
                    
                    settingInfo = h5readatt(fullpath,strcat(groupName,"/sample"),'UserScanSettings');
                    waveformRate = str2num(extractBefore(extractAfter(settingInfo,'waveform_rate":'),'}'));
                    coaverage = str2num(extractBefore(extractAfter(settingInfo,'coaverages":'),','));
                    description = char(extractBefore(extractAfter(settingInfo,'description":"'),'",'));
                    scanStartDateTime = char(extractBefore(extractAfter(settingInfo,'ScanStartDateTime":"'),'.'));
                    dsDescription = "Sample"; % Reference description
                    date = char(extractBefore(scanStartDateTime,'T'));
                    time = char(extractAfter(scanStartDateTime,'T'));
                    mode = "THz-Imaging/Reflection";

                    try
                            %sampleName = char(HDFDataInfo.Groups(idx).Groups(2).Attributes(9).Value);
                            sampleName = strcat("sample",idx);
                    catch ME
                        try
                            sampleName = char(HDFDataInfo.Groups(idx).Groups(1).Attributes(9).Value)
                            %sampleName = char(HDFDataInfo.Groups(idx).Groups(1).Attributes(19).Value);
                        catch ME
                            %fig = app.CaTxUIFigure;
                            %uialert(fig,'Please check the measurement mode.','Warning');
                            %DEBUGMsgLabel.Text = 'Loading Aborted';
                            return
                        end
                    end                        

                    % metadata description, each item is corresponding
                    % metadata entries sequentially.
                    mtDescription = "Thickness (mm), Refractive Index";

                    try
                        thickness = char(extractBefore(extractAfter(extractAfter(sampleName,'_'),'_'),'mm'));
                        thickness = str2num(thickness);
                    catch ME
                        thickness = 0;
                    end

                    baseTime = h5read(fullpath,HDFSet_baselineX);
                    baseSig =  h5read(fullpath,HDFSet_baselineY);
                    samTime = h5read(fullpath,HDFSet_sampleX);
                    samSig = h5read(fullpath,HDFSet_sampleY);
                    samSig = samSig - baseSig;
                    scanLength = length(samTime);
                    xSpacing = mean(diff(samTime));
                    timeDelay = 0;

                    mt1 = thickness;
                    mt2 = []; % optional refractive index
                    mt3 = [];
                    mt4 = [];

                    Tcell{1,MeasCount-idx+idxStr} = MeasCount-idx+idxStr;
                    Tcell{2,MeasCount-idx+idxStr} = sampleName;
                    Tcell{3,MeasCount-idx+idxStr} = description;
                    Tcell{4,MeasCount-idx+idxStr} = 0; % Instrument profile
                    Tcell{5,MeasCount-idx+idxStr} = 0; % User profile

                    Tcell{6,MeasCount-idx+idxStr} = date; % measurement start date
                    Tcell{7,MeasCount-idx+idxStr} = time; % measurement start time
                    Tcell{8,MeasCount-idx+idxStr} = mode; % THz-TDS/THz-Imaging/Transmission/Reflection
                    Tcell{9,MeasCount-idx+idxStr} = []; % coordinates
                    Tcell{10,MeasCount-idx+idxStr} = mtDescription; % metadata description
                    Tcell{11,MeasCount-idx+idxStr} = mt1; % metadata 1 value
                    Tcell{12,MeasCount-idx+idxStr} = mt2; % metadata 2 value
                    Tcell{13,MeasCount-idx+idxStr} = mt3; % metadata 3 value
                    Tcell{14,MeasCount-idx+idxStr} = mt4; % metadata 4 value

                    Tcell{15,MeasCount-idx+idxStr} = []; % not used
                    Tcell{16,MeasCount-idx+idxStr} = []; % not used
                    Tcell{17,MeasCount-idx+idxStr} = []; % dotTHz version is added by CaTx

                    Tcell{18,MeasCount-idx+idxStr} = dsDescription; % dataset description
                    Tcell{19,MeasCount-idx+idxStr} = [samTime;samSig];
                    Tcell{20,MeasCount-idx+idxStr} = []; % not used
                    Tcell{21,MeasCount-idx+idxStr} = []; % not used
                    Tcell{22,MeasCount-idx+idxStr} = []; % not used
                    
                    progressP = idx/MeasCount*100;
                    progressP = num2str(progressP,'%.0f');
                    progressP = strcat("Loading: ", progressP,"%");
                    DEBUGMsgLabel.Text = progressP;
                    drawnow
                end
                DEBUGMsgLabel.Text = "Complete Conversion";                
                idxStr = idxStr + MeasCount;
                assignin("base","Tcell",Tcell);
            end
end