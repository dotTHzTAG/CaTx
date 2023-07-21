%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% the dotTHz project 2023
% MenloSystems_UCAM.m file for CaTx Engine
% Coded by Terahertz Applications Group, University of Cambridge
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Tcell = MenloSystems_UCAM(PRJ_count,fullpathname,DEBUGMsgLabel,uiFigure,Tcell)
           
            for PRJcnt = 1:PRJ_count
                fullpath = fullpathname{PRJcnt};
                
                if isempty(fullpath)
                     return;
                end
                
                % extracting data from Menlo Systems dat files
                   
                if isempty(fullpath)
                         return;
                end
                
                DEBUGMsgLabel.Text = 'Loading....';
                drawnow
                
                try
                    datVec = csvread(fullpath,4,0);
                    samTime = datVec(1:2:end)';
                    samSig = datVec(2:2:end)';
                    refTime = [];
                    refSig = [];

                    [~,sampleName,~] = fileparts(fullpath);
                catch ME
                    fig = uiFigure;
                    uialert(fig,'Incorrect Data Set','Warning');
                    DEBUGMsgLabel.Text = 'Loading Cancelled';
                    return;
                end

                try
                    measDate = readlines(fullpath);
                    measDate = measDate(3);
                    measDate = extractAfter(measDate,"Date: ");
                catch ME
                    measDate = "";
                end
                        
                
                description = "";
                mtDescription = "para1,para2";
                dsDescription = "ds1:Sample, ds2:Ref"; % dataset description
                date = measDate;
                mode = "";
                time = [];
                para1 = [];
                para2 = [];

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
                Tcell{10,PRJcnt} = mtDescription; % metadata description
                Tcell{11,PRJcnt} = para1; % thickness (mm)
                Tcell{12,PRJcnt} = para2; % temperature (K)
                Tcell{13,PRJcnt} = []; % weight (mg)
                Tcell{14,PRJcnt} = []; % concentration  (%)

                Tcell{15,PRJcnt} = []; % not used
                Tcell{16,PRJcnt} = []; % not used
                Tcell{17,PRJcnt} = []; % not used

                Tcell{18,PRJcnt} = dsDescription; % dataset description
                Tcell{19,PRJcnt} = [samTime;samSig];
                Tcell{20,PRJcnt} = [refTime;refSig];
                Tcell{21,PRJcnt} = []; % not used
                Tcell{22,PRJcnt} = []; % not used
                
                progressP = PRJcnt/PRJ_count*100;
                progressP = num2str(progressP,'%.0f');
                progressP = strcat("Loading: ", progressP,"%");
                DEBUGMsgLabel.Text = progressP;
                drawnow          
            end

            DEBUGMsgLabel.Text = "Complete Conversion";
end