%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The dotTHz project 2023
% TeraPulse4000_RX_Focus_UCAM.m file for CaTx Engine
% Coded by Terahertz Applications Group, University of Cambridge
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Tcell = TeraPulse4000_RX_UCAM_CKL(PRJ_count,fullpathname,DEBUGMsgLabel,uiFigure,Tcell)

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
                catch
                    uialert(uiFigure,'Incorrect HDF5 Data Set','Warning');
                    DEBUGMsgLabel.Text = 'Loading Cancelled';
                    return;
                end
                
                % assignin('base',"HDFinfo",HDFDataInfo);
                
                MeasCount = size(HDFDataInfo.Groups,1);
        
                for idx=1:MeasCount
                    groupName = HDFDataInfo.Groups(idx).Name;
                    HDFSet_baselineX =strcat(groupName,'/baseline/sample/xdata');
                    HDFSet_baselineY =strcat(groupName,'/baseline/sample/ydata');
                    HDFSet_referenceX =strcat(groupName,'/reference/sample/xdata');
                    HDFSet_referenceY =strcat(groupName,'/reference/sample/ydata');
                    HDFSet_sampleX =strcat(groupName,'/sample/xdata');
                    HDFSet_sampleY =strcat(groupName,'/sample/ydata');
                    
                    settingInfo = h5readatt(fullpath,strcat(groupName,"/sample"),'UserScanSettings');
                    waveformRate = str2num(extractBefore(extractAfter(settingInfo,'waveform_rate":'),'}'));
                    coaverage = str2num(extractBefore(extractAfter(settingInfo,'coaverages":'),','));
                    description = char(extractBefore(extractAfter(settingInfo,'description":"'),'",'));
                    time = char(extractBefore(extractAfter(settingInfo,'ScanStartDateTime":"'),'.'));
                    dsDescription = "Sample, Reference, Baseline"; % Reference description
                    mode = "THz-Imaging/Reflection";

                    try
                            %sampleName = char(HDFDataInfo.Groups(idx).Groups(2).Attributes(9).Value); 
                            sampleName = char(HDFDataInfo.Groups(idx).Groups(3).Attributes(9).Value); 

                    catch ME
                        try
                            sampleName = char(HDFDataInfo.Groups(idx).Groups(1).Attributes(9).Value);
                            %sampleName = char(HDFDataInfo.Groups(idx).Groups(1).Attributes(19).Value);
                        catch ME
                            fig = uiFigure;
                            uialert(fig,'Please check the measurement mode.','Warning');
                            DEBUGMsgLabel.Text = 'Loading Aborted';
                            return
                        end
                    end                        

                    % metadata description, each item is corresponding
                    % metadata entries sequentially.
                    mdDescription = "Thickness (mm), Refractive Index";

                    try
                        thickness = char(extractBefore(extractAfter(extractAfter(sampleName,'_'),'_'),'mm'));
                        thickness = str2num(thickness);
                    catch ME
                        thickness = 0;
                    end

                    
                    baseTime = h5read(fullpath,HDFSet_baselineX);
                    baseSig =  h5read(fullpath,HDFSet_baselineY);
                    refTime = h5read(fullpath,HDFSet_referenceX);
                    refSig =  h5read(fullpath,HDFSet_referenceY);
                    samTime = h5read(fullpath,HDFSet_sampleX);
                    samSig = h5read(fullpath,HDFSet_sampleY);
                    samSig = samSig - baseSig;
                    scanLength = length(samTime);
                    xSpacing = mean(diff(samTime));
                    timeDelay = 0;

                    md1 = thickness;
                    md2 = []; % optional refractive index
                    md3 = [];
                    md4 = [];
                    md5 = [];

                    ds1 = [samTime;samSig];
                    ds2 = [refTime;refSig];
                    ds3 = [baseTime;baseSig];
                    ds4 = [];

                    Tcell{1,MeasCount-idx+idxStr} = MeasCount-idx+idxStr;
                    Tcell{2,MeasCount-idx+idxStr} = sampleName;
                    Tcell{3,MeasCount-idx+idxStr} = description;
                    Tcell{4,MeasCount-idx+idxStr} = 0; % Instrument profile
                    Tcell{5,MeasCount-idx+idxStr} = 0; % User profile

                    Tcell{6,MeasCount-idx+idxStr} = time; % measurement start time
                    Tcell{7,MeasCount-idx+idxStr} = mode; % THz-TDS/THz-Imaging/Transmission/Reflection
                    Tcell{8,MeasCount-idx+idxStr} = []; % coordinates
                    Tcell{9,MeasCount-idx+idxStr} = mdDescription; % metadata description
                    Tcell{10,MeasCount-idx+idxStr} = md1;
                    Tcell{11,MeasCount-idx+idxStr} = md2;
                    Tcell{12,MeasCount-idx+idxStr} = md3;
                    Tcell{13,MeasCount-idx+idxStr} = md4;
                    Tcell{14,MeasCount-idx+idxStr} = md5;

                    Tcell{15,MeasCount-idx+idxStr} = []; % not used
                    Tcell{16,MeasCount-idx+idxStr} = []; % not used
                    Tcell{17,MeasCount-idx+idxStr} = []; % dotTHz version is added by CaTx

                    Tcell{18,MeasCount-idx+idxStr} = dsDescription; % dataset description
                    Tcell{19,MeasCount-idx+idxStr} = ds1;
                    Tcell{20,MeasCount-idx+idxStr} = ds2;
                    Tcell{21,MeasCount-idx+idxStr} = ds3;
                    Tcell{22,MeasCount-idx+idxStr} = ds4;
                    
                    progressP = idx/MeasCount*100;
                    progressP = num2str(progressP,'%.0f');
                    progressP = strcat("Loading: ", progressP,"%");
                    DEBUGMsgLabel.Text = progressP;
                    drawnow
                end
                DEBUGMsgLabel.Text = "Complete Conversion";                
                idxStr = idxStr + MeasCount;
                %assignin("base","Tcell",Tcell);
            end
end