classdef CambridgeTHzconverter_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        CambeidgeTHzconverterUIFigure  matlab.ui.Figure
        mustincludeparameterDropDown   matlab.ui.control.DropDown
        mustincludeparameterDropDownLabel  matlab.ui.control.Label
        AttributuesallocationSwitch    matlab.ui.control.Switch
        AttributuesallocationLabel     matlab.ui.control.Label
        NumberprefixSwitch             matlab.ui.control.Switch
        PrefixnumberstothedatasetnameLabel  matlab.ui.control.Label
        TabGroup                       matlab.ui.container.TabGroup
        MEASUREMENTANDMETADATATab      matlab.ui.container.Tab
        REFERENCESIGNALCONTROLPanel    matlab.ui.container.Panel
        ApplyButton                    matlab.ui.control.Button
        FILEDLISTTOEditField           matlab.ui.control.NumericEditField
        toLabel                        matlab.ui.control.Label
        TocolumnsfromEditField         matlab.ui.control.NumericEditField
        TocolumnsfromEditFieldLabel    matlab.ui.control.Label
        sDropDown                      matlab.ui.control.DropDown
        sDropDownLabel                 matlab.ui.control.Label
        SelectedcolumnEditField        matlab.ui.control.NumericEditField
        SelectedcolumnEditFieldLabel   matlab.ui.control.Label
        UPDATETABLEPanel               matlab.ui.container.Panel
        TimedelayButton                matlab.ui.control.Button
        ThicknessButton                matlab.ui.control.Button
        RefractuveindexButton          matlab.ui.control.Button
        COLUMNCONTROLPanel             matlab.ui.container.Panel
        PlotwaveformsButton            matlab.ui.control.Button
        MoveButton_2                   matlab.ui.control.Button
        MoveButton                     matlab.ui.control.Button
        RemoveButton                   matlab.ui.control.Button
        METADATAPanel                  matlab.ui.container.Panel
        LOADMETAXLS_EditField          matlab.ui.control.EditField
        ImportmetadatafromXLSfileButton  matlab.ui.control.Button
        GengeratemetaXLSfileButton     matlab.ui.control.Button
        UITable_scan_header            matlab.ui.control.Table
        UITable_measurement            matlab.ui.control.Table
        INSTRUMENTANDLABORATORYTab     matlab.ui.container.Tab
        DonotusecharacterindescriptionasitisusedforadelimiterLabel  matlab.ui.control.Label
        LAB_MEASUREMENTFILEDTOEditField  matlab.ui.control.NumericEditField
        toLabel_3                      matlab.ui.control.Label
        LAB_MEASUREMENTFILEDEditField  matlab.ui.control.NumericEditField
        MeasurementfieldfromLabel_2    matlab.ui.control.Label
        INS_MEASUREMENTFILEDTOEditField  matlab.ui.control.NumericEditField
        toLabel_2                      matlab.ui.control.Label
        INS_MEASUREMENTFILEDEditField  matlab.ui.control.NumericEditField
        MeasurementfieldfromLabel      matlab.ui.control.Label
        Applydefaultprofile1Button     matlab.ui.control.Button
        LAB_SELECTIONEditField         matlab.ui.control.NumericEditField
        SelectionLabel_2               matlab.ui.control.Label
        INS_SELECTIONEditField         matlab.ui.control.NumericEditField
        SelectionLabel                 matlab.ui.control.Label
        REMOVE_LAB_COL_Button          matlab.ui.control.Button
        ADD_LAB_COL_Button             matlab.ui.control.Button
        REMOVE_INS_COL_Button          matlab.ui.control.Button
        ADD_INS_COL_Button             matlab.ui.control.Button
        LAB_LINKButton                 matlab.ui.control.Button
        INS_LINKButton                 matlab.ui.control.Button
        LABORATORYLabel                matlab.ui.control.Label
        INSTRUMENTLabel                matlab.ui.control.Label
        UITable_LAB_header             matlab.ui.control.Table
        UITable_LAB                    matlab.ui.control.Table
        UITable_INS_header             matlab.ui.control.Table
        UITable_INS                    matlab.ui.control.Table
        Image                          matlab.ui.control.Image
        PoweredbyTerahertzApplicationsGroupUniversityofCambridgeLabel  matlab.ui.control.Label
        ImportTHzfileButton            matlab.ui.control.Button
        ClearmemoryButton              matlab.ui.control.Button
        THzCONVERTERENGINEDropDown     matlab.ui.control.DropDown
        THzCONVERTERENGINEDropDownLabel  matlab.ui.control.Label
        ExportTHzfileButton            matlab.ui.control.Button
        DEBUGMsgLabel                  matlab.ui.control.Label
        CambridgeTHzconverterLabel     matlab.ui.control.Label
        DeplaydataButton               matlab.ui.control.Button
        FILESEditField                 matlab.ui.control.EditField
        ImportmeasurementButton        matlab.ui.control.Button
    end

    
    properties (Access = private)
        Tcell % cell array for table display, keep in mind that Tcell is not a table array
        PRJ_count % Description
        fullpathname % Description
        filename;
        cellIndices % Description
        ins_profile % instrument profile number
        lab_profile % lab profile number
        TcellP1 % cell array for instrument profiles
        TcellP2 % cell arrya for laboratory profiles
        totalMeasNum % total measurement number
    end
    
    methods (Access = private)
           
        
        function updateProfile(app)
            mPath = fileparts(which(mfilename)); % matlab app designer source code folder
            ins_profilefile = strcat(mPath,filesep,'profile',filesep,'instrument.xls');
            lab_profilefile = strcat(mPath,filesep,'profile',filesep,'laboratory.xls');

            % check instrument profile file and set the default
            if isfile(ins_profilefile)
                app.ins_profile = 1;
                app.TcellP1 = readcell(ins_profilefile);
                app.TcellP1(cellfun(@(x) isa(x,'missing'),app.TcellP1)) = {''};
                app.UITable_INS.Data = cell2table(app.TcellP1);
                app.UITable_INS.ColumnEditable = true;
            else
                app.ins_profile = 0;
                app.UITable_INS.Data = [];
            end

            % check laboratory profile file and set the default
            if isfile(lab_profilefile)
                app.lab_profile = 1;
                app.TcellP2 = readcell(lab_profilefile);
                app.TcellP2(cellfun(@(x) isa(x,'missing'),app.TcellP2)) = {''};
                app.UITable_LAB.Data = cell2table(app.TcellP2);
                app.UITable_LAB.ColumnEditable = true;
            else
                app.lab_profile = 0;
                app.UITable_LAB.Data = [];
            end

        end
        
        function writeP1Profile(app)            
            mPath = fileparts(which(mfilename));
            ins_profilefile = strcat(mPath,filesep,'profile',filesep,'instrument.xls');
            TcellP = app.TcellP1;

            if isempty(TcellP)
                delete(ins_profilefile);
            else
                writecell(TcellP,ins_profilefile,"WriteMode","overwritesheet");
                fileattrib(ins_profilefile,'+w'); 
            end

            %update the instrument table
            app.UITable_INS.ColumnEditable = true;
            app.UITable_INS.Data = cell2table(TcellP);
        end
        
        function writeP2Profile(app)
            mPath = fileparts(which(mfilename));
            lab_profilefile = strcat(mPath,filesep,'profile',filesep,'laboratory.xls');
            TcellP = app.TcellP2;
            
            if isempty(TcellP)
                delete(lab_profilefile);
            else
                writecell(TcellP,lab_profilefile,"WriteMode","overwritesheet");
                fileattrib(lab_profilefile,'+w');
            end

            % meausrement table profile update

            app.UITable_LAB.ColumnEditable = true;
            app.UITable_LAB.Data = cell2table(TcellP);
        end
        
        function updataP1Link(app)
            
            if isempty(app.Tcell)
                return;
            end

            rowINSProfile = 8; % instrument profile row number in the measurement table
            pLinkMat = cell2mat(app.Tcell(rowINSProfile,:)); % profile link matrix
            zLinkMat = zeros(size(pLinkMat));
            colNum = app.INS_SELECTIONEditField.Value;
            pLinkMat(pLinkMat == colNum) = 0;
            zLinkMat(pLinkMat > colNum) = 1;
            pLinkMat = pLinkMat - zLinkMat;
            pLinkCell = mat2cell(pLinkMat,[1],ones(1,size(pLinkMat,2)));

            % meausrement table profile update
            app.Tcell(rowINSProfile,:) = pLinkCell;
            updateMeasurementTable(app)        
        end
        
        function updateP2Link(app)

            if isempty(app.Tcell)
                return;
            end

            rowLABProfile = 9; % instrument profile row number in the measurement table
            pLinkMat = cell2mat(app.Tcell(rowLABProfile,:)); % profile link matrix
            zLinkMat = zeros(size(pLinkMat));
            colNum = app.LAB_SELECTIONEditField.Value;
            pLinkMat(pLinkMat == colNum) = 0;
            zLinkMat(pLinkMat > colNum) = 1;
            pLinkMat = pLinkMat - zLinkMat;
            pLinkCell = mat2cell(pLinkMat,[1],ones(1,size(pLinkMat,2)));

            % meausrement table profile update
            app.Tcell(rowLABProfile,:) = pLinkCell;
            updateMeasurementTable(app);
        end
        
        function updateMeasurementTable(app)
            Tcell = app.Tcell;
            measNum = size(Tcell,2);

            if measNum < 300
                app.UITable_measurement.Data = cell2table(Tcell);
            else
                TcellCompact = Tcell(:,1:10);
                TcellCompact = [TcellCompact Tcell(:,measNum)];
                app.UITable_measurement.Data = cell2table(TcellCompact);
            end
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            mPath = fileparts(which(mfilename)); % matlab app designer source code folder

            % make a list of THz converter engines from .\engine folder
            engineDir = strcat(mPath,filesep,'engine');
            profileDir = strcat(mPath,filesep,'profile');
            mkdir(engineDir);
            mkdir(profileDir);
            addpath(genpath(mPath));
            engineList = dir(strcat(engineDir,filesep,'*.m'));
            engineNum = size(engineList,1);
            engineItems = {};

            if engineNum >=1
                for idx = 1:engineNum
                    engineItems{idx} = extractBefore(engineList(idx).name,'.');
                end
                app.THzCONVERTERENGINEDropDown.Items = engineItems;
            end
            
            app.PRJ_count = 0;
            app.filename = [];
            Tcell_header = {'1: Number','2: Name','3: Description','4: Time_ref (ps)','5: Reference (a.u.)','6: Time_sample (ps)','7: Sample (a.u.)','8: Instrument profile', '9: Laboratory profile',...
                '10: Start data and time','11: Mode (TX/RX)', '12: Refractive index', '13: Time delay (ps)','14: Thickness (mm)','15: Weight (mg)', '16: Temperature (K)','17: Concentration (%)',...
                '18: Phase','19: Coordinate (x,y,z)', '20: Ext numeric', '21: Ext text', '22: Ext vector',...
                }';
            %Tcell_header = cell(colHeader');
            app.UITable_scan_header.Data = cell2table(Tcell_header);


            ins_profileHeader = {'1: Number', '2: Model', '3: Manufacturer', '4: Address'}';
            lab_profileHeader = {'1: Number', '2: OCRID', '3: Name', '4: Email', '5: Institute'}';
            
            app.UITable_INS_header.Data = cell2table(ins_profileHeader);
            app.UITable_LAB_header.Data = cell2table(lab_profileHeader);
            updateProfile(app);

        end

        % Button pushed function: ImportmeasurementButton
        function ImportmeasurementButtonPushed(app, event)
            [filename, pathname] = uigetfile('*.*');figure(app.CambeidgeTHzconverterUIFigure);
            % PRJ_count: number of project files imported
            PRJ_count = app.PRJ_count;
            
            if isequal(filename,0)||isequal(pathname,0)
                return;          
            end
            
            % if the imported file is already exist in the list,
            % just return
            for cnt = 1:PRJ_count
                if isequal(app.filename{cnt},filename)
                    return;
                end
            end
            
            PRJ_count = PRJ_count + 1;
            
            fileinfo = strcat(pathname,filename);
            app.filename{PRJ_count} = filename;
            app.fullpathname{PRJ_count} = fileinfo;
                       
            allFileList = strjoin(app.filename,',');       
            app.FILESEditField.Value = allFileList;
            app.PRJ_count = PRJ_count;
        end

        % Button pushed function: DeplaydataButton
        function DeplaydataButtonPushed(app, event)
            TDSinstrument = app.THzCONVERTERENGINEDropDown.Value;
            PRJ_count = app.PRJ_count; % number of files to be imported
            fullpathname = app.fullpathname; % full path for the imported files
            Tcell = []; % cell structure table
            DEBUGMsgLabel = app.DEBUGMsgLabel; % Debug message label handler
            uiFigure = app.CambeidgeTHzconverterUIFigure;

            updateProfile(app);

            func = str2func(TDSinstrument);
            Tcell = func(PRJ_count,fullpathname,DEBUGMsgLabel,uiFigure,Tcell);

            %assignin("base","ins_profilefile", app.ins_profile);


            Tcell(8,:) = num2cell(app.ins_profile);
            Tcell(9,:) = num2cell(app.lab_profile);
            measNum = size(Tcell,2);
            app.totalMeasNum = measNum;
            app.Tcell = Tcell;

            updateMeasurementTable(app);
            app.INS_MEASUREMENTFILEDTOEditField.Value = app.totalMeasNum;
            app.LAB_MEASUREMENTFILEDTOEditField.Value = app.totalMeasNum;
            app.FILEDLISTTOEditField.Value = app.totalMeasNum;
            evalin('base', 'clear Tcell');
            app.TabGroup.SelectedTab = app.TabGroup.Children(1);
        end

        % Button pushed function: ClearmemoryButton
        function ClearmemoryButtonPushed(app, event)
            question = "Do you want to clear memory?";
            answer = questdlg(question,'Warning');
                
            if isequal(answer,"Yes")
                app.Tcell = [];
                app.TcellP1 = [];
                app.TcellP2 = [];
                app.filename = [];
                app.fullpathname = [];
                app.PRJ_count = 0;
                app.FILESEditField.Value = '';
                app.DEBUGMsgLabel.Text = '';
                app.UITable_measurement.Data = [];
                app.UITable_INS.Data = [];
                app.UITable_LAB.Data = [];
                app.ins_profile = [];
                app.lab_profile = [];
            end
        end

        % Cell selection callback: UITable_measurement
        function UITable_measurementCellSelection(app, event)
            indices = event.Indices;
            app.cellIndices = indices;

            if indices(1)>22
                return;
            end

            app.SelectedcolumnEditField.Value = indices(2);

            assignin("base","tcell",app.Tcell);

            if isempty(app.Tcell{5,indices(2)})
                app.sDropDown.Items = {'Sample'};
            else
                app.sDropDown.Items = {'Sample','Reference'};
            end

            Tcell = app.Tcell(indices(1),indices(2));
            dataType = [2 1 1 2 2, 2 2 2 2 2, 1 0 2 0 0, 0 0 1 1 0, 1 1]; % 1 for string, 0 for numbers, 2 for do-not-modify

            if dataType(indices(1)) < 2
                app.UITable_measurement.ColumnEditable = true;
            else
                app.UITable_measurement.ColumnEditable = false;
            end            
        end

        % Callback function
        function TextFieldEditFieldValueChanged(app, event)
            value = app.TextFieldEditField.Value;
            cellIndices = app.cellIndices;
            app.Tcell(cellIndices(1),cellIndices(2)) = {value};
            updateMeasurementTable(app);
        end

        % Callback function
        function NumericFieldEditFieldValueChanged(app, event)
            value = app.NumericFieldEditField.Value;
            indices = app.cellIndices;
            timeDelay = cell2mat(app.Tcell(9,indices(2)));
            app.Tcell(indices(1),indices(2)) = {value};

            if indices(1) == 7 % if the input is the sample thickness
                n_eff = timeDelay*10^-12*3e8/(value*10^-3) + 1;
                n_eff = floor(n_eff*1000)/1000;
                etl_t = timeDelay + (2*value*10^-3*n_eff/3e8)*10^12;
                app.Tcell(6,indices(2)) = {n_eff};
                app.Tcell(12,indices(2)) = {etl_t};

            elseif indices(1) == 6 % if the input is the sample refractive index
                thickness = timeDelay*10^-9*3e8/(value-1);
                thickness = floor(thickness*10000)/10000;
                etl_t = timeDelay + (2*thickness*10^-3*value/3e8)*10^12;
                app.Tcell(7,indices(2)) = {thickness};
                app.Tcell(12,indices(2)) = {etl_t};
            end

            updateMeasurementTable(app);
        end

        % Cell edit callback: UITable_measurement
        function UITable_measurementCellEdit(app, event)
            indices = event.Indices;
            newData = event.NewData;
            timeDelay = cell2mat(app.Tcell(8,indices(2)));
            app.Tcell(indices(1),indices(2)) = {newData};

            if indices(1) == 6 % if the input is the sample thickness
                n_eff = timeDelay*10^-12*3e8/(newData*10^-3) + 1;
                n_eff = floor(n_eff*1000)/1000;
                etl_t = timeDelay + (2*newData*10^-3*n_eff/3e8)*10^12;
                app.Tcell(5,indices(2)) = {n_eff};
                app.Tcell(12,indices(2)) = {etl_t};

            elseif indices(1) == 5 % if the input is the sample refractive index
                thickness = timeDelay*10^-9*3e8/(newData-1);
                thickness = floor(thickness*10000)/10000;
                etl_t = timeDelay + (2*thickness*10^-3*newData/3e8)*10^12;
                app.Tcell(6,indices(2)) = {thickness};
                app.Tcell(12,indices(2)) = {etl_t};
            end
            updateMeasurementTable(app);
        end

        % Button pushed function: ExportTHzfileButton
        function ExportTHzfileButtonPushed(app, event)
            filter = {'*.thz';'*.*'};
            [filename, filepath] = uiputfile(filter);
            
            if isequal(filename,0)||isequal(filepath,0)
                return;          
            end

            if isempty(app.Tcell)
                return;
            end
                        
            fullfile = strcat(filepath,filename);
            measNum = app.Tcell{1,end};
            incNum = app.NumberprefixSwitch.Value;
            varsAttr = ["date and time","mode","n_eff","time delay","thickness","weight","temperature","concentration","phase","coordinate","ext_num","ext_text","ext_vect"];
            digitNum = ceil(log10(measNum));
            digitNumFormat = strcat('%0',num2str(digitNum),'d');
            dSet = [];

            % Are the attributes assigned to all datasets?
            if isequal(app.AttributuesallocationSwitch.Value,"All datasets")
                attAll = true;
            else
                attAll = false;
                ectAttr = str2num(app.mustincludeparameterDropDown.Value);
            end

            app.DEBUGMsgLabel.Text = "Exporting started";
            drawnow;

            for idx = 1:measNum
                
                if isequal(incNum,"On") % prefix numbers to dataset name
                    dn = strcat('/',sprintf(digitNumFormat,app.Tcell{1,idx}),':',app.Tcell{2,idx});
                else
                    dn = strcat('/',app.Tcell{2,idx});
                end

                if ~attAll
                    dn = strcat('/',sprintf(digitNumFormat,app.Tcell{1,idx}));
                end

                if isempty(app.Tcell{4,idx}) % does the reference waveform exit?
                    dSet = [app.Tcell{6,idx};app.Tcell{7,idx}];
                else
                    dSet = [app.Tcell{4, idx};app.Tcell{5,idx};app.Tcell{6,idx};app.Tcell{7,idx}];
                end
                
                % create and write HDF5 dataset
                h5create(fullfile,dn,size(dSet));
                h5write(fullfile,dn,dSet);

                % write HDF5 attributes
                if attAll || isequal(idx,1)
                    h5writeatt(fullfile,dn,'description',app.Tcell{3,idx});
                    rowNum = 10;
                    for attrName = varsAttr
                        h5writeatt(fullfile,dn,attrName,app.Tcell{rowNum,idx});
                        rowNum = rowNum + 1;
                    end
                    insNum = app.Tcell{8,idx};
                    labNum = app.Tcell{9,idx};

                    % write instrument details as a part of attribute
                    if isequal(insNum,0) % check whether a profile for instrument is assigned
                        insAttr = '';
                    else
                        insAttr = strcat(app.TcellP1{2,insNum}, '/', app.TcellP1{3,insNum}, '/', app.TcellP1{4,insNum});
                    end
                    h5writeatt(fullfile,dn,'instrument',insAttr);

                    if isequal(labNum,0) % check whether a profile for laboratory is assigned
                        labAttr = '';
                    else
                        labAttr = strcat(app.TcellP2{2, labNum}, '/', app.TcellP2{3,labNum},'/', app.TcellP2{4,labNum},'/', app.TcellP2{5,labNum});
                    end
                    h5writeatt(fullfile,dn,'laboratory',labAttr);
                else
                    attrName = varsAttr(ectAttr-9);
                    h5writeatt(fullfile,dn,attrName,app.Tcell{ectAttr,idx});
                end
             
                progressP = idx/measNum*100;
                progressP = num2str(progressP,'%.0f');
                progressP = strcat("Exporting: ", progressP,"%");
                app.DEBUGMsgLabel.Text = progressP;
                drawnow

            end

            app.DEBUGMsgLabel.Text = "Exporting finished";

        end

        % Button pushed function: ImportTHzfileButton
        function ImportTHzfileButtonPushed(app, event)
            ClearmemoryButtonPushed(app);
            
            if ~isempty(app.Tcell)
                return;
            end

            updateProfile(app);

            % make a profile list based on the profile xls files
            if isequal(app.ins_profile,1)
                TcellP1 = app.TcellP1;
                numP1 = size(TcellP1,2);
                tempP1Profile = cell(1,numP1);
                for idx = 1:numP1
                    strProfile = join(TcellP1(2:end,idx),"/");
                    tempP1Profile(idx) = strProfile;
                end
            else
                tempP1Profile = {};
            end

           if isequal(app.lab_profile,1)
                TcellP2 = app.TcellP2;
                numP2 = size(TcellP2,2);
                tempP2Profile = cell(1,numP2);
                for idx = 1:numP2
                    strProfile = join(TcellP2(2:end,idx),"/");
                    tempP2Profile(idx) = strProfile;
                end
            else
                tempP2Profile = {};
            end

            

            [filename, filepath] = uigetfile('*.thz');
            
            if isequal(filename,0)||isequal(filepath,0)
                return;
            end

            app.FILESEditField.Value = filename;
            
            fullfile = strcat(filepath,filename);
            thzInfo = h5info(fullfile);
            measNum = size(thzInfo.Datasets,1);
            ListItems = cell(measNum,1);
            [ListItems{:}] = deal(thzInfo.Datasets.Name);
            attrItems = ["description","date and time","mode","n_eff","time delay",...
                "thickness","weight","temperature","concentration","phase","coordinate","ext_num","ext_text","ext_vect"];

            for idx = 1:measNum
                dn = strcat('/',ListItems{idx});
                measData = h5read(fullfile,dn);
                cnt = 1;

                Tcell{1,idx} = idx;
                Tcell{2,idx} = ListItems{idx};

                if size(measData,1)==4
                    Tcell{4,idx} = measData(1,:);
                    Tcell{5,idx} = measData(2,:);
                    Tcell{6,idx} = measData(3,:);
                    Tcell{7,idx} = measData(4,:);
                else
                    Tcell{6,idx} = measData(1,:);
                    Tcell{7,idx} = measData(2,:);
                end

                for attrLoc = [3 (10:22)]
                    try
                        Tcell{attrLoc,idx} = h5readatt(fullfile,dn,attrItems(cnt));
                    catch ME
                    end
                    cnt = cnt + 1;
                end

                % instrument profile matching
                try
                    insProfile = h5readatt(fullfile,dn,"instrument");
                catch ME
                    insProfile = 0;
                end

                cntP1 = 1;

                if isequal(insProfile,0)
                        Tcell{8,idx} = 0;
                    else
                        for idxP1 = tempP1Profile
                            if isequal({insProfile},idxP1)
                                Tcell{8,idx} = cntP1;
                                break;
                            else
                                cntP1 = cntP1 + 1;
                            end
                        end

                        if cntP1 > length(tempP1Profile)
                            tempP1Profile = [tempP1Profile, {insProfile}];
                            Tcell{8,idx} = cntP1;
                            app.TcellP1 = [app.TcellP1, [cntP1;split(insProfile,"/")]];
                            writeP1Profile(app);
                        end
                end

                % laboratory profile matching
                try
                    labProfile = h5readatt(fullfile,dn,"laboratory");
                catch ME
                    labProfile = 0;
                end

                cntP2 = 1;

                if isequal(labProfile,0)
                        Tcell{9,idx} = 0;
                    else
                        for idxP2 = tempP2Profile
                            if isequal({labProfile},idxP2);
                                Tcell{9,idx} = cntP2;
                                break;
                            else
                                cntP2 = cntP2 + 1;
                            end
                        end

                        if cntP2 > length(tempP2Profile)
                            tempP2Profile = [tempP2Profile, {labProfile}];
                            Tcell{9,idx} = cntP2;
                            app.TcellP2 = [app.TcellP2, [cntP2;split(labProfile,"/")]];
                            writeP2Profile(app);
                        end
                end

                progressP = idx/measNum*100;
                progressP = num2str(progressP,'%.0f');
                progressP = strcat("Importing THz file: ", progressP,"%");
                app.DEBUGMsgLabel.Text = progressP;
                drawnow
            end
            
            app.Tcell = Tcell;
            updateMeasurementTable(app);
        end

        % Button pushed function: ImportmetadatafromXLSfileButton
        function ImportmetadatafromXLSfileButtonPushed(app, event)
            [filename, filepath] = uigetfile('*.xls');

            if isequal(filename,0)||isequal(filepath,0)
                return;
            end
            app.LOADMETAXLS_EditField.Value = filename;
            fullfile = strcat(filepath,filename);

            Tcell = app.Tcell;
            measNum = size(Tcell,2);
            
            
            %Tcellxls = readtable(fullfile,"ReadVariableNames",false,);
            Tcellxls = readcell(fullfile);
            Tcellxls(:,1) = [];

            % compare the column numbers
            if measNum ~= size(Tcellxls,2)
                fig = app.CambeidgeTHzconverterUIFigure;
                msg = "Mismatched column size";
                uialert(fig,msg,'Warning');
                app.LOADMETAXLS_EditField.Value = '';
                return;
            end

            Tcell(12:end,:)=Tcellxls(2:end,:);
            app.Tcell = Tcell;
            updateMeasurementTable(app);            
        end

        % Button pushed function: GengeratemetaXLSfileButton
        function GengeratemetaXLSfileButtonPushed(app, event)

            filter = {'*.xls';'*.*'};
            [filename, filepath] = uiputfile(filter);
            
            if isequal(filename,0)||isequal(filepath,0)
                return;          
            end
            
            fullfile = strcat(filepath,filename);

            Tcell = app.Tcell;
            Tcell_header = app.UITable_scan_header.Data;

            Tcellxls = [Tcell_header Tcell];
            Tcellxls(2:11,:) = [];
            

            writetable(Tcellxls,fullfile,WriteVariableNames=false);
            fileattrib(fullfile,'+w');
            
        end

        % Button pushed function: RefractuveindexButton
        function RefractuveindexButtonPushed(app, event)
            rowRefractiveindex = 12;
            rowTimedelay = 13;
            rowThickness = 14;
            TcellPart = app.Tcell([rowRefractiveindex, rowTimedelay, rowThickness],:);
            nIdx = 1;
            tdIdx = 2;
            tkIdx = 3;

            meaNum = size(TcellPart,2);

            for idx = 1:meaNum
                thickness = TcellPart{tkIdx,idx};
                timeDelay = TcellPart{tdIdx,idx};

                if isequal(thickness,0) || isequal(timeDelay,0)
                    return;
                end

                n_eff = timeDelay*10^-12*3e8/(thickness*10^-3) + 1;
                n_eff = floor(n_eff*1000)/1000;
                
                TcellPart(nIdx,idx) = {n_eff};
            end

            app.Tcell([rowRefractiveindex, rowTimedelay, rowThickness],:) = TcellPart;
            updateMeasurementTable(app);
        end

        % Button pushed function: ThicknessButton
        function ThicknessButtonPushed(app, event)
            rowRefractiveindex = 12;
            rowTimedelay = 13;
            rowThickness = 14;
            TcellPart = app.Tcell([rowRefractiveindex, rowTimedelay, rowThickness],:);
            nIdx = 1;
            tdIdx = 2;
            tkIdx = 3;

            meaNum = size(TcellPart,2);

            for idx = 1:meaNum
                n_eff = TcellPart{nIdx,idx};
                timeDelay = TcellPart{tdIdx,idx};

                if isequal(n_eff,0) || isequal(timeDelay,0)
                    return;
                end

                thickness = timeDelay*10^-9*3e8/(n_eff-1);
                thickness = floor(thickness*10000)/10000;
                
                TcellPart(tkIdx,idx) = {thickness};
            end

            app.Tcell([rowRefractiveindex, rowTimedelay, rowThickness],:) = TcellPart;
            updateMeasurementTable(app);
        end

        % Button pushed function: Applydefaultprofile1Button
        function Applydefaultprofile1ButtonPushed(app, event)
            updateProfile(app);

            Tcell = app.Tcell;
            Tcell(8,:) = num2cell(app.ins_profile);
            Tcell(9,:) = num2cell(app.lab_profile);

            %assignin("base","Tcell",Tcell);
            app.Tcell = Tcell;
            updateMeasurementTable(app);

        end

        % Cell edit callback: UITable_INS
        function UITable_INSCellEdit(app, event)
            indices = event.Indices;
            newData = event.NewData;
            app.TcellP1(indices(1),indices(2)) = {newData};

            writeP1Profile(app);
        end

        % Cell edit callback: UITable_LAB
        function UITable_LABCellEdit(app, event)
            indices = event.Indices;
            newData = event.NewData;
            app.TcellP2(indices(1),indices(2)) = {newData};  

            writeP2Profile(app);
        end

        % Button pushed function: ADD_INS_COL_Button
        function ADD_INS_COL_ButtonPushed(app, event)
            
            mPath = fileparts(which(mfilename));
            ins_profilefile = strcat(mPath,'\profile\instrument.xls');

            if isfile(ins_profilefile)
                TcellP = app.TcellP1;
                pNum = size(TcellP,2);
                newCell = {pNum+1,char(),char(),char()}';
                TcellP = [TcellP, newCell];
            else
                TcellP{1,1} = 1; % profile number
                TcellP{2,1} = char(); % Spectrometer Model
                TcellP{3,1} = char(); % Manufacturer
                TcellP{4,1} = char(); % Manufacturer address, country
            end

            app.TcellP1 = TcellP;
            writeP1Profile(app);
        end

        % Button pushed function: REMOVE_INS_COL_Button
        function REMOVE_INS_COL_ButtonPushed(app, event)
            
            if app.INS_SELECTIONEditField.Value == 0
                return;
            end

            TcellP = app.TcellP1;
            colNum = app.INS_SELECTIONEditField.Value;

            TcellP(:,colNum) = [];
            TcellP(1,:) = num2cell((1:size(TcellP,2)));
            app.TcellP1 = TcellP;

            writeP1Profile(app);
            updataP1Link(app);
            
            app.INS_SELECTIONEditField.Value = 0;
        end

        % Button pushed function: ADD_LAB_COL_Button
        function ADD_LAB_COL_ButtonPushed(app, event)
            
            mPath = fileparts(which(mfilename));
            lab_profilefile = strcat(mPath,'\profile\laboratory.xls');

            if isfile(lab_profilefile)
                TcellP = app.TcellP2;
                pNum = size(TcellP,2);
                newCell = {pNum+1,char(),char(),char(), char()}';
                TcellP = [TcellP, newCell];
            else
                TcellP{1,1} = 1; % profile number
                TcellP{2,1} = char(); % OCRID
                TcellP{3,1} = char(); % Name
                TcellP{4,1} = char(); % Email
                TcellP{5,1} = char(); % Institute, country
            end

            app.TcellP2 = TcellP;
            writeP2Profile(app);
        end

        % Cell selection callback: UITable_INS
        function UITable_INSCellSelection(app, event)
            indices = event.Indices;
            app.INS_SELECTIONEditField.Value = indices(2);
        end

        % Cell selection callback: UITable_LAB
        function UITable_LABCellSelection(app, event)
            indices = event.Indices;
            app.LAB_SELECTIONEditField.Value = indices(2);
        end

        % Button pushed function: REMOVE_LAB_COL_Button
        function REMOVE_LAB_COL_ButtonPushed(app, event)
            
            if app.LAB_SELECTIONEditField.Value == 0
                return;
            end

            TcellP = app.TcellP2;
            colNum = app.LAB_SELECTIONEditField.Value;

            TcellP(:,colNum) = [];
            TcellP(1,:) = num2cell((1:size(TcellP,2)));
            app.TcellP2 = TcellP;

            writeP2Profile(app);
            updateP2Link(app);
            
            app.LAB_SELECTIONEditField.Value = 0;

        end

        % Button pushed function: MoveButton
        function MoveButtonPushed(app, event)
            Indices = app.cellIndices;
            Tcell = app.Tcell;

            if isempty(Indices)
                return;
            end
            
            if size(Tcell,2) < 2 || Indices(2) == 1
                return;
            end

            % move the selected column forward without the column number
            tempCol = Tcell(:,Indices(2)-1);
            Tcell(2:end,Indices(2)-1) = Tcell(2:end,Indices(2));
            Tcell(2:end,Indices(2)) = tempCol(2:end);

            % move the selected cell with the change
            newIndices = [Indices(1) Indices(2)-1];
            app.UITable_measurement.Selection = newIndices;
            app.cellIndices = newIndices;

            % update the table
            app.Tcell = Tcell;
            updateMeasurementTable(app);
        end

        % Button pushed function: MoveButton_2
        function MoveButton_2Pushed(app, event)
            Indices = app.cellIndices;
            Tcell = app.Tcell;

            if isempty(Indices)
                return;
            end
            
            if size(Tcell,2) < 2 || Indices(2) == size(Tcell,2)
                return;
            end

            % move the selected column backward without the column number
            tempCol = Tcell(:,Indices(2)+1);
            Tcell(2:end,Indices(2)+1) = Tcell(2:end,Indices(2));
            Tcell(2:end,Indices(2)) = tempCol(2:end);

            % move the selected cell with the change
            newIndices = [Indices(1) Indices(2)+1];
            app.UITable_measurement.Selection = newIndices;
            app.cellIndices = newIndices;

            % update the table
            app.Tcell = Tcell;
            updateMeasurementTable(app);
        end

        % Button pushed function: RemoveButton
        function RemoveButtonPushed(app, event)
            Indices = app.cellIndices;
            Tcell = app.Tcell;

            if isempty(Indices)
                return;
            end
            
            if size(Tcell,2) < 2
                return;
            end

            % remove the selected column
            Tcell(:,Indices(2)) = [];
            Tcell(1,:) = num2cell((1:size(Tcell,2)));

            % update the table
            app.Tcell = Tcell;
            updateMeasurementTable(app);

            app.totalMeasNum = size(Tcell,2);
            app.INS_MEASUREMENTFILEDTOEditField.Value = app.totalMeasNum;
            app.LAB_MEASUREMENTFILEDTOEditField.Value = app.totalMeasNum;
            app.FILEDLISTTOEditField.Value = app.totalMeasNum;
        end

        % Button pushed function: PlotwaveformsButton
        function PlotwaveformsButtonPushed(app, event)
            Indices = app.cellIndices;
            Tcell = app.Tcell;

            if isempty(Indices)
                return;
            end

            sampleName = Tcell{2,Indices(2)};
            samXdata = Tcell{6,Indices(2)};
            samYdata = Tcell{7,Indices(2)};

            fig = uifigure('Visible', 'on');
            fig.Position = [100 100 800 600];
            fig.Name = "Cambridge THz Converter Plot";

            % Create UIAxes
            ax = uiaxes(fig);
            %axis(ax,'tight');
            grid(ax,"on");
            hold(ax,'on');
            box(ax,"on");
            %colormap(ax,"jet");
            title(ax,sampleName,"Interpreter","none");
            xlabel(ax, 'Time delay (ps)');
            ylabel(ax, 'THz E field (a.u.)');
            ax.Position = [20 10 750 550];
            
            plot(ax,samXdata,samYdata);

            try
                refXdata = Tcell{4,Indices(2)};
                refYdata = Tcell{5,Indices(2)};
                plot(ax,refXdata,refYdata);
                legend(ax,"Sample","Reference");
            catch ME
                legend(ax,"Sample");
            end

        end

        % Button pushed function: ApplyButton
        function ApplyButtonPushed(app, event)
            Indices = app.cellIndices;
            Tcell = app.Tcell;
            colFrom = app.TocolumnsfromEditField.Value;
            colTo = app.FILEDLISTTOEditField.Value;
            totalMeasNum = app.totalMeasNum;
            
            if isempty(Indices)
                return;
            else
                refIdx = Indices(2);
            end

            if isequal(app.sDropDown.Value,"Sample")
                refTime = Tcell(6,refIdx);
                refSig = Tcell(7,refIdx);
                refLength = length(refTime);
            else
                refTime = Tcell(4,refIdx);
                refSig = Tcell(5,refIdx);
                refLength = length(refTime);
            end


            for idx = colFrom:colTo
                samTime = Tcell(6,idx);
                samLength = length(samTime);

                if ~isequal(refLength,samLength)
                    fig = app.CambeidgeTHzconverterUIFigure;
                    uialert(fig,'Incompatible data length','warning');
                    return;
                end

                Tcell(4,idx) = refTime;
                Tcell(5,idx) = refSig;

            end

            % update the table
            app.Tcell = Tcell;
            updateMeasurementTable(app);
        end

        % Button pushed function: INS_LINKButton
        function INS_LINKButtonPushed(app, event)
            profileNum = app.INS_SELECTIONEditField.Value;
            fieldFrom = app.INS_MEASUREMENTFILEDEditField.Value;
            fieldTo = app.INS_MEASUREMENTFILEDTOEditField.Value;
            rowINSProfile = 8;

            if isequal(profileNum,0) || isempty(app.Tcell)
                return;
            end

            if fieldTo > app.totalMeasNum || fieldFrom > fieldTo
                fig = app.CambeidgeTHzconverterUIFigure;
                uialert(fig,'Invalid measurement field list','warning');
                return;
            end

            try
                app.Tcell(rowINSProfile,fieldFrom:fieldTo) = {profileNum};
            catch ME
                fig = app.CambeidgeTHzconverterUIFigure;
                uialert(fig,'Invalid measurement field list','warning');
                return;
            end

            updateMeasurementTable(app);
        end

        % Button pushed function: LAB_LINKButton
        function LAB_LINKButtonPushed(app, event)
            profileNum = app.LAB_SELECTIONEditField.Value;
            fieldFrom = app.LAB_MEASUREMENTFILEDEditField.Value;
            fieldTo = app.LAB_MEASUREMENTFILEDTOEditField.Value;
            rowLABProfile = 9;

            if isequal(profileNum,0) || isempty(app.Tcell)
                return;
            end

            if fieldTo > app.totalMeasNum || fieldFrom > fieldTo
                fig = app.CambeidgeTHzconverterUIFigure;
                uialert(fig,'Invalid measurement field list','warning');
                return;
                return;
            end

            try
                app.Tcell(rowLABProfile,fieldFrom:fieldTo) = {profileNum};
            catch ME
                fig = app.CambeidgeTHzconverterUIFigure;
                uialert(fig,'Invalid measurement fields','warning');
                return;
            end

            updateMeasurementTable(app);
        end

        % Button pushed function: TimedelayButton
        function TimedelayButtonPushed(app, event)
            rowTimeDelay = 13; % time delay row
            maxPer = 0.80;

            try
                Tcell = app.Tcell;
            catch ME
                fig = app.CambeidgeTHzconverterUIFigure;
                uialert(fig,'Invalid measurement fields','warning');
                return;
            end

            meaNum = size(Tcell,2);

            for idx = 1:meaNum
                refTime = Tcell{4,idx};
                refSig = Tcell{5,idx};
                samTime = Tcell{6,idx};
                samSig = Tcell{7,idx};

                if isempty(refTime)

                else
                    % set the ref. peak location 0 ps
                    [Ref_max Ref_idx] = max(refSig);
                    maxPerLocs = find(refSig >(Ref_max*maxPer));
                    maxLoc = maxPerLocs(round(length(maxPerLocs)/2));                        
                    time_shift = refTime(maxLoc);
                    refTime = refTime - time_shift;
                    samTime = samTime - time_shift;
                    
                    Sam_max = max(samSig);
                    maxPerLocs = find(samSig >(Sam_max*maxPer));
                    maxLoc = maxPerLocs(round(length(maxPerLocs)/2));
                    tDelay = (round(samTime(maxLoc)*10^3))/10^3;
                    
                    Tcell(4,idx) = {refTime};
                    Tcell(6,idx) = {samTime};
                    Tcell(rowTimeDelay,idx) = {tDelay};
                end
                
            end

            app.Tcell = Tcell;
            updateMeasurementTable(app);
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Get the file path for locating images
            pathToMLAPP = fileparts(mfilename('fullpath'));

            % Create CambeidgeTHzconverterUIFigure and hide until all components are created
            app.CambeidgeTHzconverterUIFigure = uifigure('Visible', 'off');
            app.CambeidgeTHzconverterUIFigure.Position = [100 100 1054 930];
            app.CambeidgeTHzconverterUIFigure.Name = 'Cambeidge THz converter';
            app.CambeidgeTHzconverterUIFigure.Icon = fullfile(pathToMLAPP, 'CaT_logo.png');

            % Create ImportmeasurementButton
            app.ImportmeasurementButton = uibutton(app.CambeidgeTHzconverterUIFigure, 'push');
            app.ImportmeasurementButton.ButtonPushedFcn = createCallbackFcn(app, @ImportmeasurementButtonPushed, true);
            app.ImportmeasurementButton.FontWeight = 'bold';
            app.ImportmeasurementButton.Position = [44 857 159 23];
            app.ImportmeasurementButton.Text = 'Import measurement';

            % Create FILESEditField
            app.FILESEditField = uieditfield(app.CambeidgeTHzconverterUIFigure, 'text');
            app.FILESEditField.Position = [218 858 578 22];

            % Create DeplaydataButton
            app.DeplaydataButton = uibutton(app.CambeidgeTHzconverterUIFigure, 'push');
            app.DeplaydataButton.ButtonPushedFcn = createCallbackFcn(app, @DeplaydataButtonPushed, true);
            app.DeplaydataButton.FontWeight = 'bold';
            app.DeplaydataButton.Position = [683 824 113 25];
            app.DeplaydataButton.Text = 'Deplay data';

            % Create CambridgeTHzconverterLabel
            app.CambridgeTHzconverterLabel = uilabel(app.CambeidgeTHzconverterUIFigure);
            app.CambridgeTHzconverterLabel.FontSize = 23;
            app.CambridgeTHzconverterLabel.FontWeight = 'bold';
            app.CambridgeTHzconverterLabel.FontAngle = 'italic';
            app.CambridgeTHzconverterLabel.Position = [28 888 288 30];
            app.CambridgeTHzconverterLabel.Text = 'Cambridge THz converter';

            % Create DEBUGMsgLabel
            app.DEBUGMsgLabel = uilabel(app.CambeidgeTHzconverterUIFigure);
            app.DEBUGMsgLabel.FontWeight = 'bold';
            app.DEBUGMsgLabel.Position = [619 884 219 22];
            app.DEBUGMsgLabel.Text = '';

            % Create ExportTHzfileButton
            app.ExportTHzfileButton = uibutton(app.CambeidgeTHzconverterUIFigure, 'push');
            app.ExportTHzfileButton.ButtonPushedFcn = createCallbackFcn(app, @ExportTHzfileButtonPushed, true);
            app.ExportTHzfileButton.FontWeight = 'bold';
            app.ExportTHzfileButton.Position = [825 30 194 56];
            app.ExportTHzfileButton.Text = 'Export THz file';

            % Create THzCONVERTERENGINEDropDownLabel
            app.THzCONVERTERENGINEDropDownLabel = uilabel(app.CambeidgeTHzconverterUIFigure);
            app.THzCONVERTERENGINEDropDownLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.THzCONVERTERENGINEDropDownLabel.HorizontalAlignment = 'right';
            app.THzCONVERTERENGINEDropDownLabel.FontWeight = 'bold';
            app.THzCONVERTERENGINEDropDownLabel.Position = [45 825 156 22];
            app.THzCONVERTERENGINEDropDownLabel.Text = 'THz CONVERTER ENGINE';

            % Create THzCONVERTERENGINEDropDown
            app.THzCONVERTERENGINEDropDown = uidropdown(app.CambeidgeTHzconverterUIFigure);
            app.THzCONVERTERENGINEDropDown.Items = {'No engines available. Please check m files in .\engine folder.'};
            app.THzCONVERTERENGINEDropDown.FontWeight = 'bold';
            app.THzCONVERTERENGINEDropDown.BackgroundColor = [0.9412 0.9412 0.9412];
            app.THzCONVERTERENGINEDropDown.Position = [218 825 448 22];
            app.THzCONVERTERENGINEDropDown.Value = 'No engines available. Please check m files in .\engine folder.';

            % Create ClearmemoryButton
            app.ClearmemoryButton = uibutton(app.CambeidgeTHzconverterUIFigure, 'push');
            app.ClearmemoryButton.ButtonPushedFcn = createCallbackFcn(app, @ClearmemoryButtonPushed, true);
            app.ClearmemoryButton.FontWeight = 'bold';
            app.ClearmemoryButton.Position = [43 30 122 56];
            app.ClearmemoryButton.Text = 'Clear memory';

            % Create ImportTHzfileButton
            app.ImportTHzfileButton = uibutton(app.CambeidgeTHzconverterUIFigure, 'push');
            app.ImportTHzfileButton.ButtonPushedFcn = createCallbackFcn(app, @ImportTHzfileButtonPushed, true);
            app.ImportTHzfileButton.FontWeight = 'bold';
            app.ImportTHzfileButton.Position = [179 30 121 56];
            app.ImportTHzfileButton.Text = 'Import THz file';

            % Create PoweredbyTerahertzApplicationsGroupUniversityofCambridgeLabel
            app.PoweredbyTerahertzApplicationsGroupUniversityofCambridgeLabel = uilabel(app.CambeidgeTHzconverterUIFigure);
            app.PoweredbyTerahertzApplicationsGroupUniversityofCambridgeLabel.FontSize = 10;
            app.PoweredbyTerahertzApplicationsGroupUniversityofCambridgeLabel.Position = [715 9 337 12];
            app.PoweredbyTerahertzApplicationsGroupUniversityofCambridgeLabel.Text = 'Powered by Terahertz Applications Group. University of Cambridge';

            % Create Image
            app.Image = uiimage(app.CambeidgeTHzconverterUIFigure);
            app.Image.Position = [825 822 209 84];
            app.Image.ImageSource = fullfile(pathToMLAPP, 'dotTHzProject_logo.png');

            % Create TabGroup
            app.TabGroup = uitabgroup(app.CambeidgeTHzconverterUIFigure);
            app.TabGroup.Position = [24 97 1010 712];

            % Create MEASUREMENTANDMETADATATab
            app.MEASUREMENTANDMETADATATab = uitab(app.TabGroup);
            app.MEASUREMENTANDMETADATATab.Title = 'MEASUREMENT AND METADATA';

            % Create UITable_measurement
            app.UITable_measurement = uitable(app.MEASUREMENTANDMETADATATab);
            app.UITable_measurement.ColumnName = '';
            app.UITable_measurement.ColumnRearrangeable = 'on';
            app.UITable_measurement.RowName = {};
            app.UITable_measurement.CellEditCallback = createCallbackFcn(app, @UITable_measurementCellEdit, true);
            app.UITable_measurement.CellSelectionCallback = createCallbackFcn(app, @UITable_measurementCellSelection, true);
            app.UITable_measurement.Multiselect = 'off';
            app.UITable_measurement.Position = [178 156 807 515];

            % Create UITable_scan_header
            app.UITable_scan_header = uitable(app.MEASUREMENTANDMETADATATab);
            app.UITable_scan_header.ColumnName = '';
            app.UITable_scan_header.RowName = {};
            app.UITable_scan_header.FontWeight = 'bold';
            app.UITable_scan_header.Position = [23 156 156 515];

            % Create METADATAPanel
            app.METADATAPanel = uipanel(app.MEASUREMENTANDMETADATATab);
            app.METADATAPanel.Title = 'METADATA';
            app.METADATAPanel.FontWeight = 'bold';
            app.METADATAPanel.Position = [33 17 243 127];

            % Create GengeratemetaXLSfileButton
            app.GengeratemetaXLSfileButton = uibutton(app.METADATAPanel, 'push');
            app.GengeratemetaXLSfileButton.ButtonPushedFcn = createCallbackFcn(app, @GengeratemetaXLSfileButtonPushed, true);
            app.GengeratemetaXLSfileButton.Position = [15 73 214 25];
            app.GengeratemetaXLSfileButton.Text = 'Gengerate meta XLS file';

            % Create ImportmetadatafromXLSfileButton
            app.ImportmetadatafromXLSfileButton = uibutton(app.METADATAPanel, 'push');
            app.ImportmetadatafromXLSfileButton.ButtonPushedFcn = createCallbackFcn(app, @ImportmetadatafromXLSfileButtonPushed, true);
            app.ImportmetadatafromXLSfileButton.Position = [15 41 214 25];
            app.ImportmetadatafromXLSfileButton.Text = 'Import meta data from XLS file';

            % Create LOADMETAXLS_EditField
            app.LOADMETAXLS_EditField = uieditfield(app.METADATAPanel, 'text');
            app.LOADMETAXLS_EditField.Editable = 'off';
            app.LOADMETAXLS_EditField.BackgroundColor = [0.9412 0.9412 0.9412];
            app.LOADMETAXLS_EditField.Position = [78 11 152 22];

            % Create COLUMNCONTROLPanel
            app.COLUMNCONTROLPanel = uipanel(app.MEASUREMENTANDMETADATATab);
            app.COLUMNCONTROLPanel.Title = 'COLUMN CONTROL';
            app.COLUMNCONTROLPanel.FontWeight = 'bold';
            app.COLUMNCONTROLPanel.Position = [292 17 180 127];

            % Create RemoveButton
            app.RemoveButton = uibutton(app.COLUMNCONTROLPanel, 'push');
            app.RemoveButton.ButtonPushedFcn = createCallbackFcn(app, @RemoveButtonPushed, true);
            app.RemoveButton.Position = [11 10 155 25];
            app.RemoveButton.Text = 'Remove';

            % Create MoveButton
            app.MoveButton = uibutton(app.COLUMNCONTROLPanel, 'push');
            app.MoveButton.ButtonPushedFcn = createCallbackFcn(app, @MoveButtonPushed, true);
            app.MoveButton.Position = [12 73 75 25];
            app.MoveButton.Text = 'Move <<';

            % Create MoveButton_2
            app.MoveButton_2 = uibutton(app.COLUMNCONTROLPanel, 'push');
            app.MoveButton_2.ButtonPushedFcn = createCallbackFcn(app, @MoveButton_2Pushed, true);
            app.MoveButton_2.Position = [92 73 75 25];
            app.MoveButton_2.Text = '>>Move';

            % Create PlotwaveformsButton
            app.PlotwaveformsButton = uibutton(app.COLUMNCONTROLPanel, 'push');
            app.PlotwaveformsButton.ButtonPushedFcn = createCallbackFcn(app, @PlotwaveformsButtonPushed, true);
            app.PlotwaveformsButton.Position = [11 42 155 25];
            app.PlotwaveformsButton.Text = 'Plot waveform(s)';

            % Create UPDATETABLEPanel
            app.UPDATETABLEPanel = uipanel(app.MEASUREMENTANDMETADATATab);
            app.UPDATETABLEPanel.Title = 'UPDATE TABLE';
            app.UPDATETABLEPanel.Position = [776 17 164 127];

            % Create RefractuveindexButton
            app.RefractuveindexButton = uibutton(app.UPDATETABLEPanel, 'push');
            app.RefractuveindexButton.ButtonPushedFcn = createCallbackFcn(app, @RefractuveindexButtonPushed, true);
            app.RefractuveindexButton.Position = [11 74 145 25];
            app.RefractuveindexButton.Text = 'Refractuve index';

            % Create ThicknessButton
            app.ThicknessButton = uibutton(app.UPDATETABLEPanel, 'push');
            app.ThicknessButton.ButtonPushedFcn = createCallbackFcn(app, @ThicknessButtonPushed, true);
            app.ThicknessButton.Position = [11 42 145 25];
            app.ThicknessButton.Text = 'Thickness';

            % Create TimedelayButton
            app.TimedelayButton = uibutton(app.UPDATETABLEPanel, 'push');
            app.TimedelayButton.ButtonPushedFcn = createCallbackFcn(app, @TimedelayButtonPushed, true);
            app.TimedelayButton.Position = [11 10 145 25];
            app.TimedelayButton.Text = 'Time delay';

            % Create REFERENCESIGNALCONTROLPanel
            app.REFERENCESIGNALCONTROLPanel = uipanel(app.MEASUREMENTANDMETADATATab);
            app.REFERENCESIGNALCONTROLPanel.Title = 'REFERENCE SIGNAL CONTROL';
            app.REFERENCESIGNALCONTROLPanel.Position = [485 17 276 127];

            % Create SelectedcolumnEditFieldLabel
            app.SelectedcolumnEditFieldLabel = uilabel(app.REFERENCESIGNALCONTROLPanel);
            app.SelectedcolumnEditFieldLabel.HorizontalAlignment = 'right';
            app.SelectedcolumnEditFieldLabel.Position = [7 74 94 22];
            app.SelectedcolumnEditFieldLabel.Text = 'Selected column';

            % Create SelectedcolumnEditField
            app.SelectedcolumnEditField = uieditfield(app.REFERENCESIGNALCONTROLPanel, 'numeric');
            app.SelectedcolumnEditField.Limits = [1 Inf];
            app.SelectedcolumnEditField.ValueDisplayFormat = '%.0f';
            app.SelectedcolumnEditField.Position = [108 74 43 22];
            app.SelectedcolumnEditField.Value = 1;

            % Create sDropDownLabel
            app.sDropDownLabel = uilabel(app.REFERENCESIGNALCONTROLPanel);
            app.sDropDownLabel.HorizontalAlignment = 'right';
            app.sDropDownLabel.Position = [150 75 11 22];
            app.sDropDownLabel.Text = '''s';

            % Create sDropDown
            app.sDropDown = uidropdown(app.REFERENCESIGNALCONTROLPanel);
            app.sDropDown.Items = {'Sample', 'Reference'};
            app.sDropDown.Position = [168 75 94 22];
            app.sDropDown.Value = 'Sample';

            % Create TocolumnsfromEditFieldLabel
            app.TocolumnsfromEditFieldLabel = uilabel(app.REFERENCESIGNALCONTROLPanel);
            app.TocolumnsfromEditFieldLabel.HorizontalAlignment = 'right';
            app.TocolumnsfromEditFieldLabel.Position = [31 43 94 22];
            app.TocolumnsfromEditFieldLabel.Text = 'To columns from';

            % Create TocolumnsfromEditField
            app.TocolumnsfromEditField = uieditfield(app.REFERENCESIGNALCONTROLPanel, 'numeric');
            app.TocolumnsfromEditField.Limits = [1 Inf];
            app.TocolumnsfromEditField.ValueDisplayFormat = '%.0f';
            app.TocolumnsfromEditField.Position = [131 43 50 22];
            app.TocolumnsfromEditField.Value = 1;

            % Create toLabel
            app.toLabel = uilabel(app.REFERENCESIGNALCONTROLPanel);
            app.toLabel.HorizontalAlignment = 'right';
            app.toLabel.Position = [173 42 25 22];
            app.toLabel.Text = 'to';

            % Create FILEDLISTTOEditField
            app.FILEDLISTTOEditField = uieditfield(app.REFERENCESIGNALCONTROLPanel, 'numeric');
            app.FILEDLISTTOEditField.Limits = [1 Inf];
            app.FILEDLISTTOEditField.ValueDisplayFormat = '%.0f';
            app.FILEDLISTTOEditField.Position = [202 42 50 22];
            app.FILEDLISTTOEditField.Value = 1;

            % Create ApplyButton
            app.ApplyButton = uibutton(app.REFERENCESIGNALCONTROLPanel, 'push');
            app.ApplyButton.ButtonPushedFcn = createCallbackFcn(app, @ApplyButtonPushed, true);
            app.ApplyButton.Position = [122 10 142 25];
            app.ApplyButton.Text = 'Apply';

            % Create INSTRUMENTANDLABORATORYTab
            app.INSTRUMENTANDLABORATORYTab = uitab(app.TabGroup);
            app.INSTRUMENTANDLABORATORYTab.Title = 'INSTRUMENT AND LABORATORY';

            % Create UITable_INS
            app.UITable_INS = uitable(app.INSTRUMENTANDLABORATORYTab);
            app.UITable_INS.ColumnName = '';
            app.UITable_INS.RowName = {};
            app.UITable_INS.CellEditCallback = createCallbackFcn(app, @UITable_INSCellEdit, true);
            app.UITable_INS.CellSelectionCallback = createCallbackFcn(app, @UITable_INSCellSelection, true);
            app.UITable_INS.Multiselect = 'off';
            app.UITable_INS.Position = [174 527 801 112];

            % Create UITable_INS_header
            app.UITable_INS_header = uitable(app.INSTRUMENTANDLABORATORYTab);
            app.UITable_INS_header.ColumnName = '';
            app.UITable_INS_header.RowName = {};
            app.UITable_INS_header.FontWeight = 'bold';
            app.UITable_INS_header.Position = [19 527 156 112];

            % Create UITable_LAB
            app.UITable_LAB = uitable(app.INSTRUMENTANDLABORATORYTab);
            app.UITable_LAB.ColumnName = '';
            app.UITable_LAB.RowName = {};
            app.UITable_LAB.CellEditCallback = createCallbackFcn(app, @UITable_LABCellEdit, true);
            app.UITable_LAB.CellSelectionCallback = createCallbackFcn(app, @UITable_LABCellSelection, true);
            app.UITable_LAB.Multiselect = 'off';
            app.UITable_LAB.Position = [174 278 801 133];

            % Create UITable_LAB_header
            app.UITable_LAB_header = uitable(app.INSTRUMENTANDLABORATORYTab);
            app.UITable_LAB_header.ColumnName = '';
            app.UITable_LAB_header.RowName = {};
            app.UITable_LAB_header.FontWeight = 'bold';
            app.UITable_LAB_header.Position = [19 278 156 133];

            % Create INSTRUMENTLabel
            app.INSTRUMENTLabel = uilabel(app.INSTRUMENTANDLABORATORYTab);
            app.INSTRUMENTLabel.FontSize = 13;
            app.INSTRUMENTLabel.Position = [27 646 96 22];
            app.INSTRUMENTLabel.Text = 'INSTRUMENT*';

            % Create LABORATORYLabel
            app.LABORATORYLabel = uilabel(app.INSTRUMENTANDLABORATORYTab);
            app.LABORATORYLabel.FontSize = 13;
            app.LABORATORYLabel.Position = [27 420 98 22];
            app.LABORATORYLabel.Text = 'LABORATORY*';

            % Create INS_LINKButton
            app.INS_LINKButton = uibutton(app.INSTRUMENTANDLABORATORYTab, 'push');
            app.INS_LINKButton.ButtonPushedFcn = createCallbackFcn(app, @INS_LINKButtonPushed, true);
            app.INS_LINKButton.Position = [904 491 70 25];
            app.INS_LINKButton.Text = 'Link';

            % Create LAB_LINKButton
            app.LAB_LINKButton = uibutton(app.INSTRUMENTANDLABORATORYTab, 'push');
            app.LAB_LINKButton.ButtonPushedFcn = createCallbackFcn(app, @LAB_LINKButtonPushed, true);
            app.LAB_LINKButton.Position = [904 242 71 25];
            app.LAB_LINKButton.Text = 'Link';

            % Create ADD_INS_COL_Button
            app.ADD_INS_COL_Button = uibutton(app.INSTRUMENTANDLABORATORYTab, 'push');
            app.ADD_INS_COL_Button.ButtonPushedFcn = createCallbackFcn(app, @ADD_INS_COL_ButtonPushed, true);
            app.ADD_INS_COL_Button.Position = [138 490 165 26];
            app.ADD_INS_COL_Button.Text = 'Add profile';

            % Create REMOVE_INS_COL_Button
            app.REMOVE_INS_COL_Button = uibutton(app.INSTRUMENTANDLABORATORYTab, 'push');
            app.REMOVE_INS_COL_Button.ButtonPushedFcn = createCallbackFcn(app, @REMOVE_INS_COL_ButtonPushed, true);
            app.REMOVE_INS_COL_Button.Position = [312 490 190 26];
            app.REMOVE_INS_COL_Button.Text = 'Remove selected profile';

            % Create ADD_LAB_COL_Button
            app.ADD_LAB_COL_Button = uibutton(app.INSTRUMENTANDLABORATORYTab, 'push');
            app.ADD_LAB_COL_Button.ButtonPushedFcn = createCallbackFcn(app, @ADD_LAB_COL_ButtonPushed, true);
            app.ADD_LAB_COL_Button.Position = [142 241 165 26];
            app.ADD_LAB_COL_Button.Text = 'Add profile';

            % Create REMOVE_LAB_COL_Button
            app.REMOVE_LAB_COL_Button = uibutton(app.INSTRUMENTANDLABORATORYTab, 'push');
            app.REMOVE_LAB_COL_Button.ButtonPushedFcn = createCallbackFcn(app, @REMOVE_LAB_COL_ButtonPushed, true);
            app.REMOVE_LAB_COL_Button.Position = [316 241 190 26];
            app.REMOVE_LAB_COL_Button.Text = 'Remove selected profile';

            % Create SelectionLabel
            app.SelectionLabel = uilabel(app.INSTRUMENTANDLABORATORYTab);
            app.SelectionLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.SelectionLabel.HorizontalAlignment = 'right';
            app.SelectionLabel.Position = [523 492 55 22];
            app.SelectionLabel.Text = 'Selection';

            % Create INS_SELECTIONEditField
            app.INS_SELECTIONEditField = uieditfield(app.INSTRUMENTANDLABORATORYTab, 'numeric');
            app.INS_SELECTIONEditField.Limits = [0 Inf];
            app.INS_SELECTIONEditField.ValueDisplayFormat = '%.0f';
            app.INS_SELECTIONEditField.Editable = 'off';
            app.INS_SELECTIONEditField.BackgroundColor = [0.9412 0.9412 0.9412];
            app.INS_SELECTIONEditField.Position = [586 492 34 22];

            % Create SelectionLabel_2
            app.SelectionLabel_2 = uilabel(app.INSTRUMENTANDLABORATORYTab);
            app.SelectionLabel_2.BackgroundColor = [0.9412 0.9412 0.9412];
            app.SelectionLabel_2.HorizontalAlignment = 'right';
            app.SelectionLabel_2.Position = [527 243 55 22];
            app.SelectionLabel_2.Text = 'Selection';

            % Create LAB_SELECTIONEditField
            app.LAB_SELECTIONEditField = uieditfield(app.INSTRUMENTANDLABORATORYTab, 'numeric');
            app.LAB_SELECTIONEditField.Limits = [0 Inf];
            app.LAB_SELECTIONEditField.ValueDisplayFormat = '%.0f';
            app.LAB_SELECTIONEditField.Editable = 'off';
            app.LAB_SELECTIONEditField.BackgroundColor = [0.9412 0.9412 0.9412];
            app.LAB_SELECTIONEditField.Position = [590 243 34 22];

            % Create Applydefaultprofile1Button
            app.Applydefaultprofile1Button = uibutton(app.INSTRUMENTANDLABORATORYTab, 'push');
            app.Applydefaultprofile1Button.ButtonPushedFcn = createCallbackFcn(app, @Applydefaultprofile1ButtonPushed, true);
            app.Applydefaultprofile1Button.Position = [723 17 252 26];
            app.Applydefaultprofile1Button.Text = 'Apply default profile (1)';

            % Create MeasurementfieldfromLabel
            app.MeasurementfieldfromLabel = uilabel(app.INSTRUMENTANDLABORATORYTab);
            app.MeasurementfieldfromLabel.HorizontalAlignment = 'right';
            app.MeasurementfieldfromLabel.Position = [632 492 132 22];
            app.MeasurementfieldfromLabel.Text = 'Measurement field from';

            % Create INS_MEASUREMENTFILEDEditField
            app.INS_MEASUREMENTFILEDEditField = uieditfield(app.INSTRUMENTANDLABORATORYTab, 'numeric');
            app.INS_MEASUREMENTFILEDEditField.Limits = [1 Inf];
            app.INS_MEASUREMENTFILEDEditField.ValueDisplayFormat = '%.0f';
            app.INS_MEASUREMENTFILEDEditField.Position = [771 492 50 22];
            app.INS_MEASUREMENTFILEDEditField.Value = 1;

            % Create toLabel_2
            app.toLabel_2 = uilabel(app.INSTRUMENTANDLABORATORYTab);
            app.toLabel_2.HorizontalAlignment = 'right';
            app.toLabel_2.Position = [819 492 25 22];
            app.toLabel_2.Text = 'to';

            % Create INS_MEASUREMENTFILEDTOEditField
            app.INS_MEASUREMENTFILEDTOEditField = uieditfield(app.INSTRUMENTANDLABORATORYTab, 'numeric');
            app.INS_MEASUREMENTFILEDTOEditField.Limits = [1 Inf];
            app.INS_MEASUREMENTFILEDTOEditField.ValueDisplayFormat = '%.0f';
            app.INS_MEASUREMENTFILEDTOEditField.Position = [848 492 50 22];
            app.INS_MEASUREMENTFILEDTOEditField.Value = 1;

            % Create MeasurementfieldfromLabel_2
            app.MeasurementfieldfromLabel_2 = uilabel(app.INSTRUMENTANDLABORATORYTab);
            app.MeasurementfieldfromLabel_2.HorizontalAlignment = 'right';
            app.MeasurementfieldfromLabel_2.Position = [633 243 132 22];
            app.MeasurementfieldfromLabel_2.Text = 'Measurement field from';

            % Create LAB_MEASUREMENTFILEDEditField
            app.LAB_MEASUREMENTFILEDEditField = uieditfield(app.INSTRUMENTANDLABORATORYTab, 'numeric');
            app.LAB_MEASUREMENTFILEDEditField.Limits = [1 Inf];
            app.LAB_MEASUREMENTFILEDEditField.ValueDisplayFormat = '%.0f';
            app.LAB_MEASUREMENTFILEDEditField.Position = [772 243 50 22];
            app.LAB_MEASUREMENTFILEDEditField.Value = 1;

            % Create toLabel_3
            app.toLabel_3 = uilabel(app.INSTRUMENTANDLABORATORYTab);
            app.toLabel_3.HorizontalAlignment = 'right';
            app.toLabel_3.Position = [818 243 25 22];
            app.toLabel_3.Text = 'to';

            % Create LAB_MEASUREMENTFILEDTOEditField
            app.LAB_MEASUREMENTFILEDTOEditField = uieditfield(app.INSTRUMENTANDLABORATORYTab, 'numeric');
            app.LAB_MEASUREMENTFILEDTOEditField.Limits = [1 Inf];
            app.LAB_MEASUREMENTFILEDTOEditField.ValueDisplayFormat = '%.0f';
            app.LAB_MEASUREMENTFILEDTOEditField.Position = [847 243 50 22];
            app.LAB_MEASUREMENTFILEDTOEditField.Value = 1;

            % Create DonotusecharacterindescriptionasitisusedforadelimiterLabel
            app.DonotusecharacterindescriptionasitisusedforadelimiterLabel = uilabel(app.INSTRUMENTANDLABORATORYTab);
            app.DonotusecharacterindescriptionasitisusedforadelimiterLabel.Position = [607 663 368 22];
            app.DonotusecharacterindescriptionasitisusedforadelimiterLabel.Text = '* Do not use '' / '' character in description as it is used for a delimiter.';

            % Create PrefixnumberstothedatasetnameLabel
            app.PrefixnumberstothedatasetnameLabel = uilabel(app.CambeidgeTHzconverterUIFigure);
            app.PrefixnumberstothedatasetnameLabel.HorizontalAlignment = 'center';
            app.PrefixnumberstothedatasetnameLabel.Position = [326 57 81 22];
            app.PrefixnumberstothedatasetnameLabel.Text = 'Number prefix';

            % Create NumberprefixSwitch
            app.NumberprefixSwitch = uiswitch(app.CambeidgeTHzconverterUIFigure, 'slider');
            app.NumberprefixSwitch.Position = [435 59 40 18];

            % Create AttributuesallocationLabel
            app.AttributuesallocationLabel = uilabel(app.CambeidgeTHzconverterUIFigure);
            app.AttributuesallocationLabel.HorizontalAlignment = 'center';
            app.AttributuesallocationLabel.Position = [519 57 120 22];
            app.AttributuesallocationLabel.Text = 'Attributues allocation:';

            % Create AttributuesallocationSwitch
            app.AttributuesallocationSwitch = uiswitch(app.CambeidgeTHzconverterUIFigure, 'slider');
            app.AttributuesallocationSwitch.Items = {'All datasets', 'Only first,'};
            app.AttributuesallocationSwitch.Position = [712 59 41 18];
            app.AttributuesallocationSwitch.Value = 'All datasets';

            % Create mustincludeparameterDropDownLabel
            app.mustincludeparameterDropDownLabel = uilabel(app.CambeidgeTHzconverterUIFigure);
            app.mustincludeparameterDropDownLabel.HorizontalAlignment = 'right';
            app.mustincludeparameterDropDownLabel.Position = [627 34 131 22];
            app.mustincludeparameterDropDownLabel.Text = 'must include parameter';

            % Create mustincludeparameterDropDown
            app.mustincludeparameterDropDown = uidropdown(app.CambeidgeTHzconverterUIFigure);
            app.mustincludeparameterDropDown.Items = {'10', '14', '15', '16', '17', '18', '19'};
            app.mustincludeparameterDropDown.Position = [762 34 48 22];
            app.mustincludeparameterDropDown.Value = '10';

            % Show the figure after all components are created
            app.CambeidgeTHzconverterUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = CambridgeTHzconverter_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.CambeidgeTHzconverterUIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.CambeidgeTHzconverterUIFigure)
        end
    end
end