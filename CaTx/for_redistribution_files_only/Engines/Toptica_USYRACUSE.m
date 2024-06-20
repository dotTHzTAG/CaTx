%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% the dotTHz project, 2023
% Topitica Instrument file converter for CaTx
% Coded by Terahertz Applications Group, University of Cambridge
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Tcell = Toptica_USYRACUSE(PRJ_count,fullpathname,DEBUGMsgLabel,uiFigure,Tcell)
           
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
                    datMat = readmatrix(fullpath);
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
                catch 
                    uialert(uiFigure,'Incorrect Data Set','Warning');
                    DEBUGMsgLabel.Text = 'Loading Cancelled';
                    return;
                end

                description = "";
                time = "";
                mode = "Pellet TX";
                mdDescription = "Sample Thickness(mm), Ref.Thickness(mm), Temperature(K),"; % metadata description
                dsDescription = "Sample, Reference "; % dataset description
                md1 = [];
                md2 = [];
                md3 = [];
                md4 = [];
                md5 = [];

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

                Tcell{6,PRJcnt} = time; % measurement start time
                Tcell{7,PRJcnt} = mode; % THz-TDS/THz-Imaging/Transmission/Reflection
                Tcell{8,PRJcnt} = []; % coordinates
                Tcell{9,PRJcnt} = mdDescription; % metadata description
                Tcell{10,PRJcnt} = md1; 
                Tcell{11,PRJcnt} = md2; 
                Tcell{12,PRJcnt} = md3; 
                Tcell{13,PRJcnt} = md4; 
                Tcell{14,PRJcnt} = md5; 

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