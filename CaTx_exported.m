classdef CaTx_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        CaTxUIFigure                   matlab.ui.Figure
        Image                          matlab.ui.control.Image
        exceptItemDropDown             matlab.ui.control.DropDown
        exceptItemDropDownLabel        matlab.ui.control.Label
        AttributueInclusionSwitch      matlab.ui.control.Switch
        AttributuesallocationLabel     matlab.ui.control.Label
        NumberPrefixSwitch             matlab.ui.control.Switch
        PrefixnumberstothedatasetnameLabel  matlab.ui.control.Label
        TabGroup                       matlab.ui.container.TabGroup
        MeasurementsandMetadataTab     matlab.ui.container.Tab
        DatasetControlPanel            matlab.ui.container.Panel
        Label                          matlab.ui.control.Label
        DeleteSourceWaveformButton     matlab.ui.control.Button
        TargetDatasetDropDown          matlab.ui.control.DropDown
        TargetWaveformDropDownLabel    matlab.ui.control.Label
        CopyButton                     matlab.ui.control.Button
        SourceDatasetDropDown          matlab.ui.control.DropDown
        SourceWaveformDropDownLabel    matlab.ui.control.Label
        FILEDLISTTOEditField           matlab.ui.control.NumericEditField
        toLabel                        matlab.ui.control.Label
        ofColumnsEditField             matlab.ui.control.NumericEditField
        ofColumnsEditFieldLabel        matlab.ui.control.Label
        ofColumnEditField              matlab.ui.control.NumericEditField
        ofColumnEditFieldLabel         matlab.ui.control.Label
        ColumnControlPanel             matlab.ui.container.Panel
        PlotDatasetsButton             matlab.ui.control.Button
        MoveButton_2                   matlab.ui.control.Button
        MoveButton                     matlab.ui.control.Button
        RemoveButton                   matlab.ui.control.Button
        MetadataPanel                  matlab.ui.container.Panel
        FileLabel                      matlab.ui.control.Label
        LOADMETAXLS_EditField          matlab.ui.control.EditField
        ImportMetadataFromXLSFileButton  matlab.ui.control.Button
        GenerateMetadataXLSFileButton  matlab.ui.control.Button
        UITable_Header                 matlab.ui.control.Table
        UITable_Measurement            matlab.ui.control.Table
        InstrumentsandUsersTab         matlab.ui.container.Tab
        AnonymousInstrumentProfile0Button  matlab.ui.control.Button
        DonotusecharacterindescriptionLabel  matlab.ui.control.Label
        User_MeasurementFieldToEditField  matlab.ui.control.NumericEditField
        toLabel_3                      matlab.ui.control.Label
        User_MeasurementFieldFromEditField  matlab.ui.control.NumericEditField
        MeasurementfieldfromLabel_2    matlab.ui.control.Label
        Ins_MeasurementFieldToEditField  matlab.ui.control.NumericEditField
        toLabel_2                      matlab.ui.control.Label
        Ins_MeasurementFieldFromEditField  matlab.ui.control.NumericEditField
        MeasurementfieldfromLabel      matlab.ui.control.Label
        AnonymousUserProfile0Button    matlab.ui.control.Button
        User_SelectionEditField        matlab.ui.control.NumericEditField
        SelectionLabel_2               matlab.ui.control.Label
        INS_SELECTIONEditField         matlab.ui.control.NumericEditField
        SelectionLabel                 matlab.ui.control.Label
        Remove_User_Col_Button         matlab.ui.control.Button
        Add_User_Col_Button            matlab.ui.control.Button
        REMOVE_INS_COL_Button          matlab.ui.control.Button
        ADD_INS_COL_Button             matlab.ui.control.Button
        User_LinkButton                matlab.ui.control.Button
        Ins_LinkButton                 matlab.ui.control.Button
        UserLabel                      matlab.ui.control.Label
        InstrumentLabel                matlab.ui.control.Label
        UITable_UserHeader             matlab.ui.control.Table
        UITable_User                   matlab.ui.control.Table
        UITable_InsHeader              matlab.ui.control.Table
        UITable_Ins                    matlab.ui.control.Table
        ImportthzFileButton            matlab.ui.control.Button
        ClearMemoryButton              matlab.ui.control.Button
        ConverterEngineDropDown        matlab.ui.control.DropDown
        ConverterEngineDropDownLabel   matlab.ui.control.Label
        ExportthzFileButton            matlab.ui.control.Button
        DEBUGMsgLabel                  matlab.ui.control.Label
        CaTxLabel                      matlab.ui.control.Label
        DeployDataButton               matlab.ui.control.Button
        FILESEditField                 matlab.ui.control.EditField
        ImportMeasurementButton        matlab.ui.control.Button
    end

    
    properties (Access = private)
        Tcell % cell array for table display, keep in mind that Tcell is not a table array
        Tcell_header % table header cell array
        Tcell_headerDefault % tablet default header cell array
        PRJ_count % Description
        fullpathname % Description
        filename;
        cellIndices % Description
        ins_profile % instrument profile number
        user_profile % user profile number
        TcellP1 % cell array for instrument profiles
        TcellP2 % cell array for user profiles
        totalMeasNum % total measurement number
        manualMode % Description
        thzVer = "1.00";
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
                TcellCompact = Tcell(:,1:10);
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
            Tcell_header = {'01: Number','02: Name','03: Description','04: Instrument Profile','05: User Profile','06: Date','07: Time','08: Mode','09: Coordinates',...
                '10: Metadata Description', '11: Metadata 1','12: Metadata 2','13: Metadata 3','14: Metadata 4','15: Metadata 5','16: Metadata 6','17: dotTHz Version',...
                '18: Dataset Description','19: Dataset 1','20: Dataset 2','21: Dataset 3','22: Dataset 4'
                }';

            Tcell_guideCol1 = {"1","HDF5","Category (name)","attribute (instrument)", "attribute (user)","attribute (date)","attribute (time)",...
                "attribute (mode)","attribute (coordinate)","attribute (mdDescription)","attribute (md1)","attribute (md2)","attribute (md3)",...
                "attribute (md4)","attribute (md5)","attribute (md6)","attribute (thzVer)","attribute (dsDescription)",...
                "dataset (ds1)","dataset (ds2)","dataset (ds3)","dataset (ds4)"
                }';

            Tcell_guideCol2 = {"2","HDF5","Data Format","string scalar", "string scalar","string scalar","string scalar",...
                "string scalar","numeric vector","string scalar","numeric value/vector, string scalar","numeric value/vector, string scalar","numeric value/vector, string scalar",...
                "numeric value/vector, string scalar","numeric value/vector, string scalar","numeric value/vector, string scalar","string scalar","string scalar",...
                "numeric matrix","numeric matrix","numeric matrix","numeric matrix"
                }';

            Tcell_guideCol3 = {"3","THz-TDS Example","Data Assignment Guide","", "","date","time",...
                "THz-TDS/Transmission","","thickness (mm), temperature (K), weight (mg)","0.520","293","50",...
                "","","*More metadata can be added if necessary.","1.00","Sample, Ref1:air, Ref2:PTFE","sample [time(ps); E.field(a.u.)]","Reference 1 [time(ps); E.field(a.u.)]","Reference 2 [time(ps); E.field(a.u.)]","*More datasets can be added if necessary.",...
                }';

            Tcell_guideCol4 = {"4","THz-Imaging Example","Data Assignment Guide","", "","date","time",...
                "THz-Imaging/Reflection","[x,y,z]","","","","",...
                "","","","1.00","Sample, Ref, Baseline","Sample [time(ps); E.field(a.u.)]","Reference [time(ps); E.field(a.u.)]","Baseline [time(ps); E.field(a.u.)]","",...
                }';

            Tcell_guideCol5 = {"5","Frequency-domain Datasets","Data Assignment Guide","", "","date","time",...
                "FMCW/Reflection","meta1, meta2, meta3, meta4","meta1","meta2","meta3","meta4",...
                "","","","1.00","da1, ds2, ds3, ds4","ds1 [frequency; amplitude; phase]","ds2 [frequency; amplitude; phase]","ds1 [frequency; amplitude; phase]","ds1 [frequency; amplitude; phase]",...
                }';

            Tcell_guideCol6 = {"6","Further Application","Data Assignment Guide","", "","date","time",...
                "APPLICATION1/Transmission","meta1, meta2","meta1","meta2","","",...
                "","","","1.01","da1, ds2","ds1 [row1; row2; row3; row4]","ds2 [row1; row2; row3; row4]","","",...
                }';

           Tcell_guideCol7 = {"7","CaTTrans_Focus Example","Data Assignment Guide","", "","","time",...
                "THz-Imaging/Reflection","","Thickness (mm), Refractive Index","4.78","1.72","",...
                "","","","1.00","Sample","Sample [time(ps); E.field(a.u.)]","","","",...
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
            addStyle(app.UITable_Measurement,sDGrBg,"row",[1,10,18]);

            addStyle(app.UITable_Header,sGrBg,"row",(2:5));
            addStyle(app.UITable_Header,sWtBg,"row",(6:17));
            addStyle(app.UITable_Header,sGrBg,"row",(19:22));
            addStyle(app.UITable_Header,sDGrBg,"row",[1,10,18]);

            insProfileHeader = {'1: Number', '2: Model', '3: Manufacturer', '4: Address'}';
            userProfileHeader = {'1: Number', '2: ORCID', '3: Name', '4: Email', '5: Affiliation'}';
            
            app.UITable_InsHeader.Data = cell2table(insProfileHeader);
            app.UITable_UserHeader.Data = cell2table(userProfileHeader);
            app.Tcell_header = Tcell_header;
            app.Tcell_headerDefault = Tcell_header;
            app.manualMode = 1;
            updateProfile(app);
        end

        % Button pushed function: ImportMeasurementButton
        function ImportMeasurementButtonPushed(app, event)
            [filename, pathname] = uigetfile('*.*','All Files(*,*)','MultiSelect','on');figure(app.CaTxUIFigure);
            % PRJ_count: number of project files imported
            PRJ_count = app.PRJ_count;
            
            if isequal(filename,0)||isequal(pathname,0)
                return;          
            end
            
            for idx = 1:length(filename)
                % if the imported file is already exist in the list,
                % just return
                for cnt = 1:PRJ_count
                    if isequal(app.filename{cnt},filename{idx})
                        return;
                    end
                end

                PRJ_count = PRJ_count + 1;

                fileinfo = strcat(pathname,filename{idx});
                app.filename{PRJ_count} = filename{idx};
                app.fullpathname{PRJ_count} = fileinfo;
                           
                allFileList = strjoin(app.filename,',');       
                app.FILESEditField.Value = allFileList;
            end


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
            app.manualMode = 0;

            updateProfile(app);

            func = str2func(TDSinstrument);
            Tcell = func(PRJ_count,fullpathname,DEBUGMsgLabel,uiFigure,Tcell);

            %assignin("base","ins_profilefile", app.ins_profile);


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
                app.UITable_Measurement.Data = [];
                app.UITable_Ins.Data = [];
                app.UITable_User.Data = [];
                app.ins_profile = [];
                app.user_profile = [];
                app.UITable_Header.Data = app.Tcell_headerDefault;
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
            dataType = [2 1 1 2 2, 2 2 2 2 1, 1 1 1 1 1, 1 2 1 2 2, 2 2]; % 1 for string, 0 for numbers, 2 for do-not-modify

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
                case 10
                    app.Tcell(10,:) = {newData};
                    mdList = split(newData,',');
                    Tcell_header = app.Tcell_header;
                    for idx = 1:6
                        mdDRow = 10; % metadata description row
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
                        dsDRow = 18; % dataset description row
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
            varsAttr = ["date","time","mode","coordinates","mdDescription","md1","md2","md3","md4","md5","md6","thzVer"];
            digitNum = ceil(log10(measNum+1));
            digitNumFormat = strcat('%0',num2str(digitNum),'d');

            % Are the attributes assigned to all datasets?
            if isequal(app.AttributueInclusionSwitch.Value,"All Measurements")
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
            attrItems = ["description","date","time","mode","coordinates","mdDescription",...
                "md1","md2","md3","md4","md5","md6","thzVer","dsDescription"];
            maxDatasetNum = 1000; % maximum number of datasets
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
            Tcell(10:16,:)=Tcellxls(4:10,:);
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
            end

            % remove the selected column
            Tcell(:,Indices(2)) = [];
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
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Get the file path for locating images
            pathToMLAPP = fileparts(mfilename('fullpath'));

            % Create CaTxUIFigure and hide until all components are created
            app.CaTxUIFigure = uifigure('Visible', 'off');
            app.CaTxUIFigure.Position = [100 100 1124 893];
            app.CaTxUIFigure.Name = 'CaTx';
            app.CaTxUIFigure.Icon = fullfile(pathToMLAPP, 'CaT_logo.png');

            % Create ImportMeasurementButton
            app.ImportMeasurementButton = uibutton(app.CaTxUIFigure, 'push');
            app.ImportMeasurementButton.ButtonPushedFcn = createCallbackFcn(app, @ImportMeasurementButtonPushed, true);
            app.ImportMeasurementButton.FontWeight = 'bold';
            app.ImportMeasurementButton.Position = [190 851 142 23];
            app.ImportMeasurementButton.Text = 'Import Measurement';

            % Create FILESEditField
            app.FILESEditField = uieditfield(app.CaTxUIFigure, 'text');
            app.FILESEditField.Position = [340 851 741 22];
            app.FILESEditField.Value = ' * Use below [Import .thz File] for .thz file loading.';

            % Create DeployDataButton
            app.DeployDataButton = uibutton(app.CaTxUIFigure, 'push');
            app.DeployDataButton.ButtonPushedFcn = createCallbackFcn(app, @DeployDataButtonPushed, true);
            app.DeployDataButton.FontWeight = 'bold';
            app.DeployDataButton.Position = [733 818 105 25];
            app.DeployDataButton.Text = 'Deploy Data';

            % Create CaTxLabel
            app.CaTxLabel = uilabel(app.CaTxUIFigure);
            app.CaTxLabel.FontSize = 38;
            app.CaTxLabel.FontWeight = 'bold';
            app.CaTxLabel.FontAngle = 'italic';
            app.CaTxLabel.Position = [87 812 98 50];
            app.CaTxLabel.Text = 'CaTx';

            % Create DEBUGMsgLabel
            app.DEBUGMsgLabel = uilabel(app.CaTxUIFigure);
            app.DEBUGMsgLabel.FontWeight = 'bold';
            app.DEBUGMsgLabel.Position = [846 819 238 22];
            app.DEBUGMsgLabel.Text = '';

            % Create ExportthzFileButton
            app.ExportthzFileButton = uibutton(app.CaTxUIFigure, 'push');
            app.ExportthzFileButton.ButtonPushedFcn = createCallbackFcn(app, @ExportthzFileButtonPushed, true);
            app.ExportthzFileButton.FontWeight = 'bold';
            app.ExportthzFileButton.Position = [887 18 194 50];
            app.ExportthzFileButton.Text = 'Export .thz File';

            % Create ConverterEngineDropDownLabel
            app.ConverterEngineDropDownLabel = uilabel(app.CaTxUIFigure);
            app.ConverterEngineDropDownLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.ConverterEngineDropDownLabel.HorizontalAlignment = 'right';
            app.ConverterEngineDropDownLabel.FontWeight = 'bold';
            app.ConverterEngineDropDownLabel.Position = [185 819 108 22];
            app.ConverterEngineDropDownLabel.Text = 'Converter Engine';

            % Create ConverterEngineDropDown
            app.ConverterEngineDropDown = uidropdown(app.CaTxUIFigure);
            app.ConverterEngineDropDown.Items = {'No engines available. Please check m files in .\Engines folder.'};
            app.ConverterEngineDropDown.FontWeight = 'bold';
            app.ConverterEngineDropDown.BackgroundColor = [0.9412 0.9412 0.9412];
            app.ConverterEngineDropDown.Position = [306 819 414 22];
            app.ConverterEngineDropDown.Value = 'No engines available. Please check m files in .\Engines folder.';

            % Create ClearMemoryButton
            app.ClearMemoryButton = uibutton(app.CaTxUIFigure, 'push');
            app.ClearMemoryButton.ButtonPushedFcn = createCallbackFcn(app, @ClearMemoryButtonPushed, true);
            app.ClearMemoryButton.FontWeight = 'bold';
            app.ClearMemoryButton.Position = [42 18 130 50];
            app.ClearMemoryButton.Text = 'Clear Memory';

            % Create ImportthzFileButton
            app.ImportthzFileButton = uibutton(app.CaTxUIFigure, 'push');
            app.ImportthzFileButton.ButtonPushedFcn = createCallbackFcn(app, @ImportthzFileButtonPushed, true);
            app.ImportthzFileButton.FontWeight = 'bold';
            app.ImportthzFileButton.Position = [186 18 130 50];
            app.ImportthzFileButton.Text = 'Import .thz File';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.CaTxUIFigure);
            app.TabGroup.Position = [24 81 1075 723];

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
            app.MetadataPanel.Position = [34 13 258 127];

            % Create GenerateMetadataXLSFileButton
            app.GenerateMetadataXLSFileButton = uibutton(app.MetadataPanel, 'push');
            app.GenerateMetadataXLSFileButton.ButtonPushedFcn = createCallbackFcn(app, @GenerateMetadataXLSFileButtonPushed, true);
            app.GenerateMetadataXLSFileButton.Position = [14 73 231 25];
            app.GenerateMetadataXLSFileButton.Text = 'Generate Metadata XLS File';

            % Create ImportMetadataFromXLSFileButton
            app.ImportMetadataFromXLSFileButton = uibutton(app.MetadataPanel, 'push');
            app.ImportMetadataFromXLSFileButton.ButtonPushedFcn = createCallbackFcn(app, @ImportMetadataFromXLSFileButtonPushed, true);
            app.ImportMetadataFromXLSFileButton.Position = [14 41 231 25];
            app.ImportMetadataFromXLSFileButton.Text = 'Import Metadata From XLS File';

            % Create LOADMETAXLS_EditField
            app.LOADMETAXLS_EditField = uieditfield(app.MetadataPanel, 'text');
            app.LOADMETAXLS_EditField.Editable = 'off';
            app.LOADMETAXLS_EditField.BackgroundColor = [0.9412 0.9412 0.9412];
            app.LOADMETAXLS_EditField.Position = [48 11 194 22];

            % Create FileLabel
            app.FileLabel = uilabel(app.MetadataPanel);
            app.FileLabel.Position = [20 11 28 22];
            app.FileLabel.Text = 'File:';

            % Create ColumnControlPanel
            app.ColumnControlPanel = uipanel(app.MeasurementsandMetadataTab);
            app.ColumnControlPanel.Title = 'Column Control';
            app.ColumnControlPanel.Position = [308 13 231 127];

            % Create RemoveButton
            app.RemoveButton = uibutton(app.ColumnControlPanel, 'push');
            app.RemoveButton.ButtonPushedFcn = createCallbackFcn(app, @RemoveButtonPushed, true);
            app.RemoveButton.Position = [15 10 204 25];
            app.RemoveButton.Text = 'Remove';

            % Create MoveButton
            app.MoveButton = uibutton(app.ColumnControlPanel, 'push');
            app.MoveButton.ButtonPushedFcn = createCallbackFcn(app, @MoveButtonPushed, true);
            app.MoveButton.Position = [15 73 96 25];
            app.MoveButton.Text = 'Move <<';

            % Create MoveButton_2
            app.MoveButton_2 = uibutton(app.ColumnControlPanel, 'push');
            app.MoveButton_2.ButtonPushedFcn = createCallbackFcn(app, @MoveButton_2Pushed, true);
            app.MoveButton_2.Position = [123 73 96 25];
            app.MoveButton_2.Text = '>>Move';

            % Create PlotDatasetsButton
            app.PlotDatasetsButton = uibutton(app.ColumnControlPanel, 'push');
            app.PlotDatasetsButton.ButtonPushedFcn = createCallbackFcn(app, @PlotDatasetsButtonPushed, true);
            app.PlotDatasetsButton.Position = [15 42 204 25];
            app.PlotDatasetsButton.Text = 'Plot Datasets';

            % Create DatasetControlPanel
            app.DatasetControlPanel = uipanel(app.MeasurementsandMetadataTab);
            app.DatasetControlPanel.Title = 'Dataset Control';
            app.DatasetControlPanel.Position = [554 13 486 127];

            % Create ofColumnEditFieldLabel
            app.ofColumnEditFieldLabel = uilabel(app.DatasetControlPanel);
            app.ofColumnEditFieldLabel.HorizontalAlignment = 'right';
            app.ofColumnEditFieldLabel.Position = [195 75 60 22];
            app.ofColumnEditFieldLabel.Text = 'of Column';

            % Create ofColumnEditField
            app.ofColumnEditField = uieditfield(app.DatasetControlPanel, 'numeric');
            app.ofColumnEditField.Limits = [1 Inf];
            app.ofColumnEditField.ValueDisplayFormat = '%.0f';
            app.ofColumnEditField.Position = [260 75 55 22];
            app.ofColumnEditField.Value = 1;

            % Create ofColumnsEditFieldLabel
            app.ofColumnsEditFieldLabel = uilabel(app.DatasetControlPanel);
            app.ofColumnsEditFieldLabel.HorizontalAlignment = 'right';
            app.ofColumnsEditFieldLabel.Position = [193 40 73 22];
            app.ofColumnsEditFieldLabel.Text = 'of Columns (';

            % Create ofColumnsEditField
            app.ofColumnsEditField = uieditfield(app.DatasetControlPanel, 'numeric');
            app.ofColumnsEditField.Limits = [1 Inf];
            app.ofColumnsEditField.ValueDisplayFormat = '%.0f';
            app.ofColumnsEditField.Position = [272 41 55 22];
            app.ofColumnsEditField.Value = 1;

            % Create toLabel
            app.toLabel = uilabel(app.DatasetControlPanel);
            app.toLabel.HorizontalAlignment = 'right';
            app.toLabel.Position = [329 40 12 22];
            app.toLabel.Text = '-';

            % Create FILEDLISTTOEditField
            app.FILEDLISTTOEditField = uieditfield(app.DatasetControlPanel, 'numeric');
            app.FILEDLISTTOEditField.Limits = [1 Inf];
            app.FILEDLISTTOEditField.ValueDisplayFormat = '%.0f';
            app.FILEDLISTTOEditField.Position = [349 40 55 22];
            app.FILEDLISTTOEditField.Value = 1;

            % Create SourceWaveformDropDownLabel
            app.SourceWaveformDropDownLabel = uilabel(app.DatasetControlPanel);
            app.SourceWaveformDropDownLabel.HorizontalAlignment = 'right';
            app.SourceWaveformDropDownLabel.Position = [3 75 101 22];
            app.SourceWaveformDropDownLabel.Text = 'Source Waveform';

            % Create SourceDatasetDropDown
            app.SourceDatasetDropDown = uidropdown(app.DatasetControlPanel);
            app.SourceDatasetDropDown.Items = {'ds1', 'ds2', 'ds3', 'ds4'};
            app.SourceDatasetDropDown.ItemsData = {'19', '20', '21', '22'};
            app.SourceDatasetDropDown.Position = [111 75 81 22];
            app.SourceDatasetDropDown.Value = '19';

            % Create CopyButton
            app.CopyButton = uibutton(app.DatasetControlPanel, 'push');
            app.CopyButton.ButtonPushedFcn = createCallbackFcn(app, @CopyButtonPushed, true);
            app.CopyButton.Position = [204 10 261 24];
            app.CopyButton.Text = 'Copy';

            % Create TargetWaveformDropDownLabel
            app.TargetWaveformDropDownLabel = uilabel(app.DatasetControlPanel);
            app.TargetWaveformDropDownLabel.HorizontalAlignment = 'right';
            app.TargetWaveformDropDownLabel.Position = [4 41 96 22];
            app.TargetWaveformDropDownLabel.Text = 'Target Waveform';

            % Create TargetDatasetDropDown
            app.TargetDatasetDropDown = uidropdown(app.DatasetControlPanel);
            app.TargetDatasetDropDown.Items = {'ds1', 'ds2', 'ds3', 'ds4'};
            app.TargetDatasetDropDown.ItemsData = {'19', '20', '21', '22'};
            app.TargetDatasetDropDown.Position = [112 41 81 22];
            app.TargetDatasetDropDown.Value = '20';

            % Create DeleteSourceWaveformButton
            app.DeleteSourceWaveformButton = uibutton(app.DatasetControlPanel, 'push');
            app.DeleteSourceWaveformButton.ButtonPushedFcn = createCallbackFcn(app, @DeleteSourceWaveformButtonPushed, true);
            app.DeleteSourceWaveformButton.Position = [44 10 153 24];
            app.DeleteSourceWaveformButton.Text = 'Delete Source Waveform';

            % Create Label
            app.Label = uilabel(app.DatasetControlPanel);
            app.Label.Position = [408 41 25 22];
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

            % Create PrefixnumberstothedatasetnameLabel
            app.PrefixnumberstothedatasetnameLabel = uilabel(app.CaTxUIFigure);
            app.PrefixnumberstothedatasetnameLabel.HorizontalAlignment = 'center';
            app.PrefixnumberstothedatasetnameLabel.Position = [689 43 82 22];
            app.PrefixnumberstothedatasetnameLabel.Text = 'Number Prefix';

            % Create NumberPrefixSwitch
            app.NumberPrefixSwitch = uiswitch(app.CaTxUIFigure, 'slider');
            app.NumberPrefixSwitch.Position = [798 45 40 18];

            % Create AttributuesallocationLabel
            app.AttributuesallocationLabel = uilabel(app.CaTxUIFigure);
            app.AttributuesallocationLabel.HorizontalAlignment = 'center';
            app.AttributuesallocationLabel.Position = [429 18 110 22];
            app.AttributuesallocationLabel.Text = 'Attributue Inclusion:';

            % Create AttributueInclusionSwitch
            app.AttributueInclusionSwitch = uiswitch(app.CaTxUIFigure, 'slider');
            app.AttributueInclusionSwitch.Items = {'All Measurements', 'Only First,'};
            app.AttributueInclusionSwitch.Position = [645 20 41 18];
            app.AttributueInclusionSwitch.Value = 'All Measurements';

            % Create exceptItemDropDownLabel
            app.exceptItemDropDownLabel = uilabel(app.CaTxUIFigure);
            app.exceptItemDropDownLabel.HorizontalAlignment = 'right';
            app.exceptItemDropDownLabel.Position = [745 18 67 22];
            app.exceptItemDropDownLabel.Text = 'except Item';

            % Create exceptItemDropDown
            app.exceptItemDropDown = uidropdown(app.CaTxUIFigure);
            app.exceptItemDropDown.Items = {'7', '9', '11', '12', '13', '14', '15', '16'};
            app.exceptItemDropDown.Position = [818 18 48 22];
            app.exceptItemDropDown.Value = '7';

            % Create Image
            app.Image = uiimage(app.CaTxUIFigure);
            app.Image.Position = [25 816 72 72];
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