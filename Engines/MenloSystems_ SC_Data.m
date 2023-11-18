%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% the dotTHz project 2023
% MenloSystems_SC_Data.m file for CaTx Engine
% Coded by Terahertz Applications Group, University of Cambridge
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Tcell = MenloSystems_SC_Data(PRJ_count,fullpathname,DEBUGMsgLabel,uiFigure,Tcell)
           
            for PRJcnt = 1:PRJ_count
                fullpath = fullpathname{PRJcnt};
                
                % extracting data from Menlo Systems dat files
                   
                if isempty(fullpath)
                         return;
                end
                
                DEBUGMsgLabel.Text = 'Loading....';
                drawnow
                
                try
                    %datVec = csvread(fullpath,1,0);
                    datMat = readmatrix(fullpath);
                    samTime = datMat(:,1)';
                    samSig = datMat(:,2)';                    

                    [~,sampleName,~] = fileparts(fullpath);
                catch
                    uialert(uiFigure,'Incorrect Data Set','Warning');
                    DEBUGMsgLabel.Text = 'Loading Cancelled';
                    return;
                end

                try
                    time = extractAfter(sampleName,'_');
                    time = extractAfter(time,'_');
                catch ME
                    time = '';
                end
                        
                
                description = "";
                mdDescription = "";
                dsDescription = "Sample"; % dataset description
                mode = "RX";
                md1 = [];
                md2 = [];
                md3 = [];
                md4 = [];
                md5 = [];

                ds1 = [samTime;samSig];
                ds2 = [];
                ds3 = [];
                ds4 = [];

                scanLength = length(samTime);
                xSpacing = mean(diff(samTime));

                Tcell{1,PRJcnt} = PRJcnt;
                Tcell{2,PRJcnt} = sampleName;
                Tcell{3,PRJcnt} = description;
                Tcell{4,PRJcnt} = 0; % Instrument profile
                Tcell{5,PRJcnt} = 0; % User profile
                Tcell{6,PRJcnt} = time; % measurement start time
                Tcell{7,PRJcnt} = mode; % THz-TDS/THz-Imaging/Transmission/Reflection
                Tcell{8,PRJcnt} = []; % coordinates
                
                Tcell{9,PRJcnt} = mdDescription; % metadata description
                Tcell{10,PRJcnt} = md1; % thickness (mm)
                Tcell{11,PRJcnt} = md2; % temperature (K)
                Tcell{12,PRJcnt} = md3; % weight (mg)
                Tcell{13,PRJcnt} = md4; % concentration  (%)
                Tcell{14,PRJcnt} = md5; % concentration  (%)

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