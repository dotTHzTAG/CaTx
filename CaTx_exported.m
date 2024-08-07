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
        DeleteSourceWaveformButton      matlab.ui.control.Button
        TargetDatasetDropDown           matlab.ui.control.DropDown
        TargetWaveformDropDownLabel     matlab.ui.control.Label
        CopyButton                      matlab.ui.control.Button
        SourceDatasetDropDown           matlab.ui.control.DropDown
        SourceWaveformDropDownLabel     matlab.ui.control.Label
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
        AnonymousInstrumentProfile0Button  matlab.ui.control.Button
        DonotusecharacterindescriptionLabel  matlab.ui.control.Label
        User_MeasurementFieldToEditField  matlab.ui.control.NumericEditField
        toLabel_3                       matlab.ui.control.Label
        User_MeasurementFieldFromEditField  matlab.ui.control.NumericEditField
        MeasurementfieldfromLabel_2     matlab.ui.control.Label
        Ins_MeasurementFieldToEditField  matlab.ui.control.NumericEditField
        toLabel_2                       matlab.ui.control.Label
        Ins_MeasurementFieldFromEditField  matlab.ui.control.NumericEditField
        MeasurementfieldfromLabel       matlab.ui.control.Label
        AnonymousUserProfile0Button     matlab.ui.control.Button
        User_SelectionEditField         matlab.ui.control.NumericEditField
        SelectionLabel_2                matlab.ui.control.Label
        INS_SELECTIONEditField          matlab.ui.control.NumericEditField
        SelectionLabel                  matlab.ui.control.Label
        Remove_User_Col_Button          matlab.ui.control.Button
        Add_User_Col_Button             matlab.ui.control.Button
        REMOVE_INS_COL_Button           matlab.ui.control.Button
        ADD_INS_COL_Button              matlab.ui.control.Button
        User_LinkButton                 matlab.ui.control.Button
        Ins_LinkButton                  matlab.ui.control.Button
        UserLabel                       matlab.ui.control.Label
        InstrumentLabel                 matlab.ui.control.Label
        UITable_UserHeader              matlab.ui.control.Table
        UITable_User                    matlab.ui.control.Table
        UITable_InsHeader               matlab.ui.control.Table
        UITable_Ins                     matlab.ui.control.Table
        DataRecipeTab                   matlab.ui.container.Tab
        RecipeDesignLabel               matlab.ui.control.Label
        TabGroup2                       matlab.ui.container.TabGroup
        TDSTab                          matlab.ui.container.Tab
        AddRecipeButton                 matlab.ui.control.Button
        SampleFileEditField             matlab.ui.control.EditField
        SampleFileEditFieldLabel        matlab.ui.control.Label
        DataFileExtensionDropDown       matlab.ui.control.DropDown
        DataFileExtensionDropDownLabel  matlab.ui.control.Label
        RecipeNameEditField             matlab.ui.control.EditField
        RecipeNameEditFieldLabel        matlab.ui.control.Label
        DeploySampleDataButton          matlab.ui.control.Button
        userDefinedEditField            matlab.ui.control.EditField
        TerahertzDatasetPanel           matlab.ui.container.Panel
        LoadOpenFileLabel               matlab.ui.control.Label
        dsEditField_Baseline            matlab.ui.control.NumericEditField
        BaselineDSLabel                 matlab.ui.control.Label
        dsEditField_Reference           matlab.ui.control.NumericEditField
        ReferencedsLabel                matlab.ui.control.Label
        dsEditField_Sample              matlab.ui.control.NumericEditField
        SampledsLabel                   matlab.ui.control.Label
        DSDescriptionEditField          matlab.ui.control.EditField
        DescriptionEditFieldLabel       matlab.ui.control.Label
        CreateDatasetDescriptionButton  matlab.ui.control.Button
        DatasetLabel                    matlab.ui.control.Label
        ColumnLabel                     matlab.ui.control.Label
        BaselineTHzSpinner              matlab.ui.control.Spinner
        BaselineTHzSpinnerLabel         matlab.ui.control.Label
        SubtractCheckBox                matlab.ui.control.CheckBox
        OpenFileCheckBox_Baseline       matlab.ui.control.CheckBox
        LoadBaselineCheckBox            matlab.ui.control.CheckBox
        ReferenceTHzSpinner             matlab.ui.control.Spinner
        THzSignalReferenceLabel         matlab.ui.control.Label
        OpenFileCheckBox_Reference      matlab.ui.control.CheckBox
        LoadReferenceCheckBox           matlab.ui.control.CheckBox
        SampleTHzSpinner                matlab.ui.control.Spinner
        THzSignalSampleLabel            matlab.ui.control.Label
        TimepsSpinner                   matlab.ui.control.Spinner
        TimepsSpinnerLabel              matlab.ui.control.Label
        TPITab                          matlab.ui.container.Tab
        SetDefaultButton                matlab.ui.control.Button
        RemoveButton_2                  matlab.ui.control.Button
        RecipeListListBox               matlab.ui.control.ListBox
        RecipeListListBoxLabel          matlab.ui.control.Label
        ImportthzFileButton             matlab.ui.control.Button
        ClearMemoryButton               matlab.ui.control.Button
        DataRecipeDropDown              matlab.ui.control.DropDown
        DataRecipeDropDownLabel         matlab.ui.control.Label
        ExportthzFileButton             matlab.ui.control.Button
        CaTxLabel                       matlab.ui.control.Label
        DeployDataButton                matlab.ui.control.Button
        FILESEditField                  matlab.ui.control.EditField
        ImportMeasurementButton         matlab.ui.control.Button
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
        ins_profile % instrument profile number
        user_profile % user profile number
        TcellP1 % cell array for instrument profiles
        TcellP2 % cell array for user profiles
        totalMeasNum % total measurement number
        manualMode % Description
        thzVer = "1.00";
        referenceSignal; % Description
        baselineSignal; % Description
    end
    
    methods (Access = private)
           
        
        function updateProfile(app)
            mPath = fileparts(which(mfilename)); % matlab app designer source code folder
            ins_profilefile = strcat(mPath,filesep,'Profiles',filesep,'Instruments.xls');
            user_profilefile = strcat(mPath,filesep,'Profiles',filesep,'Users.xls');

            % check instrument profile file and set the default
            if isfile(ins_profilefile)
                app.ins_profile = 1;
                app.TcellP1 = readcell(ins_profilefile);
                app.TcellP1(cellfun(@(x) isa(x,'missing'),app.TcellP1)) = {""};
                app.UITable_Ins.Data = cell2table(app.TcellP1);
                app.UITable_Ins.ColumnEditable = true;
            else
                app.ins_profile = 0;
                app.UITable_Ins.Data = [];
            end

            % check user profile file and set the default
            if isfile(user_profilefile)
                app.user_profile = 1;
                app.TcellP2 = readcell(user_profilefile);
                app.TcellP2(cellfun(@(x) isa(x,'missing'),app.TcellP2)) = {""};
                app.UITable_User.Data = cell2table(app.TcellP2);
                app.UITable_User.ColumnEditable = true;
            else
                app.user_profile = 0;
                app.UITable_User.Data = [];
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
            app.UITable_Ins.ColumnEditable = true;
            app.UITable_Ins.Data = cell2table(TcellP);
        end
        
        function writeP2Profile(app)
            mPath = fileparts(which(mfilename));
            userProfilefile = strcat(mPath,filesep,'Profiles',filesep,'Users.xls');
            TcellP = app.TcellP2;
            
            if isempty(TcellP)
                delete(userProfilefile);
            else
                writecell(TcellP,userProfilefile,"WriteMode","overwritesheet");
                fileattrib(userProfilefile,'+w');
            end

            % meausrement table profile update

            app.UITable_User.ColumnEditable = true;
            app.UITable_User.Data = cell2table(TcellP);
        end
        
        function updataP1Link(app)
            
            if isempty(app.Tcell)
                return;
            end

            rowInsProfile = 4; % instrument profile row number in the measurement table
            pLinkMat = cell2mat(app.Tcell(rowInsProfile,:)); % profile link matrix
            zLinkMat = zeros(size(pLinkMat));
            colNum = app.INS_SELECTIONEditField.Value;
            pLinkMat(pLinkMat == colNum) = 0;
            zLinkMat(pLinkMat > colNum) = 1;
            pLinkMat = pLinkMat - zLinkMat;
            pLinkCell = mat2cell(pLinkMat,[1],ones(1,size(pLinkMat,2)));

            % meausrement table profile update
            app.Tcell(rowInsProfile,:) = pLinkCell;
            updateMeasurementTable(app)        
        end
        
        function updateP2Link(app)

            if isempty(app.Tcell)
                return;
            end

            rowUserProfile = 5; % instrument profile row number in the measurement table
            pLinkMat = cell2mat(app.Tcell(rowUserProfile,:)); % profile link matrix
            zLinkMat = zeros(size(pLinkMat));
            colNum = app.User_SelectionEditField.Value;
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
            Indices = app.cellIndices;
            Tcell = app.Tcell;
            colFrom = app.ofColumnsEditField.Value;
            colTo = app.FILEDLISTTOEditField.Value;
            totalMeasNum = app.totalMeasNum;

            try
                srcRow = str2num(app.SourceDatasetDropDown.Value);
            catch ME
                fig = app.CaTxUIFigure;
                uialert(fig,'Invalid dataset! Select the source column to see avaialbe datasets','warning');
                return;
            end

            trgRow = str2num(app.TargetDatasetDropDown.Value);
            
            if app.manualMode
                return;
            else
                %srcCol = Indices(2);
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
                        fig = app.CaTxUIFigure;
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
        
        function deploySampleData(app)
            fullpath = app.samplefile;

            if isempty(fullpath)
                return;
            end

            app.DEBUGMsgLabel.Text = 'Loading....';
            Tcell = cell(22,1); % cell structure table
            Tcell_header = app.Tcell_header;
            uiFigure = app.CaTxUIFigure;
            app.manualMode = 0;
            DSBaseCol = 18;
            measNum = 1;
            drawnow

            % Import Settings
            tofIdx = app.TimepsSpinner.Value;
            sampleTHzIdx = app.SampleTHzSpinner.Value;
            sampleDS = app.dsEditField_Sample.Value;

            readReference = app.LoadReferenceCheckBox.Value;
            openRefereceFile = app.OpenFileCheckBox_Reference.Value;
            referenceTHzIdx = app.ReferenceTHzSpinner.Value;
            referenceDS = app.dsEditField_Reference.Value;

            readBaseline = app.LoadBaselineCheckBox.Value;
            openBaselineFile = app.OpenFileCheckBox_Baseline.Value;
            subtractBaseline = app.SubtractCheckBox.Value;
            baselineTHzIdx = app.BaselineTHzSpinner.Value;
            baselineDS = app.dsEditField_Baseline.Value;
            
            try
                samVec = readmatrix(fullpath);
                [fileLocation,sampleName,fileExt] = fileparts(fullpath);
            catch
                uialert(uiFigure,'Incorrect Data Set','Warning');
                app.DEBUGMsgLabel.Text = 'Loading Cancelled';
                return;
            end

            % Read Sample Signal                            
            tof = samVec(:,tofIdx)'; % Time of flight
            samTHz = samVec(:,sampleTHzIdx)'; % Sample THz signal

            % Sample signal cell allocation
            Tcell{DSBaseCol+sampleDS,measNum} = [tof;samTHz];
            Tcell_header{DSBaseCol+sampleDS} = strcat(num2str(DSBaseCol+sampleDS),': Sample');

            % Read Reference Signal
            if readReference
                if openRefereceFile
                    if isempty(app.referenceSignal)
                        [refFile, refFilepath] = uigetfile(fileExt,'Select a reference file',fileLocation);
                        refVec = readmatrix(strcat(refFilepath,refFile));
                        app.referenceSignal = refVec;
                    else
                        refVec = app.referenceSignal;
                    end
                    refTof = refVec(:,tofIdx)';
                    refTHz = refVec(:,referenceTHzIdx)';
                else
                    refTof = tof;
                    refTHz = samVec(:,referenceTHzIdx)';
                end
                % Referecen signal cell allocation
                Tcell{DSBaseCol+referenceDS,measNum} = [refTof;refTHz];
                Tcell_header{DSBaseCol+referenceDS} = strcat(num2str(DSBaseCol+referenceDS),': Reference');
            end

            % Read Baseline Signal
            if readBaseline
                if openBaselineFile
                    if isempty(app.baselineSignal)
                        [baseFile, baseFilepath] = uigetfile(fileExt,'Select a baseline file',fileLocation);
                        baseVec = readmatrix(strcat(baseFilepath,baseFile));
                        app.baselineSignal = baseVec;
                    else
                        baseVec = app.baselineSignal;
                    end
                    baseTof = baseVec(:,tofIdx)';
                    baseTHz = baseVec(:,baselineTHzIdx)';
                else
                    baseTof = tof;
                    baseTHz = baseVec(:,baselineTHzIdx)';
                end
                if subtractBaseline
                    samTHz = samTHz - baseTHz;
                    refTHz = refTHz - baseTHz;
                    Tcell{DSBaseCol+sampleDS,measNum} = [tof;samTHz];
                    Tcell{DSBaseCol+referenceDS,measNum} = [refTof;refTHz];
                else
                    % Baseline signal cell allocation
                    Tcell{DSBaseCol+baselineDS,measNum} = [baseTof;baseTHz];
                    Tcell_header{DSBaseCol+baselineDS} = strcat(num2str(DSBaseCol+baselineDS),': Baseline');
                end
            end

            % Data cell allocation
            description = "";
            mdDescription = "para1,para2";
            dsDescription = "ds1:Sample, ds2:Ref"; % dataset description
            mode = "";

            Tcell{1,measNum} = measNum;
            Tcell{2,measNum} = sampleName;
            Tcell{3,measNum} = description;
            Tcell{4,measNum} = 0; % Instrument profile
            Tcell{5,measNum} = 0; % User profile
            Tcell{8,measNum} = []; % coordinates
            
            Tcell{15,measNum} = []; % not used
            Tcell{16,measNum} = []; % not used
            Tcell{17,measNum} = []; % not used

            Tcell{18,measNum} = dsDescription; % dataset description

            app.DEBUGMsgLabel.Text = "Complete Loading";
            app.totalMeasNum = measNum;
            app.Tcell = Tcell;
            app.UITable_Header.Data = Tcell_header;
            updateMeasurementTable(app);
            app.FILEDLISTTOEditField.Value = app.totalMeasNum;
            app.TabGroup.SelectedTab = app.TabGroup.Children(1);
        end
        
        function deploySampleMeta(app)
            try
                measDate = readlines(fullpath);
                measDate = measDate(3);
                measDate = extractAfter(measDate,"Date: ");
            catch ME
                measDate = "";
            end

            time = measDate;
            md1 = [];
            md2 = [];
            md3 = [];
            md4 = [];
            md5 = [];

            Tcell{6,measNum} = time; % measurement start time
            Tcell{7,measNum} = mode; % THz-TDS/THz-Imaging/Transmission/Reflection
            Tcell{9,measNum} = mdDescription; % metadata description
            Tcell{10,measNum} = md1; % thickness (mm)
            Tcell{11,measNum} = md2; % temperature (K)
            Tcell{12,measNum} = md3; % weight (mg)
            Tcell{13,measNum} = md4; % concentration  (%)
            Tcell{14,measNum} = md5; % concentration  (%)
        end
        
        function deploySampleData_tprj(app)
            fullpath = app.samplefile;

            if isempty(fullpath)
                return;
            end

            % extracting data from TeraPulse prject file
            HDFDataSet='/TerapulseDocument/Measurements/Spectra Data';
            
            try
                HDFDataInfo = h5info(fullpath, HDFDataSet);
                [fileLocation,sampleName,fileExt] = fileparts(fullpath);
            catch
                uialert(uiFigure,'Incorrect HDF5 dataset','Warning');
                app.DEBUGMsgLabel.Text = 'Loading Cancelled';
                return;
            end

            app.DEBUGMsgLabel.Text = 'Loading....';
            Tcell = cell(22,1); % cell structure table
            Tcell_header = app.Tcell_header;
            uiFigure = app.CaTxUIFigure;
            app.manualMode = 0;
            DSBaseCol = 18;
            totalMeasNum = size(HDFDataInfo.Groups,1);
            measNum = 1;
            drawnow

            % Import Settings
            tofIdx = app.TimepsSpinner.Value;
            sampleTHzIdx = app.SampleTHzSpinner.Value;
            sampleDS = app.dsEditField_Sample.Value;

            readReference = app.LoadReferenceCheckBox.Value;
            openRefereceFile = app.OpenFileCheckBox_Reference.Value;
            referenceTHzIdx = app.ReferenceTHzSpinner.Value;
            referenceDS = app.dsEditField_Reference.Value;

            readBaseline = app.LoadBaselineCheckBox.Value;
            openBaselineFile = app.OpenFileCheckBox_Baseline.Value;
            subtractBaseline = app.SubtractCheckBox.Value;
            baselineTHzIdx = app.BaselineTHzSpinner.Value;
            baselineDS = app.dsEditField_Baseline.Value;
            
            % Read Sample Signal
            groupName = HDFDataInfo.Groups(measNum).Name;
            tof = h5read(fullpath,strcat(groupName,'/sample/xdata')); % Time of flight
            samTHz = h5read(fullpath,strcat(groupName,'/sample/ydata')); % Sample THz signal

            % Sample signal cell allocation
            Tcell{DSBaseCol+sampleDS,measNum} = [tof;samTHz];
            Tcell_header{DSBaseCol+sampleDS} = strcat(num2str(DSBaseCol+sampleDS),': Sample');

            % Read Reference Signal
            if readReference
                try
                    refTof = h5read(fullpath,strcat(groupName,'/reference/sample/xdata'));
                    refTHz = h5read(fullpath,strcat(groupName,'/reference/sample/ydata'));
                catch
                    uialert(uiFigure,'Reference singal loading error','Warning');
                    app.DEBUGMsgLabel.Text = 'Loading Cancelled';
                    return;
                end

                % Referecen signal cell allocation
                Tcell{DSBaseCol+referenceDS,measNum} = [refTof;refTHz];
                Tcell_header{DSBaseCol+referenceDS} = strcat(num2str(DSBaseCol+referenceDS),': Reference');
            end

            % Read Baseline Signal
            if readBaseline
                try
                    baseTof = h5read(fullpath,strcat(groupName,'/baseline/sample/xdata'));
                    baseTHz = h5read(fullpath,strcat(groupName,'/baseline/sample/ydata'));
                catch
                    uialert(uiFigure,'Baseline singal loading error','Warning');
                    app.DEBUGMsgLabel.Text = 'Loading Cancelled';
                    return;
                end

                if subtractBaseline
                    samTHz = samTHz - baseTHz;
                    refTHz = refTHz - baseTHz;
                    Tcell{DSBaseCol+sampleDS,measNum} = [tof;samTHz];
                    Tcell{DSBaseCol+referenceDS,measNum} = [refTof;refTHz];
                else
                    % Baseline signal cell allocation
                    Tcell{DSBaseCol+baselineDS,measNum} = [baseTof;baseTHz];
                    Tcell_header{DSBaseCol+baselineDS} = strcat(num2str(DSBaseCol+baselineDS),': Baseline');
                end
            end

            % Data cell allocation
            description = "";
            mdDescription = "para1,para2";
            dsDescription = "ds1:Sample, ds2:Ref"; % dataset description
            mode = "";

            Tcell{1,measNum} = measNum;
            Tcell{2,measNum} = sampleName;
            Tcell{3,measNum} = description;
            Tcell{4,measNum} = 0; % Instrument profile
            Tcell{5,measNum} = 0; % User profile
            Tcell{8,measNum} = []; % coordinates
            
            Tcell{15,measNum} = []; % not used
            Tcell{16,measNum} = []; % not used
            Tcell{17,measNum} = []; % not used

            Tcell{18,measNum} = dsDescription; % dataset description

            app.DEBUGMsgLabel.Text = "Complete Loading";
            app.totalMeasNum = measNum;
            app.Tcell = Tcell;
            app.UITable_Header.Data = app.Tcell_headerDefault;
            updateMeasurementTable(app);
            app.FILEDLISTTOEditField.Value = app.totalMeasNum;
            app.TabGroup.SelectedTab = app.TabGroup.Children(1);
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            if isdeployed
                mPath = fileparts(which(ctfroot)); % matlab app designer source code folder for compiled version
            else
                mPath = fileparts(which(mfilename)); % matlab app designer source code folder
            end

            % make a list of THz converter engines from .\Engines folder
            engineDir = fullfile(mPath,'Engines');
            profileDir = fullfile(mPath,'Profiles');
            mkdir(engineDir);
            mkdir(profileDir);
            addpath(genpath(mPath));
            engineList = dir(fullfile(engineDir,'*.m'));
            engineNum = size(engineList,1);
            engineItems = {};

            if engineNum >=1
                for idx = 1:engineNum
                    engineItems{idx} = extractBefore(engineList(idx).name,'.');
                end
                app.DataRecipeDropDown.Items = engineItems;
            end
            
            app.PRJ_count = 0;
            app.filename = [];
            Tcell_header = {'01: Number','02: Name','03: Description','04: Instrument Profile','05: User Profile','06: Date and Time','07: Measurement Mode','08: Coordinates',...
                '09: Metadata Description', '10: Metadata 1','11: Metadata 2','12: Metadata 3','13: Metadata 4','14: Metadata 5','15: Metadata 6','16: Metadata 7',...
                '17: dotTHz Version','18: Dataset Description','19: Dataset 1','20: Dataset 2','21: Dataset 3','22: Dataset 4'
                }';

            Tcell_guideCol1 = {"1","HDF5","Category (name)","attribute (instrument)", "attribute (user)","attribute (time)","attribute (mode)","attribute (coordinate)",...
                "attribute (mdDescription)","attribute (md1)","attribute (md2)","attribute (md3)","attribute (md4)","attribute (md5)","attribute (md6)","attribute (md7)",...
                "attribute (thzVer)","attribute (dsDescription)","dataset (ds1)","dataset (ds2)","dataset (ds3)","dataset (ds4)"
                }';

            Tcell_guideCol2 = {"2","HDF5","Data Format","string scalar", "string scalar","string scalar","string scalar","numeric vector",...
                "string scalar","numeric value/vector, string scalar","numeric value/vector, string scalar","numeric value/vector, string scalar","numeric value/vector, string scalar",...
                "numeric value/vector, string scalar","numeric value/vector, string scalar","numeric value/vector, string scalar","string scalar","string scalar",...
                "numeric matrix","numeric matrix","numeric matrix","numeric matrix"
                }';

            Tcell_guideCol3 = {"3","THz-TDS Example","Data Assignment Guide","", "","Date and Time (ISO8601 format)","THz-TDS/Transmission","",...
                "Sample Thickness (mm), Reference Thickness (mm), Temperature (K)","1.50","1.00","293","","","","*More metadata can be added if necessary.",...
                "1.00","Sample, Ref1:air, Ref2:PTFE","sample [time(ps); E.field(a.u.)]","Reference 1 [time(ps); E.field(a.u.)]","Reference 2 [time(ps); E.field(a.u.)]","*More datasets can be added if necessary.",...
                }';

            Tcell_guideCol4 = {"4","THz-Imaging Example","Data Assignment Guide","", "","2023-11-25T12:24:13.876+00:00 or","THz-Imaging/Reflection","[x,y,z]",...
                "","","","","","","","",...
                "1.00","Sample, Ref, Baseline","Sample [time(ps); E.field(a.u.)]","Reference [time(ps); E.field(a.u.)]","Baseline [time(ps); E.field(a.u.)]","",...
                }';

            Tcell_guideCol5 = {"5","Frequency-domain Datasets","Data Assignment Guide","", "","T12:24:13.876+00:00 or","FMCW/Reflection","",...
                "meta1, meta2, meta3, meta4","meta1","meta2","meta3","meta4","","","",...
                "1.00","da1, ds2, ds3, ds4","ds1 [frequency; amplitude; phase]","ds2 [frequency; amplitude; phase]","ds1 [frequency; amplitude; phase]","ds1 [frequency; amplitude; phase]",...
                }';

            Tcell_guideCol6 = {"6","Further Application","Data Assignment Guide","", "","T12:24:13","APPLICATION1/Transmission","",...
                "meta1, meta2","meta1","meta2","","","","","",...
                "1.01","da1, ds2","ds1 [row1; row2; row3; row4]","ds2 [row1; row2; row3; row4]","","",...
                }';

           Tcell_guideCol7 = {"7","CaTTrans_Focus Example","Data Assignment Guide","", "","2022-05-27T12:48:55","THz-Imaging/Reflection","",...
               "Thickness (mm), Refractive Index","4.78","1.72","","","","","",...
               "1.00","Sample","Sample [time(ps); E.field(a.u.)]","","","",...
                }';

            % More dataset and metadata guidelines can be displayed by
            % concatenating and editing Tcell_guideCol# entries.

            Tcell_guide = [Tcell_guideCol1, Tcell_guideCol2, Tcell_guideCol3, Tcell_guideCol4, Tcell_guideCol5, Tcell_guideCol6, Tcell_guideCol7];

            %Tcell_header = cell(colHeader');
            app.UITable_Header.Data = cell2table(Tcell_header);
            app.UITable_Measurement.Data = cell2table(Tcell_guide);

            sFont = uistyle("FontColor","#0072BD"); % manual font color style
            sWtBg = uistyle("BackgroundColor","white"); % white background style
            sGrBg = uistyle("BackgroundColor",[0.95,0.95,0.95]); % grey background style
            sDGrBg = uistyle("BackgroundColor",[0.8,0.8,0.8]); % dark grey background style

            addStyle(app.UITable_Measurement,sFont);
            addStyle(app.UITable_Measurement,sGrBg,"row",(2:5));
            addStyle(app.UITable_Measurement,sWtBg,"row",(6:17));
            addStyle(app.UITable_Measurement,sGrBg,"row",(19:22));
            addStyle(app.UITable_Measurement,sDGrBg,"row",[1,9,17,18]);

            addStyle(app.UITable_Header,sGrBg,"row",(2:5));
            addStyle(app.UITable_Header,sWtBg,"row",(6:17));
            addStyle(app.UITable_Header,sGrBg,"row",(19:22));
            addStyle(app.UITable_Header,sDGrBg,"row",[1,9,17,18]);

            insProfileHeader = {'1: Number', '2: Model', '3: Manufacturer', '4: Address'}';
            userProfileHeader = {'1: Number', '2: ORCID', '3: Name', '4: Email', '5: Affiliation'}';
            
            app.UITable_InsHeader.Data = cell2table(insProfileHeader);
            app.UITable_UserHeader.Data = cell2table(userProfileHeader);
            app.Tcell_header = Tcell_header;
            app.Tcell_headerDefault = Tcell_header;
            app.manualMode = 1;
            updateProfile(app);

            LoadReferenceCheckBoxValueChanged(app);
            LoadBaselineCheckBoxValueChanged(app);

        end

        % Button pushed function: ImportMeasurementButton
        function ImportMeasurementButtonPushed(app, event)


            if isempty(app.fullpathname)
                [file, pathName] = uigetfile('*.*','All Files(*,*)','Sectect data file(s)','MultiSelect','on');
            else
                lastPath = app.fullpathname(end);
                [file, pathName] = uigetfile(lastPath,'Sectect data file(s)','MultiSelect','on');
            end

            % PRJ_count: number of project files imported
            PRJ_count = app.PRJ_count;
            
            if isequal(file,0)
                disp('Importing Cancelled');
                return;          
            end

            if iscell(file)
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
                app.FILESEditField.Value = allFileList;
            end

            app.PRJ_count = PRJ_count;
            figure(app.CaTxUIFigure);
        end

        % Button pushed function: DeployDataButton
        function DeployDataButtonPushed(app, event)
            TDSinstrument = app.DataRecipeDropDown.Value;
            PRJ_count = app.PRJ_count; % number of files to be imported
            fullpathname = app.fullpathname; % full path for the imported files
            Tcell = []; % cell structure table
            DEBUGMsgLabel = app.DEBUGMsgLabel; % Debug message label handler
            uiFigure = app.CaTxUIFigure;
            app.manualMode = 0;

            updateProfile(app);

            func = str2func(TDSinstrument);
            Tcell = func(PRJ_count,fullpathname,DEBUGMsgLabel,uiFigure,Tcell);

            if isempty(Tcell)
                return;
            end

            %assignin("base","ins_profilefile", app.ins_profile);
            % assignin("base","Tcell",Tcell);

            Tcell(4,:) = num2cell(app.ins_profile);
            % In case you have an error message related to this line (ex:
            % "Conversion to double from cell is not possible"), it
            % will be most likely due to a conversion Engine issue.
            % Please check the Engine script.
            Tcell(5,:) = num2cell(app.user_profile);
            Tcell(17,:) = {app.thzVer};
            measNum = size(Tcell,2);
            app.totalMeasNum = measNum;
            app.Tcell = Tcell;

            app.UITable_Header.Data = app.Tcell_headerDefault;
            updateMeasurementTable(app);
            app.Ins_MeasurementFieldToEditField.Value = app.totalMeasNum;
            app.User_MeasurementFieldToEditField.Value = app.totalMeasNum;
            app.FILEDLISTTOEditField.Value = app.totalMeasNum;
            % evalin('base', 'clear Tcell');
            app.TabGroup.SelectedTab = app.TabGroup.Children(1);
        end

        % Button pushed function: ClearMemoryButton
        function ClearMemoryButtonPushed(app, event)
            question = "Do you want to clear memory?";
            answer = questdlg(question,'Warning','Yes','No','No');
                
            if isequal(answer,"Yes")
                app.Tcell = [];
                app.TcellP1 = [];
                app.TcellP2 = [];
                app.filename = [];
                app.fullpathname = [];
                app.PRJ_count = 0;
                app.FILESEditField.Value = '';
                app.DEBUGMsgLabel.Text = '';
                app.UITable_Measurement.Data = [];
                app.UITable_Ins.Data = [];
                app.UITable_User.Data = [];
                app.ins_profile = [];
                app.user_profile = [];
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

            Tcell = app.Tcell(indices(1),indices(2));
            dataType = [2 1 1 2 2, 2 2 2 1 1, 1 1 1 1 1, 1 2 1 2 2, 2 2]; % 1 for modifiables, 2 for non-modifiables

            if dataType(indices(1)) < 2
                app.UITable_Measurement.ColumnEditable = true;
            else
                app.UITable_Measurement.ColumnEditable = false;
            end            
        end

        % Callback function
        function TextFieldEditFieldValueChanged(app, event)
            value = app.TextFieldEditField.Value;
            cellIndices = app.cellIndices;
            app.Tcell(cellIndices(1),cellIndices(2)) = {value};
            updateMeasurementTable(app);
        end

        % Cell edit callback: UITable_Measurement
        function UITable_MeasurementCellEdit(app, event)
            indices = event.Indices;
            newData = event.NewData; 

            if app.manualMode
                return;
            end

            switch indices(1)
                case 9
                    app.Tcell(9,:) = {newData};
                    mdList = split(newData,',');
                    Tcell_header = app.Tcell_header;
                    for idx = 1:7
                        mdDRow = 9; % metadata description row
                        if idx<=size(mdList,1)
                            Tcell_header{idx+mdDRow} = strcat(num2str(idx+mdDRow),": ",mdList(idx,1));
                        else
                            Tcell_header{idx+mdDRow} = strcat(num2str(idx+mdDRow),": -");
                        end
                    end
                    app.UITable_Header.Data = cell2table(Tcell_header);
                    app.Tcell_header = Tcell_header;
                case 18
                    app.Tcell(18,:) = {newData};
                    dsList = split(newData,',');
                    Tcell_header = app.Tcell_header;
                    for idx = 1:4
                        dsDRow = 18; % Dataset description row
                        if idx<=size(dsList,1)
                            Tcell_header{idx+dsDRow} = strcat(num2str(idx+dsDRow),": ",dsList(idx,1));
                        else
                            Tcell_header{idx+dsDRow} = strcat(num2str(idx+dsDRow),": -");
                        end
                    end
                    app.UITable_Header.Data = cell2table(Tcell_header);
                    app.Tcell_header = Tcell_header;
                otherwise
                    app.Tcell(indices(1),indices(2)) = {newData};
            end

            updateMeasurementTable(app);
        end

        % Button pushed function: ExportthzFileButton
        function ExportthzFileButtonPushed(app, event)
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
            measNum = app.Tcell{1,end};
            incNum = app.NumberPrefixSwitch.Value;
            varsAttr = ["time","mode","coordinates","mdDescription","md1","md2","md3","md4","md5","md6","md7","thzVer"];
            digitNum = ceil(log10(measNum+1));
            digitNumFormat = strcat('%0',num2str(digitNum),'d');

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

                % create and write HDF5 dataset
                %%h5create(fullfile,dn,size(dSet));
                %%h5write(fullfile,dn,dSet);

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
                    insNum = app.Tcell{4,idx};
                    userNum = app.Tcell{5,idx};
                    
                    rowNum = 6;

                    for attrName = varsAttr
                        h5writeatt(fullfile,dn,attrName,app.Tcell{rowNum,idx});
                        rowNum = rowNum + 1;
                    end

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
            %h5disp(fullfile)

        end

        % Button pushed function: ImportthzFileButton
        function ImportthzFileButtonPushed(app, event)
            ClearMemoryButtonPushed(app);
            app.manualMode = 0;
            
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

           if isequal(app.user_profile,1)
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

            

            [file, filepath] = uigetfile('*.thz');
            
            if isequal(file,0)
                return;
            end

            app.FILESEditField.Value = file;
            
            fullfile = strcat(filepath,file);
            thzInfo = h5info(fullfile);
            measNum = size(thzInfo.Groups,1);
            ListItems = cell(measNum,1);
            [ListItems{:}] = deal(thzInfo.Groups.Name);
            attrItems = ["description","time","mode","coordinates","mdDescription",...
                "md1","md2","md3","md4","md5","md6","md7","thzVer","dsDescription"];
            maxDatasetNum = 20; % maximum number of datasets
            ds1Row = 19; % dataset 1 row in the table

            for idx = 1:measNum
                %dn = strcat('/',ListItems{idx});
                dn = ListItems{idx};
                cnt = 1;

                Tcell{1,idx} = idx;
                Tcell{2,idx} = dn(2:end);

                for dsIdx = 1:maxDatasetNum
                    try
                        dsn = strcat(dn,'/ds',num2str(dsIdx));
                        ds = h5read(fullfile,dsn);
                        Tcell{ds1Row+dsIdx-1,idx} = ds;
                    catch ME
                        if dsIdx>4
                            break;
                        else
                            dsn = strcat(dn,'/ds',num2str(dsIdx));
                            ds = [];
                            Tcell{ds1Row+dsIdx-1,idx} = ds;
                        end
                    end
                end

                for attrLoc = [3 (6:18)]
                    try
                        Tcell{attrLoc,idx} = h5readatt(fullfile,dn,attrItems(cnt));
                    catch ME
                    end
                    cnt = cnt + 1;
                end

                % instrument profile matching
                try
                    insProfile = h5readatt(fullfile,dn,"instrument");
                    if isempty(insProfile)
                        insProfile = 0;
                    end
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
                    if isempty(userProfile)
                        userProfile = 0;
                    end
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
                msg = "Column Size Mismatched";
                uialert(fig,msg,'Warning');
                app.LOADMETAXLS_EditField.Value = '';
                return;
            end

            Tcell(2:3,:)=Tcellxls(2:3,:);
            Tcell(10:16,:)=Tcellxls(4:10,:);
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

        % Button pushed function: AnonymousUserProfile0Button
        function AnonymousUserProfile0ButtonPushed(app, event)
            updateProfile(app);

            Tcell = app.Tcell;
            Tcell(5,:) = num2cell(0);
            app.Tcell = Tcell;

            updateMeasurementTable(app);
        end

        % Cell edit callback: UITable_Ins
        function UITable_InsCellEdit(app, event)
            indices = event.Indices;
            newData = event.NewData;
            app.TcellP1(indices(1),indices(2)) = {newData};

            writeP1Profile(app);
        end

        % Cell edit callback: UITable_User
        function UITable_UserCellEdit(app, event)
            indices = event.Indices;
            newData = event.NewData;
            app.TcellP2(indices(1),indices(2)) = {newData};  

            writeP2Profile(app);
        end

        % Button pushed function: ADD_INS_COL_Button
        function ADD_INS_COL_ButtonPushed(app, event)
            
            mPath = fileparts(which(mfilename));
            insProfilefile = strcat(mPath,filesep,'Profiles',filesep,'Instruments.xls');

            if isfile(insProfilefile)
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

        % Button pushed function: Add_User_Col_Button
        function Add_User_Col_ButtonPushed(app, event)
            
            mPath = fileparts(which(mfilename));
            userProfilefile = strcat(mPath,filesep,'Profiles',filesep,'Users.xls');

            if isfile(userProfilefile)
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

        % Cell selection callback: UITable_Ins
        function UITable_InsCellSelection(app, event)
            indices = event.Indices;
            app.INS_SELECTIONEditField.Value = indices(2);
        end

        % Cell selection callback: UITable_User
        function UITable_UserCellSelection(app, event)
            indices = event.Indices;
            app.User_SelectionEditField.Value = indices(2);
        end

        % Button pushed function: Remove_User_Col_Button
        function Remove_User_Col_ButtonPushed(app, event)
            
            if app.User_SelectionEditField.Value == 0
                return;
            end

            TcellP = app.TcellP2;
            colNum = app.User_SelectionEditField.Value;

            TcellP(:,colNum) = [];
            TcellP(1,:) = num2cell((1:size(TcellP,2)));
            app.TcellP2 = TcellP;

            writeP2Profile(app);
            updateP2Link(app);
            
            app.User_SelectionEditField.Value = 0;

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

        % Button pushed function: Ins_LinkButton
        function Ins_LinkButtonPushed(app, event)
            profileNum = app.INS_SELECTIONEditField.Value;
            fieldFrom = app.Ins_MeasurementFieldFromEditField.Value;
            fieldTo = app.Ins_MeasurementFieldToEditField.Value;
            rowInsProfile = 4;

            if isequal(profileNum,0) || isempty(app.Tcell)
                return;
            end

            if fieldTo > app.totalMeasNum || fieldFrom > fieldTo
                fig = app.CaTxUIFigure;
                uialert(fig,'Invalid measurement field list','warning');
                return;
            end

            try
                app.Tcell(rowInsProfile,fieldFrom:fieldTo) = {profileNum};
            catch ME
                fig = app.CaTxUIFigure;
                uialert(fig,'Invalid measurement field list','warning');
                return;
            end

            updateMeasurementTable(app);
        end

        % Button pushed function: User_LinkButton
        function User_LinkButtonPushed(app, event)
            profileNum = app.User_SelectionEditField.Value;
            fieldFrom = app.User_MeasurementFieldFromEditField.Value;
            fieldTo = app.User_MeasurementFieldToEditField.Value;
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

        % Button pushed function: AnonymousInstrumentProfile0Button
        function AnonymousInstrumentProfile0ButtonPushed(app, event)
            updateProfile(app);

            Tcell = app.Tcell;
            Tcell(4,:) = num2cell(0);
            app.Tcell = Tcell;

            updateMeasurementTable(app);
        end

        % Button pushed function: DeleteSourceWaveformButton
        function DeleteSourceWaveformButtonPushed(app, event)
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
            value = app.LoadReferenceCheckBox.Value;

            if value
                app.ReferenceTHzSpinner.Enable = "on";
                app.dsEditField_Reference.Enable = "on";
                app.OpenFileCheckBox_Reference.Enable = "on";
            else
                app.ReferenceTHzSpinner.Enable = "off";
                app.dsEditField_Reference.Enable = "off";
                app.OpenFileCheckBox_Reference.Enable = "off";
            end
        end

        % Value changed function: LoadBaselineCheckBox
        function LoadBaselineCheckBoxValueChanged(app, event)
            value = app.LoadBaselineCheckBox.Value;

            if value
                app.SubtractCheckBox.Enable = "on";
                app.OpenFileCheckBox_Baseline.Enable = "on";
                app.BaselineTHzSpinner.Enable = "on";
                app.dsEditField_Baseline.Enable = "on";
                SubtractCheckBoxValueChanged(app);
            else
                app.SubtractCheckBox.Enable = "off";
                app.OpenFileCheckBox_Baseline.Enable = "off";
                app.dsEditField_Baseline.Enable = "off";
                app.BaselineTHzSpinner.Enable = "off";
            end
        end

        % Value changed function: SubtractCheckBox
        function SubtractCheckBoxValueChanged(app, event)
            value = app.SubtractCheckBox.Value;
            
            if value
                app.dsEditField_Baseline.Visible = "off";
            else
                app.dsEditField_Baseline.Visible = "on";
            end
        end

        % Button pushed function: DeploySampleDataButton
        function DeploySampleDataButtonPushed(app, event)
            fileExt = app.DataFileExtensionDropDown.Value;

            if isequal(fileExt,'user defined')                
                fileExt = app.userDefinedEditField.Value;
                
                if isempty(app.userDefinedEditField.Value)
                    fileExt = '*';
                end
            end

            fileFilter = strcat('*.',fileExt);
            
            [file, filepath] = uigetfile(fileFilter,'Select a sample file');
            
            if isequal(file,0)
                return;
            end
            
            app.referenceSignal = [];
            app.baselineSignal = [];
            app.SampleFileEditField.Value = file;
            app.samplefile = strcat(filepath,file);
            app.UITable_Header.Data = app.Tcell_headerDefault;

            if isequal(fileExt,'tprj')
                deploySampleData_tprj(app)
            else
                deploySampleData(app);
            end
        end

        % Value changed function: DataFileExtensionDropDown
        function DataFileExtensionDropDownValueChanged(app, event)
            value = app.DataFileExtensionDropDown.Value;
            app.SampleFileEditField.Value = '';
            app.DSDescriptionEditField.Value = '';

            if isequal(value,'user defined')
                app.userDefinedEditField.Enable = "on";
                app.userDefinedEditField.Value = '';
            else
                app.userDefinedEditField.Enable = "off";
                app.userDefinedEditField.Value = '';
            end

            if isequal(value,'tprj')
                app.TimepsSpinner.Visible = "off";
                app.SampleTHzSpinner.Visible = "off";
                app.OpenFileCheckBox_Reference.Visible = "off";
                app.ReferenceTHzSpinner.Visible = "off";
                app.OpenFileCheckBox_Baseline.Visible = "off";
                app.BaselineTHzSpinner.Visible = "off";
                app.LoadReferenceCheckBox.Value = 1;
                app.LoadBaselineCheckBox.Value = 0;
                app.SubtractCheckBox.Enable = "off";
            else
                app.TimepsSpinner.Visible = "on";
                app.SampleTHzSpinner.Visible = "on";
                app.OpenFileCheckBox_Reference.Visible = "on";
                app.ReferenceTHzSpinner.Visible = "on";
                app.OpenFileCheckBox_Baseline.Visible = "on";
                app.BaselineTHzSpinner.Visible = "on";
            end
        end

        % Value changed function: OpenFileCheckBox_Reference
        function OpenFileCheckBox_ReferenceValueChanged(app, event)
            value = app.OpenFileCheckBox_Reference.Value;
            if value
               app.ReferenceTHzSpinner.Value = 2;
            else
               app.ReferenceTHzSpinner.Value = 3;
            end
        end

        % Button pushed function: CreateDatasetDescriptionButton
        function CreateDatasetDescriptionButtonPushed(app, event)
            
        end

        % Value changed function: OpenFileCheckBox_Baseline
        function OpenFileCheckBox_BaselineValueChanged(app, event)
            value = app.OpenFileCheckBox_Baseline.Value;
            
            if value
               app.BaselineTHzSpinner.Value = 2;
            else
               app.BaselineTHzSpinner.Value = 4;
            end
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

            % Create ImportMeasurementButton
            app.ImportMeasurementButton = uibutton(app.CaTxUIFigure, 'push');
            app.ImportMeasurementButton.ButtonPushedFcn = createCallbackFcn(app, @ImportMeasurementButtonPushed, true);
            app.ImportMeasurementButton.FontWeight = 'bold';
            app.ImportMeasurementButton.Position = [190 825 143 25];
            app.ImportMeasurementButton.Text = 'Import Measurement';

            % Create FILESEditField
            app.FILESEditField = uieditfield(app.CaTxUIFigure, 'text');
            app.FILESEditField.Position = [340 825 647 25];

            % Create DeployDataButton
            app.DeployDataButton = uibutton(app.CaTxUIFigure, 'push');
            app.DeployDataButton.ButtonPushedFcn = createCallbackFcn(app, @DeployDataButtonPushed, true);
            app.DeployDataButton.BackgroundColor = [0.902 0.902 0.902];
            app.DeployDataButton.FontWeight = 'bold';
            app.DeployDataButton.Position = [887 790 206 25];
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

            % Create DataRecipeDropDownLabel
            app.DataRecipeDropDownLabel = uilabel(app.CaTxUIFigure);
            app.DataRecipeDropDownLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.DataRecipeDropDownLabel.HorizontalAlignment = 'right';
            app.DataRecipeDropDownLabel.FontWeight = 'bold';
            app.DataRecipeDropDownLabel.Position = [414 792 108 22];
            app.DataRecipeDropDownLabel.Text = 'Data Recipe';

            % Create DataRecipeDropDown
            app.DataRecipeDropDown = uidropdown(app.CaTxUIFigure);
            app.DataRecipeDropDown.Items = {'No recipes available. Please check Recipes.json file.'};
            app.DataRecipeDropDown.FontWeight = 'bold';
            app.DataRecipeDropDown.BackgroundColor = [0.9412 0.9412 0.9412];
            app.DataRecipeDropDown.Position = [533 790 340 25];
            app.DataRecipeDropDown.Value = 'No recipes available. Please check Recipes.json file.';

            % Create ClearMemoryButton
            app.ClearMemoryButton = uibutton(app.CaTxUIFigure, 'push');
            app.ClearMemoryButton.ButtonPushedFcn = createCallbackFcn(app, @ClearMemoryButtonPushed, true);
            app.ClearMemoryButton.FontWeight = 'bold';
            app.ClearMemoryButton.Position = [992 825 101 25];
            app.ClearMemoryButton.Text = 'Clear Memory';

            % Create ImportthzFileButton
            app.ImportthzFileButton = uibutton(app.CaTxUIFigure, 'push');
            app.ImportthzFileButton.ButtonPushedFcn = createCallbackFcn(app, @ImportthzFileButtonPushed, true);
            app.ImportthzFileButton.FontWeight = 'bold';
            app.ImportthzFileButton.Position = [190 795 143 24];
            app.ImportthzFileButton.Text = 'Import .thz File';

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
            app.ofColumnEditFieldLabel.Position = [197 75 60 22];
            app.ofColumnEditFieldLabel.Text = 'of Column';

            % Create ofColumnEditField
            app.ofColumnEditField = uieditfield(app.DatasetControlPanel, 'numeric');
            app.ofColumnEditField.Limits = [1 Inf];
            app.ofColumnEditField.ValueDisplayFormat = '%.0f';
            app.ofColumnEditField.Position = [272 75 55 22];
            app.ofColumnEditField.Value = 1;

            % Create ofColumnsEditFieldLabel
            app.ofColumnsEditFieldLabel = uilabel(app.DatasetControlPanel);
            app.ofColumnsEditFieldLabel.HorizontalAlignment = 'right';
            app.ofColumnsEditFieldLabel.Position = [195 40 73 22];
            app.ofColumnsEditFieldLabel.Text = 'of Columns (';

            % Create ofColumnsEditField
            app.ofColumnsEditField = uieditfield(app.DatasetControlPanel, 'numeric');
            app.ofColumnsEditField.Limits = [1 Inf];
            app.ofColumnsEditField.ValueDisplayFormat = '%.0f';
            app.ofColumnsEditField.Position = [274 41 55 22];
            app.ofColumnsEditField.Value = 1;

            % Create toLabel
            app.toLabel = uilabel(app.DatasetControlPanel);
            app.toLabel.HorizontalAlignment = 'right';
            app.toLabel.Position = [331 40 12 22];
            app.toLabel.Text = '-';

            % Create FILEDLISTTOEditField
            app.FILEDLISTTOEditField = uieditfield(app.DatasetControlPanel, 'numeric');
            app.FILEDLISTTOEditField.Limits = [1 Inf];
            app.FILEDLISTTOEditField.ValueDisplayFormat = '%.0f';
            app.FILEDLISTTOEditField.Position = [351 40 55 22];
            app.FILEDLISTTOEditField.Value = 1;

            % Create SourceWaveformDropDownLabel
            app.SourceWaveformDropDownLabel = uilabel(app.DatasetControlPanel);
            app.SourceWaveformDropDownLabel.HorizontalAlignment = 'right';
            app.SourceWaveformDropDownLabel.Position = [5 75 101 22];
            app.SourceWaveformDropDownLabel.Text = 'Source Waveform';

            % Create SourceDatasetDropDown
            app.SourceDatasetDropDown = uidropdown(app.DatasetControlPanel);
            app.SourceDatasetDropDown.Items = {'ds1', 'ds2', 'ds3', 'ds4'};
            app.SourceDatasetDropDown.ItemsData = {'19', '20', '21', '22'};
            app.SourceDatasetDropDown.Position = [113 75 81 22];
            app.SourceDatasetDropDown.Value = '19';

            % Create CopyButton
            app.CopyButton = uibutton(app.DatasetControlPanel, 'push');
            app.CopyButton.ButtonPushedFcn = createCallbackFcn(app, @CopyButtonPushed, true);
            app.CopyButton.IconAlignment = 'right';
            app.CopyButton.Position = [235 10 181 24];
            app.CopyButton.Text = 'Copy';

            % Create TargetWaveformDropDownLabel
            app.TargetWaveformDropDownLabel = uilabel(app.DatasetControlPanel);
            app.TargetWaveformDropDownLabel.HorizontalAlignment = 'right';
            app.TargetWaveformDropDownLabel.Position = [6 41 96 22];
            app.TargetWaveformDropDownLabel.Text = 'Target Waveform';

            % Create TargetDatasetDropDown
            app.TargetDatasetDropDown = uidropdown(app.DatasetControlPanel);
            app.TargetDatasetDropDown.Items = {'ds1', 'ds2', 'ds3', 'ds4'};
            app.TargetDatasetDropDown.ItemsData = {'19', '20', '21', '22'};
            app.TargetDatasetDropDown.Position = [114 41 81 22];
            app.TargetDatasetDropDown.Value = '20';

            % Create DeleteSourceWaveformButton
            app.DeleteSourceWaveformButton = uibutton(app.DatasetControlPanel, 'push');
            app.DeleteSourceWaveformButton.ButtonPushedFcn = createCallbackFcn(app, @DeleteSourceWaveformButtonPushed, true);
            app.DeleteSourceWaveformButton.IconAlignment = 'right';
            app.DeleteSourceWaveformButton.Position = [74 10 153 24];
            app.DeleteSourceWaveformButton.Text = 'Delete Source Waveform';

            % Create Label
            app.Label = uilabel(app.DatasetControlPanel);
            app.Label.Position = [410 41 25 22];
            app.Label.Text = ')';

            % Create InstrumentsandUsersTab
            app.InstrumentsandUsersTab = uitab(app.TabGroup);
            app.InstrumentsandUsersTab.Title = 'Instruments and Users';

            % Create UITable_Ins
            app.UITable_Ins = uitable(app.InstrumentsandUsersTab);
            app.UITable_Ins.ColumnName = '';
            app.UITable_Ins.RowName = {};
            app.UITable_Ins.CellEditCallback = createCallbackFcn(app, @UITable_InsCellEdit, true);
            app.UITable_Ins.CellSelectionCallback = createCallbackFcn(app, @UITable_InsCellSelection, true);
            app.UITable_Ins.Multiselect = 'off';
            app.UITable_Ins.Position = [180 537 870 112];

            % Create UITable_InsHeader
            app.UITable_InsHeader = uitable(app.InstrumentsandUsersTab);
            app.UITable_InsHeader.ColumnName = '';
            app.UITable_InsHeader.RowName = {};
            app.UITable_InsHeader.FontWeight = 'bold';
            app.UITable_InsHeader.Position = [25 537 156 112];

            % Create UITable_User
            app.UITable_User = uitable(app.InstrumentsandUsersTab);
            app.UITable_User.ColumnName = '';
            app.UITable_User.RowName = {};
            app.UITable_User.CellEditCallback = createCallbackFcn(app, @UITable_UserCellEdit, true);
            app.UITable_User.CellSelectionCallback = createCallbackFcn(app, @UITable_UserCellSelection, true);
            app.UITable_User.Multiselect = 'off';
            app.UITable_User.Position = [180 288 870 133];

            % Create UITable_UserHeader
            app.UITable_UserHeader = uitable(app.InstrumentsandUsersTab);
            app.UITable_UserHeader.ColumnName = '';
            app.UITable_UserHeader.RowName = {};
            app.UITable_UserHeader.FontWeight = 'bold';
            app.UITable_UserHeader.Position = [25 288 156 133];

            % Create InstrumentLabel
            app.InstrumentLabel = uilabel(app.InstrumentsandUsersTab);
            app.InstrumentLabel.FontSize = 13;
            app.InstrumentLabel.Position = [33 650 96 22];
            app.InstrumentLabel.Text = 'Instrument*';

            % Create UserLabel
            app.UserLabel = uilabel(app.InstrumentsandUsersTab);
            app.UserLabel.FontSize = 13;
            app.UserLabel.Position = [33 422 98 22];
            app.UserLabel.Text = 'User*';

            % Create Ins_LinkButton
            app.Ins_LinkButton = uibutton(app.InstrumentsandUsersTab, 'push');
            app.Ins_LinkButton.ButtonPushedFcn = createCallbackFcn(app, @Ins_LinkButtonPushed, true);
            app.Ins_LinkButton.Position = [960 500 81 25];
            app.Ins_LinkButton.Text = 'Link';

            % Create User_LinkButton
            app.User_LinkButton = uibutton(app.InstrumentsandUsersTab, 'push');
            app.User_LinkButton.ButtonPushedFcn = createCallbackFcn(app, @User_LinkButtonPushed, true);
            app.User_LinkButton.Position = [968 246 71 25];
            app.User_LinkButton.Text = 'Link';

            % Create ADD_INS_COL_Button
            app.ADD_INS_COL_Button = uibutton(app.InstrumentsandUsersTab, 'push');
            app.ADD_INS_COL_Button.ButtonPushedFcn = createCallbackFcn(app, @ADD_INS_COL_ButtonPushed, true);
            app.ADD_INS_COL_Button.Position = [181 499 165 26];
            app.ADD_INS_COL_Button.Text = 'Add Profile';

            % Create REMOVE_INS_COL_Button
            app.REMOVE_INS_COL_Button = uibutton(app.InstrumentsandUsersTab, 'push');
            app.REMOVE_INS_COL_Button.ButtonPushedFcn = createCallbackFcn(app, @REMOVE_INS_COL_ButtonPushed, true);
            app.REMOVE_INS_COL_Button.Position = [355 499 190 26];
            app.REMOVE_INS_COL_Button.Text = 'Remove Selected Profile';

            % Create Add_User_Col_Button
            app.Add_User_Col_Button = uibutton(app.InstrumentsandUsersTab, 'push');
            app.Add_User_Col_Button.ButtonPushedFcn = createCallbackFcn(app, @Add_User_Col_ButtonPushed, true);
            app.Add_User_Col_Button.Position = [206 245 165 26];
            app.Add_User_Col_Button.Text = 'Add Profile';

            % Create Remove_User_Col_Button
            app.Remove_User_Col_Button = uibutton(app.InstrumentsandUsersTab, 'push');
            app.Remove_User_Col_Button.ButtonPushedFcn = createCallbackFcn(app, @Remove_User_Col_ButtonPushed, true);
            app.Remove_User_Col_Button.Position = [380 245 190 26];
            app.Remove_User_Col_Button.Text = 'Remove Selected Profile';

            % Create SelectionLabel
            app.SelectionLabel = uilabel(app.InstrumentsandUsersTab);
            app.SelectionLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.SelectionLabel.HorizontalAlignment = 'right';
            app.SelectionLabel.Position = [566 501 55 22];
            app.SelectionLabel.Text = 'Selection';

            % Create INS_SELECTIONEditField
            app.INS_SELECTIONEditField = uieditfield(app.InstrumentsandUsersTab, 'numeric');
            app.INS_SELECTIONEditField.Limits = [0 Inf];
            app.INS_SELECTIONEditField.ValueDisplayFormat = '%.0f';
            app.INS_SELECTIONEditField.Editable = 'off';
            app.INS_SELECTIONEditField.BackgroundColor = [0.9412 0.9412 0.9412];
            app.INS_SELECTIONEditField.Position = [629 501 34 22];

            % Create SelectionLabel_2
            app.SelectionLabel_2 = uilabel(app.InstrumentsandUsersTab);
            app.SelectionLabel_2.BackgroundColor = [0.9412 0.9412 0.9412];
            app.SelectionLabel_2.HorizontalAlignment = 'right';
            app.SelectionLabel_2.Position = [591 247 55 22];
            app.SelectionLabel_2.Text = 'Selection';

            % Create User_SelectionEditField
            app.User_SelectionEditField = uieditfield(app.InstrumentsandUsersTab, 'numeric');
            app.User_SelectionEditField.Limits = [0 Inf];
            app.User_SelectionEditField.ValueDisplayFormat = '%.0f';
            app.User_SelectionEditField.Editable = 'off';
            app.User_SelectionEditField.BackgroundColor = [0.9412 0.9412 0.9412];
            app.User_SelectionEditField.Position = [654 247 34 22];

            % Create AnonymousUserProfile0Button
            app.AnonymousUserProfile0Button = uibutton(app.InstrumentsandUsersTab, 'push');
            app.AnonymousUserProfile0Button.ButtonPushedFcn = createCallbackFcn(app, @AnonymousUserProfile0ButtonPushed, true);
            app.AnonymousUserProfile0Button.Position = [802 211 238 23];
            app.AnonymousUserProfile0Button.Text = 'Anonymous User Profile, 0';

            % Create MeasurementfieldfromLabel
            app.MeasurementfieldfromLabel = uilabel(app.InstrumentsandUsersTab);
            app.MeasurementfieldfromLabel.HorizontalAlignment = 'right';
            app.MeasurementfieldfromLabel.Position = [668 501 139 22];
            app.MeasurementfieldfromLabel.Text = 'Measurement Field From';

            % Create Ins_MeasurementFieldFromEditField
            app.Ins_MeasurementFieldFromEditField = uieditfield(app.InstrumentsandUsersTab, 'numeric');
            app.Ins_MeasurementFieldFromEditField.Limits = [1 Inf];
            app.Ins_MeasurementFieldFromEditField.ValueDisplayFormat = '%.0f';
            app.Ins_MeasurementFieldFromEditField.Position = [814 501 55 22];
            app.Ins_MeasurementFieldFromEditField.Value = 1;

            % Create toLabel_2
            app.toLabel_2 = uilabel(app.InstrumentsandUsersTab);
            app.toLabel_2.HorizontalAlignment = 'right';
            app.toLabel_2.Position = [870 501 25 22];
            app.toLabel_2.Text = 'To';

            % Create Ins_MeasurementFieldToEditField
            app.Ins_MeasurementFieldToEditField = uieditfield(app.InstrumentsandUsersTab, 'numeric');
            app.Ins_MeasurementFieldToEditField.Limits = [1 Inf];
            app.Ins_MeasurementFieldToEditField.ValueDisplayFormat = '%.0f';
            app.Ins_MeasurementFieldToEditField.Position = [899 501 55 22];
            app.Ins_MeasurementFieldToEditField.Value = 1;

            % Create MeasurementfieldfromLabel_2
            app.MeasurementfieldfromLabel_2 = uilabel(app.InstrumentsandUsersTab);
            app.MeasurementfieldfromLabel_2.HorizontalAlignment = 'right';
            app.MeasurementfieldfromLabel_2.Position = [690 247 139 22];
            app.MeasurementfieldfromLabel_2.Text = 'Measurement Field From';

            % Create User_MeasurementFieldFromEditField
            app.User_MeasurementFieldFromEditField = uieditfield(app.InstrumentsandUsersTab, 'numeric');
            app.User_MeasurementFieldFromEditField.Limits = [1 Inf];
            app.User_MeasurementFieldFromEditField.ValueDisplayFormat = '%.0f';
            app.User_MeasurementFieldFromEditField.Position = [836 247 55 22];
            app.User_MeasurementFieldFromEditField.Value = 1;

            % Create toLabel_3
            app.toLabel_3 = uilabel(app.InstrumentsandUsersTab);
            app.toLabel_3.HorizontalAlignment = 'right';
            app.toLabel_3.Position = [882 247 25 22];
            app.toLabel_3.Text = 'To';

            % Create User_MeasurementFieldToEditField
            app.User_MeasurementFieldToEditField = uieditfield(app.InstrumentsandUsersTab, 'numeric');
            app.User_MeasurementFieldToEditField.Limits = [1 Inf];
            app.User_MeasurementFieldToEditField.ValueDisplayFormat = '%.0f';
            app.User_MeasurementFieldToEditField.Position = [911 247 50 22];
            app.User_MeasurementFieldToEditField.Value = 1;

            % Create DonotusecharacterindescriptionLabel
            app.DonotusecharacterindescriptionLabel = uilabel(app.InstrumentsandUsersTab);
            app.DonotusecharacterindescriptionLabel.Position = [826 677 217 22];
            app.DonotusecharacterindescriptionLabel.Text = '* Do not use '' / '' character in description';

            % Create AnonymousInstrumentProfile0Button
            app.AnonymousInstrumentProfile0Button = uibutton(app.InstrumentsandUsersTab, 'push');
            app.AnonymousInstrumentProfile0Button.ButtonPushedFcn = createCallbackFcn(app, @AnonymousInstrumentProfile0ButtonPushed, true);
            app.AnonymousInstrumentProfile0Button.Position = [804 466 238 23];
            app.AnonymousInstrumentProfile0Button.Text = 'Anonymous Instrument Profile, 0';

            % Create DataRecipeTab
            app.DataRecipeTab = uitab(app.TabGroup);
            app.DataRecipeTab.Title = 'Data Recipe';

            % Create RecipeListListBoxLabel
            app.RecipeListListBoxLabel = uilabel(app.DataRecipeTab);
            app.RecipeListListBoxLabel.HorizontalAlignment = 'right';
            app.RecipeListListBoxLabel.Position = [25 654 64 22];
            app.RecipeListListBoxLabel.Text = 'Recipe List';

            % Create RecipeListListBox
            app.RecipeListListBox = uilistbox(app.DataRecipeTab);
            app.RecipeListListBox.Position = [104 574 248 104];

            % Create RemoveButton_2
            app.RemoveButton_2 = uibutton(app.DataRecipeTab, 'push');
            app.RemoveButton_2.Position = [232 542 115 23];
            app.RemoveButton_2.Text = 'Remove';

            % Create SetDefaultButton
            app.SetDefaultButton = uibutton(app.DataRecipeTab, 'push');
            app.SetDefaultButton.Position = [110 542 109 23];
            app.SetDefaultButton.Text = 'Set Default';

            % Create TabGroup2
            app.TabGroup2 = uitabgroup(app.DataRecipeTab);
            app.TabGroup2.Position = [14 45 1030 465];

            % Create TDSTab
            app.TDSTab = uitab(app.TabGroup2);
            app.TDSTab.Title = 'TDS';

            % Create TerahertzDatasetPanel
            app.TerahertzDatasetPanel = uipanel(app.TDSTab);
            app.TerahertzDatasetPanel.Title = 'Terahertz Dataset';
            app.TerahertzDatasetPanel.FontWeight = 'bold';
            app.TerahertzDatasetPanel.Position = [15 166 994 190];

            % Create TimepsSpinnerLabel
            app.TimepsSpinnerLabel = uilabel(app.TerahertzDatasetPanel);
            app.TimepsSpinnerLabel.HorizontalAlignment = 'right';
            app.TimepsSpinnerLabel.Position = [71 109 55 22];
            app.TimepsSpinnerLabel.Text = 'Time (ps)';

            % Create TimepsSpinner
            app.TimepsSpinner = uispinner(app.TerahertzDatasetPanel);
            app.TimepsSpinner.Limits = [1 6];
            app.TimepsSpinner.ValueDisplayFormat = '%.0f';
            app.TimepsSpinner.Position = [134 109 60 22];
            app.TimepsSpinner.Value = 1;

            % Create THzSignalSampleLabel
            app.THzSignalSampleLabel = uilabel(app.TerahertzDatasetPanel);
            app.THzSignalSampleLabel.HorizontalAlignment = 'right';
            app.THzSignalSampleLabel.Position = [203 109 71 22];
            app.THzSignalSampleLabel.Text = 'Sample THz';

            % Create SampleTHzSpinner
            app.SampleTHzSpinner = uispinner(app.TerahertzDatasetPanel);
            app.SampleTHzSpinner.Limits = [1 6];
            app.SampleTHzSpinner.ValueDisplayFormat = '%.0f';
            app.SampleTHzSpinner.Position = [283 109 60 22];
            app.SampleTHzSpinner.Value = 2;

            % Create LoadReferenceCheckBox
            app.LoadReferenceCheckBox = uicheckbox(app.TerahertzDatasetPanel);
            app.LoadReferenceCheckBox.ValueChangedFcn = createCallbackFcn(app, @LoadReferenceCheckBoxValueChanged, true);
            app.LoadReferenceCheckBox.Text = 'Reference';
            app.LoadReferenceCheckBox.Position = [359 140 77 22];

            % Create OpenFileCheckBox_Reference
            app.OpenFileCheckBox_Reference = uicheckbox(app.TerahertzDatasetPanel);
            app.OpenFileCheckBox_Reference.ValueChangedFcn = createCallbackFcn(app, @OpenFileCheckBox_ReferenceValueChanged, true);
            app.OpenFileCheckBox_Reference.Text = 'Open File';
            app.OpenFileCheckBox_Reference.Position = [438 140 74 22];
            app.OpenFileCheckBox_Reference.Value = true;

            % Create THzSignalReferenceLabel
            app.THzSignalReferenceLabel = uilabel(app.TerahertzDatasetPanel);
            app.THzSignalReferenceLabel.HorizontalAlignment = 'right';
            app.THzSignalReferenceLabel.Position = [362 109 85 22];
            app.THzSignalReferenceLabel.Text = 'Reference THz';

            % Create ReferenceTHzSpinner
            app.ReferenceTHzSpinner = uispinner(app.TerahertzDatasetPanel);
            app.ReferenceTHzSpinner.Limits = [1 6];
            app.ReferenceTHzSpinner.ValueDisplayFormat = '%.0f';
            app.ReferenceTHzSpinner.Position = [456 109 60 22];
            app.ReferenceTHzSpinner.Value = 2;

            % Create LoadBaselineCheckBox
            app.LoadBaselineCheckBox = uicheckbox(app.TerahertzDatasetPanel);
            app.LoadBaselineCheckBox.ValueChangedFcn = createCallbackFcn(app, @LoadBaselineCheckBoxValueChanged, true);
            app.LoadBaselineCheckBox.Text = 'Baseline';
            app.LoadBaselineCheckBox.Position = [538 140 68 22];

            % Create OpenFileCheckBox_Baseline
            app.OpenFileCheckBox_Baseline = uicheckbox(app.TerahertzDatasetPanel);
            app.OpenFileCheckBox_Baseline.ValueChangedFcn = createCallbackFcn(app, @OpenFileCheckBox_BaselineValueChanged, true);
            app.OpenFileCheckBox_Baseline.Text = 'Open File';
            app.OpenFileCheckBox_Baseline.Position = [607 140 74 22];
            app.OpenFileCheckBox_Baseline.Value = true;

            % Create SubtractCheckBox
            app.SubtractCheckBox = uicheckbox(app.TerahertzDatasetPanel);
            app.SubtractCheckBox.ValueChangedFcn = createCallbackFcn(app, @SubtractCheckBoxValueChanged, true);
            app.SubtractCheckBox.Text = 'Subtract';
            app.SubtractCheckBox.Position = [638 82 67 22];

            % Create BaselineTHzSpinnerLabel
            app.BaselineTHzSpinnerLabel = uilabel(app.TerahertzDatasetPanel);
            app.BaselineTHzSpinnerLabel.HorizontalAlignment = 'right';
            app.BaselineTHzSpinnerLabel.Position = [537 109 76 22];
            app.BaselineTHzSpinnerLabel.Text = 'Baseline THz';

            % Create BaselineTHzSpinner
            app.BaselineTHzSpinner = uispinner(app.TerahertzDatasetPanel);
            app.BaselineTHzSpinner.Limits = [1 6];
            app.BaselineTHzSpinner.ValueDisplayFormat = '%.0f';
            app.BaselineTHzSpinner.Position = [622 109 60 22];
            app.BaselineTHzSpinner.Value = 2;

            % Create ColumnLabel
            app.ColumnLabel = uilabel(app.TerahertzDatasetPanel);
            app.ColumnLabel.FontWeight = 'bold';
            app.ColumnLabel.Position = [11 109 50 22];
            app.ColumnLabel.Text = 'Column';

            % Create DatasetLabel
            app.DatasetLabel = uilabel(app.TerahertzDatasetPanel);
            app.DatasetLabel.FontWeight = 'bold';
            app.DatasetLabel.Position = [11 82 48 22];
            app.DatasetLabel.Text = 'Dataset';

            % Create CreateDatasetDescriptionButton
            app.CreateDatasetDescriptionButton = uibutton(app.TerahertzDatasetPanel, 'push');
            app.CreateDatasetDescriptionButton.ButtonPushedFcn = createCallbackFcn(app, @CreateDatasetDescriptionButtonPushed, true);
            app.CreateDatasetDescriptionButton.Position = [12 21 159 23];
            app.CreateDatasetDescriptionButton.Text = 'Create Dataset Description';

            % Create DescriptionEditFieldLabel
            app.DescriptionEditFieldLabel = uilabel(app.TerahertzDatasetPanel);
            app.DescriptionEditFieldLabel.HorizontalAlignment = 'right';
            app.DescriptionEditFieldLabel.Position = [188 21 65 22];
            app.DescriptionEditFieldLabel.Text = 'Description';

            % Create DSDescriptionEditField
            app.DSDescriptionEditField = uieditfield(app.TerahertzDatasetPanel, 'text');
            app.DSDescriptionEditField.Position = [261 21 420 22];

            % Create SampledsLabel
            app.SampledsLabel = uilabel(app.TerahertzDatasetPanel);
            app.SampledsLabel.HorizontalAlignment = 'right';
            app.SampledsLabel.Position = [203 82 66 22];
            app.SampledsLabel.Text = 'Sample DS';

            % Create dsEditField_Sample
            app.dsEditField_Sample = uieditfield(app.TerahertzDatasetPanel, 'numeric');
            app.dsEditField_Sample.Limits = [1 4];
            app.dsEditField_Sample.ValueDisplayFormat = '%.0f';
            app.dsEditField_Sample.Editable = 'off';
            app.dsEditField_Sample.Position = [274 82 20 22];
            app.dsEditField_Sample.Value = 1;

            % Create ReferencedsLabel
            app.ReferencedsLabel = uilabel(app.TerahertzDatasetPanel);
            app.ReferencedsLabel.HorizontalAlignment = 'right';
            app.ReferencedsLabel.Position = [362 82 80 22];
            app.ReferencedsLabel.Text = 'Reference DS';

            % Create dsEditField_Reference
            app.dsEditField_Reference = uieditfield(app.TerahertzDatasetPanel, 'numeric');
            app.dsEditField_Reference.Limits = [1 4];
            app.dsEditField_Reference.ValueDisplayFormat = '%.0f';
            app.dsEditField_Reference.Editable = 'off';
            app.dsEditField_Reference.Position = [447 82 20 22];
            app.dsEditField_Reference.Value = 2;

            % Create BaselineDSLabel
            app.BaselineDSLabel = uilabel(app.TerahertzDatasetPanel);
            app.BaselineDSLabel.HorizontalAlignment = 'right';
            app.BaselineDSLabel.Position = [537 82 71 22];
            app.BaselineDSLabel.Text = 'Baseline DS';

            % Create dsEditField_Baseline
            app.dsEditField_Baseline = uieditfield(app.TerahertzDatasetPanel, 'numeric');
            app.dsEditField_Baseline.Limits = [1 4];
            app.dsEditField_Baseline.ValueDisplayFormat = '%.0f';
            app.dsEditField_Baseline.Editable = 'off';
            app.dsEditField_Baseline.Position = [613 82 20 22];
            app.dsEditField_Baseline.Value = 3;

            % Create LoadOpenFileLabel
            app.LoadOpenFileLabel = uilabel(app.TerahertzDatasetPanel);
            app.LoadOpenFileLabel.FontWeight = 'bold';
            app.LoadOpenFileLabel.Position = [11 140 98 22];
            app.LoadOpenFileLabel.Text = 'Load / Open File';

            % Create userDefinedEditField
            app.userDefinedEditField = uieditfield(app.TDSTab, 'text');
            app.userDefinedEditField.Enable = 'off';
            app.userDefinedEditField.Position = [289 368 61 22];

            % Create DeploySampleDataButton
            app.DeploySampleDataButton = uibutton(app.TDSTab, 'push');
            app.DeploySampleDataButton.ButtonPushedFcn = createCallbackFcn(app, @DeploySampleDataButtonPushed, true);
            app.DeploySampleDataButton.FontWeight = 'bold';
            app.DeploySampleDataButton.Position = [467 17 243 25];
            app.DeploySampleDataButton.Text = 'Deploy Sample Data';

            % Create RecipeNameEditFieldLabel
            app.RecipeNameEditFieldLabel = uilabel(app.TDSTab);
            app.RecipeNameEditFieldLabel.HorizontalAlignment = 'right';
            app.RecipeNameEditFieldLabel.Position = [21 401 78 22];
            app.RecipeNameEditFieldLabel.Text = 'Recipe Name';

            % Create RecipeNameEditField
            app.RecipeNameEditField = uieditfield(app.TDSTab, 'text');
            app.RecipeNameEditField.Position = [114 401 240 22];

            % Create DataFileExtensionDropDownLabel
            app.DataFileExtensionDropDownLabel = uilabel(app.TDSTab);
            app.DataFileExtensionDropDownLabel.HorizontalAlignment = 'right';
            app.DataFileExtensionDropDownLabel.Position = [20 368 109 22];
            app.DataFileExtensionDropDownLabel.Text = 'Data File Extension';

            % Create DataFileExtensionDropDown
            app.DataFileExtensionDropDown = uidropdown(app.TDSTab);
            app.DataFileExtensionDropDown.Items = {'dat', 'csv', 'tprj', 'txt', 'user defined'};
            app.DataFileExtensionDropDown.ValueChangedFcn = createCallbackFcn(app, @DataFileExtensionDropDownValueChanged, true);
            app.DataFileExtensionDropDown.Position = [143 368 126 22];
            app.DataFileExtensionDropDown.Value = 'dat';

            % Create SampleFileEditFieldLabel
            app.SampleFileEditFieldLabel = uilabel(app.TDSTab);
            app.SampleFileEditFieldLabel.HorizontalAlignment = 'right';
            app.SampleFileEditFieldLabel.Position = [30 51 68 22];
            app.SampleFileEditFieldLabel.Text = 'Sample File';

            % Create SampleFileEditField
            app.SampleFileEditField = uieditfield(app.TDSTab, 'text');
            app.SampleFileEditField.Position = [102 51 607 22];

            % Create AddRecipeButton
            app.AddRecipeButton = uibutton(app.TDSTab, 'push');
            app.AddRecipeButton.BackgroundColor = [1 1 1];
            app.AddRecipeButton.FontWeight = 'bold';
            app.AddRecipeButton.Position = [743 17 243 25];
            app.AddRecipeButton.Text = 'Add Recipe';

            % Create TPITab
            app.TPITab = uitab(app.TabGroup2);
            app.TPITab.Title = 'TPI';

            % Create RecipeDesignLabel
            app.RecipeDesignLabel = uilabel(app.DataRecipeTab);
            app.RecipeDesignLabel.FontSize = 14;
            app.RecipeDesignLabel.FontWeight = 'bold';
            app.RecipeDesignLabel.Position = [17 513 101 22];
            app.RecipeDesignLabel.Text = 'Recipe Design';

            % Create PrefixnumberstothedatasetnameLabel
            app.PrefixnumberstothedatasetnameLabel = uilabel(app.CaTxUIFigure);
            app.PrefixnumberstothedatasetnameLabel.HorizontalAlignment = 'center';
            app.PrefixnumberstothedatasetnameLabel.FontWeight = 'bold';
            app.PrefixnumberstothedatasetnameLabel.Position = [293 19 87 22];
            app.PrefixnumberstothedatasetnameLabel.Text = 'Number Prefix';

            % Create NumberPrefixSwitch
            app.NumberPrefixSwitch = uiswitch(app.CaTxUIFigure, 'slider');
            app.NumberPrefixSwitch.Position = [409 21 40 18];
            app.NumberPrefixSwitch.Value = 'On';

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