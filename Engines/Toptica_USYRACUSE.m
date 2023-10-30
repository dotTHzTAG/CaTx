%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% the dotTHz project, 2023
% MenloSystems_UCAM.m file for CaTx Engine
% Coded by Terahertz Applications Group, University of Cambridge
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Tcell = Toptica_UCAM(PRJ_count,fullpathname,DEBUGMsgLabel,uiFigure,Tcell)
           
            for PRJcnt = 1:PRJ_count
                fullpath = fullpathname{PRJcnt};
                
                if isempty(fullpath)
                     return;
                end
                
                % extract data from Toptica csv files
                   
                if isempty(fullpath)
                         return;
                end
                
                DEBUGMsgLabel.Text = 'Loading....';
                drawnow
                
                try
                    datMat = csvread(fullpath,1,0);
                    samTime = datMat(:,1)';
                    samTime = samTime - samTime(1);
                    samSig = datMat(:,2)';
                    if isequal(size(datMat,2),3)
                        refTime = samTime;
                        refSig = datMat(:,3)';
                    else
                        refTime = [];
                        refSig = [];
                    end
                    [~,sampleName,~] = fileparts(fullpath);                    
                catch ME
                    fig = uiFigure;
                    uialert(fig,'Incorrect Data Set','Warning');
                    DEBUGMsgLabel.Text = 'Loading Cancelled';
                    return;
                end

                description = "";
                date = "";
                time = "";
                mode = "";
                mdDescription = "Thickness (mm), Temperature (K)";
                dsDescription = "ds1:Sample, ds2:Reference "; % dataset description
                md1 = [];
                md2 = [];
                md3 = [];
                md4 = [];
                ds1 = [samTime;samSig];
                ds2 = [refTime;refSig];
                ds3 = [];
                ds4 = [];

                scanLength = length(refTime);
                xSpacing = mean(diff(refTime));

                Tcell{1,PRJcnt} = PRJcnt;
                Tcell{2,PRJcnt} = sampleName;
                Tcell{3,PRJcnt} = description;
                Tcell{4,PRJcnt} = 0; % Instrument profile
                Tcell{5,PRJcnt} = 0; % User profile

                Tcell{6,PRJcnt} = date; % measurement start date
                Tcell{7,PRJcnt} = time; % measurement start time
                Tcell{8,PRJcnt} = mode; % THz-TDS/THz-Imaging/Transmission/Reflection
                Tcell{9,PRJcnt} = []; % coordinates
                Tcell{10,PRJcnt} = mdDescription; % metadata description
                Tcell{11,PRJcnt} = md1; % thickness (mm)
                Tcell{12,PRJcnt} = md2; % temperature (K)
                Tcell{13,PRJcnt} = md3; % weight (mg)
                Tcell{14,PRJcnt} = md4; % concentration  (%)

                Tcell{15,PRJcnt} = []; % not used
                Tcell{16,PRJcnt} = []; % not used
                Tcell{17,PRJcnt} = []; % not used

                Tcell{18,PRJcnt} = dsDescription; % dataset description
                Tcell{19,PRJcnt} = ds1;
                Tcell{20,PRJcnt} = ds2;
                Tcell{21,PRJcnt} = ds3;
                Tcell{22,PRJcnt} = ds4;
                
                progressP = PRJcnt/PRJ_count*100;
                progressP = num2str(progressP,'%.0f');
                progressP = strcat("Loading: ", progressP,"%");
                DEBUGMsgLabel.Text = progressP;
                drawnow          
            end

            DEBUGMsgLabel.Text = "Complete Conversion";
end