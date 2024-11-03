classdef CaTx_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        CaTxUIFigure                    matlab.ui.Figure
        DEBUGMsgLabel                   matlab.ui.control.Label
        Image                           matlab.ui.control.Image
        exceptItemDropDown              matlab.ui.control.DropDown
        exceptItemDropDownLabel         matlab.ui.control.Label
        AttribututeInclusionSwitch      matlab.ui.control.Switch
        AttributuesallocationLabel      matlab.ui.control.Label
        NumberPrefixSwitch              matlab.ui.control.Switch
        PrefixnumberstothedatasetnameLabel  matlab.ui.control.Label
        TabGroup                        matlab.ui.container.TabGroup
        MeasurementsandMetadataTab      matlab.ui.container.Tab
        DatasetControlPanel             matlab.ui.container.Panel
        Label                           matlab.ui.control.Label
        DeleteSourceButton              matlab.ui.control.Button
        TargetDatasetDropDown           matlab.ui.control.DropDown
        TargetLabel                     matlab.ui.control.Label
        CopyButton                      matlab.ui.control.Button
        SourceDatasetDropDown           matlab.ui.control.DropDown
        SourceLabel                     matlab.ui.control.Label
        FILEDLISTTOEditField            matlab.ui.control.NumericEditField
        toLabel                         matlab.ui.control.Label
        ofColumnsEditField              matlab.ui.control.NumericEditField
        ofColumnsEditFieldLabel         matlab.ui.control.Label
        ofColumnEditField               matlab.ui.control.NumericEditField
        ofColumnEditFieldLabel          matlab.ui.control.Label
        ColumnControlPanel              matlab.ui.container.Panel
        SortRowDropDown                 matlab.ui.control.DropDown
        SortRowDropDownLabel            matlab.ui.control.Label
        SortDirectionSwitch             matlab.ui.control.Switch
        SortButton                      matlab.ui.control.Button
        PlotDatasetsButton              matlab.ui.control.Button
        MoveButton_2                    matlab.ui.control.Button
        MoveButton                      matlab.ui.control.Button
        RemoveButton                    matlab.ui.control.Button
        MetadataPanel                   matlab.ui.container.Panel
        FileLabel                       matlab.ui.control.Label
        LOADMETAXLS_EditField           matlab.ui.control.EditField
        ImportMetadataFromXLSFileButton  matlab.ui.control.Button
        GenerateMetadataXLSFileButton   matlab.ui.control.Button
        UITable_Header                  matlab.ui.control.Table
        UITable_Measurement             matlab.ui.control.Table
        InstrumentsandUsersTab          matlab.ui.container.Tab
        CurrentUserEditField            matlab.ui.control.EditField
        CurrentUserEditFieldLabel       matlab.ui.control.Label
        DefaultInstrumentEditField      matlab.ui.control.EditField
        DefaultInstrumentEditFieldLabel  matlab.ui.control.Label
        SetCurrentUserButton            matlab.ui.control.Button
        SetDefaultInstrumentButton      matlab.ui.control.Button
        AnonymousInstrumentButton       matlab.ui.control.Button
        DonotusefordescriptionsLabel    matlab.ui.control.Label
        User_MeasurementFieldToEditField  matlab.ui.control.NumericEditField
        toLabel_3                       matlab.ui.control.Label
        User_MeasurementFieldFromEditField  matlab.ui.control.NumericEditField
        MeasurementfieldfromLabel_2     matlab.ui.control.Label
        Ins_MeasurementFieldToEditField  matlab.ui.control.NumericEditField
        toLabel_2                       matlab.ui.control.Label
        Ins_MeasurementFieldFromEditField  matlab.ui.control.NumericEditField
        MeasurementfieldfromLabel       matlab.ui.control.Label
        AnonymousUserButton             matlab.ui.control.Button
        UserSelectionEditField          matlab.ui.control.NumericEditField
        SelectionLabel_2                matlab.ui.control.Label
        InstrumentSelectionEditField    matlab.ui.control.NumericEditField
        SelectionLabel                  matlab.ui.control.Label
        RemoveUserButton                matlab.ui.control.Button
        AddUserButton                   matlab.ui.control.Button
        RemoveInstrumentButton          matlab.ui.control.Button
        AddInstrumentButton             matlab.ui.control.Button
        SetUserMetadataButton           matlab.ui.control.Button
        SetInstrumentMetadataButton     matlab.ui.control.Button
        UsersLabel                      matlab.ui.control.Label
        InstrumentsLabel                matlab.ui.control.Label
        UITable_Users                   matlab.ui.control.Table
        UITable_Instruments             matlab.ui.control.Table
        DeploymentRecipeTab             matlab.ui.container.Tab
        DownButton                      matlab.ui.control.Button
        UpButton                        matlab.ui.control.Button
        RecipeDesignLabel               matlab.ui.control.Label
        RecipeTabGroup                  matlab.ui.container.TabGroup
        TransmissionReflectionTab       matlab.ui.container.Tab
        ModeDescriptionEditField        matlab.ui.control.EditField
        ModeDescriptionEditFieldLabel   matlab.ui.control.Label
        MetadataDescriptionPanel        matlab.ui.container.Panel
        UpdateTab1TableButton           matlab.ui.control.Button
        SelectfornoentryLabel           matlab.ui.control.Label
        MetadatanumberSpinner           matlab.ui.control.Spinner
        MetadatanumberSpinnerLabel      matlab.ui.control.Label
        AddUpdateMDRecipeButton         matlab.ui.control.Button
        MetadataDescriptionEditField    matlab.ui.control.EditField
        MetadataDescriptionEditFieldLabel  matlab.ui.control.Label
        ResetTabletButton               matlab.ui.control.Button
        UITable_Metadata                matlab.ui.control.Table
        AddUpdateRecipeButton           matlab.ui.control.Button
        DataFileExtensionDropDown       matlab.ui.control.DropDown
        DataFileExtensionDropDownLabel  matlab.ui.control.Label
        RecipeNameEditField             matlab.ui.control.EditField
        RecipeNameEditFieldLabel        matlab.ui.control.Label
        userDefinedEditField            matlab.ui.control.EditField
        TerahertzDatasetPanel           matlab.ui.container.Panel
        DSDescriptionEditField          matlab.ui.control.EditField
        DatasetDescriptionLabel         matlab.ui.control.Label
        LoadUseaSeperateFileLabel       matlab.ui.control.Label
        dsEditField_Baseline            matlab.ui.control.NumericEditField
        BaselineDSLabel                 matlab.ui.control.Label
        dsEditField_Reference           matlab.ui.control.NumericEditField
        ReferencedsLabel                matlab.ui.control.Label
        dsEditField_Sample              matlab.ui.control.NumericEditField
        SampledsLabel                   matlab.ui.control.Label
        DatasetLabel                    matlab.ui.control.Label
        ColumnLabel                     matlab.ui.control.Label
        BaselineTHzSpinner              matlab.ui.control.Spinner
        BaselineTHzSpinnerLabel         matlab.ui.control.Label
        SubtractCheckBox                matlab.ui.control.CheckBox
        SeperateFileCheckBox_Baseline   matlab.ui.control.CheckBox
        LoadBaselineCheckBox            matlab.ui.control.CheckBox
        ReferenceTHzSpinner             matlab.ui.control.Spinner
        THzSignalReferenceLabel         matlab.ui.control.Label
        SeperateFileCheckBox_Reference  matlab.ui.control.CheckBox
        LoadReferenceCheckBox           matlab.ui.control.CheckBox
        SampleTHzSpinner                matlab.ui.control.Spinner
        THzSignalSampleLabel            matlab.ui.control.Label
        TimepsSpinner                   matlab.ui.control.Spinner
        TimepsSpinnerLabel              matlab.ui.control.Label
        ExtensionTab                    matlab.ui.container.Tab
        SetDefaultButton                matlab.ui.control.Button
        RemoveRecipeButton              matlab.ui.control.Button
        RecipeListListBox               matlab.ui.control.ListBox
        RecipeListListBoxLabel          matlab.ui.control.Label
        ClearMemoryButton               matlab.ui.control.Button
        DataDeploymentRecipeDropDown    matlab.ui.control.DropDown
        DataDeploymentRecipeDropDownLabel  matlab.ui.control.Label
        ExportthzFileButton             matlab.ui.control.Button
        CaTxLabel                       matlab.ui.control.Label
        DeployDataButton                matlab.ui.control.Button
        FilesEditField                  matlab.ui.control.EditField
        ImportDataFilesButton           matlab.ui.control.Button
    end

    
    properties (Access = private)
        Tcell % cell array for table display, keep in mind that Tcell is not a table array
        Tcell_header % table header cell array
        Tcell_headerDefault % tablet default header cell array
        PRJ_count % Description
        fullpathname % Description
        filename;
        samplefile; % Sample file name and folder
        cellIndices % Description
        instrument_profile % Default instrument profile
        user_profile % Default user profile
        instrumentTable % Instrument profile table
        userTable % User profile table
        totalMeasNum % total measurement number
        manualMode % Description
        thzVer;
        recipeTable % imported recipe table
        recipeData % imported the whole recipe data from json file
        group % Unit structure corresponding to the metadata categories
        recipeFile
        profileFile
        configFile
        %#exclude DeploymentRecipes.json
        %#exclude Profiles.json
        %#exclude Configuration.json
    end
    
    methods (Access = private)

        function loadProfiles(app)
            fig = app.CaTxUIFigure;
            try
                profileData = jsondecode(fileread(app.profileFile));
            catch ME            
                uialert(fig, sprintf('Failed to read profile JSON file: %s', ME.message), 'Error');
                return;
            end

            instrumentTable = struct2table(profileData.Instruments,"AsArray",true);
            userTable = struct2table(profileData.Users,"AsArray",true);
            
            app.UITable_Instruments.Data = instrumentTable;
            app.instrumentTable = instrumentTable;

            app.UITable_Users.Data = userTable;
            app.userTable = userTable;
            app.instrument_profile = profileData.defaultInstrument;
            app.user_profile = profileData.currentUser;
            app.DefaultInstrumentEditField.Value = profileData.defaultInstrument;
            app.CurrentUserEditField.Value = profileData.currentUser;
        end 
        
        function updateMeasurementTable(app)
            Tcell = app.Tcell;
            measNum = size(Tcell,2);
            app.totalMeasNum = measNum;

            sFont = uistyle("FontColor","black");
            addStyle(app.UITable_Measurement,sFont);
            addStyle(app.UITable_Header,sFont);

            if measNum < 300
                app.UITable_Measurement.Data = cell2table(Tcell);
            else
                TcellCompact = Tcell(:,1:30);
                TcellCompact = [TcellCompact Tcell(:,measNum)];
                app.UITable_Measurement.Data = cell2table(TcellCompact);
            end
        end
        
        function datasetControl(app,Opt)
            fig = app.CaTxUIFigure;
            Indices = app.cellIndices;
            Tcell = app.Tcell;
            colFrom = app.ofColumnsEditField.Value;
            colTo = app.FILEDLISTTOEditField.Value;
            totalMeasNum = app.totalMeasNum;

            try
                srcRow = str2num(app.SourceDatasetDropDown.Value);
            catch ME
                uialert(fig,'Invalid dataset! Select the source column to see avaialbe datasets','warning');
                return;
            end

            trgRow = str2num(app.TargetDatasetDropDown.Value);
            
            if app.manualMode
                return;
            else
                srcCol = app.ofColumnEditField.Value;
            end
            
            if isequal(Opt,"Delete")
                Tcell{srcRow,srcCol}=[];
            else
                srcDs = Tcell(srcRow,srcCol); % source dataset
                srcLength = length(srcDs);
    
                for idx = colFrom:colTo
                    trgDs = Tcell(trgRow,idx); % target dataset
                    trgLength = length(trgDs);
    
                    if ~isequal(srcLength,trgLength)
                        uialert(fig,'Incompatible data length','warning');
                        return;
                    end
    
                    Tcell(trgRow,idx) = srcDs;    
                end
            end

            % update the table
            app.Tcell = Tcell;
            updateMeasurementTable(app);
        end
        
        function deployData_readmatrix(app,PRJ_count,fullpathname,recipeNum)
            fig = app.CaTxUIFigure;
            app.manualMode = 0;
            DSBaseCol = 18;
            thzVer = app.thzVer;
            [fileLocation,sampleName,fileExt] = fileparts(fullpathname(1));

            recipeTable = app.recipeTable;
            mode = string(recipeTable{recipeNum,2});
            samMat = cell2mat(recipeTable{recipeNum,4});
            refMat = cell2mat(recipeTable{recipeNum,5});
            baseMat = cell2mat(recipeTable{recipeNum,6});
            mdDescription = string(recipeTable{recipeNum,7});

            tofIdx = samMat(1);
            defaultTHzIdx = samMat(2);
            readReference = refMat(1);
            samDS = 1;
            openRefereceFile = refMat(2);
            refTHzIdx = refMat(3);
            refDS = refMat(4);
            readBaseline = baseMat(1);
            openBaselineFile = baseMat(2);
            baseTHzIdx = baseMat(3);
            baseDS = baseMat(4);
            subtractBaseline = baseMat(5);
            refTof = [];
            baseTof = [];

            Tcell = cell(22,PRJ_count); % cell structure table
            fileLocation = string(fileLocation);

            % Read Reference Signal
            if readReference && openRefereceFile
                [refFile, refFilepath] = uigetfile(fileExt,'Select a reference file',fileLocation);
                refVec = readmatrix(strcat(refFilepath,refFile));
                refTof = refVec(:,tofIdx)';
                refTHz = refVec(:,defaultTHzIdx)';
            end

            % Read Baseline Signal
            if readBaseline && openBaselineFile
                [baseFile, baseFilepath] = uigetfile(fileExt,'Select a baseline file',fileLocation);
                baseVec = readmatrix(strcat(baseFilepath,baseFile));
                baseTof = baseVec(:,tofIdx)';
                baseTHz = baseVec(:,baseTHzIdx)';
            end

            dsDescription = 'Sample';
            if readReference
                dsDescription = strcat(dsDescription,',Reference');
            end
            if readBaseline && ~subtractBaseline
                dsDescription = strcat(dsDescription,',Baseline');
            end

            % Read Sample Signal
            for PRJIdx = 1:PRJ_count
                fullpath = fullpathname{PRJIdx};                
                if isempty(fullpath)
                    return;
                end
                [fileLocation,sampleName,fileExt] = fileparts(fullpath);
                app.DEBUGMsgLabel.Text = 'Loading....';
                drawnow

                try
                    samVec = readmatrix(fullpath);
                    % [fileLocation,sampleName,fileExt] = fileparts(fullpath);
                catch
                    uialert(fig,'Failed to find sample dataset','Warning');
                    app.DEBUGMsgLabel.Text = 'Loading Cancelled';
                    return;
                end

                % Read Sample Signal                            
                tof = samVec(:,tofIdx)'; % Time of flight
                samTHz = samVec(:,defaultTHzIdx)'; % Sample THz signal

                if readReference
                    if ~openRefereceFile
                        try
                            refTHz = samVec(:,refTHzIdx)';
                            refTof = tof;
                        catch
                            uialert(fig,'Failed to find reference dataset','Warning');
                            app.DEBUGMsgLabel.Text = 'Loading Cancelled';
                            return;
                        end                        
                    end
                    Tcell{DSBaseCol+refDS,PRJIdx} = [refTof;refTHz];
                end

                if readBaseline
                    if ~openBaselineFile
                        try
                            baseTHz = samTHz(:,baseTHzIdx)';
                            baseTof = tof;
                        catch
                            uialert(fig,'Failed to find baseline dataset','Warning');
                            app.DEBUGMsgLabel.Text = 'Loading Cancelled';
                            return;
                        end
                    end

                    if subtractBaseline
                        samTHz = samTHz - baseTHz;
                        refTHz = refTHz - baseTHz;
                        Tcell{DSBaseCol+samDS,PRJIdx} = [tof;samTHz];
                        Tcell{DSBaseCol+refDS,PRJIdx} = [refTof;refTHz];
                    else
                        Tcell{DSBaseCol+baseDS,PRJIdx} = [baseTof;baseTHz];
                    end
                end

                Tcell{DSBaseCol+samDS,PRJIdx} = [tof;samTHz];
               
                % Data cell allocation
                description = "";
                try
                    measDate = readlines(fullpath);
                    measDate = measDate(3);
                    measDate = extractAfter(measDate,"Date: ");
                catch ME
                    measDate = "";
                end

                time = measDate;

                Tcell{1,PRJIdx} = PRJIdx;
                Tcell{2,PRJIdx} = sampleName;
                Tcell{3,PRJIdx} = description;
                Tcell{4,PRJIdx} = app.instrument_profile;
                Tcell{5,PRJIdx} = app.user_profile;
                Tcell{6,PRJIdx} = time; % Measurement start time
                Tcell{7,PRJIdx} = mode; % THz-TDS/THz-Imaging/Transmission/Reflection
                Tcell{8,PRJIdx} = []; % Coordinates
                Tcell{9,PRJIdx} = mdDescription; % Metadata description
                
                Tcell{15,PRJIdx} = []; % md6
                Tcell{16,PRJIdx} = []; % md7
                Tcell{17,PRJIdx} = thzVer; % dotTHz Versio
    
                Tcell{18,PRJIdx} = dsDescription; % Dataset description
            end

            app.DEBUGMsgLabel.Text = "Complete Loading";
            app.totalMeasNum = PRJIdx;
            app.Tcell = Tcell;
            updateMeasurementTable(app);
            app.FILEDLISTTOEditField.Value = app.totalMeasNum;
            app.TabGroup.SelectedTab = app.TabGroup.Children(1);
        end
        
        
        function deployData_teraviewHDF(app,PRJ_count,fullpathname,recipeNum)
            fig = app.CaTxUIFigure;
            app.manualMode = 0;
            DSBaseCol = 18;
            totalMeasNum = 1; % Total measurement number
            thzVer = app.thzVer;

            recipeTable = app.recipeTable;
            mode = string(recipeTable{recipeNum,2});
            samMat = cell2mat(recipeTable{recipeNum,4});
            refMat = cell2mat(recipeTable{recipeNum,5});
            baseMat = cell2mat(recipeTable{recipeNum,6});
            mdDescription = string(recipeTable{recipeNum,7});

            tofIdx = samMat(1);
            defaultTHzIdx = samMat(2);
            readReference = refMat(1);
            samDS = 1;
            openRefereceFile = refMat(2);
            refTHzIdx = refMat(3);
            refDS = refMat(4);
            readBaseline = baseMat(1);
            openBaselineFile = baseMat(2);
            baseTHzIdx = baseMat(3);
            baseDS = baseMat(4);
            subtractBaseline = baseMat(5);
            refTof = [];
            baseTof = [];

            HDFDataSet='/TerapulseDocument/Measurements/Spectra Data';

            dsDescription = 'Sample';
            if readReference
                dsDescription = strcat(dsDescription,',Reference');
            end
            if readBaseline && ~subtractBaseline
                dsDescription = strcat(dsDescription,',Baseline');
            end 

            Tcell = cell(22,1); % cell structure table

            if readReference && openRefereceFile
                [refFile, refFilepath] = uigetfile(fileExt,'Select a reference file',fileLocation);
                refVec = readmatrix(strcat(refFilepath,refFile));
                refTof = refVec(:,tofIdx)';
                refTHz = refVec(:,defaultTHzIdx)';
            end
            if readBaseline && openBaselineFile
                [baseFile, baseFilepath] = uigetfile(fileExt,'Select a baseline file',fileLocation);
                baseVec = readmatrix(strcat(baseFilepath,baseFile));
                baseTof = baseVec(:,tofIdx)';
                baseTHz = baseVec(:,baseTHzIdx)';
            end

            for PRJIdx = 1:PRJ_count
                fullpath = fullpathname{PRJIdx};
                if isempty(fullpath)
                    return;
                end

                try
                    HDFDataInfo = h5info(fullpath, HDFDataSet);
                catch
                    uialert(fig,'Incorrect dataset','Warning');
                    app.DEBUGMsgLabel.Text = 'Loading Cancelled';
                    return;
                end

                PRJMeasCount = size(HDFDataInfo.Groups,1);

                for idx = 1:PRJMeasCount
                    % Read Sample Signal
                    groupName = HDFDataInfo.Groups(idx).Name;
                    settingInfo = h5readatt(fullpath,strcat(groupName,"/sample"),'UserScanSettings');
                    tof = h5read(fullpath,strcat(groupName,'/sample/xdata')); % Time of flight
                    samTHz = h5read(fullpath,strcat(groupName,'/sample/ydata')); % Sample THz signal
        
                    % Sample signal cell allocation
                    Tcell{DSBaseCol+samDS,PRJMeasCount-idx+totalMeasNum} = [tof;samTHz];
                    % Read Reference Signal
                    if readReference
                        try
                            refTof = h5read(fullpath,strcat(groupName,'/reference/sample/xdata'));
                            refTHz = h5read(fullpath,strcat(groupName,'/reference/sample/ydata'));
                        catch
                            refTof = {""};
                            refTHz = {""};
                            uialert(fig,'Reference signal is missing for some measurements. Please double check data.','Warning');
                        end
                        % Referecen signal cell allocation
                        Tcell{DSBaseCol+refDS,PRJMeasCount-idx+totalMeasNum} = [refTof;refTHz];
                    end
                    % Read Baseline Signal
                    if readBaseline
                        try
                            baseTof = h5read(fullpath,strcat(groupName,'/baseline/sample/xdata'));
                            baseTHz = h5read(fullpath,strcat(groupName,'/baseline/sample/ydata'));
                        catch
                            uialert(fig,'Baseline singal loading error','Warning');
                            app.DEBUGMsgLabel.Text = 'Loading Cancelled';
                            return;
                        end
        
                        if subtractBaseline
                            samTHz = samTHz - baseTHz;
                            refTHz = refTHz - baseTHz;
                            Tcell{DSBaseCol+samDS,PRJMeasCount-idx+totalMeasNum} = [tof;samTHz];
                            Tcell{DSBaseCol+refDS,PRJMeasCount-idx+totalMeasNum} = [refTof;refTHz];
                        else
                            % Baseline signal cell allocation
                            Tcell{DSBaseCol+baseDS,PRJMeasCount-idx+totalMeasNum} = [baseTof;baseTHz];
                        end
                    end

                    try
                        sampleName = char(HDFDataInfo.Groups(idx).Groups(2).Attributes(9).Value); 
                        %sampleName = char(HDFDataInfo.Groups(idx).Groups(3).Attributes(9).Value); 
                    catch
                        try
                            %sampleName = char(HDFDataInfo.Groups(idx).Groups(1).Attributes(9).Value);
                            sampleName = char(HDFDataInfo.Groups(idx).Groups(1).Attributes(19).Value);
                        catch
                            uialert(fig,'Cannot find sampleName attribute.','Warning');
                            app.DEBUGMsgLabel.Text = 'Loading Aborted';
                            return
                        end
                    end

                    try
                        description = char(extractBefore(extractAfter(settingInfo,'description":"'),'",'));
                    catch
                        description = '';
                    end

                    try
                        time = char(extractBefore(extractAfter(settingInfo,'ScanStartDateTime":"'),'.'));
                    catch
                        time = "";
                    end
        
                    Tcell{1,PRJMeasCount-idx+totalMeasNum} = PRJMeasCount-idx+totalMeasNum;
                    Tcell{2,PRJMeasCount-idx+totalMeasNum} = sampleName;
                    Tcell{3,PRJMeasCount-idx+totalMeasNum} = description;
                    Tcell{4,PRJMeasCount-idx+totalMeasNum} = app.instrument_profile; % Instrument profile
                    Tcell{5,PRJMeasCount-idx+totalMeasNum} = app.user_profile; % User profile
                    Tcell{6,PRJMeasCount-idx+totalMeasNum} = time; % Measurement start time
                    Tcell{7,PRJMeasCount-idx+totalMeasNum} = mode;                
                    Tcell{8,PRJMeasCount-idx+totalMeasNum} = []; % coordinates
                    Tcell{9,PRJMeasCount-idx+totalMeasNum} = mdDescription; % Metadata description
                    
                    Tcell{15,PRJMeasCount-idx+totalMeasNum} = [];
                    Tcell{16,PRJMeasCount-idx+totalMeasNum} = [];
                    Tcell{17,PRJMeasCount-idx+totalMeasNum} = thzVer; % dotTHz version
        
                    Tcell{18,PRJMeasCount-idx+totalMeasNum} = dsDescription; % Dataset description

                    progressP = idx/PRJMeasCount*100;
                    progressP = num2str(progressP,'%.0f');
                    progressP = strcat("Loading: ", progressP,"%");
                    app.DEBUGMsgLabel.Text = progressP;
                    drawnow
                end
                totalMeasNum = totalMeasNum + PRJMeasCount;
            end

            app.DEBUGMsgLabel.Text = "Complete Loading";
            app.totalMeasNum = size(Tcell,2);
            app.Tcell = Tcell;
            updateMeasurementTable(app);
            app.FILEDLISTTOEditField.Value = app.totalMeasNum;
            app.TabGroup.SelectedTab = app.TabGroup.Children(1);
        end
        
        function deployData_terasolveCSV(app,PRJ_count,fullpathname)
            
            fig = app.CaTxUIFigure;
            app.manualMode = 0;
            DSBaseCol = 18;
            thzVer = app.thzVer;
            Tcell = [];
            
            for PRJIdx = 1:PRJ_count
                fullpath = fullpathname{PRJIdx};
                
                % if full file path is empty, do not continue to execute the
                % function
                if isempty(fullpath)
                    return;
                end
            
                % read the headers from the *.csv file
                csvheader = readmatrix(fullpath,'Range', '1:1', 'OutputType', 'string');
                % read the data from the *.csv file
                csvdata = readmatrix(fullpath);
    
                % for convenience of extracting measurement number, conserve only
                % reference time columns with unique names
                csvheader = csvheader(1:4:end);
                
                % convert cell array to character array
                headerChars = cellfun(@char, csvheader, 'UniformOutput', false);
                % extract measurement numbers from header
                % find the '/' that separates the measurement name and the
                % measurement number
                splitter = cellfun(@(x) max(x), strfind(headerChars, '/'));
                % extract the measurement names without numerical identifiers
                samName_prefix = extractBefore(headerChars, splitter);
                % extract the measurement number
                samNum = extractBetween(headerChars,splitter,' Reference Time (ps)','Boundaries','exclusive');
                % convert all measurement numbers from string to double
                samNum = cellfun(@str2double, samNum);
                % total number of measurements
                totMea = size(csvheader,2);
        
                % creating cell array with columns equivalent to number of
                % measurements
                % number of rows is 22 by default in the Cambridge THz Converter
                preTcell = cell(22,totMea);
        
                % putting measurement numbers into preTcell
                % note use brackets when putting cells into cell array,
                % use curly brackets when putting other data types into a cell
                % preTcell(1,:) = mat2cell(num, 1, ones(1, totMea));
        
                % % temporarily assign measurement names, will do further processing
                % % later
                % preTcell(2,:) = samName_prefix;
                
                refIdx = repmat([1 2],[1 totMea]) + 4.*(repelem([1:1:totMea],2)-1);
                samIdx = repmat([3 4],[1 totMea]) + 4.*(repelem([1:1:totMea],2)-1);

                % refIdx = [1:1:totMea.*dsNum]+2.*(repelem([1:1:totMea],2)-1);
                % samIdx = [1:1:totMea.*dsNum]+2.*repelem([1:1:totMea],2);
        
                % extract reference time and amplitude
                ref = csvdata(:,refIdx)';
                % extract sample time and amplitude
                sam = csvdata(:,samIdx)';
                
                % sample
                preTcell(19,:) = mat2cell(sam,repmat(2,1,totMea),size(sam,2))';
                % reference
                preTcell(20,:) = mat2cell(ref,repmat(2,1,totMea),size(ref,2))';
                
        
                % in each project file, there may be >=1 unique measurement names
                % (this excludes the measurement number)
                % if there is only one unique measurement name
                if numel(unique(samName_prefix)) == 1
                    % obtain index on how the cell columns should be sorted
                    [~, idx] = sort(samNum);
                    % reorder cell columns
                    preTcell = preTcell(:,idx);
        
                    % generate correct measurement identifiers in ascending order
                    % measurement identifiers are generated in form of 001, 002, 003,
                    % etc. for convenience of processing in later steps if needed
                    % this is to overcome the situation in TeraSolve where some numbers are skipped
                    % when assigning measurement numbers
                    meaCnt = num2str((1:size(preTcell, 2)).', '%03d');
                    % concatenate general name and measurement identifiers to generate
                    % unique name for each measurement
                    preTcell(2,:) = strcat(samName_prefix.', '_', meaCnt).';
        
                % if there is more than one unique measurement name
                else
                    
                    % empty samidx, otherwise compatibility issues may occur in
                    % loading multiple project files in a row
                    samidx = [];
                    
                    % note that unique names are segregated in the array and do not
                    % mix
                    % obtain the first indices which the respective unique names
                    % occur
                    [~,samidx(:,1),~] = unique(samName_prefix,'first');
                    % obtain the last indices which the respective unique names
                    % occur
                    [~,samidx(:,2),~] = unique(samName_prefix,'last');
        
                    % sort within each set of columns with unique names
                    for i = 1:size(samidx,1)
                        % extract the column set that has the same unique name
                        cellsort = preTcell(:,samidx(i,1):samidx(i,2));
                        % sort measurements (columns in preTcell))
                        % sort by first row (measurement numbers in preTcell)
                        % obtain index on how the cell columns should be sorted
                        [~, idx] = sort(samNum(samidx(i,1):samidx(i,2)));
                        % reorder cell columns
                        cellsort = cellsort(:,idx);
                    
                        % generate correct measurement identifiers in ascending order
                        % measurement identifiers are generated in form of 001, 002, 003,
                        % etc. for convenience of processing in later steps if needed
                        % this is to overcome the situation in TeraSolve where some numbers are skipped
                        % when assigning measurement numbers
                        meaCnt = num2str((1:size(cellsort, 2)).', '%03d');
                        % concatenate general name and measurement identifiers to generate
                        % unique name for each measurement
                        cellsort(2,:) = strcat(samName_prefix(:,samidx(i,1):samidx(i,2)).', '_', meaCnt).';
        
                        % place the sorted columns into the original locations in
                        % preTcell
                        preTcell(:,samidx(i,1):samidx(i,2)) = cellsort;
                    end     
    
                end
                             
                % concatenate finalTcell with preTcell
                % deposit all newly imported measurements into the cell array
                % finalTcell
                Tcell = [Tcell,preTcell];
        
                % displaying percentage progress
                progressP = PRJIdx/PRJ_count*100;
                progressP = num2str(progressP,'%.0f');
                progressP = strcat("Loading: ", progressP,"%");
                app.DEBUGMsgLabel.Text = progressP;
                drawnow
    
            end
                    
            % extract the number of columns in existing Tcell
            totalMeasNum = size(Tcell,2);
            % generate a row vector with increments of one, starting
            % with the next measurement number in T cell and has a length
            % equivalent to the number of measurements in finalTcell
            % meaNum = [TcellCol+1:1:TcellCol+size(Tcell,2)];
    
            % renumber measurements over finalTcell in ascending
            % order and in increments of one
            Tcell(1,:) = mat2cell([1:1:totalMeasNum],1,ones(1,totalMeasNum));
            
            % fill in all other rows that either carry generic information
            % for all measurements or do not have relevant information yet
            % measurement description
            % Tcell([3,6,8:16, ],:) = {[]};
            % instrument profile
            Tcell(4,:) = {"TeraPulseLX/TeraView/Cambridge, UK"};
            % user profile
            Tcell(5,:) = {app.user_profile};
            % Tcell(6,:) = {[]};
            % Tersolve must be in transmission mode, there is no alternative
            % set up
            Tcell(7,:) = {"Transmission"};
            
            Tcell(17,:) = {thzVer};
            
            Tcell(18,:) = {'Sample,Reference'};

            app.totalMeasNum = totalMeasNum;
            app.Tcell = Tcell;
            updateMeasurementTable(app)
    
            % % concatenate Tcell with finalTcell
            % Tcell = [Tcell,finalTcell];
    
            % display 'complete conversion' label
            app.DEBUGMsgLabel.Text = "Complete conversion";                
            % assignin("base","Tcell",Tcell);

        end

        function loadDeploymentRecipes(app)
            try
                recipeData = jsondecode(fileread(app.recipeFile));
           catch ME
                fig = app.CaTxUIFigure;
                uialert(fig, sprintf('Failed to read DeploymentRecipe.json: %s', ME.message), 'Error');
                loadDefaultDeploymentRecipe(app);
                return;
            end

            recipeTable = struct2table(recipeData.recipes,"AsArray",true);
            recipeNames = recipeTable{:,1};
            recipeNames(end+1) = {'TeraView TeraSolve *.csv file'};
            app.recipeTable = recipeTable;
            app.recipeData = recipeData;

            app.RecipeListListBox.Items = recipeNames;
            app.DataDeploymentRecipeDropDown.Items = recipeNames;
            app.DataDeploymentRecipeDropDown.Value = recipeData.defaultItem;            
        end
        
        function deployData_thz(app, PRJ_count,fullpathname,recipeNum)
            ClearMemoryButtonPushed(app);
            app.manualMode = 0;
            Tcell = cell(22,1); % cell structure table
            DSBaseCol = 18; % Dataset base coloumn (DS description coloum)
            totalMeasNum = 0; % Total measurement number
            maxDatasetNum = 20; % maximum number of datasets
            attrItems = ["description","time","mode","coordinates","mdDescription",...
                "md1","md2","md3","md4","md5","md6","md7","thzVer","dsDescription"];
            
            if ~isempty(app.Tcell)
                return;
            end

            for PRJIdx = 1:PRJ_count
                fullpath = fullpathname{PRJIdx};
                if isempty(fullpath)
                    return;
                end
                thzInfo = h5info(fullpath);
                PRJMeasCount = size(thzInfo.Groups,1);
                ListItems = cell(PRJMeasCount,1);
                [ListItems{:}] = deal(thzInfo.Groups.Name);

                for idx = 1:PRJMeasCount
                    dn = ListItems{idx};
                    cnt = 1;
                    Tcell{1,idx+totalMeasNum} = idx+totalMeasNum;
                    Tcell{2,idx+totalMeasNum} = dn(2:end);
    
                    for dsIdx = 1:maxDatasetNum
                        try
                            dsn = strcat(dn,'/ds',num2str(dsIdx));
                            ds = h5read(fullpath,dsn);
                            Tcell{DSBaseCol+dsIdx,idx+totalMeasNum} = ds;
                        catch ME
                            if dsIdx>4
                                break;
                            else
                                dsn = strcat(dn,'/ds',num2str(dsIdx));
                                ds = [];
                                Tcell{DSBaseCol+dsIdx,idx+totalMeasNum} = ds;
                            end
                        end
                    end
    
                    for attrLoc = [3 (6:18)]
                        try
                            Tcell{attrLoc,idx+totalMeasNum} = h5readatt(fullpath,dn,attrItems(cnt));
                        catch ME
                        end
                        cnt = cnt + 1;
                    end
    
                    try
                        instrumentProfile = h5readatt(fullpath,dn,"instrument");
                        if isempty(instrumentProfile)
                            instrumentProfile = '//';
                        end
                    catch ME
                        instrumentProfile = '//';
                    end
                    Tcell{4,idx+totalMeasNum} = instrumentProfile;

                    try
                        userProfile = h5readatt(fullpath,dn,"user");
                        if isempty(userProfile)
                            userProfile = '///';
                        end
                    catch ME
                        userProfile = '///';
                    end
                    Tcell{5,idx+totalMeasNum} = userProfile;

                    progressP = idx/PRJMeasCount*100;
                    progressP = num2str(progressP,'%.0f');
                    progressP = strcat("Importing THz file: ", progressP,"%");
                    app.DEBUGMsgLabel.Text = progressP;
                    drawnow
                end
                totalMeasNum = totalMeasNum + idx;
            end
            app.totalMeasNum = totalMeasNum;
            app.Tcell = Tcell;
            updateMeasurementTable(app);
        end
        
        function loadDefaultDeploymentRecipe(app)
            fig = app.CaTxUIFigure;
            samMat = [1;2];
            refMat = [0;0;0;0];
            baseMat = [0;0;0;0;0];
            RecipeDesignTab = 0;

            recipeTable = table({'*.thz file'}, {'Transmission'}, {'thz'}, {samMat}, {refMat}, {baseMat},{' '},{RecipeDesignTab},'VariableNames',{'name','mode','fileExt','sample','reference','baseline','mdDescription', 'RecipeDesignTab'});
            recipeName = recipeTable{:,1}

            app.RecipeListListBox.Items = recipeName;
            app.DataDeploymentRecipeDropDown.Items = recipeName;
            recipeData.defaultItem = recipeName;
            recipeData.dataDescription.sample = "[time of flight column(#), sample THz column(#)]";
            recipeData.dataDescription.reference = "[load (1/0), use a seperate file(1/0), Reference THz column(#), dataset(#)]";
            recipeData.dataDescription.baseline = "[load (1/0), use a seperate file(1/0), Baseline THz column(#), dataset(#), subtract(1/0)]";
            recipeData.recipes = table2struct(recipeTable);
            app.recipeTable = recipeTable;
            app.recipeData = recipeData;
                        
            % Write the updated configData back to the JSON file
            try
                jsonText = jsonencode(recipeData, 'PrettyPrint', true);
                fid = fopen(app.recipeFile, 'w');
                if fid == -1
                    error('Cannot open file for writing: %s', app.recipeFile);
                end
                fwrite(fid, jsonText, 'char');
                fclose(fid);
            catch ME
                uialert(fig, sprintf('Failed to create default recipe: %s', ME.message), 'Error');
            end
        end
        
        function updateTHzDatasetUI(app)
            if isequal(app.DataFileExtensionDropDown.Value,'User Defined');
                fileExt = app.userDefinedEditField.Value;
            else
                fileExt = app.DataFileExtensionDropDown.Value;
            end

            ExcList = {'tprj','thz'};

            if app.LoadReferenceCheckBox.Value && ~ismember(fileExt,ExcList)
                app.SeperateFileCheckBox_Reference.Enable = "on";
                app.ReferenceTHzSpinner.Enable = "on";
                app.dsEditField_Reference.Enable = "on";                
            end

            if app.LoadBaselineCheckBox.Value && ~ismember(fileExt,ExcList)                
                app.SeperateFileCheckBox_Baseline.Enable = "on";
                app.BaselineTHzSpinner.Enable = "on";
                app.dsEditField_Baseline.Enable = "on";
                app.SubtractCheckBox.Enable = "on";
            end

            if ismember(fileExt,ExcList)
                app.TimepsSpinner.Enable = "off";
                app.SampleTHzSpinner.Enable = "off";
                app.ReferenceTHzSpinner.Enable = "off";
                app.BaselineTHzSpinner.Enable = "off";
                app.dsEditField_Sample.Enable = "off";
                app.dsEditField_Reference.Enable = "off";
                app.dsEditField_Baseline.Enable = "off";
                app.SeperateFileCheckBox_Reference.Enable = "off";
                app.SeperateFileCheckBox_Baseline.Enable = "off";
            else
                app.TimepsSpinner.Enable = "on";
                app.SampleTHzSpinner.Enable = "on";
                app.ReferenceTHzSpinner.Enable = "on";
                app.BaselineTHzSpinner.Enable = "on";
                app.dsEditField_Sample.Enable = "on";
                app.dsEditField_Reference.Enable = "on";
                app.dsEditField_Baseline.Enable = "on";
                app.SeperateFileCheckBox_Reference.Enable = "on";
                app.SeperateFileCheckBox_Baseline.Enable = "on";
            end
            
            if app.SubtractCheckBox.Value
                app.dsEditField_Baseline.Visible = "off";
            else
                app.dsEditField_Baseline.Visible = "on";
            end

            if isequal(fileExt,'thz')
                app.LoadReferenceCheckBox.Enable = "off";
                app.LoadBaselineCheckBox.Enable = "off";
                app.SubtractCheckBox.Enable = "off";
            else
                app.LoadReferenceCheckBox.Enable = "on";
                app.LoadBaselineCheckBox.Enable = "on";
                app.SubtractCheckBox.Enable = "on";
            end

            dsDescription = 'Sample';
            if app.LoadReferenceCheckBox.Value
                dsDescription = strcat(dsDescription,',','Reference');
            end
            if app.LoadBaselineCheckBox.Value && ~app.SubtractCheckBox.Value
                dsDescription = strcat(dsDescription,',','Baseline');
            end
            app.DSDescriptionEditField.Value = dsDescription;
        end
        
        function updateProfiles(app)
            fig = app.CaTxUIFigure;
            try
                profileData = jsondecode(fileread(app.profileFile));
            catch ME            
                uialert(fig, sprintf('Failed to read profile JSON file: %s', ME.message), 'Error');
                return;
            end

            instrumentTable = app.UITable_Instruments.Data;
            userTable = app.UITable_Users.Data;
            
            profileData.Instruments = table2struct(instrumentTable);
            profileData.Users = table2struct(userTable);
                        
            % Write the updated profileData to the JSON file
            try
                jsonText = jsonencode(profileData, 'PrettyPrint', true);
                fid = fopen(app.profileFile, 'w');
                if fid == -1
                    error('Cannot open file for writing: %s', app.profileFile);
                end
                fwrite(fid, jsonText, 'char');
                fclose(fid);
                % uialert(fig, 'Add/Update profile successfully.', 'Success');
            catch ME
                uialert(fig, sprintf('Failed to add/update profile: %s', ME.message), 'Error');
            end
        end
        
        function loadMetaTable(app)
            group.t1 = categorical({'-','Sample','Reference'});
            group.t2 = categorical({'-','Thickness','Diameter','Weight','Temperature','Volume','Concentration','Refractive Index','Molar Mass'});
            group.Thickness = categorical({'m','cm','mm','μm','nm'});
            group.Diameter = categorical({'cm','mm','μm'});
            group.Weight = categorical({'g','mg','μg','ng'});
            group.Temperature = categorical({'K','°C','°F'});
            group.Volume = categorical({'ml','μl','nl'});
            group.Concentration = categorical({'%'});
            group.MolarMass = categorical({'g/mol'});
            app.group = group;

            col1 = {'md1';'md2';'md3';'md4';'md5';'md6'};
            col2 = {group.t1(1);group.t1(1);group.t1(1);group.t1(1);group.t1(1);group.t1(1)};
            col3 = {group.t2(1);group.t2(1);group.t2(1);group.t2(1);group.t2(1);group.t2(1)};
            col4 = {'-';'-';'-';'-';'-';'-'};

            MetaTableData = table(col1,col2,col3,col4);
            app.UITable_Metadata.Data = MetaTableData;
            MetadatanumberSpinnerValueChanged(app);
        end
        
        function updateMDDescription(app)
            metaTableData = app.UITable_Metadata.Data;
            mdNum = app.MetadatanumberSpinner.Value;
            mdDescription = '';
            if mdNum == 0
                app.MetadataDescriptionEditField.Value = '';
                return;
            end
            noUnits = {'Refractive Index','-'};

            for idx = 1:mdNum
               rowContent = '';
               if ~isequal(string(metaTableData{idx,2}),'-')
                   rowContent = strcat(rowContent,string(metaTableData{idx,2}),'_');
               end
               if ismember(string(metaTableData{idx,3}),noUnits)
                   rowContent = strcat(rowContent,string(metaTableData{idx,3}));
               else
                   rowContent = strcat(rowContent,string(metaTableData{idx,3}),'(',string(metaTableData{idx,4}),')');
               end
               if idx < mdNum
                   rowContent = strcat(rowContent,', ');
               end
               mdDescription = strcat(mdDescription,rowContent);
            end
            app.MetadataDescriptionEditField.Value = mdDescription;
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            fig = app.CaTxUIFigure;
            app.PRJ_count = 0;   
            app.filename = [];

            app.recipeFile = 'DeploymentRecipes.json';
            app.profileFile = 'Profiles.json';
            app.configFile = 'Configuration.json';

            if isdeployed % This if-loop specifies the json file folder for macOS.  
                appRoot = ctfroot;
                appRoot = extractBefore(appRoot,'CaTx.app');
                app.configFile = [appRoot,app.configFile];
                app.recipeFile = [appRoot,app.recipeFile];
                app.profileFile = [appRoot,app.profileFile];
            end

            try
                configData = jsondecode(fileread(app.configFile));
            catch ME
                uialert(fig, sprintf('Failed to read Configuration.json: %s', ME.message), 'Error');
                return;
            end

            Tcell_header = struct2table(configData.T_header,"AsArray",true);
            Tcell_guide = struct2table(configData.T_guide);
            app.thzVer = configData.thzVer;

            app.UITable_Header.Data = Tcell_header;
            app.UITable_Measurement.Data = Tcell_guide;

            sFont = uistyle("FontColor","#0072BD"); % manual font color style
            sWtBg = uistyle("BackgroundColor","white"); % white background style
            sGrBg = uistyle("BackgroundColor",[0.95,0.95,0.95]); % grey background style
            sDGrBg = uistyle("BackgroundColor",[0.8,0.8,0.8]); % dark grey background style

            addStyle(app.UITable_Measurement,sFont);
            addStyle(app.UITable_Measurement,sGrBg,"row",(2:5));
            addStyle(app.UITable_Measurement,sWtBg,"row",(6:17));
            addStyle(app.UITable_Measurement,sGrBg,"row",(19:22));
            addStyle(app.UITable_Measurement,sGrBg,"row",[17]);
            addStyle(app.UITable_Measurement,sDGrBg,"row",[1,9,18]);

            addStyle(app.UITable_Header,sGrBg,"row",(2:5));
            addStyle(app.UITable_Header,sWtBg,"row",(6:17));
            addStyle(app.UITable_Header,sGrBg,"row",(19:22));
            addStyle(app.UITable_Header,sGrBg,"row",[17]);
            addStyle(app.UITable_Header,sDGrBg,"row",[1,9,18]);

            app.Tcell_header = Tcell_header;
            app.Tcell_headerDefault = Tcell_header;
            app.manualMode = 1;
            loadProfiles(app);
            loadDeploymentRecipes(app);
            loadMetaTable(app);

            LoadReferenceCheckBoxValueChanged(app);
            LoadBaselineCheckBoxValueChanged(app);
        end

        % Button pushed function: ImportDataFilesButton
        function ImportDataFilesButtonPushed(app, event)
            fig = app.CaTxUIFigure;
            recipeName = app.DataDeploymentRecipeDropDown.Value;
            if isempty(recipeName)
                return;
            end

            if strcmp(recipeName, 'TeraView TeraSolve *.csv file')
            fileFilter = '*.csv';           
            else
            recipeTable = app.recipeTable;
            recipeData = app.recipeData;
            recipeNames = recipeTable{:,1};
            [isMember,itemLoc]= ismember(recipeName,recipeNames);
            fileExt = recipeTable{itemLoc,3};
            fileFilter = strcat('*.',fileExt);
            end

            if isempty(app.fullpathname)
                [file, pathName] = uigetfile(fileFilter,'Seclect data file(s)','MultiSelect','on');
            else
                lastPath = app.fullpathname(end);
                [file, pathName] = uigetfile(lastPath,'Seclect data file(s)','MultiSelect','on');
            end

            % PRJ_count: number of project files imported
            PRJ_count = app.PRJ_count;
            
            if isequal(file,0) % No files are chosen.
                return;          
            end

            if iscell(file) % 'file' can ba a cell structure when multiple files were selected. 
                fileNum = length(file);
            else
                file = {file};
                fileNum = 1;
            end
               
            for idx = 1:fileNum
                % if the imported file is already exist in the list,
                % just return
                for cnt = 1:PRJ_count
                    if isequal(app.filename{cnt},file{idx})
                        return;
                    end
                end

                PRJ_count = PRJ_count + 1;
                fileinfo = strcat(pathName,file{idx});
                app.filename{PRJ_count} = file{idx};
                app.fullpathname{PRJ_count} = fileinfo;
                           
                allFileList = strjoin(app.filename,',');       
                app.FilesEditField.Value = allFileList;
            end

            app.PRJ_count = PRJ_count;
            figure(app.CaTxUIFigure);
        end

        % Button pushed function: DeployDataButton
        function DeployDataButtonPushed(app, event)
            fig = app.CaTxUIFigure;
            recipeName = app.DataDeploymentRecipeDropDown.Value;
            if isempty(recipeName)
                return;
            end
            
            PRJ_count = app.PRJ_count; % number of files to be imported
            fullpathname = app.fullpathname; % full path for the imported files
            app.manualMode = 0;
            app.totalMeasNum = 0;

            if strcmp(recipeName, 'TeraView TeraSolve *.csv file')

                deployData_terasolveCSV(app,PRJ_count,fullpathname);

            else
            recipeTable = app.recipeTable;
            recipeData = app.recipeData;
            recipeNames = recipeTable{:,1};
            [isMember,recipeNum]= ismember(recipeName,recipeNames);
            fileExt = char(recipeTable{recipeNum,3});

            Tcell = []; % cell structure table
            
            loadProfiles(app);

            switch fileExt
                case 'thz'
                    deployData_thz(app, PRJ_count,fullpathname,recipeNum);
                case 'tprj'
                    deployData_teraviewHDF(app,PRJ_count,fullpathname,recipeNum);
                otherwise
                    deployData_readmatrix(app,PRJ_count,fullpathname,recipeNum);
            end
            end

            app.Ins_MeasurementFieldToEditField.Value = app.totalMeasNum;
            app.User_MeasurementFieldToEditField.Value = app.totalMeasNum;
            app.FILEDLISTTOEditField.Value = app.totalMeasNum;
            app.TabGroup.SelectedTab = app.TabGroup.Children(1);
        end

        % Button pushed function: ClearMemoryButton
        function ClearMemoryButtonPushed(app, event)
            question = "Do you want to clear memory?";
            answer = questdlg(question,'Warning','Yes','No','No');
                
            if isequal(answer,"Yes")
                app.Tcell = [];
                app.filename = [];
                app.fullpathname = [];
                app.PRJ_count = 0;
                app.FilesEditField.Value = '';
                app.DEBUGMsgLabel.Text = '';
                app.UITable_Measurement.Data = [];
                % app.UITable_Instruments.Data = [];
                % app.UITable_Users.Data = [];
                app.UITable_Header.Data = app.Tcell_headerDefault;
            else
                return;
            end
        end

        % Cell selection callback: UITable_Measurement
        function UITable_MeasurementCellSelection(app, event)
            indices = event.Indices;
            app.cellIndices = indices;

            if indices(1)>22 || app.manualMode
                return;
            end

            % app.ofColumnEditField.Value = indices(2);
            srcDDItems = {}; %app.SourceDatasetDropDown.Items

            if ~isempty(app.Tcell{19,indices(2)})
                srcDDItems = [srcDDItems,{'ds1'}];
            end
            if ~isempty(app.Tcell{20,indices(2)})
                srcDDItems = [srcDDItems,{'ds2'}];
            end
            if ~isempty(app.Tcell{21,indices(2)})
                srcDDItems = [srcDDItems,{'ds3'}];
            end
            if ~isempty(app.Tcell{22,indices(2)})
                srcDDItems = [srcDDItems,{'ds4'}];
            end

            app.SourceDatasetDropDown.Items = srcDDItems;
            uneditableRows = [1,17,19,20,21,22];

            if ismember(indices(1),uneditableRows)
                app.UITable_Measurement.ColumnEditable = false;
            else
                app.UITable_Measurement.ColumnEditable = true;
            end         
        end

        % Cell edit callback: UITable_Measurement
        function UITable_MeasurementCellEdit(app, event)
            indices = event.Indices;
            newData = event.NewData; 
            if app.manualMode
                return;
            end
            app.Tcell(indices(1),indices(2)) = {newData};

            updateMeasurementTable(app);
        end

        % Button pushed function: ExportthzFileButton
        function ExportthzFileButtonPushed(app, event)
            fig = app.CaTxUIFigure;
            if isempty(app.fullpathname)
                filter = {'*.thz';'*.*'};
                [filename, filepath] = uiputfile(filter);
            else
                lastPath = app.fullpathname(end);
                lastPath = strcat(extractBefore(lastPath,'.'),'.thz');
                filter = lastPath;
                [filename, filepath] = uiputfile(filter);
            end
            
            if isequal(filename,0)||isequal(filepath,0)
                return;          
            end

            if isempty(app.Tcell)
                return;
            end
                        
            fullfile = strcat(filepath,filename);
            delete(fullfile);
            measNum = app.totalMeasNum;
            incNum = app.NumberPrefixSwitch.Value;
            varsAttr = ["time","mode","coordinates","mdDescription","md1","md2","md3","md4","md5","md6","md7","thzVer"];
            digitNum = ceil(log10(measNum+1));
            digitNumFormat = strcat('%0',num2str(digitNum),'d');

            % Check any duplicated names exist
            names = app.Tcell(2,:);
            for idx = 1:measNum
                tempName = names(idx);
                names(idx) = {''};
                [dupExit, dupLoc] = ismember(tempName,names);
                if dupExit
                    msg = strcat("Column ",num2str(idx)," and ",num2str(dupLoc(1)),' have the same name. Please review the columns.');
                    uialert(fig,msg,"Export Aborted!");
                    return;
                end
                names(idx) = tempName;
            end

            % Are the attributes assigned to all datasets?
            if isequal(app.AttribututeInclusionSwitch.Value,"All Measurements")
                attAll = true;
            else
                attAll = false;
                ectAttr = str2num(app.exceptItemDropDown.Value);
            end

            app.DEBUGMsgLabel.Text = "Exporting started";
            drawnow;
            maxDatasetNum = 20; % maximum number of datasets
            ds1Row = 19; % dataset 1 row in the table

            for idx = 1:measNum
                
                if isequal(incNum,"On") % prefix numbers to group name
                    dn = strcat('/',sprintf(digitNumFormat,app.Tcell{1,idx}),':',app.Tcell{2,idx});
                else
                    dn = strcat('/',app.Tcell{2,idx});
                end

                if ~attAll
                    dn = strcat('/',sprintf(digitNumFormat,app.Tcell{1,idx}));
                end

                for dsIdx = 1:maxDatasetNum % dsIdx : dataset index

                    try 
                        chk = isempty(app.Tcell{ds1Row+dsIdx-1,idx});
                    catch ME
                        break;
                    end
                    
                    if chk
                        break;
                    else
                        dsn = strcat(dn,"/ds",num2str(dsIdx)); % dataset name
                        ds = app.Tcell{ds1Row+dsIdx-1,idx}; % dataset data
                        h5create(fullfile,dsn,size(ds));
                        h5write(fullfile,dsn,ds);
                    end
                end

                % write HDF5 attributes
                if attAll || isequal(idx,1)
                    h5writeatt(fullfile,dn,'description',app.Tcell{3,idx});
                    h5writeatt(fullfile,dn,'dsDescription',app.Tcell{18,idx});
                    instrumentProfile = app.Tcell{4,idx};
                    userProfile = app.Tcell{5,idx};                    
                    rowNum = 6;
                    for attrName = varsAttr
                        h5writeatt(fullfile,dn,attrName,app.Tcell{rowNum,idx});
                        rowNum = rowNum + 1;
                    end
                    h5writeatt(fullfile,dn,'instrument',instrumentProfile);
                    h5writeatt(fullfile,dn,'user',userProfile);
                else
                    attrName = varsAttr(ectAttr-5);
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

        % Button pushed function: ImportMetadataFromXLSFileButton
        function ImportMetadataFromXLSFileButtonPushed(app, event)
            if isempty(app.fullpathname)
                filter = {'*.xlsx';'*.*'};
                [filename, filepath] = uigetfile(filter,'Select data file(s)','MultiSelect','on');
            else
                lastPath = app.fullpathname(end);
                lastPath = strcat(extractBefore(lastPath,'.'),'.xlsx'); 
                filter = lastPath;
                [filename, filepath] = uigetfile(filter,'Select data file(s)','MultiSelect','on');
            end

            if isequal(filename,0)||isequal(filepath,0)
                return;
            end
            app.LOADMETAXLS_EditField.Value = filename;
            fullfile = strcat(filepath,filename);

            Tcell = app.Tcell;
            measNum = size(Tcell,2);
            
            
            %Tcellxls = readtable(fullfile,"ReadVariableNames",false,);
            Tcellxls = readcell(fullfile);
            
            mdDescriptionxls = Tcellxls(4:end,1);

            % Remove description column and keep data only
            Tcellxls(:,1) = [];

            % compare the column numbers
            if measNum ~= size(Tcellxls,2)
                fig = app.CaTxUIFigure;
                msg = "Column Size Mismatched";
                uialert(fig,msg,'Warning');
                app.LOADMETAXLS_EditField.Value = '';
                return;
            end

            Tcell(2:3,:)=Tcellxls(2:3,:);
            Tcellxls_mdno = size(Tcellxls,1)-3;
            if Tcellxls_mdno < 7
            Tcell(10:10+Tcellxls_mdno-1,:) = Tcellxls(4:end,:);
            mdDescriptionxls = strjoin(mdDescriptionxls, ',');
            Tcell(9,:) = {mdDescriptionxls};
            Tcell(10+Tcellxls_mdno:16,:) = {""};
            else
            Tcell(10:16,:) = Tcellxls(4:10,:);
            mdDescriptionxls = strjoin(mdDescriptionxls(1:7), ',');
            Tcell(9,:) = {mdDescriptionxls};
            end
            Tcell(cellfun(@(x) isa(x,'missing'),Tcell)) = {""};
            app.Tcell = Tcell;
            updateMeasurementTable(app);            
        end

        % Button pushed function: GenerateMetadataXLSFileButton
        function GenerateMetadataXLSFileButtonPushed(app, event)
            if isempty(app.fullpathname)
                filter = {'*.xls';'*.*'};
                [filename, filepath] = uiputfile(filter);
            else
                lastPath = app.fullpathname(end);
                lastPath = strcat(extractBefore(lastPath,'.'),'.xls'); 
                filter = lastPath;
                [filename, filepath] = uiputfile(filter);
            end
            
            if isequal(filename,0)||isequal(filepath,0)
                return;          
            end
            
            fullfile = strcat(filepath,filename);

            Tcell = app.Tcell;
            Tcell_header = app.UITable_Header.Data;

            Tcellxls = [Tcell_header Tcell];
            Tcellxls([4:9, 17:end],:) = [];
            
            try
                writetable(Tcellxls,fullfile,'WriteVariableNames',false);
            catch ME
                writecell(Tcellxls,fullfile);
            end
            
            fileattrib(fullfile,'+w');
            
        end

        % Button pushed function: AnonymousUserButton
        function AnonymousUserButtonPushed(app, event)
            userRow = 5;
            fig = app.CaTxUIFigure;
            if isempty(app.Tcell)
                return;
            end

            userProfile = '///';
            fieldFrom = app.User_MeasurementFieldFromEditField.Value;
            fieldTo = app.User_MeasurementFieldToEditField.Value;

            if fieldTo > app.totalMeasNum || fieldFrom > fieldTo
                uialert(fig,'Invalid column range','warning');
                return;
            end

            try
                app.Tcell(userRow,fieldFrom:fieldTo) = {userProfile};
            catch ME
                uialert(fig,'Invalid measurement fields','warning');
                return;
            end

            updateMeasurementTable(app);
        end

        % Cell edit callback: UITable_Instruments
        function UITable_InstrumentsCellEdit(app, event)
            indices = event.Indices;
            newData = event.NewData;
            updateProfiles(app);
        end

        % Cell edit callback: UITable_Users
        function UITable_UsersCellEdit(app, event)
            indices = event.Indices;
            newData = event.NewData;
            updateProfiles(app);
        end

        % Button pushed function: AddInstrumentButton
        function AddInstrumentButtonPushed(app, event)
            instrumentTable = app.UITable_Instruments.Data;
            instrumentTable = [instrumentTable;{'','',''}];
            app.UITable_Instruments.Data = instrumentTable;
        end

        % Button pushed function: RemoveInstrumentButton
        function RemoveInstrumentButtonPushed(app, event)
            rowNum = app.InstrumentSelectionEditField.Value;
            if rowNum == 0
                return;
            end
            instrumentTable = app.UITable_Instruments.Data;
            instrumentTable(rowNum,:) = [];
            app.UITable_Instruments.Data = instrumentTable;
            app.InstrumentSelectionEditField.Value = 0;
            updateProfiles(app);
        end

        % Button pushed function: AddUserButton
        function AddUserButtonPushed(app, event)
            userTable = app.UITable_Users.Data;
            userTable = [userTable;{'','','',''}];
            app.UITable_Users.Data = userTable;
        end

        % Cell selection callback: UITable_Instruments
        function UITable_InstrumentsCellSelection(app, event)
            indices = event.Indices;
            if isempty(indices)
                app.InstrumentSelectionEditField.Value = 0;
                return;
            end
            app.InstrumentSelectionEditField.Value = indices(1);
        end

        % Cell selection callback: UITable_Users
        function UITable_UsersCellSelection(app, event)
            indices = event.Indices;
            if isempty(indices)
                app.UserSelectionEditField.Value = 0;
                return;
            end
            app.UserSelectionEditField.Value = indices(1);
        end

        % Button pushed function: RemoveUserButton
        function RemoveUserButtonPushed(app, event)
            rowNum = app.UserSelectionEditField.Value;
            if rowNum == 0
                return;
            end
            userTable = app.UITable_Users.Data;
            userTable(rowNum,:) = [];
            app.UITable_Users.Data = userTable;
            app.UserSelectionEditField.Value = 0;
            updateProfiles(app);
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
            app.UITable_Measurement.Selection = newIndices;
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
            app.UITable_Measurement.Selection = newIndices;
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
            else
                disTable = app.UITable_Measurement.Data;
                tarCol = disTable.(Indices(2)){1};
            end

            % remove the selected column
            Tcell(:,tarCol) = [];
            Tcell(1,:) = num2cell((1:size(Tcell,2)));

            % update the table
            app.Tcell = Tcell;
            updateMeasurementTable(app);

            app.totalMeasNum = size(Tcell,2);
            app.Ins_MeasurementFieldToEditField.Value = app.totalMeasNum;
            app.User_MeasurementFieldToEditField.Value = app.totalMeasNum;
            app.FILEDLISTTOEditField.Value = app.totalMeasNum;
        end

        % Button pushed function: PlotDatasetsButton
        function PlotDatasetsButtonPushed(app, event)
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

            if ~isempty(app.Tcell{19,indices(2)})
                ds1 = Tcell{19,indices(2)};
                ds1x = ds1(1,:);
                ds1y = ds1(2,:);
                plot(ax,ds1x,ds1y);
                legendItems = [legendItems,{'ds1'}];
            end

            if ~isempty(app.Tcell{20,indices(2)})
                ds2 = Tcell{20,indices(2)};
                ds2x = ds2(1,:);
                ds2y = ds2(2,:);
                plot(ax,ds2x,ds2y);
                legendItems = [legendItems,{'ds2'}];
            end

            if ~isempty(app.Tcell{21,indices(2)})
                ds3 = Tcell{21,indices(2)};
                ds3x = ds3(1,:);
                ds3y = ds3(2,:);
                plot(ax,ds3x,ds3y);
                legendItems = [legendItems,{'ds3'}];
            end

            if ~isempty(app.Tcell{22,indices(2)})
                ds4 = Tcell{22,indices(2)};
                ds4x = ds4(1,:);
                ds4y = ds4(2,:);
                plot(ax,ds4x,ds4y);
                legendItems = [legendItems,{'d43'}];
            end

            legend(ax,legendItems);
        end

        % Button pushed function: SetInstrumentMetadataButton
        function SetInstrumentMetadataButtonPushed(app, event)
            itemNum = app.InstrumentSelectionEditField.Value;
            instrumentRow = 4;
            fig = app.CaTxUIFigure;

            if isequal(itemNum,0) || isempty(app.Tcell)
                return;
            end

            instrumentTable = app.UITable_Instruments.Data;
            instrumentProfile = strjoin(instrumentTable{itemNum,:},'/');
            fieldFrom = app.Ins_MeasurementFieldFromEditField.Value;
            fieldTo = app.Ins_MeasurementFieldToEditField.Value;

            if fieldTo > app.totalMeasNum || fieldFrom > fieldTo
                uialert(fig,'Invalid column range','warning');
                return;
            end

            try
                app.Tcell(instrumentRow,fieldFrom:fieldTo) = {instrumentProfile};
            catch ME
                uialert(fig,'Invalid measurement field list','warning');
                return;
            end

            updateMeasurementTable(app);
        end

        % Button pushed function: SetUserMetadataButton
        function SetUserMetadataButtonPushed(app, event)
            itemNum = app.UserSelectionEditField.Value;
            userRow = 5;
            fig = app.CaTxUIFigure;

            if isequal(itemNum,0) || isempty(app.Tcell)
                return;
            end

            userTable = app.UITable_Users.Data;
            userProfile = strjoin(userTable{itemNum,:},'/');
            fieldFrom = app.User_MeasurementFieldFromEditField.Value;
            fieldTo = app.User_MeasurementFieldToEditField.Value;

            if fieldTo > app.totalMeasNum || fieldFrom > fieldTo
                uialert(fig,'Invalid column range','warning');
                return;
                return;
            end

            try
                app.Tcell(userRow,fieldFrom:fieldTo) = {userProfile};
            catch ME
                uialert(fig,'Invalid measurement fields','warning');
                return;
            end

            updateMeasurementTable(app);
        end

        % Button pushed function: AnonymousInstrumentButton
        function AnonymousInstrumentButtonPushed(app, event)
            instrumentRow = 4;
            fig = app.CaTxUIFigure;
            if isempty(app.Tcell)
                return;
            end
            instrumentProfile = '//';
            fieldFrom = app.Ins_MeasurementFieldFromEditField.Value;
            fieldTo = app.Ins_MeasurementFieldToEditField.Value;

            if fieldTo > app.totalMeasNum || fieldFrom > fieldTo
                uialert(fig,'Invalid column range','warning');
                return;
            end

            try
                app.Tcell(instrumentRow,fieldFrom:fieldTo) = {instrumentProfile};
            catch ME
                uialert(fig,'Invalid measurement field list','warning');
                return;
            end

            updateMeasurementTable(app);
        end

        % Button pushed function: DeleteSourceButton
        function DeleteSourceButtonPushed(app, event)
            question = "Do you want to delete the dataset?";
            answer = questdlg(question,'Warning');
                
            if isequal(answer,"Yes")
                datasetControl(app,"Delete");
            end            
        end

        % Button pushed function: CopyButton
        function CopyButtonPushed(app, event)
            datasetControl(app,"Copy");
        end

        % Button pushed function: SortButton
        function SortButtonPushed(app, event)
            try
                Tcell = app.Tcell;
                colSize = size(Tcell,2);
                sortRow = app.SortRowDropDown.Value;
                sortRow = str2num(sortRow);
                direction = app.SortDirectionSwitch.Value;
                Tcell = sortrows(Tcell',sortRow,direction)';
            catch
                return;
            end
            
            for idx = 1:colSize
                Tcell{1,idx} = idx;
            end

            app.Tcell = Tcell;
            updateMeasurementTable(app);
        end

        % Value changed function: LoadReferenceCheckBox
        function LoadReferenceCheckBoxValueChanged(app, event)
            updateTHzDatasetUI(app);
        end

        % Value changed function: LoadBaselineCheckBox
        function LoadBaselineCheckBoxValueChanged(app, event)
            updateTHzDatasetUI(app);
        end

        % Value changed function: SubtractCheckBox
        function SubtractCheckBoxValueChanged(app, event)
            updateTHzDatasetUI(app);
        end

        % Value changed function: DataFileExtensionDropDown
        function DataFileExtensionDropDownValueChanged(app, event)
            fileExt = app.DataFileExtensionDropDown.Value;
            if isequal(fileExt,'User Defined')
                app.userDefinedEditField.Enable = "on";
                app.userDefinedEditField.Value = '';
            else
                app.userDefinedEditField.Enable = "off";
                app.userDefinedEditField.Value = '';
            end
            updateTHzDatasetUI(app);
        end

        % Value changed function: SeperateFileCheckBox_Reference
        function SeperateFileCheckBox_ReferenceValueChanged(app, event)
            value = app.SeperateFileCheckBox_Reference.Value;
            if value
               app.ReferenceTHzSpinner.Value = 2;
            else
               app.ReferenceTHzSpinner.Value = 3;
            end
        end

        % Value changed function: SeperateFileCheckBox_Baseline
        function SeperateFileCheckBox_BaselineValueChanged(app, event)
            value = app.SeperateFileCheckBox_Baseline.Value;
            
            if value
               app.BaselineTHzSpinner.Value = 2;
            else
               app.BaselineTHzSpinner.Value = 4;
            end
        end

        % Button pushed function: AddUpdateRecipeButton
        function AddUpdateRecipeButtonPushed(app, event)
            fig = app.CaTxUIFigure;
            recipeName = app.RecipeNameEditField.Value;

            if isempty(recipeName)
                return;
            end

            recipeTable = app.recipeTable;
            recipeData = app.recipeData;
            recipeNames = recipeTable{:,1};
            mdDescription = app.MetadataDescriptionEditField.Value;
            mode = app.ModeDescriptionEditField.Value;
            tabNum = 1;
            [isMember,itemLoc]= ismember(recipeName,recipeNames);

            if isempty(recipeName)
                return;
            end

            if isMember
                entryRow = itemLoc;
            else
                entryRow = length(recipeNames)+1;
            end

            samMat = zeros(2,1);
            refMat = zeros(4,1);
            baseMat = zeros(5,1);

            samMat(1) = app.TimepsSpinner.Value;
            samMat(2) = app.SampleTHzSpinner.Value;

            refMat(1) = app.LoadReferenceCheckBox.Value;
            refMat(2) = app.SeperateFileCheckBox_Reference.Value;
            refMat(3) = app.ReferenceTHzSpinner.Value;
            refMat(4) = app.dsEditField_Reference.Value;

            baseMat(1) = app.LoadBaselineCheckBox.Value;
            baseMat(2) = app.SeperateFileCheckBox_Baseline.Value;
            baseMat(3) = app.BaselineTHzSpinner.Value;
            baseMat(4) = app.dsEditField_Baseline.Value;
            baseMat(5) = app.SubtractCheckBox.Value;

            % Allocate the settings into the recipe table

            recipeTable(entryRow,1) = {recipeName};
            recipeTable(entryRow,2) = {mode};
            if isequal(app.DataFileExtensionDropDown.Value,'User Defined');
                fileExt = app.userDefinedEditField.Value;
            else
                fileExt = app.DataFileExtensionDropDown.Value;
            end
            recipeTable(entryRow,3) = {fileExt};
            recipeTable(entryRow,4) = {samMat};
            recipeTable(entryRow,5) = {refMat};
            recipeTable(entryRow,6) = {baseMat};
            recipeTable(entryRow,7) = {mdDescription};
            recipeTable(entryRow,8) = {tabNum};

            app.RecipeListListBox.Items = recipeNames;
            app.DataDeploymentRecipeDropDown.Items = recipeNames;          

            recipeData.recipes = table2struct(recipeTable);        
                        
            % Write the updated configData back to the JSON file
            try
                jsonText = jsonencode(recipeData, 'PrettyPrint', true);
                fid = fopen(app.recipeFile, 'w');
                if fid == -1
                    error('Cannot open file for writing: %s', app.recipeFile);
                end
                fwrite(fid, jsonText, 'char');
                fclose(fid);
                uialert(fig, 'Add/Update the recipe successfully.', 'Success');
            catch ME
                uialert(fig, sprintf('Failed to add/update the recipe: %s', ME.message), 'Error');
            end

            loadDeploymentRecipes(app);
        end

        % Clicked callback: RecipeListListBox
        function RecipeListListBoxClicked(app, event)
            item = event.InteractionInformation.Item; % Item number
            if isempty(item)
                return;
            end

            recipeTable = app.recipeTable;
            app.RecipeNameEditField.Value = char(recipeTable{item,1});
            app.MetadataDescriptionEditField.Value = char(recipeTable{item,7});
            app.ModeDescriptionEditField.Value = char(recipeTable{item,2});
            tabNum = recipeTable{item,8};
            fileExt = char(recipeTable{item,3});
            if tabNum ~= 0
                app.RecipeTabGroup.SelectedTab = app.RecipeTabGroup.Children(tabNum);
            end
            %assignin("base","recipeTable",recipeTable);

            % Display data file extension
            if sum(contains(app.DataFileExtensionDropDown.Items,fileExt))
                app.DataFileExtensionDropDown.Value = fileExt;
                DataFileExtensionDropDownValueChanged(app);                
            else
                app.DataFileExtensionDropDown.Value = 'User Defined';
                DataFileExtensionDropDownValueChanged(app);
                app.userDefinedEditField.Value = fileExt;
            end

            % Display terahertz datasets
            samMat = cell2mat(recipeTable{item,4});
            app.TimepsSpinner.Value = samMat(1);
            app.SampleTHzSpinner.Value = samMat(2);

            refMat = cell2mat(recipeTable{item,5})';
            app.LoadReferenceCheckBox.Value = refMat(1);
            app.SeperateFileCheckBox_Reference.Value = refMat(2);
            app.ReferenceTHzSpinner.Value = refMat(3);
            app.dsEditField_Reference.Value = refMat(4);
            LoadReferenceCheckBoxValueChanged(app);

            baseMat = cell2mat(recipeTable{item,6});
            app.LoadBaselineCheckBox.Value = baseMat(1);
            app.SeperateFileCheckBox_Baseline.Value = baseMat(2);
            app.BaselineTHzSpinner.Value = baseMat(3);
            app.dsEditField_Baseline.Value = baseMat(4);
            app.SubtractCheckBox.Value = baseMat(5);
            LoadBaselineCheckBoxValueChanged(app);
            
            updateTHzDatasetUI(app);
        end

        % Button pushed function: SetDefaultButton
        function SetDefaultButtonPushed(app, event)
            Item = app.RecipeListListBox.Value;
            fig = app.CaTxUIFigure;
            if isempty(Item)
                return;
            end

            try
                recipeData = jsondecode(fileread(app.recipeFile));
            catch ME
                uialert(fig,'Fail to open DeploymentRecipes.json.','warning');
                return;
            end   

            % Set the current setting values
            recipeData.defaultItem = Item;

            % Write the updated configData back to the JSON file
            try
                jsonText = jsonencode(recipeData, 'PrettyPrint', true);
                fid = fopen(app.recipeFile, 'w');
                if fid == -1
                    error('Cannot open file for writing: %s', app.recipeFile);
                end
                fwrite(fid, jsonText, 'char');
                fclose(fid);
                uialert(fig, 'Set default recipe successfully.', 'Success');
            catch ME
                uialert(fig, sprintf('Failed to set default recipe: %s', ME.message), 'Error');
            end

            loadDeploymentRecipes(app);
        end

        % Button pushed function: RemoveRecipeButton
        function RemoveRecipeButtonPushed(app, event)
            fig = app.CaTxUIFigure;
            Item = app.RecipeListListBox.Value;

            recipeTable = app.recipeTable;
            recipeData = app.recipeData;
            recipeNames = recipeTable{:,1};
            [isMember,itemLoc]= ismember(Item,recipeNames);

            if isempty(Item)
                return;
            end

            if isequal(Item,'*.thz file')
                uialert(fig,'You cannot remove *.thz recipe','warning');
                return;
            end

            question = "Do you want to remove recipe?";
            answer = questdlg(question,'Warning','Yes','No','No');
            
            if answer == "No"
                return;
            end

            % remove the selected row from table
            recipeTable(itemLoc,:) = [];
            recipeNames = recipeTable{:,1};
            app.recipeTable = recipeTable;

            if isequal(Item,recipeData.defaultItem)
                recipeData.defaultItem = recipeNames(1);
            end

            app.RecipeListListBox.Items = recipeNames;
            app.DataDeploymentRecipeDropDown.Items = recipeNames;
            app.DataDeploymentRecipeDropDown.Value = recipeData.defaultItem;           

            recipeData.recipes = table2struct(recipeTable);        
                        
            % Write the updated configData back to the JSON file
            try
                jsonText = jsonencode(recipeData, 'PrettyPrint', true);
                fid = fopen(app.recipeFile, 'w');
                if fid == -1
                    error('Cannot open file for writing: %s', app.recipeFile);
                end
                fwrite(fid, jsonText, 'char');
                fclose(fid);
                uialert(fig, 'Removed the recipe successfully.', 'Success');
            catch ME
                uialert(fig, sprintf('Failed to remove the recipe: %s', ME.message), 'Error');
            end

            loadDeploymentRecipes(app);
        end

        % Button pushed function: UpButton
        function UpButtonPushed(app, event)
            fig = app.CaTxUIFigure;
            Item = app.RecipeListListBox.Value;

            recipeTable = app.recipeTable;
            recipeData = app.recipeData;
            recipeNames = recipeTable{:,1};
            [isMember,itemLoc]= ismember(Item,recipeNames);

            if isempty(Item)||itemLoc<=1
                return;
            end

            % remove the selected row from table
            temp = recipeTable(itemLoc-1,:);
            recipeTable(itemLoc-1,:) = recipeTable(itemLoc,:);
            recipeTable(itemLoc,:) = temp;
            recipeNames = recipeTable{:,1};
            app.recipeTable = recipeTable;

            app.RecipeListListBox.Items = recipeNames;
            app.DataDeploymentRecipeDropDown.Items = recipeNames;        

            recipeData.recipes = table2struct(recipeTable);        
                        
            try
                jsonText = jsonencode(recipeData, 'PrettyPrint', true);
                fid = fopen(app.recipeFile, 'w');
                if fid == -1
                    error('Cannot open json file for writing: %s', app.recipeFile);
                end
                fwrite(fid, jsonText, 'char');
                fclose(fid);
            catch ME
                uialert(fig, sprintf('Failed to move up the recipe: %s', ME.message), 'Error');
            end
            loadDeploymentRecipes(app);
        end

        % Button pushed function: DownButton
        function DownButtonPushed(app, event)
            fig = app.CaTxUIFigure;
            Item = app.RecipeListListBox.Value;

            recipeTable = app.recipeTable;
            recipeData = app.recipeData;
            recipeNames = recipeTable{:,1};
            [isMember,itemLoc]= ismember(Item,recipeNames);

            if isempty(Item)||itemLoc==length(recipeNames)
                return;
            end

            temp = recipeTable(itemLoc+1,:);
            recipeTable(itemLoc+1,:) = recipeTable(itemLoc,:);
            recipeTable(itemLoc,:) = temp;
            recipeNames = recipeTable{:,1};
            app.recipeTable = recipeTable;

            app.RecipeListListBox.Items = recipeNames;
            app.DataDeploymentRecipeDropDown.Items = recipeNames;        

            recipeData.recipes = table2struct(recipeTable);        
                        
            try
                jsonText = jsonencode(recipeData, 'PrettyPrint', true);
                fid = fopen(app.recipeFile, 'w');
                if fid == -1
                    error('Cannot open json file for writing: %s', app.recipeFile);
                end
                fwrite(fid, jsonText, 'char');
                fclose(fid);
            catch ME
                uialert(fig, sprintf('Failed to move down the recipe: %s', ME.message), 'Error');
            end
            loadDeploymentRecipes(app);
        end

        % Value changed function: dsEditField_Baseline
        function dsEditField_BaselineValueChanged(app, event)
            updateTHzDatasetUI(app);
        end

        % Value changed function: dsEditField_Reference
        function dsEditField_ReferenceValueChanged(app, event)
            updateTHzDatasetUI(app);
        end

        % Button pushed function: SetDefaultInstrumentButton
        function SetDefaultInstrumentButtonPushed(app, event)
            fig = app.CaTxUIFigure;
            itemNum = app.InstrumentSelectionEditField.Value;
            if isequal(itemNum,0)
                return;
            end

            try
                profileData = jsondecode(fileread(app.profileFile));
            catch ME            
                uialert(fig, sprintf('Failed to read profile JSON file: %s', ME.message), 'Error');
                return;
            end

            instrumentTable = app.UITable_Instruments.Data;
            profileData.defaultInstrument = strjoin(instrumentTable{itemNum,:},'/');

            try
                jsonText = jsonencode(profileData, 'PrettyPrint', true);
                fid = fopen(app.profileFile, 'w');
                if fid == -1
                    error('Cannot open file for writing: %s', app.recipeFile);
                end
                fwrite(fid, jsonText, 'char');
                fclose(fid);
                uialert(fig, 'Set default instrument successfully.', 'Success');
                app.DefaultInstrumentEditField.Value = profileData.defaultInstrument;
            catch ME
                uialert(fig, sprintf('Failed to set default instrument: %s', ME.message), 'Error');
                app.DefaultInstrumentEditField.Value = '';
            end
        end

        % Button pushed function: SetCurrentUserButton
        function SetCurrentUserButtonPushed(app, event)
            fig = app.CaTxUIFigure;
            itemNum = app.UserSelectionEditField.Value;
            if isequal(itemNum,0)
                return;
            end

            try
                profileData = jsondecode(fileread(app.profileFile));
            catch ME            
                uialert(fig, sprintf('Failed to read profile JSON file: %s', ME.message), 'Error');
                return;
            end

            userTable = app.UITable_Users.Data;
            profileData.currentUser = strjoin(userTable{itemNum,:},'/');
                        
            try
                jsonText = jsonencode(profileData, 'PrettyPrint', true);
                fid = fopen(app.profileFile, 'w');
                if fid == -1
                    error('Cannot open file for writing: %s', app.recipeFile);
                end
                fwrite(fid, jsonText, 'char');
                fclose(fid);
                uialert(fig, 'Set current user successfully.', 'Success');
                app.CurrentUserEditField.Value = profileData.currentUser;
            catch ME
                uialert(fig, sprintf('Failed to set current user: %s', ME.message), 'Error');
                app.CurrentUserEditField.Value = '';
            end

        end

        % Value changed function: DataDeploymentRecipeDropDown
        function DataDeploymentRecipeDropDownValueChanged(app, event)
            app.filename = [];
            app.fullpathname = [];
            app.PRJ_count = 0;
            app.FilesEditField.Value = '';
        end

        % Selection changed function: UITable_Metadata
        function UITable_MetadataSelectionChanged(app, event)
            selection = app.UITable_Metadata.Selection;
            if selection(1) > app.MetadatanumberSpinner.Value || selection(2) == 1
                app.UITable_Metadata.ColumnEditable = false;
            else
                app.UITable_Metadata.ColumnEditable = true;
            end
        end

        % Cell edit callback: UITable_Metadata
        function UITable_MetadataCellEdit(app, event)
            indices = event.Indices;
            newData = event.NewData;
            group = app.group;
            metaTableData = app.UITable_Metadata.Data;
            if indices(2) == 3
                switch newData
                    case 'Thickness' 
                        metaTableData(indices(1),4) = table({group.Thickness(3)});
                    case 'Weight'
                        metaTableData(indices(1),4) = table({group.Weight(2)});
                    case 'Temperature'
                        metaTableData(indices(1),4) = table({group.Temperature(1)});
                    case 'Volume'
                        metaTableData(indices(1),4) = table({group.Volume(1)});
                    case 'Concentration'
                        metaTableData(indices(1),4) = table({group.Concentration(1)});
                    case 'Molar Mass'
                        metaTableData(indices(1),4) = table({group.MolarMass(1)});
                    case 'Diameter'
                        metaTableData(indices(1),4) = table({group.Diameter(2)});
                    otherwise
                        metaTableData(indices(1),4) = {'-'};
                end
            end
            app.UITable_Metadata.Data = metaTableData;
            updateMDDescription(app);            
        end

        % Button pushed function: ResetTabletButton
        function ResetTabletButtonPushed(app, event)
            app.MetadatanumberSpinner.Value = 0;
            loadMetaTable(app);
        end

        % Value changed function: MetadatanumberSpinner
        function MetadatanumberSpinnerValueChanged(app, event)
            value = app.MetadatanumberSpinner.Value;
            sWtBg = uistyle("BackgroundColor","white"); % white background style
            sDGrBg = uistyle("BackgroundColor",[0.8,0.8,0.8]); % dark grey background style
            addStyle(app.UITable_Metadata,sWtBg,"row",[(1:6)]);
            addStyle(app.UITable_Metadata,sDGrBg,"row",[(value+1:7)]);
            if value == 6
                return;
            end
            metaTableData = app.UITable_Metadata.Data;
            group = app.group;
            for idx = value+1:6
                metaTableData(idx,2:4) = table({group.t1(1)},{group.t2(1)},{'-'});
            end
            app.UITable_Metadata.Data = metaTableData;
            updateMDDescription(app);
        end

        % Button pushed function: AddUpdateMDRecipeButton
        function AddUpdateMDRecipeButtonPushed(app, event)
            fig = app.CaTxUIFigure;
            recipeName = app.RecipeNameEditField.Value;
            mdDescription = app.MetadataDescriptionEditField.Value;

            if isempty(recipeName)
                return;
            end

            recipeTable = app.recipeTable;
            recipeData = app.recipeData;
            recipeNames = recipeTable{:,1};
            [isMember,itemLoc]= ismember(recipeName,recipeNames);

            if isempty(recipeName)
                return;
            end

            entryRow = itemLoc;
            recipeTable(entryRow,7) = {mdDescription};
            app.recipeTable = recipeTable;
            recipeData.recipes = table2struct(recipeTable);
                        
            % Write the updated configData back to the JSON file
            try
                jsonText = jsonencode(recipeData, 'PrettyPrint', true);
                fid = fopen(app.recipeFile, 'w');
                if fid == -1
                    error('Cannot open file for writing: %s', app.recipeFile);
                end
                fwrite(fid, jsonText, 'char');
                fclose(fid);
                uialert(fig, 'Add/Update the metadata description successfully.', 'Success');
            catch ME
                uialert(fig, sprintf('Failed to add/update the metadata description: %s', ME.message), 'Error');
            end
        end

        % Button pushed function: UpdateTab1TableButton
        function UpdateTab1TableButtonPushed(app, event)
            mdDescription = app.MetadataDescriptionEditField.Value;
            mdDescriptionRow = 9;
            fig = app.CaTxUIFigure;

            if isempty(mdDescription) || isempty(app.Tcell)
                return;
            end

            try
                app.Tcell(mdDescriptionRow,1:app.totalMeasNum) = {mdDescription};
            catch ME
                uialert(fig,'Failed to update metadata description','warning');
                return;
            end

            updateMeasurementTable(app);
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
            app.CaTxUIFigure.Position = [100 100 1118 868];
            app.CaTxUIFigure.Name = 'CaTx';
            app.CaTxUIFigure.Icon = fullfile(pathToMLAPP, 'Images', 'icon.png');

            % Create ImportDataFilesButton
            app.ImportDataFilesButton = uibutton(app.CaTxUIFigure, 'push');
            app.ImportDataFilesButton.ButtonPushedFcn = createCallbackFcn(app, @ImportDataFilesButtonPushed, true);
            app.ImportDataFilesButton.FontWeight = 'bold';
            app.ImportDataFilesButton.Position = [202 791 143 25];
            app.ImportDataFilesButton.Text = 'Import Data File(s)';

            % Create FilesEditField
            app.FilesEditField = uieditfield(app.CaTxUIFigure, 'text');
            app.FilesEditField.Position = [352 791 579 25];

            % Create DeployDataButton
            app.DeployDataButton = uibutton(app.CaTxUIFigure, 'push');
            app.DeployDataButton.ButtonPushedFcn = createCallbackFcn(app, @DeployDataButtonPushed, true);
            app.DeployDataButton.BackgroundColor = [0.902 0.902 0.902];
            app.DeployDataButton.FontWeight = 'bold';
            app.DeployDataButton.Position = [939 790 154 25];
            app.DeployDataButton.Text = 'Deploy Data';

            % Create CaTxLabel
            app.CaTxLabel = uilabel(app.CaTxUIFigure);
            app.CaTxLabel.FontSize = 38;
            app.CaTxLabel.FontWeight = 'bold';
            app.CaTxLabel.FontAngle = 'italic';
            app.CaTxLabel.Position = [87 787 98 50];
            app.CaTxLabel.Text = 'CaTx';

            % Create ExportthzFileButton
            app.ExportthzFileButton = uibutton(app.CaTxUIFigure, 'push');
            app.ExportthzFileButton.ButtonPushedFcn = createCallbackFcn(app, @ExportthzFileButtonPushed, true);
            app.ExportthzFileButton.BackgroundColor = [0.902 0.902 0.902];
            app.ExportthzFileButton.FontWeight = 'bold';
            app.ExportthzFileButton.Position = [939 15 152 30];
            app.ExportthzFileButton.Text = 'Export .thz File';

            % Create DataDeploymentRecipeDropDownLabel
            app.DataDeploymentRecipeDropDownLabel = uilabel(app.CaTxUIFigure);
            app.DataDeploymentRecipeDropDownLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.DataDeploymentRecipeDropDownLabel.HorizontalAlignment = 'right';
            app.DataDeploymentRecipeDropDownLabel.FontWeight = 'bold';
            app.DataDeploymentRecipeDropDownLabel.Position = [194 827 146 22];
            app.DataDeploymentRecipeDropDownLabel.Text = 'Data Deployment Recipe';

            % Create DataDeploymentRecipeDropDown
            app.DataDeploymentRecipeDropDown = uidropdown(app.CaTxUIFigure);
            app.DataDeploymentRecipeDropDown.Items = {'No recipes available. Please check DeplymentRecipes.json file.'};
            app.DataDeploymentRecipeDropDown.ValueChangedFcn = createCallbackFcn(app, @DataDeploymentRecipeDropDownValueChanged, true);
            app.DataDeploymentRecipeDropDown.FontWeight = 'bold';
            app.DataDeploymentRecipeDropDown.BackgroundColor = [0.9412 0.9412 0.9412];
            app.DataDeploymentRecipeDropDown.Position = [354 825 577 25];
            app.DataDeploymentRecipeDropDown.Value = 'No recipes available. Please check DeplymentRecipes.json file.';

            % Create ClearMemoryButton
            app.ClearMemoryButton = uibutton(app.CaTxUIFigure, 'push');
            app.ClearMemoryButton.ButtonPushedFcn = createCallbackFcn(app, @ClearMemoryButtonPushed, true);
            app.ClearMemoryButton.FontWeight = 'bold';
            app.ClearMemoryButton.Position = [939 825 154 25];
            app.ClearMemoryButton.Text = 'Clear Memory';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.CaTxUIFigure);
            app.TabGroup.Position = [24 54 1075 723];

            % Create MeasurementsandMetadataTab
            app.MeasurementsandMetadataTab = uitab(app.TabGroup);
            app.MeasurementsandMetadataTab.Title = 'Measurements and Metadata';

            % Create UITable_Measurement
            app.UITable_Measurement = uitable(app.MeasurementsandMetadataTab);
            app.UITable_Measurement.ColumnName = '';
            app.UITable_Measurement.ColumnRearrangeable = 'on';
            app.UITable_Measurement.RowName = {};
            app.UITable_Measurement.ColumnEditable = true;
            app.UITable_Measurement.CellEditCallback = createCallbackFcn(app, @UITable_MeasurementCellEdit, true);
            app.UITable_Measurement.CellSelectionCallback = createCallbackFcn(app, @UITable_MeasurementCellSelection, true);
            app.UITable_Measurement.Multiselect = 'off';
            app.UITable_Measurement.Position = [193 150 857 532];

            % Create UITable_Header
            app.UITable_Header = uitable(app.MeasurementsandMetadataTab);
            app.UITable_Header.ColumnName = '';
            app.UITable_Header.RowName = {};
            app.UITable_Header.FontWeight = 'bold';
            app.UITable_Header.Position = [23 150 171 532];

            % Create MetadataPanel
            app.MetadataPanel = uipanel(app.MeasurementsandMetadataTab);
            app.MetadataPanel.Title = 'Metadata';
            app.MetadataPanel.Position = [34 13 226 127];

            % Create GenerateMetadataXLSFileButton
            app.GenerateMetadataXLSFileButton = uibutton(app.MetadataPanel, 'push');
            app.GenerateMetadataXLSFileButton.ButtonPushedFcn = createCallbackFcn(app, @GenerateMetadataXLSFileButtonPushed, true);
            app.GenerateMetadataXLSFileButton.Position = [14 73 200 25];
            app.GenerateMetadataXLSFileButton.Text = 'Generate Metadata XLS File';

            % Create ImportMetadataFromXLSFileButton
            app.ImportMetadataFromXLSFileButton = uibutton(app.MetadataPanel, 'push');
            app.ImportMetadataFromXLSFileButton.ButtonPushedFcn = createCallbackFcn(app, @ImportMetadataFromXLSFileButtonPushed, true);
            app.ImportMetadataFromXLSFileButton.Position = [14 41 200 25];
            app.ImportMetadataFromXLSFileButton.Text = 'Import Metadata From XLS File';

            % Create LOADMETAXLS_EditField
            app.LOADMETAXLS_EditField = uieditfield(app.MetadataPanel, 'text');
            app.LOADMETAXLS_EditField.Editable = 'off';
            app.LOADMETAXLS_EditField.BackgroundColor = [0.9412 0.9412 0.9412];
            app.LOADMETAXLS_EditField.Position = [48 11 166 22];

            % Create FileLabel
            app.FileLabel = uilabel(app.MetadataPanel);
            app.FileLabel.Position = [20 11 28 22];
            app.FileLabel.Text = 'File:';

            % Create ColumnControlPanel
            app.ColumnControlPanel = uipanel(app.MeasurementsandMetadataTab);
            app.ColumnControlPanel.Title = 'Column Control';
            app.ColumnControlPanel.Position = [271 13 336 127];

            % Create RemoveButton
            app.RemoveButton = uibutton(app.ColumnControlPanel, 'push');
            app.RemoveButton.ButtonPushedFcn = createCallbackFcn(app, @RemoveButtonPushed, true);
            app.RemoveButton.Position = [11 10 150 25];
            app.RemoveButton.Text = 'Remove';

            % Create MoveButton
            app.MoveButton = uibutton(app.ColumnControlPanel, 'push');
            app.MoveButton.ButtonPushedFcn = createCallbackFcn(app, @MoveButtonPushed, true);
            app.MoveButton.Position = [10 73 74 25];
            app.MoveButton.Text = 'Move <<';

            % Create MoveButton_2
            app.MoveButton_2 = uibutton(app.ColumnControlPanel, 'push');
            app.MoveButton_2.ButtonPushedFcn = createCallbackFcn(app, @MoveButton_2Pushed, true);
            app.MoveButton_2.Position = [87 73 74 25];
            app.MoveButton_2.Text = '>>Move';

            % Create PlotDatasetsButton
            app.PlotDatasetsButton = uibutton(app.ColumnControlPanel, 'push');
            app.PlotDatasetsButton.ButtonPushedFcn = createCallbackFcn(app, @PlotDatasetsButtonPushed, true);
            app.PlotDatasetsButton.Position = [11 42 150 25];
            app.PlotDatasetsButton.Text = 'Plot Datasets';

            % Create SortButton
            app.SortButton = uibutton(app.ColumnControlPanel, 'push');
            app.SortButton.ButtonPushedFcn = createCallbackFcn(app, @SortButtonPushed, true);
            app.SortButton.IconAlignment = 'center';
            app.SortButton.Position = [175 10 153 25];
            app.SortButton.Text = 'Sort';

            % Create SortDirectionSwitch
            app.SortDirectionSwitch = uiswitch(app.ColumnControlPanel, 'slider');
            app.SortDirectionSwitch.Items = {'Ascend', 'Descend'};
            app.SortDirectionSwitch.Position = [227 44 45 20];
            app.SortDirectionSwitch.Value = 'Ascend';

            % Create SortRowDropDownLabel
            app.SortRowDropDownLabel = uilabel(app.ColumnControlPanel);
            app.SortRowDropDownLabel.HorizontalAlignment = 'right';
            app.SortRowDropDownLabel.Position = [176 71 54 22];
            app.SortRowDropDownLabel.Text = 'Sort Row';

            % Create SortRowDropDown
            app.SortRowDropDown = uidropdown(app.ColumnControlPanel);
            app.SortRowDropDown.Items = {'2', '3', '4', '5', '6', '7', '8', '10', '11', '12', '13', '14', '15', '16'};
            app.SortRowDropDown.Position = [241 71 84 22];
            app.SortRowDropDown.Value = '2';

            % Create DatasetControlPanel
            app.DatasetControlPanel = uipanel(app.MeasurementsandMetadataTab);
            app.DatasetControlPanel.Title = 'Dataset Control';
            app.DatasetControlPanel.Position = [617 13 427 127];

            % Create ofColumnEditFieldLabel
            app.ofColumnEditFieldLabel = uilabel(app.DatasetControlPanel);
            app.ofColumnEditFieldLabel.HorizontalAlignment = 'right';
            app.ofColumnEditFieldLabel.Position = [153 74 60 22];
            app.ofColumnEditFieldLabel.Text = 'of Column';

            % Create ofColumnEditField
            app.ofColumnEditField = uieditfield(app.DatasetControlPanel, 'numeric');
            app.ofColumnEditField.Limits = [1 Inf];
            app.ofColumnEditField.ValueDisplayFormat = '%.0f';
            app.ofColumnEditField.Position = [228 74 55 22];
            app.ofColumnEditField.Value = 1;

            % Create ofColumnsEditFieldLabel
            app.ofColumnsEditFieldLabel = uilabel(app.DatasetControlPanel);
            app.ofColumnsEditFieldLabel.HorizontalAlignment = 'right';
            app.ofColumnsEditFieldLabel.Position = [150 42 73 22];
            app.ofColumnsEditFieldLabel.Text = 'of Columns (';

            % Create ofColumnsEditField
            app.ofColumnsEditField = uieditfield(app.DatasetControlPanel, 'numeric');
            app.ofColumnsEditField.Limits = [1 Inf];
            app.ofColumnsEditField.ValueDisplayFormat = '%.0f';
            app.ofColumnsEditField.Position = [229 43 55 22];
            app.ofColumnsEditField.Value = 1;

            % Create toLabel
            app.toLabel = uilabel(app.DatasetControlPanel);
            app.toLabel.HorizontalAlignment = 'right';
            app.toLabel.Position = [286 42 12 22];
            app.toLabel.Text = '-';

            % Create FILEDLISTTOEditField
            app.FILEDLISTTOEditField = uieditfield(app.DatasetControlPanel, 'numeric');
            app.FILEDLISTTOEditField.Limits = [1 Inf];
            app.FILEDLISTTOEditField.ValueDisplayFormat = '%.0f';
            app.FILEDLISTTOEditField.Position = [306 42 55 22];
            app.FILEDLISTTOEditField.Value = 1;

            % Create SourceLabel
            app.SourceLabel = uilabel(app.DatasetControlPanel);
            app.SourceLabel.HorizontalAlignment = 'right';
            app.SourceLabel.Position = [16 74 46 22];
            app.SourceLabel.Text = 'Source ';

            % Create SourceDatasetDropDown
            app.SourceDatasetDropDown = uidropdown(app.DatasetControlPanel);
            app.SourceDatasetDropDown.Items = {'ds1', 'ds2', 'ds3', 'ds4'};
            app.SourceDatasetDropDown.ItemsData = {'19', '20', '21', '22'};
            app.SourceDatasetDropDown.Position = [69 74 81 22];
            app.SourceDatasetDropDown.Value = '19';

            % Create CopyButton
            app.CopyButton = uibutton(app.DatasetControlPanel, 'push');
            app.CopyButton.ButtonPushedFcn = createCallbackFcn(app, @CopyButtonPushed, true);
            app.CopyButton.IconAlignment = 'right';
            app.CopyButton.Position = [227 10 181 24];
            app.CopyButton.Text = 'Copy';

            % Create TargetLabel
            app.TargetLabel = uilabel(app.DatasetControlPanel);
            app.TargetLabel.HorizontalAlignment = 'right';
            app.TargetLabel.Position = [15 43 42 22];
            app.TargetLabel.Text = 'Target ';

            % Create TargetDatasetDropDown
            app.TargetDatasetDropDown = uidropdown(app.DatasetControlPanel);
            app.TargetDatasetDropDown.Items = {'ds1', 'ds2', 'ds3', 'ds4'};
            app.TargetDatasetDropDown.ItemsData = {'19', '20', '21', '22'};
            app.TargetDatasetDropDown.Position = [69 43 81 22];
            app.TargetDatasetDropDown.Value = '20';

            % Create DeleteSourceButton
            app.DeleteSourceButton = uibutton(app.DatasetControlPanel, 'push');
            app.DeleteSourceButton.ButtonPushedFcn = createCallbackFcn(app, @DeleteSourceButtonPushed, true);
            app.DeleteSourceButton.IconAlignment = 'right';
            app.DeleteSourceButton.Position = [295 73 113 24];
            app.DeleteSourceButton.Text = 'Delete Source';

            % Create Label
            app.Label = uilabel(app.DatasetControlPanel);
            app.Label.Position = [365 43 25 22];
            app.Label.Text = ')';

            % Create InstrumentsandUsersTab
            app.InstrumentsandUsersTab = uitab(app.TabGroup);
            app.InstrumentsandUsersTab.Title = 'Instruments and Users';

            % Create UITable_Instruments
            app.UITable_Instruments = uitable(app.InstrumentsandUsersTab);
            app.UITable_Instruments.ColumnName = {'Model'; 'Manufacturer'; 'Address'};
            app.UITable_Instruments.ColumnWidth = {200, 200, 'auto'};
            app.UITable_Instruments.RowName = {};
            app.UITable_Instruments.ColumnEditable = true;
            app.UITable_Instruments.CellEditCallback = createCallbackFcn(app, @UITable_InstrumentsCellEdit, true);
            app.UITable_Instruments.CellSelectionCallback = createCallbackFcn(app, @UITable_InstrumentsCellSelection, true);
            app.UITable_Instruments.Multiselect = 'off';
            app.UITable_Instruments.Position = [33 513 870 136];

            % Create UITable_Users
            app.UITable_Users = uitable(app.InstrumentsandUsersTab);
            app.UITable_Users.ColumnName = {'ORCID'; 'Name'; 'Email'; 'Affiliation'};
            app.UITable_Users.ColumnWidth = {150, 150, 150, 'auto'};
            app.UITable_Users.RowName = {};
            app.UITable_Users.ColumnEditable = true;
            app.UITable_Users.CellEditCallback = createCallbackFcn(app, @UITable_UsersCellEdit, true);
            app.UITable_Users.CellSelectionCallback = createCallbackFcn(app, @UITable_UsersCellSelection, true);
            app.UITable_Users.Multiselect = 'off';
            app.UITable_Users.Position = [33 110 870 284];

            % Create InstrumentsLabel
            app.InstrumentsLabel = uilabel(app.InstrumentsandUsersTab);
            app.InstrumentsLabel.FontSize = 13;
            app.InstrumentsLabel.FontWeight = 'bold';
            app.InstrumentsLabel.Position = [33 650 96 22];
            app.InstrumentsLabel.Text = 'Instruments*';

            % Create UsersLabel
            app.UsersLabel = uilabel(app.InstrumentsandUsersTab);
            app.UsersLabel.FontSize = 13;
            app.UsersLabel.FontWeight = 'bold';
            app.UsersLabel.Position = [33 396 98 22];
            app.UsersLabel.Text = 'Users*';

            % Create SetInstrumentMetadataButton
            app.SetInstrumentMetadataButton = uibutton(app.InstrumentsandUsersTab, 'push');
            app.SetInstrumentMetadataButton.ButtonPushedFcn = createCallbackFcn(app, @SetInstrumentMetadataButtonPushed, true);
            app.SetInstrumentMetadataButton.Position = [736 455 167 25];
            app.SetInstrumentMetadataButton.Text = 'Set Instrument Metadata';

            % Create SetUserMetadataButton
            app.SetUserMetadataButton = uibutton(app.InstrumentsandUsersTab, 'push');
            app.SetUserMetadataButton.ButtonPushedFcn = createCallbackFcn(app, @SetUserMetadataButtonPushed, true);
            app.SetUserMetadataButton.Position = [726 48 171 25];
            app.SetUserMetadataButton.Text = 'Set User Metadata';

            % Create AddInstrumentButton
            app.AddInstrumentButton = uibutton(app.InstrumentsandUsersTab, 'push');
            app.AddInstrumentButton.ButtonPushedFcn = createCallbackFcn(app, @AddInstrumentButtonPushed, true);
            app.AddInstrumentButton.Position = [915 567 135 25];
            app.AddInstrumentButton.Text = 'Add Instrument';

            % Create RemoveInstrumentButton
            app.RemoveInstrumentButton = uibutton(app.InstrumentsandUsersTab, 'push');
            app.RemoveInstrumentButton.ButtonPushedFcn = createCallbackFcn(app, @RemoveInstrumentButtonPushed, true);
            app.RemoveInstrumentButton.Position = [915 537 135 25];
            app.RemoveInstrumentButton.Text = 'Remove Instrument';

            % Create AddUserButton
            app.AddUserButton = uibutton(app.InstrumentsandUsersTab, 'push');
            app.AddUserButton.ButtonPushedFcn = createCallbackFcn(app, @AddUserButtonPushed, true);
            app.AddUserButton.Position = [915 309 135 25];
            app.AddUserButton.Text = 'Add User';

            % Create RemoveUserButton
            app.RemoveUserButton = uibutton(app.InstrumentsandUsersTab, 'push');
            app.RemoveUserButton.ButtonPushedFcn = createCallbackFcn(app, @RemoveUserButtonPushed, true);
            app.RemoveUserButton.Position = [915 279 135 25];
            app.RemoveUserButton.Text = 'Remove User';

            % Create SelectionLabel
            app.SelectionLabel = uilabel(app.InstrumentsandUsersTab);
            app.SelectionLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.SelectionLabel.HorizontalAlignment = 'right';
            app.SelectionLabel.Position = [335 456 55 22];
            app.SelectionLabel.Text = 'Selection';

            % Create InstrumentSelectionEditField
            app.InstrumentSelectionEditField = uieditfield(app.InstrumentsandUsersTab, 'numeric');
            app.InstrumentSelectionEditField.Limits = [0 Inf];
            app.InstrumentSelectionEditField.ValueDisplayFormat = '%.0f';
            app.InstrumentSelectionEditField.Editable = 'off';
            app.InstrumentSelectionEditField.BackgroundColor = [0.9412 0.9412 0.9412];
            app.InstrumentSelectionEditField.Position = [398 456 34 22];

            % Create SelectionLabel_2
            app.SelectionLabel_2 = uilabel(app.InstrumentsandUsersTab);
            app.SelectionLabel_2.BackgroundColor = [0.9412 0.9412 0.9412];
            app.SelectionLabel_2.HorizontalAlignment = 'right';
            app.SelectionLabel_2.Position = [329 49 55 22];
            app.SelectionLabel_2.Text = 'Selection';

            % Create UserSelectionEditField
            app.UserSelectionEditField = uieditfield(app.InstrumentsandUsersTab, 'numeric');
            app.UserSelectionEditField.Limits = [0 Inf];
            app.UserSelectionEditField.ValueDisplayFormat = '%.0f';
            app.UserSelectionEditField.Editable = 'off';
            app.UserSelectionEditField.BackgroundColor = [0.9412 0.9412 0.9412];
            app.UserSelectionEditField.Position = [392 49 34 22];

            % Create AnonymousUserButton
            app.AnonymousUserButton = uibutton(app.InstrumentsandUsersTab, 'push');
            app.AnonymousUserButton.ButtonPushedFcn = createCallbackFcn(app, @AnonymousUserButtonPushed, true);
            app.AnonymousUserButton.Position = [726 16 172 25];
            app.AnonymousUserButton.Text = 'Anonymous User';

            % Create MeasurementfieldfromLabel
            app.MeasurementfieldfromLabel = uilabel(app.InstrumentsandUsersTab);
            app.MeasurementfieldfromLabel.HorizontalAlignment = 'right';
            app.MeasurementfieldfromLabel.Position = [437 456 139 22];
            app.MeasurementfieldfromLabel.Text = 'Measurement Field From';

            % Create Ins_MeasurementFieldFromEditField
            app.Ins_MeasurementFieldFromEditField = uieditfield(app.InstrumentsandUsersTab, 'numeric');
            app.Ins_MeasurementFieldFromEditField.Limits = [1 Inf];
            app.Ins_MeasurementFieldFromEditField.ValueDisplayFormat = '%.0f';
            app.Ins_MeasurementFieldFromEditField.Position = [583 456 55 22];
            app.Ins_MeasurementFieldFromEditField.Value = 1;

            % Create toLabel_2
            app.toLabel_2 = uilabel(app.InstrumentsandUsersTab);
            app.toLabel_2.HorizontalAlignment = 'right';
            app.toLabel_2.Position = [639 456 25 22];
            app.toLabel_2.Text = 'To';

            % Create Ins_MeasurementFieldToEditField
            app.Ins_MeasurementFieldToEditField = uieditfield(app.InstrumentsandUsersTab, 'numeric');
            app.Ins_MeasurementFieldToEditField.Limits = [1 Inf];
            app.Ins_MeasurementFieldToEditField.ValueDisplayFormat = '%.0f';
            app.Ins_MeasurementFieldToEditField.Position = [668 456 55 22];
            app.Ins_MeasurementFieldToEditField.Value = 1;

            % Create MeasurementfieldfromLabel_2
            app.MeasurementfieldfromLabel_2 = uilabel(app.InstrumentsandUsersTab);
            app.MeasurementfieldfromLabel_2.HorizontalAlignment = 'right';
            app.MeasurementfieldfromLabel_2.Position = [428 49 139 22];
            app.MeasurementfieldfromLabel_2.Text = 'Measurement Field From';

            % Create User_MeasurementFieldFromEditField
            app.User_MeasurementFieldFromEditField = uieditfield(app.InstrumentsandUsersTab, 'numeric');
            app.User_MeasurementFieldFromEditField.Limits = [1 Inf];
            app.User_MeasurementFieldFromEditField.ValueDisplayFormat = '%.0f';
            app.User_MeasurementFieldFromEditField.Position = [574 49 55 22];
            app.User_MeasurementFieldFromEditField.Value = 1;

            % Create toLabel_3
            app.toLabel_3 = uilabel(app.InstrumentsandUsersTab);
            app.toLabel_3.HorizontalAlignment = 'right';
            app.toLabel_3.Position = [620 49 25 22];
            app.toLabel_3.Text = 'To';

            % Create User_MeasurementFieldToEditField
            app.User_MeasurementFieldToEditField = uieditfield(app.InstrumentsandUsersTab, 'numeric');
            app.User_MeasurementFieldToEditField.Limits = [1 Inf];
            app.User_MeasurementFieldToEditField.ValueDisplayFormat = '%.0f';
            app.User_MeasurementFieldToEditField.Position = [649 49 50 22];
            app.User_MeasurementFieldToEditField.Value = 1;

            % Create DonotusefordescriptionsLabel
            app.DonotusefordescriptionsLabel = uilabel(app.InstrumentsandUsersTab);
            app.DonotusefordescriptionsLabel.FontSize = 11;
            app.DonotusefordescriptionsLabel.FontColor = [0.851 0.3255 0.098];
            app.DonotusefordescriptionsLabel.Position = [39 490 160 22];
            app.DonotusefordescriptionsLabel.Text = '* Do not use '' / '' for descriptions';

            % Create AnonymousInstrumentButton
            app.AnonymousInstrumentButton = uibutton(app.InstrumentsandUsersTab, 'push');
            app.AnonymousInstrumentButton.ButtonPushedFcn = createCallbackFcn(app, @AnonymousInstrumentButtonPushed, true);
            app.AnonymousInstrumentButton.Position = [736 424 167 25];
            app.AnonymousInstrumentButton.Text = 'Anonymous Instrument';

            % Create SetDefaultInstrumentButton
            app.SetDefaultInstrumentButton = uibutton(app.InstrumentsandUsersTab, 'push');
            app.SetDefaultInstrumentButton.ButtonPushedFcn = createCallbackFcn(app, @SetDefaultInstrumentButtonPushed, true);
            app.SetDefaultInstrumentButton.Position = [915 598 135 25];
            app.SetDefaultInstrumentButton.Text = 'Set Default Instrument';

            % Create SetCurrentUserButton
            app.SetCurrentUserButton = uibutton(app.InstrumentsandUsersTab, 'push');
            app.SetCurrentUserButton.ButtonPushedFcn = createCallbackFcn(app, @SetCurrentUserButtonPushed, true);
            app.SetCurrentUserButton.Position = [915 340 135 25];
            app.SetCurrentUserButton.Text = 'Set Current User';

            % Create DefaultInstrumentEditFieldLabel
            app.DefaultInstrumentEditFieldLabel = uilabel(app.InstrumentsandUsersTab);
            app.DefaultInstrumentEditFieldLabel.HorizontalAlignment = 'right';
            app.DefaultInstrumentEditFieldLabel.Position = [336 486 106 22];
            app.DefaultInstrumentEditFieldLabel.Text = 'Default  Instrument';

            % Create DefaultInstrumentEditField
            app.DefaultInstrumentEditField = uieditfield(app.InstrumentsandUsersTab, 'text');
            app.DefaultInstrumentEditField.Editable = 'off';
            app.DefaultInstrumentEditField.BackgroundColor = [0.9412 0.9412 0.9412];
            app.DefaultInstrumentEditField.Position = [457 486 444 22];

            % Create CurrentUserEditFieldLabel
            app.CurrentUserEditFieldLabel = uilabel(app.InstrumentsandUsersTab);
            app.CurrentUserEditFieldLabel.HorizontalAlignment = 'right';
            app.CurrentUserEditFieldLabel.Position = [331 80 74 22];
            app.CurrentUserEditFieldLabel.Text = 'Current User';

            % Create CurrentUserEditField
            app.CurrentUserEditField = uieditfield(app.InstrumentsandUsersTab, 'text');
            app.CurrentUserEditField.Editable = 'off';
            app.CurrentUserEditField.BackgroundColor = [0.9412 0.9412 0.9412];
            app.CurrentUserEditField.Position = [420 80 477 22];

            % Create DeploymentRecipeTab
            app.DeploymentRecipeTab = uitab(app.TabGroup);
            app.DeploymentRecipeTab.Title = 'Deployment Recipe';

            % Create RecipeListListBoxLabel
            app.RecipeListListBoxLabel = uilabel(app.DeploymentRecipeTab);
            app.RecipeListListBoxLabel.HorizontalAlignment = 'right';
            app.RecipeListListBoxLabel.Position = [25 654 64 22];
            app.RecipeListListBoxLabel.Text = 'Recipe List';

            % Create RecipeListListBox
            app.RecipeListListBox = uilistbox(app.DeploymentRecipeTab);
            app.RecipeListListBox.Items = {};
            app.RecipeListListBox.ClickedFcn = createCallbackFcn(app, @RecipeListListBoxClicked, true);
            app.RecipeListListBox.Position = [104 574 514 104];
            app.RecipeListListBox.Value = {};

            % Create RemoveRecipeButton
            app.RemoveRecipeButton = uibutton(app.DeploymentRecipeTab, 'push');
            app.RemoveRecipeButton.ButtonPushedFcn = createCallbackFcn(app, @RemoveRecipeButtonPushed, true);
            app.RemoveRecipeButton.Position = [632 611 126 23];
            app.RemoveRecipeButton.Text = 'Remove';

            % Create SetDefaultButton
            app.SetDefaultButton = uibutton(app.DeploymentRecipeTab, 'push');
            app.SetDefaultButton.ButtonPushedFcn = createCallbackFcn(app, @SetDefaultButtonPushed, true);
            app.SetDefaultButton.Position = [631 641 127 23];
            app.SetDefaultButton.Text = 'Set Default';

            % Create RecipeTabGroup
            app.RecipeTabGroup = uitabgroup(app.DeploymentRecipeTab);
            app.RecipeTabGroup.Position = [18 13 1038 525];

            % Create TransmissionReflectionTab
            app.TransmissionReflectionTab = uitab(app.RecipeTabGroup);
            app.TransmissionReflectionTab.Title = 'Transmission/Reflection';

            % Create TerahertzDatasetPanel
            app.TerahertzDatasetPanel = uipanel(app.TransmissionReflectionTab);
            app.TerahertzDatasetPanel.Title = 'Terahertz Dataset';
            app.TerahertzDatasetPanel.FontWeight = 'bold';
            app.TerahertzDatasetPanel.Position = [15 281 1001 135];

            % Create TimepsSpinnerLabel
            app.TimepsSpinnerLabel = uilabel(app.TerahertzDatasetPanel);
            app.TimepsSpinnerLabel.HorizontalAlignment = 'right';
            app.TimepsSpinnerLabel.Position = [71 63 55 22];
            app.TimepsSpinnerLabel.Text = 'Time (ps)';

            % Create TimepsSpinner
            app.TimepsSpinner = uispinner(app.TerahertzDatasetPanel);
            app.TimepsSpinner.Limits = [1 6];
            app.TimepsSpinner.ValueDisplayFormat = '%.0f';
            app.TimepsSpinner.Position = [134 63 60 22];
            app.TimepsSpinner.Value = 1;

            % Create THzSignalSampleLabel
            app.THzSignalSampleLabel = uilabel(app.TerahertzDatasetPanel);
            app.THzSignalSampleLabel.HorizontalAlignment = 'right';
            app.THzSignalSampleLabel.Position = [203 63 71 22];
            app.THzSignalSampleLabel.Text = 'Sample THz';

            % Create SampleTHzSpinner
            app.SampleTHzSpinner = uispinner(app.TerahertzDatasetPanel);
            app.SampleTHzSpinner.Limits = [1 6];
            app.SampleTHzSpinner.ValueDisplayFormat = '%.0f';
            app.SampleTHzSpinner.Position = [283 63 60 22];
            app.SampleTHzSpinner.Value = 2;

            % Create LoadReferenceCheckBox
            app.LoadReferenceCheckBox = uicheckbox(app.TerahertzDatasetPanel);
            app.LoadReferenceCheckBox.ValueChangedFcn = createCallbackFcn(app, @LoadReferenceCheckBoxValueChanged, true);
            app.LoadReferenceCheckBox.Text = 'Reference /';
            app.LoadReferenceCheckBox.Position = [366 87 84 22];

            % Create SeperateFileCheckBox_Reference
            app.SeperateFileCheckBox_Reference = uicheckbox(app.TerahertzDatasetPanel);
            app.SeperateFileCheckBox_Reference.ValueChangedFcn = createCallbackFcn(app, @SeperateFileCheckBox_ReferenceValueChanged, true);
            app.SeperateFileCheckBox_Reference.Text = '';
            app.SeperateFileCheckBox_Reference.Position = [450 87 25 22];
            app.SeperateFileCheckBox_Reference.Value = true;

            % Create THzSignalReferenceLabel
            app.THzSignalReferenceLabel = uilabel(app.TerahertzDatasetPanel);
            app.THzSignalReferenceLabel.HorizontalAlignment = 'right';
            app.THzSignalReferenceLabel.Position = [362 63 85 22];
            app.THzSignalReferenceLabel.Text = 'Reference THz';

            % Create ReferenceTHzSpinner
            app.ReferenceTHzSpinner = uispinner(app.TerahertzDatasetPanel);
            app.ReferenceTHzSpinner.Limits = [0 6];
            app.ReferenceTHzSpinner.ValueDisplayFormat = '%.0f';
            app.ReferenceTHzSpinner.Position = [456 63 60 22];
            app.ReferenceTHzSpinner.Value = 2;

            % Create LoadBaselineCheckBox
            app.LoadBaselineCheckBox = uicheckbox(app.TerahertzDatasetPanel);
            app.LoadBaselineCheckBox.ValueChangedFcn = createCallbackFcn(app, @LoadBaselineCheckBoxValueChanged, true);
            app.LoadBaselineCheckBox.Text = 'Baseline /';
            app.LoadBaselineCheckBox.Position = [541 87 75 22];

            % Create SeperateFileCheckBox_Baseline
            app.SeperateFileCheckBox_Baseline = uicheckbox(app.TerahertzDatasetPanel);
            app.SeperateFileCheckBox_Baseline.ValueChangedFcn = createCallbackFcn(app, @SeperateFileCheckBox_BaselineValueChanged, true);
            app.SeperateFileCheckBox_Baseline.Text = '';
            app.SeperateFileCheckBox_Baseline.Position = [620 87 25 22];
            app.SeperateFileCheckBox_Baseline.Value = true;

            % Create SubtractCheckBox
            app.SubtractCheckBox = uicheckbox(app.TerahertzDatasetPanel);
            app.SubtractCheckBox.ValueChangedFcn = createCallbackFcn(app, @SubtractCheckBoxValueChanged, true);
            app.SubtractCheckBox.Text = 'Subtract';
            app.SubtractCheckBox.Position = [636 37 67 22];

            % Create BaselineTHzSpinnerLabel
            app.BaselineTHzSpinnerLabel = uilabel(app.TerahertzDatasetPanel);
            app.BaselineTHzSpinnerLabel.HorizontalAlignment = 'right';
            app.BaselineTHzSpinnerLabel.Position = [537 63 76 22];
            app.BaselineTHzSpinnerLabel.Text = 'Baseline THz';

            % Create BaselineTHzSpinner
            app.BaselineTHzSpinner = uispinner(app.TerahertzDatasetPanel);
            app.BaselineTHzSpinner.Limits = [0 6];
            app.BaselineTHzSpinner.ValueDisplayFormat = '%.0f';
            app.BaselineTHzSpinner.Position = [622 63 60 22];
            app.BaselineTHzSpinner.Value = 2;

            % Create ColumnLabel
            app.ColumnLabel = uilabel(app.TerahertzDatasetPanel);
            app.ColumnLabel.FontWeight = 'bold';
            app.ColumnLabel.Position = [11 63 50 22];
            app.ColumnLabel.Text = 'Column';

            % Create DatasetLabel
            app.DatasetLabel = uilabel(app.TerahertzDatasetPanel);
            app.DatasetLabel.FontWeight = 'bold';
            app.DatasetLabel.Position = [11 37 48 22];
            app.DatasetLabel.Text = 'Dataset';

            % Create SampledsLabel
            app.SampledsLabel = uilabel(app.TerahertzDatasetPanel);
            app.SampledsLabel.HorizontalAlignment = 'right';
            app.SampledsLabel.Position = [203 37 66 22];
            app.SampledsLabel.Text = 'Sample DS';

            % Create dsEditField_Sample
            app.dsEditField_Sample = uieditfield(app.TerahertzDatasetPanel, 'numeric');
            app.dsEditField_Sample.Limits = [1 4];
            app.dsEditField_Sample.ValueDisplayFormat = '%.0f';
            app.dsEditField_Sample.Position = [274 37 20 22];
            app.dsEditField_Sample.Value = 1;

            % Create ReferencedsLabel
            app.ReferencedsLabel = uilabel(app.TerahertzDatasetPanel);
            app.ReferencedsLabel.HorizontalAlignment = 'right';
            app.ReferencedsLabel.Position = [362 37 80 22];
            app.ReferencedsLabel.Text = 'Reference DS';

            % Create dsEditField_Reference
            app.dsEditField_Reference = uieditfield(app.TerahertzDatasetPanel, 'numeric');
            app.dsEditField_Reference.Limits = [0 4];
            app.dsEditField_Reference.ValueDisplayFormat = '%.0f';
            app.dsEditField_Reference.ValueChangedFcn = createCallbackFcn(app, @dsEditField_ReferenceValueChanged, true);
            app.dsEditField_Reference.Position = [447 37 20 22];
            app.dsEditField_Reference.Value = 2;

            % Create BaselineDSLabel
            app.BaselineDSLabel = uilabel(app.TerahertzDatasetPanel);
            app.BaselineDSLabel.HorizontalAlignment = 'right';
            app.BaselineDSLabel.Position = [537 37 71 22];
            app.BaselineDSLabel.Text = 'Baseline DS';

            % Create dsEditField_Baseline
            app.dsEditField_Baseline = uieditfield(app.TerahertzDatasetPanel, 'numeric');
            app.dsEditField_Baseline.Limits = [0 4];
            app.dsEditField_Baseline.ValueDisplayFormat = '%.0f';
            app.dsEditField_Baseline.ValueChangedFcn = createCallbackFcn(app, @dsEditField_BaselineValueChanged, true);
            app.dsEditField_Baseline.Position = [613 37 20 22];
            app.dsEditField_Baseline.Value = 3;

            % Create LoadUseaSeperateFileLabel
            app.LoadUseaSeperateFileLabel = uilabel(app.TerahertzDatasetPanel);
            app.LoadUseaSeperateFileLabel.FontWeight = 'bold';
            app.LoadUseaSeperateFileLabel.Position = [11 87 154 22];
            app.LoadUseaSeperateFileLabel.Text = 'Load / Use a Seperate File';

            % Create DatasetDescriptionLabel
            app.DatasetDescriptionLabel = uilabel(app.TerahertzDatasetPanel);
            app.DatasetDescriptionLabel.HorizontalAlignment = 'right';
            app.DatasetDescriptionLabel.Position = [71 7 110 22];
            app.DatasetDescriptionLabel.Text = 'Dataset Description';

            % Create DSDescriptionEditField
            app.DSDescriptionEditField = uieditfield(app.TerahertzDatasetPanel, 'text');
            app.DSDescriptionEditField.Position = [189 7 466 22];

            % Create userDefinedEditField
            app.userDefinedEditField = uieditfield(app.TransmissionReflectionTab, 'text');
            app.userDefinedEditField.Enable = 'off';
            app.userDefinedEditField.Position = [573 428 61 22];

            % Create RecipeNameEditFieldLabel
            app.RecipeNameEditFieldLabel = uilabel(app.TransmissionReflectionTab);
            app.RecipeNameEditFieldLabel.HorizontalAlignment = 'right';
            app.RecipeNameEditFieldLabel.Position = [21 461 78 22];
            app.RecipeNameEditFieldLabel.Text = 'Recipe Name';

            % Create RecipeNameEditField
            app.RecipeNameEditField = uieditfield(app.TransmissionReflectionTab, 'text');
            app.RecipeNameEditField.Position = [114 461 443 22];

            % Create DataFileExtensionDropDownLabel
            app.DataFileExtensionDropDownLabel = uilabel(app.TransmissionReflectionTab);
            app.DataFileExtensionDropDownLabel.HorizontalAlignment = 'right';
            app.DataFileExtensionDropDownLabel.Position = [346 428 109 22];
            app.DataFileExtensionDropDownLabel.Text = 'Data File Extension';

            % Create DataFileExtensionDropDown
            app.DataFileExtensionDropDown = uidropdown(app.TransmissionReflectionTab);
            app.DataFileExtensionDropDown.Items = {'dat', 'csv', 'tprj', 'txt', 'User Defined'};
            app.DataFileExtensionDropDown.ValueChangedFcn = createCallbackFcn(app, @DataFileExtensionDropDownValueChanged, true);
            app.DataFileExtensionDropDown.Position = [469 428 85 22];
            app.DataFileExtensionDropDown.Value = 'dat';

            % Create AddUpdateRecipeButton
            app.AddUpdateRecipeButton = uibutton(app.TransmissionReflectionTab, 'push');
            app.AddUpdateRecipeButton.ButtonPushedFcn = createCallbackFcn(app, @AddUpdateRecipeButtonPushed, true);
            app.AddUpdateRecipeButton.BackgroundColor = [1 1 1];
            app.AddUpdateRecipeButton.FontWeight = 'bold';
            app.AddUpdateRecipeButton.Position = [569 460 155 25];
            app.AddUpdateRecipeButton.Text = 'Add / Update Recipe';

            % Create MetadataDescriptionPanel
            app.MetadataDescriptionPanel = uipanel(app.TransmissionReflectionTab);
            app.MetadataDescriptionPanel.Title = 'Metadata';
            app.MetadataDescriptionPanel.FontWeight = 'bold';
            app.MetadataDescriptionPanel.Position = [15 10 1001 261];

            % Create UITable_Metadata
            app.UITable_Metadata = uitable(app.MetadataDescriptionPanel);
            app.UITable_Metadata.ColumnName = {'Metadata'; 'Sample/Reference'; 'Category'; 'Unit'};
            app.UITable_Metadata.ColumnWidth = {60, 'auto', 'auto', 'auto'};
            app.UITable_Metadata.RowName = {};
            app.UITable_Metadata.ColumnEditable = [false true true true];
            app.UITable_Metadata.CellEditCallback = createCallbackFcn(app, @UITable_MetadataCellEdit, true);
            app.UITable_Metadata.SelectionChangedFcn = createCallbackFcn(app, @UITable_MetadataSelectionChanged, true);
            app.UITable_Metadata.Position = [179 28 487 170];

            % Create ResetTabletButton
            app.ResetTabletButton = uibutton(app.MetadataDescriptionPanel, 'push');
            app.ResetTabletButton.ButtonPushedFcn = createCallbackFcn(app, @ResetTabletButtonPushed, true);
            app.ResetTabletButton.Position = [12 127 153 25];
            app.ResetTabletButton.Text = 'Reset Tablet';

            % Create MetadataDescriptionEditFieldLabel
            app.MetadataDescriptionEditFieldLabel = uilabel(app.MetadataDescriptionPanel);
            app.MetadataDescriptionEditFieldLabel.HorizontalAlignment = 'right';
            app.MetadataDescriptionEditFieldLabel.Position = [15 208 118 22];
            app.MetadataDescriptionEditFieldLabel.Text = 'Metadata Description';

            % Create MetadataDescriptionEditField
            app.MetadataDescriptionEditField = uieditfield(app.MetadataDescriptionPanel, 'text');
            app.MetadataDescriptionEditField.Position = [148 208 518 22];

            % Create AddUpdateMDRecipeButton
            app.AddUpdateMDRecipeButton = uibutton(app.MetadataDescriptionPanel, 'push');
            app.AddUpdateMDRecipeButton.ButtonPushedFcn = createCallbackFcn(app, @AddUpdateMDRecipeButtonPushed, true);
            app.AddUpdateMDRecipeButton.Position = [12 94 153 25];
            app.AddUpdateMDRecipeButton.Text = 'Update Recipe';

            % Create MetadatanumberSpinnerLabel
            app.MetadatanumberSpinnerLabel = uilabel(app.MetadataDescriptionPanel);
            app.MetadatanumberSpinnerLabel.HorizontalAlignment = 'right';
            app.MetadatanumberSpinnerLabel.Position = [14 160 99 22];
            app.MetadatanumberSpinnerLabel.Text = 'Metadata number';

            % Create MetadatanumberSpinner
            app.MetadatanumberSpinner = uispinner(app.MetadataDescriptionPanel);
            app.MetadatanumberSpinner.Limits = [0 6];
            app.MetadatanumberSpinner.ValueChangedFcn = createCallbackFcn(app, @MetadatanumberSpinnerValueChanged, true);
            app.MetadatanumberSpinner.Position = [119 160 45 22];

            % Create SelectfornoentryLabel
            app.SelectfornoentryLabel = uilabel(app.MetadataDescriptionPanel);
            app.SelectfornoentryLabel.FontSize = 11;
            app.SelectfornoentryLabel.FontColor = [0.851 0.3255 0.098];
            app.SelectfornoentryLabel.Position = [178 5 487 22];
            app.SelectfornoentryLabel.Text = '* Select '' - '' for no entry / double-click and type in when no suitable item is found in the dropdown.';

            % Create UpdateTab1TableButton
            app.UpdateTab1TableButton = uibutton(app.MetadataDescriptionPanel, 'push');
            app.UpdateTab1TableButton.ButtonPushedFcn = createCallbackFcn(app, @UpdateTab1TableButtonPushed, true);
            app.UpdateTab1TableButton.Position = [12 62 153 25];
            app.UpdateTab1TableButton.Text = 'Update Tab1 Table';

            % Create ModeDescriptionEditFieldLabel
            app.ModeDescriptionEditFieldLabel = uilabel(app.TransmissionReflectionTab);
            app.ModeDescriptionEditFieldLabel.HorizontalAlignment = 'right';
            app.ModeDescriptionEditFieldLabel.Position = [21 428 98 22];
            app.ModeDescriptionEditFieldLabel.Text = 'Mode Description';

            % Create ModeDescriptionEditField
            app.ModeDescriptionEditField = uieditfield(app.TransmissionReflectionTab, 'text');
            app.ModeDescriptionEditField.Position = [134 428 156 22];

            % Create ExtensionTab
            app.ExtensionTab = uitab(app.RecipeTabGroup);
            app.ExtensionTab.Title = 'Extension';

            % Create RecipeDesignLabel
            app.RecipeDesignLabel = uilabel(app.DeploymentRecipeTab);
            app.RecipeDesignLabel.FontSize = 14;
            app.RecipeDesignLabel.FontWeight = 'bold';
            app.RecipeDesignLabel.Position = [19 541 101 22];
            app.RecipeDesignLabel.Text = 'Recipe Design';

            % Create UpButton
            app.UpButton = uibutton(app.DeploymentRecipeTab, 'push');
            app.UpButton.ButtonPushedFcn = createCallbackFcn(app, @UpButtonPushed, true);
            app.UpButton.Position = [632 581 60 23];
            app.UpButton.Text = 'Up';

            % Create DownButton
            app.DownButton = uibutton(app.DeploymentRecipeTab, 'push');
            app.DownButton.ButtonPushedFcn = createCallbackFcn(app, @DownButtonPushed, true);
            app.DownButton.Position = [698 581 60 23];
            app.DownButton.Text = 'Down';

            % Create PrefixnumberstothedatasetnameLabel
            app.PrefixnumberstothedatasetnameLabel = uilabel(app.CaTxUIFigure);
            app.PrefixnumberstothedatasetnameLabel.HorizontalAlignment = 'center';
            app.PrefixnumberstothedatasetnameLabel.FontWeight = 'bold';
            app.PrefixnumberstothedatasetnameLabel.Position = [293 19 87 22];
            app.PrefixnumberstothedatasetnameLabel.Text = 'Number Prefix';

            % Create NumberPrefixSwitch
            app.NumberPrefixSwitch = uiswitch(app.CaTxUIFigure, 'slider');
            app.NumberPrefixSwitch.Position = [409 21 40 18];

            % Create AttributuesallocationLabel
            app.AttributuesallocationLabel = uilabel(app.CaTxUIFigure);
            app.AttributuesallocationLabel.HorizontalAlignment = 'center';
            app.AttributuesallocationLabel.FontWeight = 'bold';
            app.AttributuesallocationLabel.Position = [479 19 126 22];
            app.AttributuesallocationLabel.Text = 'Attributute Inclusion:';

            % Create AttribututeInclusionSwitch
            app.AttribututeInclusionSwitch = uiswitch(app.CaTxUIFigure, 'slider');
            app.AttribututeInclusionSwitch.Items = {'All Measurements', 'Only First,'};
            app.AttribututeInclusionSwitch.Position = [710 21 41 18];
            app.AttribututeInclusionSwitch.Value = 'All Measurements';

            % Create exceptItemDropDownLabel
            app.exceptItemDropDownLabel = uilabel(app.CaTxUIFigure);
            app.exceptItemDropDownLabel.HorizontalAlignment = 'right';
            app.exceptItemDropDownLabel.Position = [811 19 67 22];
            app.exceptItemDropDownLabel.Text = 'except Item';

            % Create exceptItemDropDown
            app.exceptItemDropDown = uidropdown(app.CaTxUIFigure);
            app.exceptItemDropDown.Items = {'6', '10', '11', '12', '13', '14', '15', '16'};
            app.exceptItemDropDown.Position = [884 19 48 22];
            app.exceptItemDropDown.Value = '6';

            % Create Image
            app.Image = uiimage(app.CaTxUIFigure);
            app.Image.Position = [25 791 72 72];
            app.Image.ImageSource = fullfile(pathToMLAPP, 'Images', 'dotTHz_logo.png');

            % Create DEBUGMsgLabel
            app.DEBUGMsgLabel = uilabel(app.CaTxUIFigure);
            app.DEBUGMsgLabel.BackgroundColor = [0.902 0.902 0.902];
            app.DEBUGMsgLabel.FontWeight = 'bold';
            app.DEBUGMsgLabel.Position = [37 19 247 22];
            app.DEBUGMsgLabel.Text = '';

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