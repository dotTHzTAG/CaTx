%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% the dotTHz project, 2023 TAG, University of Cambridget
% MenloSystems_UCAM.m file for the Cambridge THz converter
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
                    DEBUGMsgLabel.Text = 'Loading cancelled';
                    return;
                end

                scanStartDateTime = "";
                ref_description = ""; % Reference description
                description = "";
                timeDelay = 0;
                thickness = 0;

                scanLength = length(refTime);
                xSpacing = mean(diff(refTime));

                Tcell{1,PRJcnt} = PRJcnt;
                Tcell{2,PRJcnt} = sampleName;
                Tcell{3,PRJcnt} = description;
                Tcell{4,PRJcnt} = 0; % Instrument profile
                Tcell{5,PRJcnt} = 0; % User profile

                Tcell{6,PRJcnt} = samTime;
                Tcell{7,PRJcnt} = samSig;
                Tcell{8,PRJcnt} = refTime;
                Tcell{9,PRJcnt} = refSig;
                Tcell{10,PRJcnt} = [];
                Tcell{11,PRJcnt} = [];

                Tcell{12,PRJcnt} = ref_description;
                Tcell{13,PRJcnt} = scanStartDateTime;

                Tcell{14,PRJcnt} = 0; % refractive index
                Tcell{15,PRJcnt} = timeDelay; % time dalay (ps)
                Tcell{16,PRJcnt} = thickness; % thickness (mm)
                Tcell{17,PRJcnt} = 0; % weight (mg)
                Tcell{18,PRJcnt} = 0; % temperature (ps)
                Tcell{19,PRJcnt} = 0; % concentration(%)
                Tcell{20,PRJcnt} = char('*'); % phase
                Tcell{21,PRJcnt} = char('0,0,0'); % cooridnate (x,y,z) (string to vector conversion needed)

                Tcell{22,PRJcnt} = 0; % numeric data extension
                Tcell{23,PRJcnt} = char('*'); % text data extension
                Tcell{24,PRJcnt} = char('0,0,0'); % vector data extension (string to vector conversion needed)

                
                progressP = PRJcnt/PRJ_count*100;
                progressP = num2str(progressP,'%.0f');
                progressP = strcat("Loading: ", progressP,"%");
                DEBUGMsgLabel.Text = progressP;
                drawnow          
            end

            DEBUGMsgLabel.Text = "Complete conversion";
end