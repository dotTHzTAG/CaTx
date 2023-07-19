classdef CaTx_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        CaTxUIFigure                   matlab.ui.Figure
        Image                          matlab.ui.control.Image
        MustincludeAttributeinAllDatasetsDropDown  matlab.ui.control.DropDown
        MustincludeAttributeinAllDatasetsDropDownLabel  matlab.ui.control.Label
        AttributuesWriteSwitch         matlab.ui.control.Switch
        AttributuesallocationLabel     matlab.ui.control.Label
        NumberPrefixSwitch             matlab.ui.control.Switch
        PrefixnumberstothedatasetnameLabel  matlab.ui.control.Label
        TabGroup                       matlab.ui.container.TabGroup
        MeasurementandMetadataTab      matlab.ui.container.Tab
        WaveformControlPanel           matlab.ui.container.Panel
        DeleteButton                   matlab.ui.control.Button
        TargetWaveformDropDown         matlab.ui.control.DropDown
        TargetWaveformDropDownLabel    matlab.ui.control.Label
        MoveButton_3                   matlab.ui.control.Button
        CopyButton                     matlab.ui.control.Button
        SourceWaveformDropDown         matlab.ui.control.DropDown
        SourceWaveformDropDownLabel    matlab.ui.control.Label
        FILEDLISTTOEditField           matlab.ui.control.NumericEditField
        toLabel                        matlab.ui.control.Label
        ofColumnEditField_2            matlab.ui.control.NumericEditField
        ofColumnEditField_2Label       matlab.ui.control.Label
        ofColumnEditField              matlab.ui.control.NumericEditField
        ofColumnEditFieldLabel         matlab.ui.control.Label
        TableUpdatePanel               matlab.ui.container.Panel
        TimeDelayButton                matlab.ui.control.Button
        ThicknessButton                matlab.ui.control.Button
        RefractiveIndexButton          matlab.ui.control.Button
        ColumnControlPanel             matlab.ui.container.Panel
        PlotWaveformsButton            matlab.ui.control.Button
        MoveButton_2                   matlab.ui.control.Button
        MoveButton                     matlab.ui.control.Button
        RemoveButton                   matlab.ui.control.Button
        MetadataPanel                  matlab.ui.container.Panel
        LOADMETAXLS_EditField          matlab.ui.control.EditField
        ImportMetadataFromXLSFileButton  matlab.ui.control.Button
        GenerateMetadataXLSFileButton  matlab.ui.control.Button
        UITable_scan_header            matlab.ui.control.Table
        UITable_measurement            matlab.ui.control.Table
        InstrumentandUserTab           matlab.ui.container.Tab
        AnonymousInstrumentProfile0Button  matlab.ui.control.Button
        DonotusecharacterindescriptionLabel  matlab.ui.control.Label
        LAB_MEASUREMENTFILEDTOEditField  matlab.ui.control.NumericEditField
        toLabel_3                      matlab.ui.control.Label
        LAB_MEASUREMENTFILEDEditField  matlab.ui.control.NumericEditField
        MeasurementfieldfromLabel_2    matlab.ui.control.Label
        INS_MEASUREMENTFILEDTOEditField  matlab.ui.control.NumericEditField
        toLabel_2                      matlab.ui.control.Label
        INS_MEASUREMENTFILEDEditField  matlab.ui.control.NumericEditField
        MeasurementfieldfromLabel      matlab.ui.control.Label
        AnonymousUserProfile0Button    matlab.ui.control.Button
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
        UserLabel                      matlab.ui.control.Label
        InstrumentLabel                matlab.ui.control.Label
        UITable_LAB_header             matlab.ui.control.Table
        UITable_LAB                    matlab.ui.control.Table
        UITable_INS_header             matlab.ui.control.Table
        UITable_INS                    matlab.ui.control.Table
        ImportTHzFileButton            matlab.ui.control.Button
        ClearMemoryButton              matlab.ui.control.Button
        ConverterEngineDropDown        matlab.ui.control.DropDown
        ConverterEngineDropDownLabel   matlab.ui.control.Label
        ExportTHzFileButton            matlab.ui.control.Button
        DEBUGMsgLabel                  matlab.ui.control.Label
        CaTxLabel                      matlab.ui.control.Label
        DeployDataButton               matlab.ui.control.Button
        FILESEditField                 matlab.ui.control.EditField
        ImportMeasurementButton        matlab.ui.control.Button
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
            ins_profilefile = strcat(mPath,filesep,'Profiles',filesep,'Instruments.xls');
            lab_profilefile = strcat(mPath,filesep,'Profiles',filesep,'Users.xls');

            % check instrument profile file and set the default
            if isfile(ins_profilefile)
                app.ins_profile = 1;
                app.TcellP1 = readcell(ins_profilefile);
                app.TcellP1(cellfun(@(x) isa(x,'missing'),app.TcellP1)) = {""};
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
                app.TcellP2(cellfun(@(x) isa(x,'missing'),app.TcellP2)) = {""};
                app.UITable_LAB.Data = cell2table(app.TcellP2);
                app.UITable_LAB.ColumnEditable = true;
            else
                app.lab_profile = 0;
                app.UITable_LAB.Data = [];
            end

        end
        
        function writeP1Profile(app)            
            mPath = fileparts(which(mfilename));
            ins_profilefile = strcat(mPath,filesep,'Profiles',filesep,'Instruments.xls');
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
            lab_profilefile = strcat(mPath,filesep,'Profiles',filesep,'Users.xls');
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

            rowINSProfile = 4; % instrument profile row number in the measurement table
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

            rowUserProfile = 5; % instrument profile row number in the measurement table
            pLinkMat = cell2mat(app.Tcell(rowUserProfile,:)); % profile link matrix
            zLinkMat = zeros(size(pLinkMat));
            colNum = app.LAB_SELECTIONEditField.Value;
            pLinkMat(pLinkMat == colNum) = 0;
            zLinkMat(pLinkMat > colNum) = 1;
            pLinkMat = pLinkMat - zLinkMat;
            pLinkCell = mat2cell(pLinkMat,[1],ones(1,size(pLinkMat,2)));

            % meausrement table profile update
            app.Tcell(rowUserProfile,:) = pLinkCell;
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
        
        function waveformControl(app,Opt)
            Indices = app.cellIndices;
            Tcell = app.Tcell;
            colFrom = app.ofColumnEditField_2.Value;
            colTo = app.FILEDLISTTOEditField.Value;
            totalMeasNum = app.totalMeasNum;
            src = app.SourceWaveformDropDown.Value;
            trg = app.TargetWaveformDropDown.Value;
            
            if isempty(Indices)
                return;
            else
                srcIdx = Indices(2);
            end

            if isequal(src,"Sample")
                srcRow = 6;
            elseif isequal(src,"Ref.1")
                srcRow = 8;
            else
                srcRow = 10;
            end

            if isequal(trg,"Sample")
                trgRow = 6;
            elseif isequal(trg,"Ref.1")
                trgRow = 8;
            else
                trgRow = 10;
            end

            if isequal(Opt,"Delete")
                Tcell{srcRow,srcIdx}=[];
                Tcell{srcRow+1,srcIdx}=[];
            else
                srcTime = Tcell(srcRow,srcIdx);
                srcSig = Tcell(srcRow+1,srcIdx);
                refLength = length(srcTime);
    
                for idx = colFrom:colTo
                    trgTime = Tcell(6,idx);
                    trgLength = length(trgTime);
    
                    if ~isequal(refLength,trgLength)
                        fig = app.CaTxUIFigure;
                        uialert(fig,'Incompatible data length','warning');
                        return;
                    end
    
                    Tcell(trgRow,idx) = srcTime;
                    Tcell(trgRow+1,idx) = srcSig;
    
                end
            end

            if isequal(Opt,"Move")
                Tcell{srcRow,srcIdx}=[];
                Tcell{srcRow+1,srcIdx}=[];
            end

            % update the table
            app.Tcell = Tcell;
            updateMeasurementTable(app);
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            mPath = fileparts(which(mfilename)); % matlab app designer source code folder

            % make a list of THz converter engines from .\Engines folder
            engineDir = strcat(mPath,filesep,'Engines');
            profileDir = strcat(mPath,filesep,'Profiles');
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
                app.ConverterEngineDropDown.Items = engineItems;
            end
            
            app.PRJ_count = 0;
            app.filename = [];
            Tcell_header = {'1: Number','2: Name','3: Description','4: Instrument Profile','5: User Profile','6: Sample Time (ps)','7: Sample E.field (a.u.)',...
                '8: Ref.1 Time (ps)','9: Ref.1 E.field (a.u.)', '10: Ref.2 Time (ps)',' 11: Ref.2 E.field (a.u.)','12: Ref. Description',...
                '13: Date and Time','14: Refractive Index', '15: Time Delay (ps)','16: Thickness (mm)','17: Weight (mg)', '18: Temperature (K)',...
                '19: Concentration (%)','20: Phase Info.','21: Coordinate Info.', '22: Numeric Ext.', '23: String Ext.1', '24: String Ext.2',...
                }';
            %Tcell_header = cell(colHeader');
            app.UITable_scan_header.Data = cell2table(Tcell_header);


            ins_profileHeader = {'1: Number', '2: Model', '3: Manufacturer', '4: Address'}';
            lab_profileHeader = {'1: Number', '2: ORCID', '3: Name', '4: Email', '5: Affiliation'}';
            
            app.UITable_INS_header.Data = cell2table(ins_profileHeader);
            app.UITable_LAB_header.Data = cell2table(lab_profileHeader);
            updateProfile(app);

        end

        % Button pushed function: ImportMeasurementButton
        function ImportMeasurementButtonPushed(app, event)
            [filename, pathname] = uigetfile('*.*');figure(app.CaTxUIFigure);
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

        % Button pushed function: DeployDataButton
        function DeployDataButtonPushed(app, event)
            TDSinstrument = app.ConverterEngineDropDown.Value;
            PRJ_count = app.PRJ_count; % number of files to be imported
            fullpathname = app.fullpathname; % full path for the imported files
            Tcell = []; % cell structure table
            DEBUGMsgLabel = app.DEBUGMsgLabel; % Debug message label handler
            uiFigure = app.CaTxUIFigure;

            updateProfile(app);

            func = str2func(TDSinstrument);
            Tcell = func(PRJ_count,fullpathname,DEBUGMsgLabel,uiFigure,Tcell);

            %assignin("base","ins_profilefile", app.ins_profile);


            Tcell(4,:) = num2cell(app.ins_profile);
            Tcell(5,:) = num2cell(app.lab_profile);
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

        % Button pushed function: ClearMemoryButton
        function ClearMemoryButtonPushed(app, event)
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

            app.ofColumnEditField.Value = indices(2);

            %assignin("base","tcell",app.Tcell);

            srcDDItems = {}; %app.SourceWaveformDropDown.Items

            if ~isempty(app.Tcell{6,indices(2)})
                srcDDItems = [srcDDItems,{'Sample'}];
            end

            if ~isempty(app.Tcell{8,indices(2)})
                srcDDItems = [srcDDItems,{'Ref.1'}];
            end

            if ~isempty(app.Tcell{10,indices(2)})
                srcDDItems = [srcDDItems,{'Ref.2'}];
            end

            app.SourceWaveformDropDown.Items = srcDDItems;

            Tcell = app.Tcell(indices(1),indices(2));
            dataType = [2 1 1 2 2, 2 2 2 2 2, 2 1 1 0 2, 0 0 0 0 1, 1 0 1 1]; % 1 for string, 0 for numbers, 2 for do-not-modify

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
            timeDelay = cell2mat(app.Tcell(15,indices(2)));
            app.Tcell(indices(1),indices(2)) = {value};

            if indices(1) == 16 % if the input is the sample thickness
                n_eff = timeDelay*10^-12*3e8/(value*10^-3) + 1;
                n_eff = floor(n_eff*1000)/1000;
                %etl_t = timeDelay + (2*value*10^-3*n_eff/3e8)*10^12;
                app.Tcell(14,indices(2)) = {n_eff};

            elseif indices(1) == 14 % if the input is the sample refractive index
                thickness = timeDelay*10^-9*3e8/(value-1);
                thickness = floor(thickness*10000)/10000;
                %etl_t = timeDelay + (2*thickness*10^-3*value/3e8)*10^12;
                app.Tcell(16,indices(2)) = {thickness};
            end

            updateMeasurementTable(app);
        end

        % Cell edit callback: UITable_measurement
        function UITable_measurementCellEdit(app, event)
            indices = event.Indices;
            newData = event.NewData;
            timeDelay = cell2mat(app.Tcell(15,indices(2)));
            app.Tcell(indices(1),indices(2)) = {newData};

            if indices(1) == 6 % if the input is the sample thickness
                n_eff = timeDelay*10^-12*3e8/(newData*10^-3) + 1;
                n_eff = floor(n_eff*1000)/1000;
                %etl_t = timeDelay + (2*newData*10^-3*n_eff/3e8)*10^12;
                app.Tcell(14,indices(2)) = {n_eff};

            elseif indices(1) == 5 % if the input is the sample refractive index
                thickness = timeDelay*10^-9*3e8/(newData-1);
                thickness = floor(thickness*10000)/10000;
                %etl_t = timeDelay + (2*thickness*10^-3*newData/3e8)*10^12;
                app.Tcell(16,indices(2)) = {thickness};
            end

            updateMeasurementTable(app);
        end

        % Button pushed function: ExportTHzFileButton
        function ExportTHzFileButtonPushed(app, event)
            filter = {'*.thz';'*.*'};
            [filename, filepath] = uiputfile(filter);
            
            if isequal(filename,0)||isequal(filepath,0)
                return;          
            end

            if isempty(app.Tcell)
                return;
            end
                        
            fullfile = strcat(filepath,filename);
            delete(fullfile);
            measNum = app.Tcell{1,end};
            incNum = app.NumberPrefixSwitch.Value;
            varsAttr = ["ref_description","date_time","n_eff","time_delay","thickness","weight","temperature","concentration","phase_info","coordinate_info","numeric_ext","string_ext1","string_ext2"];
            digitNum = ceil(log10(measNum));
            digitNumFormat = strcat('%0',num2str(digitNum),'d');

            % Are the attributes assigned to all datasets?
            if isequal(app.AttributuesWriteSwitch.Value,"All Datasets")
                attAll = true;
            else
                attAll = false;
                ectAttr = str2num(app.MustincludeAttributeinAllDatasetsDropDown.Value);
            end

            app.DEBUGMsgLabel.Text = "Exporting started";
            drawnow;

            for idx = 1:measNum
                
                if isequal(incNum,"On") % prefix numbers to group name
                    dn = strcat('/',sprintf(digitNumFormat,app.Tcell{1,idx}),':',app.Tcell{2,idx});
                else
                    dn = strcat('/',app.Tcell{2,idx});
                end

                if ~attAll
                    dn = strcat('/',sprintf(digitNumFormat,app.Tcell{1,idx}));
                end

                if ~isempty(app.Tcell{6,idx}) % sample waveform 
                    dn01 = strcat(dn,"/ds01");
                    ds01 = [app.Tcell{6,idx};app.Tcell{7,idx}];
                    h5create(fullfile,dn01,size(ds01));
                    h5write(fullfile,dn01,ds01);
                end

                if ~isempty(app.Tcell{8,idx}) % primary referecen waveform 
                    dn02 = strcat(dn,"/ds02");
                    ds02 = [app.Tcell{8,idx};app.Tcell{9,idx}];
                    h5create(fullfile,dn02,size(ds02));
                    h5write(fullfile,dn02,ds02);
                end

                if ~isempty(app.Tcell{10,idx}) % secondary referecen waveform 
                    dn03 = strcat(dn,"/ds03");
                    ds03 = [app.Tcell{10,idx};app.Tcell{11,idx}];
                    h5create(fullfile,dn03,size(ds03));
                    h5write(fullfile,dn03,ds03);
                end
                
                % create and write HDF5 dataset
                %%h5create(fullfile,dn,size(dSet));
                %%h5write(fullfile,dn,dSet);

                % write HDF5 attributes
                if attAll || isequal(idx,1)
                    h5writeatt(fullfile,dn,'description',app.Tcell{3,idx});
                    rowNum = 12;
                    for attrName = varsAttr
                        h5writeatt(fullfile,dn,attrName,app.Tcell{rowNum,idx});
                        rowNum = rowNum + 1;
                    end
                    insNum = app.Tcell{4,idx};
                    userNum = app.Tcell{5,idx};

                    % write instrument details as a part of attribute
                    if isequal(insNum,0) % check whether a profile for instrument is assigned
                        insAttr = '';
                    else
                        insAttr = strcat(app.TcellP1{2,insNum}, '/', app.TcellP1{3,insNum}, '/', app.TcellP1{4,insNum});
                    end
                    h5writeatt(fullfile,dn,'instrument',insAttr);

                    if isequal(userNum,0) % check whether a profile for user is assigned
                        userAttr = '';
                    else
                        userAttr = strcat(app.TcellP2{2, userNum}, '/', app.TcellP2{3,userNum},'/', app.TcellP2{4,userNum},'/', app.TcellP2{5,userNum});
                    end
                    h5writeatt(fullfile,dn,'user',userAttr);
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
            %h5disp(fullfile)

        end

        % Button pushed function: ImportTHzFileButton
        function ImportTHzFileButtonPushed(app, event)
            ClearMemoryButtonPushed(app);
            
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
            measNum = size(thzInfo.Groups,1);
            ListItems = cell(measNum,1);
            [ListItems{:}] = deal(thzInfo.Groups.Name);
            attrItems = ["description","ref_description","date_time","mode","n_eff","time_delay","thickness",...
                "weight","temperature","concentration","phase_info","coordinate_info","numeric_ext","string_ext1","string_ext2"];

            for idx = 1:measNum
                %dn = strcat('/',ListItems{idx});
                dn = ListItems{idx};
                cnt = 1;
                dn

                Tcell{1,idx} = idx;
                Tcell{2,idx} = dn(2:end);

                try
                    dn01 = strcat(dn,'/ds01');
                    ds01 = h5read(fullfile,dn01);
                    Tcell{6,idx} = ds01(1,:);
                    Tcell{7,idx} = ds01(2,:);
                catch ME
                end

                try
                    dn02 = strcat(dn,'/ds02');
                    ds02 = h5read(fullfile,dn02);
                    Tcell{8,idx} = ds02(1,:);
                    Tcell{9,idx} = ds02(2,:);
                catch ME
                end

                try
                    dn03 = strcat(dn,'/ds03');
                    ds03 = h5read(fullfile,dn03);
                    Tcell{10,idx} = ds03(1,:);
                    Tcell{11,idx} = ds03(2,:);
                catch ME
                end

                for attrLoc = [3 (12:24)]
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
                        Tcell{4,idx} = 0;
                    else
                        for idxP1 = tempP1Profile
                            if isequal({insProfile},idxP1)
                                Tcell{4,idx} = cntP1;
                                break;
                            else
                                cntP1 = cntP1 + 1;
                            end
                        end

                        if cntP1 > length(tempP1Profile)
                            tempP1Profile = [tempP1Profile, {insProfile}];
                            Tcell{4,idx} = cntP1;
                            app.TcellP1 = [app.TcellP1, [cntP1;split(insProfile,"/")]];
                            writeP1Profile(app);
                        end
                end

                % user profile matching
                try
                    userProfile = h5readatt(fullfile,dn,"user");
                catch ME
                    userProfile = 0;
                end

                cntP2 = 1;

                if isequal(userProfile,0)
                        Tcell{5,idx} = 0;
                    else
                        for idxP2 = tempP2Profile
                            if isequal({userProfile},idxP2);
                                Tcell{5,idx} = cntP2;
                                break;
                            else
                                cntP2 = cntP2 + 1;
                            end
                        end

                        if cntP2 > length(tempP2Profile)
                            tempP2Profile = [tempP2Profile, {userProfile}];
                            Tcell{5,idx} = cntP2;
                            app.TcellP2 = [app.TcellP2, [cntP2;split(userProfile,"/")]];
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

        % Button pushed function: ImportMetadataFromXLSFileButton
        function ImportMetadataFromXLSFileButtonPushed(app, event)
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
                fig = app.CaTxUIFigure;
                msg = "Mismatched column size";
                uialert(fig,msg,'Warning');
                app.LOADMETAXLS_EditField.Value = '';
                return;
            end

            Tcell(2:3,:)=Tcellxls(2:3,:);
            Tcell(12:end,:)=Tcellxls(4:end,:);
            Tcell(cellfun(@(x) isa(x,'missing'),Tcell)) = {""};
            app.Tcell = Tcell;
            updateMeasurementTable(app);            
        end

        % Button pushed function: GenerateMetadataXLSFileButton
        function GenerateMetadataXLSFileButtonPushed(app, event)

            filter = {'*.xls';'*.*'};
            [filename, filepath] = uiputfile(filter);
            
            if isequal(filename,0)||isequal(filepath,0)
                return;          
            end
            
            fullfile = strcat(filepath,filename);

            Tcell = app.Tcell;
            Tcell_header = app.UITable_scan_header.Data;

            Tcellxls = [Tcell_header Tcell];
            Tcellxls(4:11,:) = [];
            

            writetable(Tcellxls,fullfile,'WriteVariableNames',false);
            fileattrib(fullfile,'+w');
            
        end

        % Button pushed function: RefractiveIndexButton
        function RefractiveIndexButtonPushed(app, event)
            rowRefractiveindex = 14;
            rowTimedelay = 15;
            rowThickness = 16;
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
            rowRefractiveindex = 14;
            rowTimedelay = 15;
            rowThickness = 16;
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

        % Button pushed function: AnonymousUserProfile0Button
        function AnonymousUserProfile0ButtonPushed(app, event)
            updateProfile(app);

            Tcell = app.Tcell;
            Tcell(5,:) = num2cell(0);
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
            ins_profilefile = strcat(mPath,filesep,'Profiles',filesep,'Instruments.xls');

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
            lab_profilefile = strcat(mPath,filesep,'Profiles',filesep,'Users.xls');

            if isfile(lab_profilefile)
                TcellP = app.TcellP2;
                pNum = size(TcellP,2);
                newCell = {pNum+1,char(),char(),char(), char()}';
                TcellP = [TcellP, newCell];
            else
                TcellP{1,1} = 1; % profile number
                TcellP{2,1} = char(); % ORCID
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

        % Button pushed function: PlotWaveformsButton
        function PlotWaveformsButtonPushed(app, event)
            indices = app.cellIndices;
            Tcell = app.Tcell;

            if isempty(indices)
                return;
            end

            sampleName = Tcell{2,indices(2)};

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
            
            legendItems = {};

            if ~isempty(app.Tcell{6,indices(2)})
                samXdata = Tcell{6,indices(2)};
                samYdata = Tcell{7,indices(2)};
                plot(ax,samXdata,samYdata);
                legendItems = [legendItems,{'Sample'}];
            end

            if ~isempty(app.Tcell{8,indices(2)})
                ref1Xdata = Tcell{8,indices(2)};
                ref1Ydata = Tcell{9,indices(2)};
                plot(ax,ref1Xdata,ref1Ydata);
                legendItems = [legendItems,{'Ref.1'}];
            end

            if ~isempty(app.Tcell{10,indices(2)})
                ref2Xdata = Tcell{10,indices(2)};
                ref2Ydata = Tcell{11,indices(2)};
                plot(ax,ref2Xdata,ref2Ydata);
                legendItems = [legendItems,{'Ref.2'}];
            end

            legend(ax,legendItems);
            
        end

        % Button pushed function: INS_LINKButton
        function INS_LINKButtonPushed(app, event)
            profileNum = app.INS_SELECTIONEditField.Value;
            fieldFrom = app.INS_MEASUREMENTFILEDEditField.Value;
            fieldTo = app.INS_MEASUREMENTFILEDTOEditField.Value;
            rowINSProfile = 4;

            if isequal(profileNum,0) || isempty(app.Tcell)
                return;
            end

            if fieldTo > app.totalMeasNum || fieldFrom > fieldTo
                fig = app.CaTxUIFigure;
                uialert(fig,'Invalid measurement field list','warning');
                return;
            end

            try
                app.Tcell(rowINSProfile,fieldFrom:fieldTo) = {profileNum};
            catch ME
                fig = app.CaTxUIFigure;
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
            rowUserProfile = 5;

            if isequal(profileNum,0) || isempty(app.Tcell)
                return;
            end

            if fieldTo > app.totalMeasNum || fieldFrom > fieldTo
                fig = app.CaTxUIFigure;
                uialert(fig,'Invalid measurement field list','warning');
                return;
                return;
            end

            try
                app.Tcell(rowUserProfile,fieldFrom:fieldTo) = {profileNum};
            catch ME
                fig = app.CaTxUIFigure;
                uialert(fig,'Invalid measurement fields','warning');
                return;
            end

            updateMeasurementTable(app);
        end

        % Button pushed function: TimeDelayButton
        function TimeDelayButtonPushed(app, event)
            rowTimeDelay = 15; % time delay row
            maxPer = 0.80;

            try
                Tcell = app.Tcell;
            catch ME
                fig = app.CaTxUIFigure;
                uialert(fig,'Invalid measurement fields','warning');
                return;
            end

            meaNum = size(Tcell,2);

            for idx = 1:meaNum
                samTime = Tcell{6,idx};
                samSig = Tcell{7,idx};
                refTime = Tcell{8,idx};
                refSig = Tcell{9,idx};

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
                    
                    Tcell(6,idx) = {samTime};
                    Tcell(8,idx) = {refTime};
                    Tcell(rowTimeDelay,idx) = {tDelay};
                end
                
            end

            app.Tcell = Tcell;
            updateMeasurementTable(app);
        end

        % Button pushed function: AnonymousInstrumentProfile0Button
        function AnonymousInstrumentProfile0ButtonPushed(app, event)
            updateProfile(app);

            Tcell = app.Tcell;
            Tcell(4,:) = num2cell(0);
            app.Tcell = Tcell;

            updateMeasurementTable(app);
        end

        % Button pushed function: DeleteButton
        function DeleteButtonPushed(app, event)
            waveformControl(app,"Delete");
        end

        % Button pushed function: MoveButton_3
        function MoveButton_3Pushed(app, event)
            waveformControl(app,"Move");
        end

        % Button pushed function: CopyButton
        function CopyButtonPushed(app, event)
            waveformControl(app,"Copy");
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Get the file path for locating images
            pathToMLAPP = fileparts(mfilename('fullpath'));

            % Create CaTxUIFigure and hide until all components are created
            app.CaTxUIFigure = uifigure('Visible', 'off');
            app.CaTxUIFigure.Position = [100 100 1058 944];
            app.CaTxUIFigure.Name = 'CaTx';
            app.CaTxUIFigure.Icon = fullfile(pathToMLAPP, 'CaT_logo.png');

            % Create ImportMeasurementButton
            app.ImportMeasurementButton = uibutton(app.CaTxUIFigure, 'push');
            app.ImportMeasurementButton.ButtonPushedFcn = createCallbackFcn(app, @ImportMeasurementButtonPushed, true);
            app.ImportMeasurementButton.FontWeight = 'bold';
            app.ImportMeasurementButton.Position = [190 902 142 23];
            app.ImportMeasurementButton.Text = 'Import Measurement';

            % Create FILESEditField
            app.FILESEditField = uieditfield(app.CaTxUIFigure, 'text');
            app.FILESEditField.Position = [340 902 693 22];

            % Create DeployDataButton
            app.DeployDataButton = uibutton(app.CaTxUIFigure, 'push');
            app.DeployDataButton.ButtonPushedFcn = createCallbackFcn(app, @DeployDataButtonPushed, true);
            app.DeployDataButton.FontWeight = 'bold';
            app.DeployDataButton.Position = [698 869 87 25];
            app.DeployDataButton.Text = 'Deploy Data';

            % Create CaTxLabel
            app.CaTxLabel = uilabel(app.CaTxUIFigure);
            app.CaTxLabel.FontSize = 38;
            app.CaTxLabel.FontWeight = 'bold';
            app.CaTxLabel.FontAngle = 'italic';
            app.CaTxLabel.Position = [87 863 98 50];
            app.CaTxLabel.Text = 'CaTx';

            % Create DEBUGMsgLabel
            app.DEBUGMsgLabel = uilabel(app.CaTxUIFigure);
            app.DEBUGMsgLabel.FontWeight = 'bold';
            app.DEBUGMsgLabel.Position = [796 870 238 22];
            app.DEBUGMsgLabel.Text = '';

            % Create ExportTHzFileButton
            app.ExportTHzFileButton = uibutton(app.CaTxUIFigure, 'push');
            app.ExportTHzFileButton.ButtonPushedFcn = createCallbackFcn(app, @ExportTHzFileButtonPushed, true);
            app.ExportTHzFileButton.FontWeight = 'bold';
            app.ExportTHzFileButton.Position = [825 18 194 56];
            app.ExportTHzFileButton.Text = 'Export THz File';

            % Create ConverterEngineDropDownLabel
            app.ConverterEngineDropDownLabel = uilabel(app.CaTxUIFigure);
            app.ConverterEngineDropDownLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.ConverterEngineDropDownLabel.HorizontalAlignment = 'right';
            app.ConverterEngineDropDownLabel.FontWeight = 'bold';
            app.ConverterEngineDropDownLabel.Position = [185 870 108 22];
            app.ConverterEngineDropDownLabel.Text = 'Converter Engine';

            % Create ConverterEngineDropDown
            app.ConverterEngineDropDown = uidropdown(app.CaTxUIFigure);
            app.ConverterEngineDropDown.Items = {'No engines available. Please check m files in .\Engines folder.'};
            app.ConverterEngineDropDown.FontWeight = 'bold';
            app.ConverterEngineDropDown.BackgroundColor = [0.9412 0.9412 0.9412];
            app.ConverterEngineDropDown.Position = [306 870 385 22];
            app.ConverterEngineDropDown.Value = 'No engines available. Please check m files in .\Engines folder.';

            % Create ClearMemoryButton
            app.ClearMemoryButton = uibutton(app.CaTxUIFigure, 'push');
            app.ClearMemoryButton.ButtonPushedFcn = createCallbackFcn(app, @ClearMemoryButtonPushed, true);
            app.ClearMemoryButton.FontWeight = 'bold';
            app.ClearMemoryButton.Position = [43 18 122 56];
            app.ClearMemoryButton.Text = 'Clear Memory';

            % Create ImportTHzFileButton
            app.ImportTHzFileButton = uibutton(app.CaTxUIFigure, 'push');
            app.ImportTHzFileButton.ButtonPushedFcn = createCallbackFcn(app, @ImportTHzFileButtonPushed, true);
            app.ImportTHzFileButton.FontWeight = 'bold';
            app.ImportTHzFileButton.Position = [174 18 121 56];
            app.ImportTHzFileButton.Text = 'Import THz File';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.CaTxUIFigure);
            app.TabGroup.Position = [24 85 1014 770];

            % Create MeasurementandMetadataTab
            app.MeasurementandMetadataTab = uitab(app.TabGroup);
            app.MeasurementandMetadataTab.Title = 'Measurement and Metadata';

            % Create UITable_measurement
            app.UITable_measurement = uitable(app.MeasurementandMetadataTab);
            app.UITable_measurement.ColumnName = '';
            app.UITable_measurement.ColumnRearrangeable = 'on';
            app.UITable_measurement.RowName = {};
            app.UITable_measurement.CellEditCallback = createCallbackFcn(app, @UITable_measurementCellEdit, true);
            app.UITable_measurement.CellSelectionCallback = createCallbackFcn(app, @UITable_measurementCellSelection, true);
            app.UITable_measurement.Multiselect = 'off';
            app.UITable_measurement.Position = [183 151 802 578];

            % Create UITable_scan_header
            app.UITable_scan_header = uitable(app.MeasurementandMetadataTab);
            app.UITable_scan_header.ColumnName = '';
            app.UITable_scan_header.RowName = {};
            app.UITable_scan_header.FontWeight = 'bold';
            app.UITable_scan_header.Position = [23 151 161 578];

            % Create MetadataPanel
            app.MetadataPanel = uipanel(app.MeasurementandMetadataTab);
            app.MetadataPanel.Title = 'Metadata';
            app.MetadataPanel.Position = [28 15 200 127];

            % Create GenerateMetadataXLSFileButton
            app.GenerateMetadataXLSFileButton = uibutton(app.MetadataPanel, 'push');
            app.GenerateMetadataXLSFileButton.ButtonPushedFcn = createCallbackFcn(app, @GenerateMetadataXLSFileButtonPushed, true);
            app.GenerateMetadataXLSFileButton.Position = [10 73 180 25];
            app.GenerateMetadataXLSFileButton.Text = 'Generate Metadata XLS File';

            % Create ImportMetadataFromXLSFileButton
            app.ImportMetadataFromXLSFileButton = uibutton(app.MetadataPanel, 'push');
            app.ImportMetadataFromXLSFileButton.ButtonPushedFcn = createCallbackFcn(app, @ImportMetadataFromXLSFileButtonPushed, true);
            app.ImportMetadataFromXLSFileButton.Position = [10 41 180 25];
            app.ImportMetadataFromXLSFileButton.Text = 'Import Metadata From XLS File';

            % Create LOADMETAXLS_EditField
            app.LOADMETAXLS_EditField = uieditfield(app.MetadataPanel, 'text');
            app.LOADMETAXLS_EditField.Editable = 'off';
            app.LOADMETAXLS_EditField.BackgroundColor = [0.9412 0.9412 0.9412];
            app.LOADMETAXLS_EditField.Position = [11 11 179 22];

            % Create ColumnControlPanel
            app.ColumnControlPanel = uipanel(app.MeasurementandMetadataTab);
            app.ColumnControlPanel.Title = 'Column Control';
            app.ColumnControlPanel.Position = [236 15 195 127];

            % Create RemoveButton
            app.RemoveButton = uibutton(app.ColumnControlPanel, 'push');
            app.RemoveButton.ButtonPushedFcn = createCallbackFcn(app, @RemoveButtonPushed, true);
            app.RemoveButton.Position = [11 10 170 25];
            app.RemoveButton.Text = 'Remove';

            % Create MoveButton
            app.MoveButton = uibutton(app.ColumnControlPanel, 'push');
            app.MoveButton.ButtonPushedFcn = createCallbackFcn(app, @MoveButtonPushed, true);
            app.MoveButton.Position = [12 73 80 25];
            app.MoveButton.Text = 'Move <<';

            % Create MoveButton_2
            app.MoveButton_2 = uibutton(app.ColumnControlPanel, 'push');
            app.MoveButton_2.ButtonPushedFcn = createCallbackFcn(app, @MoveButton_2Pushed, true);
            app.MoveButton_2.Position = [101 73 80 25];
            app.MoveButton_2.Text = '>>Move';

            % Create PlotWaveformsButton
            app.PlotWaveformsButton = uibutton(app.ColumnControlPanel, 'push');
            app.PlotWaveformsButton.ButtonPushedFcn = createCallbackFcn(app, @PlotWaveformsButtonPushed, true);
            app.PlotWaveformsButton.Position = [11 42 170 25];
            app.PlotWaveformsButton.Text = 'Plot Waveform(s)';

            % Create TableUpdatePanel
            app.TableUpdatePanel = uipanel(app.MeasurementandMetadataTab);
            app.TableUpdatePanel.Title = 'Table Update';
            app.TableUpdatePanel.Position = [843 15 135 127];

            % Create RefractiveIndexButton
            app.RefractiveIndexButton = uibutton(app.TableUpdatePanel, 'push');
            app.RefractiveIndexButton.ButtonPushedFcn = createCallbackFcn(app, @RefractiveIndexButtonPushed, true);
            app.RefractiveIndexButton.Position = [9 73 115 25];
            app.RefractiveIndexButton.Text = 'Refractive Index';

            % Create ThicknessButton
            app.ThicknessButton = uibutton(app.TableUpdatePanel, 'push');
            app.ThicknessButton.ButtonPushedFcn = createCallbackFcn(app, @ThicknessButtonPushed, true);
            app.ThicknessButton.Position = [8 41 116 25];
            app.ThicknessButton.Text = 'Thickness';

            % Create TimeDelayButton
            app.TimeDelayButton = uibutton(app.TableUpdatePanel, 'push');
            app.TimeDelayButton.ButtonPushedFcn = createCallbackFcn(app, @TimeDelayButtonPushed, true);
            app.TimeDelayButton.Position = [8 9 116 25];
            app.TimeDelayButton.Text = 'Time Delay';

            % Create WaveformControlPanel
            app.WaveformControlPanel = uipanel(app.MeasurementandMetadataTab);
            app.WaveformControlPanel.Title = 'Waveform Control';
            app.WaveformControlPanel.Position = [439 15 395 127];

            % Create ofColumnEditFieldLabel
            app.ofColumnEditFieldLabel = uilabel(app.WaveformControlPanel);
            app.ofColumnEditFieldLabel.HorizontalAlignment = 'right';
            app.ofColumnEditFieldLabel.Position = [195 75 60 22];
            app.ofColumnEditFieldLabel.Text = 'of Column';

            % Create ofColumnEditField
            app.ofColumnEditField = uieditfield(app.WaveformControlPanel, 'numeric');
            app.ofColumnEditField.Limits = [1 Inf];
            app.ofColumnEditField.ValueDisplayFormat = '%.0f';
            app.ofColumnEditField.Position = [260 75 43 22];
            app.ofColumnEditField.Value = 1;

            % Create ofColumnEditField_2Label
            app.ofColumnEditField_2Label = uilabel(app.WaveformControlPanel);
            app.ofColumnEditField_2Label.HorizontalAlignment = 'right';
            app.ofColumnEditField_2Label.Position = [195 40 60 22];
            app.ofColumnEditField_2Label.Text = 'of Column';

            % Create ofColumnEditField_2
            app.ofColumnEditField_2 = uieditfield(app.WaveformControlPanel, 'numeric');
            app.ofColumnEditField_2.Limits = [1 Inf];
            app.ofColumnEditField_2.ValueDisplayFormat = '%.0f';
            app.ofColumnEditField_2.Position = [259 40 50 22];
            app.ofColumnEditField_2.Value = 1;

            % Create toLabel
            app.toLabel = uilabel(app.WaveformControlPanel);
            app.toLabel.HorizontalAlignment = 'right';
            app.toLabel.Position = [305 40 25 22];
            app.toLabel.Text = 'To';

            % Create FILEDLISTTOEditField
            app.FILEDLISTTOEditField = uieditfield(app.WaveformControlPanel, 'numeric');
            app.FILEDLISTTOEditField.Limits = [1 Inf];
            app.FILEDLISTTOEditField.ValueDisplayFormat = '%.0f';
            app.FILEDLISTTOEditField.Position = [334 40 50 22];
            app.FILEDLISTTOEditField.Value = 1;

            % Create SourceWaveformDropDownLabel
            app.SourceWaveformDropDownLabel = uilabel(app.WaveformControlPanel);
            app.SourceWaveformDropDownLabel.HorizontalAlignment = 'right';
            app.SourceWaveformDropDownLabel.Position = [3 75 101 22];
            app.SourceWaveformDropDownLabel.Text = 'Source Waveform';

            % Create SourceWaveformDropDown
            app.SourceWaveformDropDown = uidropdown(app.WaveformControlPanel);
            app.SourceWaveformDropDown.Items = {'Sample', 'Ref.1', 'Ref.2'};
            app.SourceWaveformDropDown.Position = [111 75 81 22];
            app.SourceWaveformDropDown.Value = 'Sample';

            % Create CopyButton
            app.CopyButton = uibutton(app.WaveformControlPanel, 'push');
            app.CopyButton.ButtonPushedFcn = createCallbackFcn(app, @CopyButtonPushed, true);
            app.CopyButton.Position = [267 8 118 24];
            app.CopyButton.Text = 'Copy';

            % Create MoveButton_3
            app.MoveButton_3 = uibutton(app.WaveformControlPanel, 'push');
            app.MoveButton_3.ButtonPushedFcn = createCallbackFcn(app, @MoveButton_3Pushed, true);
            app.MoveButton_3.Position = [141 8 118 24];
            app.MoveButton_3.Text = 'Move';

            % Create TargetWaveformDropDownLabel
            app.TargetWaveformDropDownLabel = uilabel(app.WaveformControlPanel);
            app.TargetWaveformDropDownLabel.HorizontalAlignment = 'right';
            app.TargetWaveformDropDownLabel.Position = [4 41 96 22];
            app.TargetWaveformDropDownLabel.Text = 'Target Waveform';

            % Create TargetWaveformDropDown
            app.TargetWaveformDropDown = uidropdown(app.WaveformControlPanel);
            app.TargetWaveformDropDown.Items = {'Sample', 'Ref.1', 'Ref.2'};
            app.TargetWaveformDropDown.Position = [112 41 81 22];
            app.TargetWaveformDropDown.Value = 'Ref.1';

            % Create DeleteButton
            app.DeleteButton = uibutton(app.WaveformControlPanel, 'push');
            app.DeleteButton.ButtonPushedFcn = createCallbackFcn(app, @DeleteButtonPushed, true);
            app.DeleteButton.Position = [314 73 69 24];
            app.DeleteButton.Text = 'Delete';

            % Create InstrumentandUserTab
            app.InstrumentandUserTab = uitab(app.TabGroup);
            app.InstrumentandUserTab.Title = 'Instrument and User';

            % Create UITable_INS
            app.UITable_INS = uitable(app.InstrumentandUserTab);
            app.UITable_INS.ColumnName = '';
            app.UITable_INS.RowName = {};
            app.UITable_INS.CellEditCallback = createCallbackFcn(app, @UITable_INSCellEdit, true);
            app.UITable_INS.CellSelectionCallback = createCallbackFcn(app, @UITable_INSCellSelection, true);
            app.UITable_INS.Multiselect = 'off';
            app.UITable_INS.Position = [174 585 801 112];

            % Create UITable_INS_header
            app.UITable_INS_header = uitable(app.InstrumentandUserTab);
            app.UITable_INS_header.ColumnName = '';
            app.UITable_INS_header.RowName = {};
            app.UITable_INS_header.FontWeight = 'bold';
            app.UITable_INS_header.Position = [19 585 156 112];

            % Create UITable_LAB
            app.UITable_LAB = uitable(app.InstrumentandUserTab);
            app.UITable_LAB.ColumnName = '';
            app.UITable_LAB.RowName = {};
            app.UITable_LAB.CellEditCallback = createCallbackFcn(app, @UITable_LABCellEdit, true);
            app.UITable_LAB.CellSelectionCallback = createCallbackFcn(app, @UITable_LABCellSelection, true);
            app.UITable_LAB.Multiselect = 'off';
            app.UITable_LAB.Position = [174 336 801 133];

            % Create UITable_LAB_header
            app.UITable_LAB_header = uitable(app.InstrumentandUserTab);
            app.UITable_LAB_header.ColumnName = '';
            app.UITable_LAB_header.RowName = {};
            app.UITable_LAB_header.FontWeight = 'bold';
            app.UITable_LAB_header.Position = [19 336 156 133];

            % Create InstrumentLabel
            app.InstrumentLabel = uilabel(app.InstrumentandUserTab);
            app.InstrumentLabel.FontSize = 13;
            app.InstrumentLabel.Position = [27 704 96 22];
            app.InstrumentLabel.Text = 'Instrument*';

            % Create UserLabel
            app.UserLabel = uilabel(app.InstrumentandUserTab);
            app.UserLabel.FontSize = 13;
            app.UserLabel.Position = [27 478 98 22];
            app.UserLabel.Text = 'User*';

            % Create INS_LINKButton
            app.INS_LINKButton = uibutton(app.InstrumentandUserTab, 'push');
            app.INS_LINKButton.ButtonPushedFcn = createCallbackFcn(app, @INS_LINKButtonPushed, true);
            app.INS_LINKButton.Position = [904 549 70 25];
            app.INS_LINKButton.Text = 'Link';

            % Create LAB_LINKButton
            app.LAB_LINKButton = uibutton(app.InstrumentandUserTab, 'push');
            app.LAB_LINKButton.ButtonPushedFcn = createCallbackFcn(app, @LAB_LINKButtonPushed, true);
            app.LAB_LINKButton.Position = [904 300 71 25];
            app.LAB_LINKButton.Text = 'Link';

            % Create ADD_INS_COL_Button
            app.ADD_INS_COL_Button = uibutton(app.InstrumentandUserTab, 'push');
            app.ADD_INS_COL_Button.ButtonPushedFcn = createCallbackFcn(app, @ADD_INS_COL_ButtonPushed, true);
            app.ADD_INS_COL_Button.Position = [138 548 165 26];
            app.ADD_INS_COL_Button.Text = 'Add Profile';

            % Create REMOVE_INS_COL_Button
            app.REMOVE_INS_COL_Button = uibutton(app.InstrumentandUserTab, 'push');
            app.REMOVE_INS_COL_Button.ButtonPushedFcn = createCallbackFcn(app, @REMOVE_INS_COL_ButtonPushed, true);
            app.REMOVE_INS_COL_Button.Position = [312 548 190 26];
            app.REMOVE_INS_COL_Button.Text = 'Remove Selected Profile';

            % Create ADD_LAB_COL_Button
            app.ADD_LAB_COL_Button = uibutton(app.InstrumentandUserTab, 'push');
            app.ADD_LAB_COL_Button.ButtonPushedFcn = createCallbackFcn(app, @ADD_LAB_COL_ButtonPushed, true);
            app.ADD_LAB_COL_Button.Position = [142 299 165 26];
            app.ADD_LAB_COL_Button.Text = 'Add Profile';

            % Create REMOVE_LAB_COL_Button
            app.REMOVE_LAB_COL_Button = uibutton(app.InstrumentandUserTab, 'push');
            app.REMOVE_LAB_COL_Button.ButtonPushedFcn = createCallbackFcn(app, @REMOVE_LAB_COL_ButtonPushed, true);
            app.REMOVE_LAB_COL_Button.Position = [316 299 190 26];
            app.REMOVE_LAB_COL_Button.Text = 'Remove Selected Profile';

            % Create SelectionLabel
            app.SelectionLabel = uilabel(app.InstrumentandUserTab);
            app.SelectionLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.SelectionLabel.HorizontalAlignment = 'right';
            app.SelectionLabel.Position = [523 550 55 22];
            app.SelectionLabel.Text = 'Selection';

            % Create INS_SELECTIONEditField
            app.INS_SELECTIONEditField = uieditfield(app.InstrumentandUserTab, 'numeric');
            app.INS_SELECTIONEditField.Limits = [0 Inf];
            app.INS_SELECTIONEditField.ValueDisplayFormat = '%.0f';
            app.INS_SELECTIONEditField.Editable = 'off';
            app.INS_SELECTIONEditField.BackgroundColor = [0.9412 0.9412 0.9412];
            app.INS_SELECTIONEditField.Position = [586 550 34 22];

            % Create SelectionLabel_2
            app.SelectionLabel_2 = uilabel(app.InstrumentandUserTab);
            app.SelectionLabel_2.BackgroundColor = [0.9412 0.9412 0.9412];
            app.SelectionLabel_2.HorizontalAlignment = 'right';
            app.SelectionLabel_2.Position = [527 301 55 22];
            app.SelectionLabel_2.Text = 'Selection';

            % Create LAB_SELECTIONEditField
            app.LAB_SELECTIONEditField = uieditfield(app.InstrumentandUserTab, 'numeric');
            app.LAB_SELECTIONEditField.Limits = [0 Inf];
            app.LAB_SELECTIONEditField.ValueDisplayFormat = '%.0f';
            app.LAB_SELECTIONEditField.Editable = 'off';
            app.LAB_SELECTIONEditField.BackgroundColor = [0.9412 0.9412 0.9412];
            app.LAB_SELECTIONEditField.Position = [590 301 34 22];

            % Create AnonymousUserProfile0Button
            app.AnonymousUserProfile0Button = uibutton(app.InstrumentandUserTab, 'push');
            app.AnonymousUserProfile0Button.ButtonPushedFcn = createCallbackFcn(app, @AnonymousUserProfile0ButtonPushed, true);
            app.AnonymousUserProfile0Button.Position = [738 265 238 23];
            app.AnonymousUserProfile0Button.Text = 'Anonymous User Profile, 0';

            % Create MeasurementfieldfromLabel
            app.MeasurementfieldfromLabel = uilabel(app.InstrumentandUserTab);
            app.MeasurementfieldfromLabel.HorizontalAlignment = 'right';
            app.MeasurementfieldfromLabel.Position = [625 550 139 22];
            app.MeasurementfieldfromLabel.Text = 'Measurement Field From';

            % Create INS_MEASUREMENTFILEDEditField
            app.INS_MEASUREMENTFILEDEditField = uieditfield(app.InstrumentandUserTab, 'numeric');
            app.INS_MEASUREMENTFILEDEditField.Limits = [1 Inf];
            app.INS_MEASUREMENTFILEDEditField.ValueDisplayFormat = '%.0f';
            app.INS_MEASUREMENTFILEDEditField.Position = [771 550 50 22];
            app.INS_MEASUREMENTFILEDEditField.Value = 1;

            % Create toLabel_2
            app.toLabel_2 = uilabel(app.InstrumentandUserTab);
            app.toLabel_2.HorizontalAlignment = 'right';
            app.toLabel_2.Position = [819 550 25 22];
            app.toLabel_2.Text = 'To';

            % Create INS_MEASUREMENTFILEDTOEditField
            app.INS_MEASUREMENTFILEDTOEditField = uieditfield(app.InstrumentandUserTab, 'numeric');
            app.INS_MEASUREMENTFILEDTOEditField.Limits = [1 Inf];
            app.INS_MEASUREMENTFILEDTOEditField.ValueDisplayFormat = '%.0f';
            app.INS_MEASUREMENTFILEDTOEditField.Position = [848 550 50 22];
            app.INS_MEASUREMENTFILEDTOEditField.Value = 1;

            % Create MeasurementfieldfromLabel_2
            app.MeasurementfieldfromLabel_2 = uilabel(app.InstrumentandUserTab);
            app.MeasurementfieldfromLabel_2.HorizontalAlignment = 'right';
            app.MeasurementfieldfromLabel_2.Position = [626 301 139 22];
            app.MeasurementfieldfromLabel_2.Text = 'Measurement Field From';

            % Create LAB_MEASUREMENTFILEDEditField
            app.LAB_MEASUREMENTFILEDEditField = uieditfield(app.InstrumentandUserTab, 'numeric');
            app.LAB_MEASUREMENTFILEDEditField.Limits = [1 Inf];
            app.LAB_MEASUREMENTFILEDEditField.ValueDisplayFormat = '%.0f';
            app.LAB_MEASUREMENTFILEDEditField.Position = [772 301 50 22];
            app.LAB_MEASUREMENTFILEDEditField.Value = 1;

            % Create toLabel_3
            app.toLabel_3 = uilabel(app.InstrumentandUserTab);
            app.toLabel_3.HorizontalAlignment = 'right';
            app.toLabel_3.Position = [818 301 25 22];
            app.toLabel_3.Text = 'To';

            % Create LAB_MEASUREMENTFILEDTOEditField
            app.LAB_MEASUREMENTFILEDTOEditField = uieditfield(app.InstrumentandUserTab, 'numeric');
            app.LAB_MEASUREMENTFILEDTOEditField.Limits = [1 Inf];
            app.LAB_MEASUREMENTFILEDTOEditField.ValueDisplayFormat = '%.0f';
            app.LAB_MEASUREMENTFILEDTOEditField.Position = [847 301 50 22];
            app.LAB_MEASUREMENTFILEDTOEditField.Value = 1;

            % Create DonotusecharacterindescriptionLabel
            app.DonotusecharacterindescriptionLabel = uilabel(app.InstrumentandUserTab);
            app.DonotusecharacterindescriptionLabel.Position = [755 721 217 22];
            app.DonotusecharacterindescriptionLabel.Text = '* Do not use '' / '' character in description';

            % Create AnonymousInstrumentProfile0Button
            app.AnonymousInstrumentProfile0Button = uibutton(app.InstrumentandUserTab, 'push');
            app.AnonymousInstrumentProfile0Button.ButtonPushedFcn = createCallbackFcn(app, @AnonymousInstrumentProfile0ButtonPushed, true);
            app.AnonymousInstrumentProfile0Button.Position = [737 515 238 23];
            app.AnonymousInstrumentProfile0Button.Text = 'Anonymous Instrument Profile, 0';

            % Create PrefixnumberstothedatasetnameLabel
            app.PrefixnumberstothedatasetnameLabel = uilabel(app.CaTxUIFigure);
            app.PrefixnumberstothedatasetnameLabel.HorizontalAlignment = 'center';
            app.PrefixnumberstothedatasetnameLabel.Position = [326 45 82 22];
            app.PrefixnumberstothedatasetnameLabel.Text = 'Number Prefix';

            % Create NumberPrefixSwitch
            app.NumberPrefixSwitch = uiswitch(app.CaTxUIFigure, 'slider');
            app.NumberPrefixSwitch.Position = [435 47 40 18];

            % Create AttributuesallocationLabel
            app.AttributuesallocationLabel = uilabel(app.CaTxUIFigure);
            app.AttributuesallocationLabel.HorizontalAlignment = 'center';
            app.AttributuesallocationLabel.Position = [540 45 97 22];
            app.AttributuesallocationLabel.Text = 'Attributues Write:';

            % Create AttributuesWriteSwitch
            app.AttributuesWriteSwitch = uiswitch(app.CaTxUIFigure, 'slider');
            app.AttributuesWriteSwitch.Items = {'All Datasets', 'Only First,'};
            app.AttributuesWriteSwitch.Position = [712 47 41 18];
            app.AttributuesWriteSwitch.Value = 'All Datasets';

            % Create MustincludeAttributeinAllDatasetsDropDownLabel
            app.MustincludeAttributeinAllDatasetsDropDownLabel = uilabel(app.CaTxUIFigure);
            app.MustincludeAttributeinAllDatasetsDropDownLabel.HorizontalAlignment = 'right';
            app.MustincludeAttributeinAllDatasetsDropDownLabel.Position = [555 22 201 22];
            app.MustincludeAttributeinAllDatasetsDropDownLabel.Text = 'Must-include Attribute in All Datasets';

            % Create MustincludeAttributeinAllDatasetsDropDown
            app.MustincludeAttributeinAllDatasetsDropDown = uidropdown(app.CaTxUIFigure);
            app.MustincludeAttributeinAllDatasetsDropDown.Items = {'13', '14', '16', '17', '18', '19', '20', '21'};
            app.MustincludeAttributeinAllDatasetsDropDown.Position = [762 22 48 22];
            app.MustincludeAttributeinAllDatasetsDropDown.Value = '13';

            % Create Image
            app.Image = uiimage(app.CaTxUIFigure);
            app.Image.Position = [25 867 72 72];
            app.Image.ImageSource = fullfile(pathToMLAPP, 'dotTHz_logo.png');

            % Show the figure after all components are created
            app.CaTxUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = CaTx_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.CaTxUIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.CaTxUIFigure)
        end
    end
end