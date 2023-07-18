classdef CaTSper_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        CatsperUIFigure                 matlab.ui.Figure
        DEPLOYButton                    matlab.ui.control.Button
        Image                           matlab.ui.control.Image
        ProjectsEditField               matlab.ui.control.EditField
        ImportTHzFilesButton            matlab.ui.control.Button
        CaTSperLabel                    matlab.ui.control.Label
        SAVETDFDDMButton                matlab.ui.control.Button
        CLEARMEMORYButton               matlab.ui.control.Button
        DEBUGMsgLabel                   matlab.ui.control.Label
        SystemStatusLabel               matlab.ui.control.Label
        TabGroup                        matlab.ui.container.TabGroup
        TimeDomainTDTab                 matlab.ui.container.Tab
        PLOTFORCUSTOMISATIONButton_TD   matlab.ui.control.Button
        CHECKDYNAMICRANGEButton         matlab.ui.control.Button
        ASSIGNButtonTD                  matlab.ui.control.Button
        SaveData_TD                     matlab.ui.control.Button
        LoadData_TD                     matlab.ui.control.Button
        SampleDetailsPanel              matlab.ui.container.Panel
        RefSwitchButton                 matlab.ui.control.Button
        Ref2Lamp                        matlab.ui.control.Lamp
        Ref2LampLabel                   matlab.ui.control.Label
        Ref1Lamp                        matlab.ui.control.Lamp
        Ref1LampLabel                   matlab.ui.control.Label
        RefDescriptionEditField         matlab.ui.control.EditField
        RefDescriptionEditFieldLabel    matlab.ui.control.Label
        InstrumentEditField             matlab.ui.control.EditField
        InstrumentEditFieldLabel        matlab.ui.control.Label
        ScanTimeEditField               matlab.ui.control.EditField
        ScanTimeEditFieldLabel          matlab.ui.control.Label
        DescriptionEditField            matlab.ui.control.EditField
        DescriptionEditFieldLabel       matlab.ui.control.Label
        RefractiveIndexEditField        matlab.ui.control.NumericEditField
        RefractiveIndexEditFieldLabel   matlab.ui.control.Label
        stinternalreflectionpsEditField  matlab.ui.control.NumericEditField
        stinternalreflectionpsEditFieldLabel  matlab.ui.control.Label
        TimedelaypsEditField            matlab.ui.control.NumericEditField
        TimedelaypsEditFieldLabel       matlab.ui.control.Label
        ThicknessmmEditField            matlab.ui.control.NumericEditField
        ThicknessmmEditFieldLabel       matlab.ui.control.Label
        GRIDOFFButton                   matlab.ui.control.StateButton
        JETCOLORMAPButton               matlab.ui.control.StateButton
        LEGENDButton_2                  matlab.ui.control.StateButton
        ButtonGroupTD                   matlab.ui.container.ButtonGroup
        BothButtonTD                    matlab.ui.control.RadioButton
        SampleButtonTD                  matlab.ui.control.RadioButton
        ReferenceButtonTD               matlab.ui.control.RadioButton
        ALLButton                       matlab.ui.control.Button
        PLOT2TDButton                   matlab.ui.control.Button
        FFTSettingsPanel                matlab.ui.container.Panel
        UnwrappingLabel                 matlab.ui.control.Label
        StartFrequencyTHzEditField      matlab.ui.control.NumericEditField
        StartFrequencyTHzEditFieldLabel  matlab.ui.control.Label
        SpectralResolutionTHzLabel      matlab.ui.control.Label
        Label                           matlab.ui.control.Label
        MinTimeEditField                matlab.ui.control.NumericEditField
        MinTimeEditFieldLabel           matlab.ui.control.Label
        psLabel_4                       matlab.ui.control.Label
        WindowFunctionLabel             matlab.ui.control.Label
        FFTUpsamplingLabel              matlab.ui.control.Label
        FrequencyrangeLabel             matlab.ui.control.Label
        AUTOWINDOWButton                matlab.ui.control.StateButton
        orLabel                         matlab.ui.control.Label
        ZeroFillingpowerofSpinner       matlab.ui.control.Spinner
        ZeroFillingpowerofSpinnerLabel  matlab.ui.control.Label
        ApodizationFunctionDropDown     matlab.ui.control.DropDown
        ApodizationFunctionDropDownLabel  matlab.ui.control.Label
        TRANSFORMButton                 matlab.ui.control.Button
        at1stinternalreflectionsLabel   matlab.ui.control.Label
        MaxTimeEditField                matlab.ui.control.NumericEditField
        MaxTimeLabel                    matlab.ui.control.Label
        THzLabel_4                      matlab.ui.control.Label
        MaxFreqEditField                matlab.ui.control.NumericEditField
        MaxFreqEditFieldLabel           matlab.ui.control.Label
        MinFreqEditField                matlab.ui.control.NumericEditField
        MinFreqEditFieldLabel           matlab.ui.control.Label
        PLOT1TDButton                   matlab.ui.control.Button
        SelectionListBox                matlab.ui.control.ListBox
        SelectionListBoxLabel           matlab.ui.control.Label
        DELButton                       matlab.ui.control.Button
        ADDButton                       matlab.ui.control.Button
        MeasurementListBox              matlab.ui.control.ListBox
        MeasurementListBoxLabel         matlab.ui.control.Label
        UIAxes1                         matlab.ui.control.UIAxes
        UIAxes2                         matlab.ui.control.UIAxes
        FrequencyDomainFDTab            matlab.ui.container.Tab
        PLOTFORCUSTOMISATIONButton_FD1  matlab.ui.control.Button
        GRIDOFFButton_2                 matlab.ui.control.StateButton
        dataManipulationButton          matlab.ui.control.Button
        FDDatatoLabel                   matlab.ui.control.Label
        JETCOLORMAPButton_2             matlab.ui.control.StateButton
        LEGENDButton                    matlab.ui.control.StateButton
        LoadData_FD                     matlab.ui.control.Button
        SaveData_FD                     matlab.ui.control.Button
        MagPhaseButtonGroup             matlab.ui.container.ButtonGroup
        PhaseButton                     matlab.ui.control.RadioButton
        AmplitudeButton                 matlab.ui.control.RadioButton
        YscaleButtonGroup               matlab.ui.container.ButtonGroup
        linearButton                    matlab.ui.control.RadioButton
        logButton                       matlab.ui.control.RadioButton
        FDDataAnalysisPanel             matlab.ui.container.Panel
        GRIDOFFButton_3                 matlab.ui.control.StateButton
        RealImagButtonGroup             matlab.ui.container.ButtonGroup
        ImaginaryButton                 matlab.ui.control.RadioButton
        RealButton                      matlab.ui.control.RadioButton
        PLOTFORCUSTOMISATIONButton_FD2  matlab.ui.control.Button
        YscaleButtonGroup_2             matlab.ui.container.ButtonGroup
        linearButton_2                  matlab.ui.control.RadioButton
        logButton_2                     matlab.ui.control.RadioButton
        PlotDataButtonGroup             matlab.ui.container.ButtonGroup
        DIELECTRICCONSTANTButton        matlab.ui.control.ToggleButton
        REFRACTIVEINDEXButton           matlab.ui.control.ToggleButton
        ABSORPTIONButton                matlab.ui.control.ToggleButton
        TRANSMITTANCEButton             matlab.ui.control.ToggleButton
        FDSelectionListBox_2            matlab.ui.control.ListBox
        FDSelectionListBox_2Label       matlab.ui.control.Label
        CALCULATEOPTICALPARAMATERSButton  matlab.ui.control.Button
        MultipleReflectionCountPanel    matlab.ui.container.Panel
        SampleNMREditField              matlab.ui.control.NumericEditField
        SampleEditField_2Label          matlab.ui.control.Label
        RefNMREditField                 matlab.ui.control.NumericEditField
        RefEditField_2Label             matlab.ui.control.Label
        ThicknessmmPanel                matlab.ui.container.Panel
        SampleEditField                 matlab.ui.control.NumericEditField
        SampleEditFieldLabel            matlab.ui.control.Label
        RefEditField                    matlab.ui.control.NumericEditField
        RefEditFieldLabel               matlab.ui.control.Label
        DescriptionEditField_FD         matlab.ui.control.EditField
        DescriptionEditField_2Label     matlab.ui.control.Label
        DELFDButton_2                   matlab.ui.control.Button
        ADDFDButton_2                   matlab.ui.control.Button
        ALLFDButton_2                   matlab.ui.control.Button
        MagPhaseButtonGroup_2           matlab.ui.container.ButtonGroup
        PhaseButton_2                   matlab.ui.control.RadioButton
        AmplitudeButton_2               matlab.ui.control.RadioButton
        PLOT2FDButton_2                 matlab.ui.control.Button
        PLOT1FDButton_2                 matlab.ui.control.Button
        ASSIGNButtonFD                  matlab.ui.control.Button
        REMOVEALLButton                 matlab.ui.control.Button
        REMOVEButton                    matlab.ui.control.Button
        ButtonGroupFD                   matlab.ui.container.ButtonGroup
        BothButtonFD                    matlab.ui.control.RadioButton
        SampleButtonFD                  matlab.ui.control.RadioButton
        ReferenceButtonFD               matlab.ui.control.RadioButton
        FDSelectionListBox              matlab.ui.control.ListBox
        FDSelectionListBoxLabel         matlab.ui.control.Label
        DELFDButton                     matlab.ui.control.Button
        ADDFDButton                     matlab.ui.control.Button
        ALLFDButton                     matlab.ui.control.Button
        FDListListBox                   matlab.ui.control.ListBox
        FDListListBoxLabel              matlab.ui.control.Label
        PLOT2FDButton                   matlab.ui.control.Button
        PLOT1FDButton                   matlab.ui.control.Button
        UIAxes4                         matlab.ui.control.UIAxes
        UIAxes3                         matlab.ui.control.UIAxes
        DataManipulationDMTab           matlab.ui.container.Tab
        JETCOLORMAPButton_DM            matlab.ui.control.StateButton
        DMTabGroup                      matlab.ui.container.TabGroup
        FrequencyBaseTab                matlab.ui.container.Tab
        MeasurementEditField            matlab.ui.control.EditField
        MeasurementEditFieldLabel       matlab.ui.control.Label
        YLabelEditField                 matlab.ui.control.EditField
        YLabelEditFieldLabel            matlab.ui.control.Label
        XLabelEditField                 matlab.ui.control.EditField
        XLabelEditFieldLabel            matlab.ui.control.Label
        YaxisDataEditField_2            matlab.ui.control.EditField
        YaxisDataEditField_2Label       matlab.ui.control.Label
        GetDatafromFrequencyTHzEditField  matlab.ui.control.EditField
        GetDatafromFrequencyTHzEditFieldLabel  matlab.ui.control.Label
        XaxisDataEditField              matlab.ui.control.EditField
        XaxisDataEditFieldLabel         matlab.ui.control.Label
        PLOTButton_2                    matlab.ui.control.Button
        REARRANGEDATAButton             matlab.ui.control.Button
        DISPLAYXLINESButton             matlab.ui.control.Button
        PeakBaseTab                     matlab.ui.container.Tab
        MinPeakProminenceEditField      matlab.ui.control.NumericEditField
        MinPeakProminenceEditFieldLabel  matlab.ui.control.Label
        MeasurementEditField_2          matlab.ui.control.EditField
        MeasurementEditField_2Label     matlab.ui.control.Label
        YLabelEditField_2               matlab.ui.control.EditField
        YLabelEditField_2Label          matlab.ui.control.Label
        XLabelEditField_2               matlab.ui.control.EditField
        XLabelEditField_2Label          matlab.ui.control.Label
        YaxisDataEditField_3            matlab.ui.control.EditField
        YaxisDataEditField_3Label       matlab.ui.control.Label
        XaxisDataEditField_2            matlab.ui.control.EditField
        XaxisDataEditField_2Label       matlab.ui.control.Label
        LowerLimitTHzEditField          matlab.ui.control.NumericEditField
        LowerLimitTHzEditFieldLabel     matlab.ui.control.Label
        PeakNumSpinner                  matlab.ui.control.Spinner
        PeakNumSpinnerLabel             matlab.ui.control.Label
        PLOTButton_3                    matlab.ui.control.Button
        REARRANGEDATAButton_2           matlab.ui.control.Button
        SaveData_DM                     matlab.ui.control.Button
        ASSIGNButtonDM                  matlab.ui.control.Button
        STEP1Panel                      matlab.ui.container.Panel
        PLOTmeanandrangeButton          matlab.ui.control.Button
        DPlotFrequencyxaxisPanel        matlab.ui.container.Panel
        DplotdoesnotsupportthebelowextractingfunctionLabel  matlab.ui.control.Label
        data3DDropDown                  matlab.ui.control.DropDown
        dataDropDownLabel               matlab.ui.control.Label
        PLOT1_3DButton                  matlab.ui.control.Button
        exABABCetcLabel                 matlab.ui.control.Label
        NumberofDataEditField           matlab.ui.control.NumericEditField
        NumberofDataEditFieldLabel      matlab.ui.control.Label
        AvailableDataSetEditField       matlab.ui.control.EditField
        AvailableDataSetEditFieldLabel  matlab.ui.control.Label
        IMPORTALLDATAButton             matlab.ui.control.Button
        CALCULATEButton_2               matlab.ui.control.Button
        CforDropDown                    matlab.ui.control.DropDown
        CforDropDownLabel               matlab.ui.control.Label
        BforDropDown                    matlab.ui.control.DropDown
        BforDropDownLabel               matlab.ui.control.Label
        PLOTindividualdatasetsButton    matlab.ui.control.Button
        YaxisDataFormulationEditField   matlab.ui.control.EditField
        YaxisDataFormulationEditFieldLabel  matlab.ui.control.Label
        XaxisDataDropDown               matlab.ui.control.DropDown
        XaxisDataDropDownLabel          matlab.ui.control.Label
        DefinevariablesLabel            matlab.ui.control.Label
        AforDropDown                    matlab.ui.control.DropDown
        AforDropDownLabel               matlab.ui.control.Label
        SourceDataSetEditField          matlab.ui.control.EditField
        SourceDataSetEditFieldLabel     matlab.ui.control.Label
        UIAxes9                         matlab.ui.control.UIAxes
        UIAxes10                        matlab.ui.control.UIAxes
    end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CaTSper/ Cambridge Terahertz Spectrum Analyser
% The dotTHz project, 2023 Terahertz Applications Group                 
% Department of Chemical Engineering and Biotechnology
% University of Cambridge, UK (Prof Axel Zeitler's group)
%
% <<Version information>>
% 
% <<Acknowledgement>>
% CaTSper source code is under MIT license
% <<Contact>>
% https://github.com/CamTHz  - online repository
% https://thz.ceb.cam.ac.uk  - research group website
% Lead developer: Jongmin Lee, jl2112@cam.ac.uk
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This in-line code annotation of CaTSper v2.0 aims to provide a detailed explanation of the
% script, function and processes of the CaTSper app
% Definitions of parameters are not annotated for conciseness.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    properties (Access = public)
        fullpathname % Terapulse project file name and folder information
        filename % Terapulse project file name
        TD_data %time domain data extracted from HDF5 project file
        TD_select %time domain measurment selection
        TD_config % TD to FD transformation configuration
        FD_data %frequency data transfered through DFT
        FD_select  %frequency data selection
        FD_select_2  %frequency data selection in FD data analysis section
        FD_config
        DM_count % the number of data manipulation data
        DM_data % data manipluation data
        DM_peaks % data MAnipulation peaks 
        PRJ_count % the number of project files imported
    end
    
    properties (Access = private)
        DialogApp % Dialog box app
    end
    
    methods (Access = private)
        % TDanalysisUpdate calculates and stores the effective refractive index and
        % the time delay for one internal reflection to occur for one
        % sample measurement    
        function TDanalysisUpdate(app,TDindex)
            % extracting the thickness value from the imported time
            % domain data for one measurement
            thickness = app.TD_data.settings{TDindex}.thickness;
            % extracting the time delay value from the imported time
            % domain data for one measurement
            delta_t = app.TD_data.settings{TDindex}.timeDelay;
            
            % recalculate
            % the following is performed provided the thickness value does not equal to 0
            if ~isequal(thickness,0)
                % calculate time domain effective refractive index, and
                % round the value to 4 s.f. (3 d.p. equivalent)
                % time delay value is in units of pico seconds
                % thickness value is in units of milimetre
                n_eff = round((delta_t*10^-12*3e8/(thickness*10^-3) + 1)*1000)/1000;
                % calculate the time delay for pulse to reach detector,
                % when one internal reflection occurs
                % time delay with one internation reflection = time delay
                % for pulse travelling straight through sample + time delay
                % for pulse to travel a distance equals to two times the
                % sample thickness
                % the second term is calculated from thickness information and the n_eff value
                % determined from above
                etl_t = delta_t + 2*thickness*10^-3*n_eff/3e8*10^12;
            else
                % if thickness value is zero, set values to zero automatically
                n_eff = 0;
                mtpRelection = 0;
            end

            
            % update information
            app.TD_data.settings{TDindex}.refractiveIndex = n_eff;
            app.TD_data.settings{TDindex}.internalReflection = etl_t;
            
            % display update
            app.RefractiveIndexEditField.Value = n_eff;
            app.stinternalreflectionpsEditField.Value = etl_t;
        end
        
        % FDdataDel empties values in row number 'FDindex' for
        % different parameters associated with the frequency domain (FD) tab
        % when certain conditions are met
        function FDdataDel(app,FDindex)
            app.FD_data.sampleList(FDindex) = [];
            app.FD_data.settings(FDindex) = [];
            app.FD_data.frequency(FDindex) = [];
            app.FD_data.ffd_references(FDindex) = [];
            app.FD_data.ffd_samples(FDindex) = [];
            app.FD_data.ref_amplitude(FDindex) = [];
            app.FD_data.ref_phase(FDindex) = [];
            app.FD_data.sam_amplitude(FDindex) = [];
            app.FD_data.sam_phase(FDindex) = [];
            app.FD_data.transmit_amplitude(FDindex) = [];
            app.FD_data.transmit_phase(FDindex) = [];
            
            if isfield(app.FD_data,'absorptions')
               app.FD_data.absorption(FDindex) = [];
                app.FD_data.refractiveIndex(FDindex) = [];
                app.FD_data.eReal(FDindex) = [];
                app.FD_data.eImag(FDindex) = [];
            end
             
            % provided the array 'app.FD_data.settings' is not empty,
            % empty following data fields
            if ~isempty(app.FD_data.settings)
                app.FD_data.settings(FDindex) = [];
            end
            
        end
        
        % TDdataDel empties arrays associated with the time domain (TD) tab
        function TDdataDel(app)
            app.TD_data = [];
            app.MeasurementListBox.Items(:) = [];
            app.SelectionListBox.Items(:) = [];
        end
        
        % plotTD_data plots the time domain data, choices can be made on plotting reference measurements only,
        % sample measurements only or both reference and sample measurements;
        % customisation on graph appearance (e.g. gridlines) can be made
        function plotTD_data(app,axesNum)
            
            plotList = app.TD_select;
            plotType = app.ButtonGroupTD.SelectedObject.Text;
            cnt = 1;
            lgd = {};
            
            if isequal(axesNum,"NEW")
                % Create UIFigure and hide until all components are created
                fig = figure('Visible', 'on');
                fig.Position = [100 100 850 500];
                fig.Name = "CaTSPer Time-domain Data";
                % Create UIAxes
                ax = uiaxes(fig);
                xlabel(ax,"Time (ps)");
                ylabel(ax,"E_{field intensity} (a.u.)");
                ax.BoxStyle = "full";
                ax.Position = [10 10 800 450];
            else
                ax = axesNum;
                % deleting graphics objects, that are specified by 'ax', from
                % the axes
                cla(ax)
            end
            
            % reset 'NO LEGEND', 'JET COLORMAP'
            app.LEGENDButton_2.Value = 0;
            app.JETCOLORMAPButton.Value = 0;
            

            % deleting the legend
            legend(ax,'off');
            hold(ax,"on")
            axis(ax,"tight");
            % specifying number of different colours required for plotting
            % as the number of items to be plotted
            colorNum = length(plotList);
            
            % if 'app.GRIDOFFButton.Value' = 1 (i.e. the button on the app
            % is pressed), gridlines on the graph is turned off; otherwise,
            % gridlines are displayed on the graphs
            if app.GRIDOFFButton.Value
                grid(ax,"off")
            else
                grid(ax,"on")
            end
            
            % if 'Both' is selected for the plot type, double the number of
            % colours required for graph plotting, since for each sample, both the
            % reference and the sample measurement will be plotted
            if isequal(plotType,'Both')
                colorNum = colorNum * 2;
            end
            
            % plotting all selected measurements (sample only,
            % reference only or both sample and reference, depends on what one
            % selects) in time domain
            for idx = plotList
                refOption = app.TD_data.settings{idx}.refOption;

                if isequal(refOption,0)
                    warning('No available reference dataset')
                    return;
                end

                refIdx = refOption*2-1;
                % extracting time data
                td_base = app.TD_data.references{idx,refIdx};
                % extracting corresponding electric field intensity values
                % for reference measurement
                td_reference = app.TD_data.references{idx,refIdx+1};
                % extracting corresponding electric field intensity values
                % for sample measurement
                td_sample = app.TD_data.samples{idx,2};
                % extracting sample name
                sampleID = strjoin(app.TD_data.sampleList{idx});
%                 assignin('base',"td_Base",td_base);
%                 assignin('base',"td_sample",td_sample);
                
                % plotting graphs according one's selection
                switch plotType
                    % plotting sample measurements only
                    case 'Sample'
                      plot(ax,td_base,td_sample,'linewidth',1);
                      lgd{cnt} = sampleID;
                      cnt = cnt + 1;
                    % plotting reference measurments only
                    case 'Reference'
                      plot(ax,td_base,td_reference,'linewidth',1);
                    % plotting both sample and reference measurements
                    otherwise
                      plot(ax,td_base,td_reference,td_base,td_sample,...
                          'linewidth',1);
                end
            end
            
            % if only sample measurements are plotted, automatically display legend
            % values as the measurement names
            if isequal(plotType,'Sample')
                legend(ax,(lgd),'Interpreter','none');
            end
            % the colour of each line is set by the color map
            % auto-generated by the 'lines' function, which is a function of
            % the required number of colours
            ax.ColorOrder = lines(colorNum);
            hold(ax,"off")  
            
            
        end
        
        % plotFD_data plots the frequency domain values, choices can be made on plotting reference 
        % measurements only, sample measurements only or both reference and sample measurements,
        % customisation on graph appearance (e.g. gridlines) can be made
        function plotFD_data(app,axesNum)
            % extract datasets that are to be plotted
            plotList = app.FD_select;
            % extracting choice of plotting reference measurement only,
            % sample measurement only or both reference and sample
            % measurements
            plotType = app.ButtonGroupFD.SelectedObject.Text;
            % extracting choice of plotting amplitude or phase values
            plotInfo = app.MagPhaseButtonGroup.SelectedObject.Text;
            % extracting choice of plotting in log or linear scale
            Yscale = app.YscaleButtonGroup.SelectedObject.Text;
            cnt = 1;
            lgd = {};
            
            if isequal(axesNum,"NEW")
                % Create UIFigure and hide until all components are created
                fig = figure('Visible', 'on');
                fig.Position = [100 100 850 500];
                fig.Name = "CaTSPer Frequency-domain Data";
                % Create UIAxes
                ax = uiaxes(fig);
                xlabel(ax,"Frequency (THz)");
                ax.BoxStyle = "full";
                ax.Position = [10 10 800 450];
            else
                ax = axesNum;
            end
            
            % deleting graphics objects, that are specified by 'ax', from
            % the axes
            cla(ax)
            % deleting the legend
            legend(ax,'off');
            hold(ax,"on")
            % setting y-axis scale based on the selected choice of log or
            % linear
            ax.YScale = (Yscale);
            % the colour of each line is set by the color map
            % auto-generated by the 'lines' function, and the function is based
            % on the number of items to be plotted
            ax.ColorOrder = lines(length(plotList));
            
            % reset 'NO LEGEND', 'JET COLORMAP'
            app.LEGENDButton.Value = 0;
            app.JETCOLORMAPButton_2.Value = 0;
            
            % if the 'grid off' button is selected, remove gridlines from
            % the plot, otherwise gridlines will be displayed on the plot
            if app.GRIDOFFButton_2.Value
                grid(ax,"off")
            else
                grid(ax,"on")
            end
            
            % plotting all selected measurements in frequency domain
            for idx = plotList
                fd_base = app.FD_data.frequency{idx} * 10^-12;
                sampleID = app.FD_data.sampleList{idx};
                
                % if amplitude is selected for plotting, extract the
                % amplitude values for reference and sample measurements,
                % and set the y-axis label and plot title to 'Amplitude'
                if isequal(plotInfo,'Amplitude')
                    fd_reference = app.FD_data.ref_amplitude{idx};
                    fd_sample = app.FD_data.sam_amplitude{idx};
                    ylabel(ax,'E_{field intensity} (a.u.)');
                    title(ax,'Amplitude')
                % if phase is selected for plotting instead, extract the
                % phase values for reference and sample measurements,
                % and set the y-axis label and plot title to 'Phase'
                else
                    fd_reference = app.FD_data.ref_phase{idx};
                    fd_sample = app.FD_data.sam_phase{idx};
                    ylabel(ax,'Phase');
                    title(ax,'Phase')
                end
                
                % plotting graphs based on one's choices
                switch plotType
                    % plotting sample measurements only
                    case 'Sample'
                      plot(ax,fd_base,fd_sample,'linewidth',1);
                      lgd{cnt} = sampleID;
                      cnt = cnt + 1;
                    % plotting reference measurements only
                    case 'Reference'
                      plot(ax,fd_base,fd_reference,'linewidth',1);
                    % plotting both sample and refeence measurements
                    otherwise
                      plot(ax,fd_base,fd_reference...
                          ,fd_base,fd_sample,'linewidth',1);
                end
                
            end
            
            % if only sample measurements are plotted, automatically display legend
            % values as the measurement names
            if isequal(plotType,'Sample')
                legend(ax,(lgd),'Location',"best",'Interpreter','none');
                legend(ax,"hide");
            end
            
            hold(ax,"off")
            
        end
        
        % plotFD_data2 plots information (four possible options) extracted from terahertz data in
        % frequency domain, and offers functionalities on customising graph appearance
        function plotFD_data2(app,axesNum)
            plotList = app.FD_select_2;
            ax = axesNum;
            
            % if no measurements are selected, no functions are executed
            if isempty(plotList)
                return;
            end
            
            % extracting the plot type selected (transmittance, absorption, refractive index or dielectric constant)
            plotType = app.PlotDataButtonGroup.SelectedObject.Text;
            % extracting the corresponding information to be plotted, this is
            % different for different chosen plot types
            plotInfo = app.MagPhaseButtonGroup_2.SelectedObject.Text;
            % extracting the choice of plotting a linear or log graph
            Yscale = app.YscaleButtonGroup_2.SelectedObject.Text;
            % extracting the choice of plotting real or imaginary values
            realImag = app.RealImagButtonGroup.SelectedObject.Text;
            cnt = 1;
            lgd = {};
            
            % deleting graphics objects, that are specified by 'ax', from
            % the axes
            cla(ax)
            % deleting the legend
            legend(ax,'off');
            hold(ax,"on")
            % setting y-axis scale based on the selected parameter to be
            % plotted
            ax.YScale = (Yscale);
            % the colour of each line is set by the color map
            % auto-generated by the 'lines' function, and the function is based
            % on the number of items to be plotted
            ax.ColorOrder = lines(length(plotList));
            
            % reset 'NO LEGEND', 'JET COLORMAP'
            app.LEGENDButton.Value = 0;
            app.JETCOLORMAPButton_2.Value = 0;

            % if the 'grid off' button is selected, remove gridlines from
            % the plot, otherwise gridlines will be displayed on the plot
            if app.GRIDOFFButton_3.Value
                grid(ax,"off")
            else
                grid(ax,"on")
            end
    
            % if the size of the first dimension (row) of 'plotType' is 2, join
            % all values on the first row of 'plotType' to form one single
            % string
            if size(plotType,1) == 2;
                plotType = strjoin(plotType(1));
            end
            
                       
            for idx = plotList
                % converting frequency values to THz
                fd_base = app.FD_data.frequency{idx} * 10^-12;
                % extracting sample name for legend
                sampleID = app.FD_data.sampleList{idx};
                lgd{cnt} = sampleID;
                cnt = cnt + 1;

                % if 'amplitude' option is chosen, plot amplitude values as
                % y-values; and similarly for 'phase' option                
                if isequal(plotInfo,'Amplitude')
                    fd_transmit = app.FD_data.transmit_amplitude{idx};
                    ylabel(ax,'Amplitude');
                else
                    fd_transmit = app.FD_data.transmit_phase{idx};
                    ylabel(ax,'Phase');
                end
                
                % plotting corresponding graphs based on selected option
                switch plotType
                    % plotting amplitude/phase (depending on choice)
                    % against frequency
                    case 'TRANSMITTANCE'
                      plot(ax,fd_base,fd_transmit,'linewidth',1);
                      title(ax,'Transmittance');
                    % plotting absorption coefficient against frequency
                    case 'ABSORPTION'
                      fd_absorption = app.FD_data.absorption{idx};
                      plot(ax,fd_base,fd_absorption,'linewidth',1);
                      ylabel(ax,'Absorption coefficient (cm^{-1})');
                      title(ax,'Absorption');
                    case 'REFRACTIVE'
                      % plotting real part of refractive index against frequency
                      if isequal(realImag,'Real')
                          fd_refIdx = app.FD_data.refractiveIndex{idx};
                          ylabel(ax,'n',"FontSize",13);
                      else
                      % plotting imaginary part of refractive index against frequency
                          fd_refIdx = app.FD_data.extinction{idx};
                          ylabel(ax,'\kappa',"FontSize",13);
                      end
                      plot(ax,fd_base,fd_refIdx,'linewidth',1);
                      title(ax,'Refractive Index')
                    otherwise
                      % plotting real part of dielectric constant against frequency
                      if isequal(realImag,'Real')
                          fd_dielectric = app.FD_data.eReal{idx};
                          ylabel(ax,'\epsilon\prime',"FontSize",13);
                      % plotting imaginary part of dielectric constant against frequency
                      else
                          fd_dielectric = app.FD_data.eImag{idx};
                          ylabel(ax,'\epsilon\prime\prime',"FontSize",13);
                      end
                      plot(ax,fd_base,fd_dielectric,'Linewidth',1);
                      title(ax,'Dielectric Constant');                       
                end
                
            end
            
            % place legend in the most optimal location and display legend
            % values as the measurement names
            legend(ax,(lgd),'Location',"best",'Interpreter','none');
            legend(ax,"hide");
            hold(ax,"off")
            
            
        end
        
        % FD_PlotData_reset resets the buttons in FD data analysis tab to
        % default, where the absorption, refractive index and dielectric
        % constant functions are inactivated before measurements are added
        function FD_PlotData_reset(app)
%           app.TRANSMITTANCEButton.Enable = true;
            app.ABSORPTIONButton.Enable = false;
            app.REFRACTIVEINDEXButton.Enable = false;
            app.DIELECTRICCONSTANTButton.Enable = false;
        end
        
        % plotFD_dataNew plots information (four possible options) extracted from terahertz data in
        % frequency domain, and offers functionalities on customising graph appearance
        function plotFD_dataNew(app)
            % Create UIFigure and hide until all components are created
            fig = figure('Visible', 'on');
            fig.Position = [100 100 1200 800];
            fig.Name = app.ProjectsEditField.Value;

            % Create UIAxes
            ax = uiaxes(fig);
            xlabel(ax, 'Frequency (THz)')
            ax.Position = [20 10 1140 780];
%             ax.YLim = [0 100];

            % if nothing is to be plotted, no functions will be executed    
             plotList = app.FD_select_2;
            
            % if nothing is to be plotted, no functions will be executed
            if isempty(plotList)
                return;
            end
            
            % extracting the plot type selected (transmittance, absorption, refractive index or dielectric constant)
            plotType = app.PlotDataButtonGroup.SelectedObject.Text;
            % extracting the corresponding information to be plotted, this is
            % different for different chosen plot types
            plotInfo = app.MagPhaseButtonGroup_2.SelectedObject.Text;
            % extracting the choice of plotting a linear or log graph
            Yscale = app.YscaleButtonGroup_2.SelectedObject.Text;
            % extracting the choice of plotting real or imaginary values
            realImag = app.RealImagButtonGroup.SelectedObject.Text;
            cnt = 1;
            lgd = {};        
            
            % deleting graphics objects, that are specified by 'ax', from
            % the axes
            cla(ax)
            % deleting the legend
            legend(ax,'off');
            hold(ax,"on")
            % setting y-axis scale based on the selected parameter to be
            % plotted
            ax.YScale = (Yscale);
            % the colour of each line is set by the color map
            % auto-generated by the 'lines' function, and the function is based
            % on the number of items to be plotted
            ax.ColorOrder = flipud(jet(length(plotList)));
            
            % reset 'NO LEGEND', 'JET COLORMAP'
            app.LEGENDButton.Value = 0;
            app.JETCOLORMAPButton_2.Value = 0;
    
            % if the size of the first dimension (row) of 'plotType' is 2, join
            % all values on the first row of 'plotType' to form one single
            % string
            if size(plotType,1) == 2;
                plotType = strjoin(plotType(1));
            end
            
            % converting frequency values to THz
            for idx = plotList
                fd_base = app.FD_data.frequency{idx} * 10^-12;
                % extracting sample name for legend
                sampleID = app.FD_data.sampleList{idx};
                lgd{cnt} = sampleID;
                cnt = cnt + 1;
%                 pause(1);
                
                % if 'amplitude' option is chosen, plot amplitude values as
                % y-values; and similarly for 'phase' option
                if isequal(plotInfo,'Amplitude')
                    fd_transmit = app.FD_data.transmit_amplitude{idx};
                    ylabel(ax,'Amplitude');
                else
                    fd_transmit = app.FD_data.transmit_phase{idx};
                    ylabel(ax,'Phase');
                end

                % plotting corresponding graphs based on selected option
                switch plotType
                    % plotting amplitude/phase (depending on choice)
                    % against frequency
                    case 'TRANSMITTANCE'
                      plot(ax,fd_base,fd_transmit,'linewidth',1);
                      title(ax,'Transmittance');
                    % plotting absorption coefficient against frequency
                    case 'ABSORPTION'
                      fd_absorption = app.FD_data.absorption{idx};
                      plot(ax,fd_base,fd_absorption,'linewidth',1);
                      ylabel(ax,'Absorption coefficient (cm^{-1})');
                      title(ax,'Absorption');
                    % plotting refractive index against frequency
                    case 'REFRACTIVE'
                      fd_refIdx = app.FD_data.refractiveIndex{idx};
                      plot(ax,fd_base,fd_refIdx,'linewidth',1);
                      title(ax,'Refractive Index')
                    otherwise
                      % plotting real part of dielectric constant against frequency
                      if isequal(realImag,'Real')
                          fd_dielectric = app.FD_data.eReal{idx};
                      else
                      % plotting imaginary part of dielectric constant against frequency
                          fd_dielectric = app.FD_data.eImag{idx};
                      end
                      plot(ax,fd_base,fd_dielectric,'Linewidth',1);
                      title(ax,'Dielectric Constant');                       
                end
                legend(ax,sampleID,'Interpreter','none');
            end
            
            % place legend in the most optimal location and display legend
            % values as the measurement names
            legend(ax,(lgd),'Location',"best",'Interpreter','none');
            hold(ax,"off")            
        end
        
        
        % TDSunwrap unwraps the phase values from 0.8 THz (due to high SNR) to both directions,
        % and then corrects the phase values in low THz (<0.1 THz) via
        % linear extrapolation
        function output = TDSunwrap(app,pData,freq)
            % unwrapping functon
            %freq = app.FD_data.frequency{idx};
            strFreq = app.StartFrequencyTHzEditField.Value;
            
            %unwrapping starting frequency: 0.8THz due to its high SNR
            strFreq = strFreq * 1e12;
            % find the index of the first element in 'freq' that has a value
            % greater than 'srtFreq'
            srtLoc = find(freq > strFreq,1);
            % using srtLoc as a starting point, and in the order of increasing indices, unwrap phase values to the
            % end of the data
            pData1 = unwrap(pData(srtLoc:end));
            % using srtLoc as a starting point, and in the order of decreasing indices, unwrap phase values to the
            % start of the data
            % this action reorders the data from back to front in pData2
            pData2 = unwrap(pData(srtLoc:-1:1));
            % reordering phase values, to from front to back, excluding the
            % phase value at index strLoc, since its phase is already
            % included in pData1
            pData3 = pData2(end:-1:2);
            % grouping all phase values into one single vector
            pData = [pData3 pData1];
            
            % correction for lower frequency region(0 to 0.1THz) with extrapolation
            epol_srtFreq = 0.05 * 1e12;
            epol_endFreq = 0.4 * 1e12;
            % find the index of the first element in 'freq' that has a value
            % greater than 'epol_srtFreq'
            epol_srtLoc = find(freq > epol_srtFreq,1);
            % find the index of the first element in 'freq' that has a value
            % greater than 'epol_endFreq'
            epol_endLoc = find(freq > epol_endFreq,1);
            % extracting frequency values from 'epol_srtFreq' to 'epol_endFreq'
            epol_freq = freq(epol_srtLoc:epol_endLoc);
            % extracting phase data that lies in frequency values from 'epol_srtFreq' to 'epol_endFreq'
            epol_data = pData(epol_srtLoc:epol_endLoc);
            
            % fitting a straight line of extracted phase against extracted
            % frequency
            p = polyfit(epol_freq,epol_data,1);
            % find the intercept of the fitted line
            shift = p(2); % y-axis intersection point value
            % shift all phase data down by the intercept value
            output = pData - shift;
            
        end
        
        % findDMPeaks finds peaks (the peak value and location) of the
        % selected data sets based on specified parameters (e.g. minimum prominence value of peak)
        function findDMPeaks(app)
            % convert input values (specifying data sets) in text field from strings to numbers
            dataList = str2num(app.SourceDataSetEditField.Value);
            % extract the input minimum peak prominence value
            pksProm = app.MinPeakProminenceEditField.Value;
            % this parameter is not utilised in this version
            lowLimit = app.LowerLimitTHzEditField.Value *10^12;
            % extract peak number
            pkNum = app.PeakNumSpinner.Value;
            fig = app.CatsperUIFigure;
            ax = app.UIAxes9;
            hold(ax,"on")
            heightMat  = [];
            freqMat = [];
            
            % if the 'DM_peaks' object is not empty, delete the object
            if ~isempty(app.DM_peaks)
                delete(app.DM_peaks);
            end
            
            % arrange y-axis data
            for idx = dataList
                % extracting frequency values in the data set
                freq = app.FD_data.frequency{idx};
                dmData = app.DM_data.base{idx};
                % extracting calculated data manipulation values (detailed
                % later in another function) in the dataset
                lb = sum(freq<=lowLimit); % lower boundary

                if lb==0||lb==length(freq)
                    msg = strcat("Invalide lower limit");
                    app.LowerLimitTHzEditField.Value = 1;
                    uialert(fig,msg,'Warning');
                    return;
                end

                % finding peaks from dmData with freq as the x-vector, only
                % peaks that has a prominence greater than 'pksProm' will be
                % logged
                [pks, locs] = findpeaks(dmData(lb:end),freq(lb:end),'MinPeakProminence',pksProm);
                
                % if the specified number of peaks to be found is greater
                % than the number of actual peaks found, display a warning
                % message and reset the peak number to 1
                if pkNum > length(pks)
                    msg = strcat('Cannot find Peak-',num2str(pkNum),' from Dataset-',num2str(idx));
                    uialert(fig,msg,'Warning');
                    app.PeakNumSpinner.Value = 1;
                    return;
                end
                
                % if peaks are found, collate peak maxima found from
                % different data sets to one matrix, and similarly with the
                % peak location, then plot the peaks and label them
                if ~isempty(pks)
                    heightMat = [heightMat pks(pkNum)];
                    freqMat = [freqMat locs(pkNum)];
                    plot(ax,locs,pks,'o');
                    text(ax,locs+.1,pks,num2str((1:numel(pks))'));
                end
            end
            hold(ax,"off")
                
            % reversing the order of peak values and storing the values
            app.DM_data.heightMat = flip(heightMat);
            app.DM_data.freqMat = flip(freqMat);
        end
                
        % AdvFDbuttonsEnable enables/disables a set of buttons in the
        % frequency domain tab
        function AdvFDbuttonsEnable(app,tf)
            app.ABSORPTIONButton.Enable = tf;
            app.REFRACTIVEINDEXButton.Enable = tf;
            app.DIELECTRICCONSTANTButton.Enable = tf;
            app.dataManipulationButton.Enable = tf;            
        end
             
        
        function tDelay = getTimeDelay(app,samTime,samSig,refTime,refSig)
            [Ref_max Ref_idx] = max(refSig);
            maxPerLocs = find(refSig >(Ref_max*0.8));
            maxLoc = maxPerLocs(round(length(maxPerLocs)/2));                        
            time_shift = refTime(maxLoc);
            refTime = refTime - time_shift;
            samTime = samTime - time_shift;
            
            Sam_max = max(samSig);
            maxPerLocs = find(samSig >(Sam_max*0.8));
            maxLoc = maxPerLocs(round(length(maxPerLocs)/2));
            tDelay = (round(samTime(maxLoc)*10^3))/10^3;            
        end
    end
    
    methods (Access = public)
        
        % updateThickness calculates the tablet thickness in time domain
        % using a new method
        function updateThickness(app,thickness,pksProm,loc,All,refMdm,maxPer)
            
            % extracting the measurements selected
            TDselected = app.MeasurementListBox.Value;
            % updating thickness value based on input
            app.ThicknessmmEditField.Value = thickness;
            app.TD_data.settings{TDselected}.thickness = thickness;
            
            % execute the following if function input 'All' does not equal
            % to zero
            if ~isequal(All,0)
                for TDindex = 1:app.TD_data.totalMeasNum
                    % execute the following if function input 'All' equals
                    % to 1
                    if isequal(All,1)
                        % extracting time values in reference measurement
                        refT = app.TD_data.references{TDindex,1};
                        % extracting electric field values in reference
                        % measurement
                        refE = app.TD_data.references{TDindex,2};
                        % extracting time values in sample
                        % measurement
                        samT = app.TD_data.samples{TDindex,1};
                        % extracting electric field values in reference
                        % measurement
                        samE = app.TD_data.samples{TDindex,2};
                        % extracting time delay value
                        del_t = app.TD_data.settings{TDindex}.timeDelay;
                      
                        % substracting the first index of the reference
                        % time that is greater than the time delay by the
                        % first index of the reference time that is greater
                        % than zero
                        % note this returns the difference in indices
                        tShift = find(refT > del_t,1) - find(refT > 0,1);
                        % creating a new vector for electric field values
                        % in reference measurement, such that the THz peak
                        % in reference measurement aligns that with sample
                        % measurement
                        refE = [zeros(1,tShift) refE(1:end-tShift)];
                        % manipulate electric field values in reference
                        % measurement such that the maximum amplitude
                        % value equals to that of sample measurement
                        refE = refE * (max(samE)/max(refE));

                        % defining a time range that is four times the time
                        % delay
                        pksLLimit = 4*del_t;
                        % finding the difference between the electric field
                        % values in sample measurement and in adjusted
                        % reference measurement
                        diff = samE - refE;
                        % finding peaks (peak value and index) from the difference values with
                        % time as the x-vector, only peaks that have a prominence
                        % above pksProm will be logged
                        [pks, locs] = findpeaks(diff,refT,'MinPeakProminence',pksProm);
                        % extracting peaks that are located at a time
                        % point that is greater than four times the time
                        % delay (from zero point)
                        pks = pks(locs>pksLLimit);
                        % extracting indices of peaks that are located at a time
                        % point that is greater than four times the time
                        % delay (from zero point)
                        locs = locs(locs>pksLLimit);
                     
                        % extracting the peak location value that has the
                        % index of 'loc' (function input) in the 'locs'
                        % vector
                        mrt = locs(loc);
                        % find and log the index at which the time value
                        % equals 'mrt'
                        pkloc = find(refT == mrt,1);
                        
                        % peak time correction function
                        % extract the adjusted peak value at location
                        % 'pkloc'
                        mrtAmp = diff(pkloc);
                        % for each value in the 'diff' vector, if the value is greater than mrtAmp*maxPer,
                        % value of 1 will be returned, otherwise value of 0 is returned
                        mrtRange = diff > mrtAmp*maxPer; % 0 and 1 vector
                        % setting values, which are outside of a range around 'pkloc', to
                        % zero
                        maxPerRange = 25;
                        mrtRange(1:pkloc-maxPerRange) = 0;
                        mrtRange(pkloc+maxPerRange:end) = 0;
                        % calculating the mean reference time
                        mrt = sum(refT.*mrtRange)/sum(mrtRange);
                        % converting values from pico seconds to seconds
                        mrt = mrt *10^-12;
                        
                        del_t = del_t*10^-12;
                        % calculate the resulting thickness to 4 s.f.
                        thickness = floor((mrt - 3*del_t)*3e8/2*10^3*1000)/1000;
                    end
                    
                    % updating thickness
                    app.TD_data.settings{TDindex}.thickness = thickness;
                    TDanalysisUpdate(app,TDindex);
                end
            end
            TDanalysisUpdate(app,TDselected);
            
        end
        
        % updateFreqRange updates the list of data sets selected for the
        % FD Data Analysis section in the frequency domain tab and empties
        % certain data from matrices
        function updateFreqRange(app,limitFreq,all)
            FDindex = app.FDSelectionListBox_2.Value;
            filterList = FDindex;
            
            % if 'all' is selected (i.e. all = 1), filter list becomes the
            % same as the first selection in the frequency domain tab (FD List)
            if all
                filterList = app.FD_select_2;
            end
                
            % if only certain data sets are selected, execute the following
            for FDindex = filterList
                % find limitFreq location
                freq = app.FD_data.frequency{FDindex};
                % find the number of cells in 'freq' that has a value less
                % than 'limitFreq'
                limitLoc = sum(freq < (limitFreq * 10^12));
                
                % update FD_data
                % reducing the data stored in matrices, by removing
                % data from 'limitLoc' to end
                app.FD_data.ffd_references{FDindex}(limitLoc:end) = [];
                app.FD_data.ffd_samples{FDindex}(limitLoc:end) = [];
                app.FD_data.ref_amplitude{FDindex}(limitLoc:end) = [];
                app.FD_data.ref_phase{FDindex}(limitLoc:end) = [];
                app.FD_data.sam_amplitude{FDindex}(limitLoc:end) = [];
                app.FD_data.sam_phase{FDindex}(limitLoc:end) = [];
                app.FD_data.transmit_amplitude{FDindex}(limitLoc:end) = [];
                app.FD_data.transmit_phase{FDindex}(limitLoc:end) = [];
                app.FD_data.refractiveIndex{FDindex}(limitLoc:end) = [];
                app.FD_data.absorption{FDindex}(limitLoc:end) = [];    
                app.FD_data.frequency{FDindex}(limitLoc:end) = [];
                app.FD_data.extinction{FDindex}(limitLoc:end) = [];
                app.FD_data.eReal{FDindex}(limitLoc:end) = [];
                app.FD_data.eImag{FDindex}(limitLoc:end) = [];
            end 
        end
        
        % updateThickness2 calculates and updates sample thickness of
        % selected measurements
        function updateThickness2(app,thicknesses,updateList)
            for idx = updateList
                app.TD_data.settings{idx}.thickness = thicknesses(idx);
                TDanalysisUpdate(app,idx);
            end
        end
        
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            app.PRJ_count = 0;
            app.filename = [];
            %app.DEBUGMsgLabel.Text = app.CatsperUIFigure.Tag;
        end

        % Value changed function: MeasurementListBox
        function MeasurementListBoxValueChanged(app, event)
            % MeasurementListBoxValueChanged extracts and displays relevant values 
            MeasNum = app.MeasurementListBox.Value;
            delta_t = app.TD_data.settings{MeasNum}.timeDelay;
            thickness = app.TD_data.settings{MeasNum}.thickness;
            n_eff = app.TD_data.settings{MeasNum}.refractiveIndex;
            etl_t = app.TD_data.settings{MeasNum}.internalReflection;
            refOption = app.TD_data.settings{MeasNum}.refOption;
            refNum = sum(~cellfun("isempty",app.TD_data.references(MeasNum,:)))/2;
            
            description = app.TD_data.settings{MeasNum}.description;
            scanTime = app.TD_data.settings{MeasNum}.scanStartDateTime;
            insModel = app.TD_data.settings{MeasNum}.instrument;
            refDescription = app.TD_data.settings{MeasNum}.refDescription;
            
            %display measurement setting
            app.DescriptionEditField.Value = description;
            app.ScanTimeEditField.Value = scanTime;
            app.InstrumentEditField.Value = insModel;
            app.RefDescriptionEditField.Value = refDescription;

            % reference option
            switch refOption
                case 0
                    app.Ref1Lamp.Color = "white";
                    app.Ref2Lamp.Color = "white";
                case 1
                    app.Ref1Lamp.Color = "green";
                    app.Ref2Lamp.Color = "white";
                otherwise
                    app.Ref1Lamp.Color = "white";
                    app.Ref2Lamp.Color = "green";
            end

            switch refNum
                case 0
                    app.RefSwitchButton.Enable = "off";
                case 1
                    app.RefSwitchButton.Enable = "off";
                otherwise
                    app.RefSwitchButton.Enable = "on";
            end
            
            %display sample detail
            app.TimedelaypsEditField.Value = delta_t;
            app.ThicknessmmEditField.Value = thickness;
            app.RefractiveIndexEditField.Value = n_eff;
            app.stinternalreflectionpsEditField.Value = etl_t;         
        end

        % Button pushed function: ADDButton
        function ADDButtonPushed(app, event)
            % ADDButtonPushed adds the measurements in the measurement box to the selection box 
            addItem = app.MeasurementListBox.Value;
            ListBoxItem = {};
            ListBoxItemValue = [];
            
            % if the measurement list box is empty, do not continue to
            % execute this function
            if isempty(addItem)
                return;
            end
            
            % if the measurements already added do not include the item to
            % be added, perform the following actions
            if ~sum(app.TD_select == addItem)
                % adding the new item to the existing list
                app.TD_select = [app.TD_select addItem];
                % sort the list
                app.TD_select = sort(app.TD_select);
                % data should involve numerical values
                ListBoxItemValue = app.TD_select;
                
                % creating a name for each measurement based on the sample
                % list
                for ListNo = 1:length(app.TD_select)
                   ItemNo = app.TD_select(ListNo);
                   AddItem = strjoin(app.TD_data.sampleList{ItemNo});
                   ListBoxItem{ListNo} = AddItem;
                end
                   
             % numerical value    
             app.SelectionListBox.ItemsData = ListBoxItemValue;
             % text
             app.SelectionListBox.Items = ListBoxItem;
            
            end
             
            % if the added item is not on the first of the measurement
            % list, default select the item above the added item
            if ~isequal(addItem,1)
                List = app.MeasurementListBox.ItemsData;
                curLoc = sum(List < addItem);
                if ~isequal(curLoc,0)
                    cursor = List(curLoc);
                    app.MeasurementListBox.Value = cursor;                  
                end

            end
            
        end

        % Button pushed function: TRANSFORMButton
        function TRANSFORMButtonPushed(app, event)
        % TRANSFORMButtonPushed performs fast Fourier transform on the
        % reference and sample measurement, extracts amplitude and phase
        % data in the frequency domain and trims data accordingly. Options
        % such as choosing window functions are possible.    
        
            % checking the current FD list number
            % extracting the column size of 'app.FD_data.sampleList'
            FDindexNum = size(app.FD_data.sampleList,2);
            FDindex = 0;
            
            % extracting the values that were specified by the user
            ListBoxItem = app.FDListListBox.Items;
            addFDList = app.TD_select;
            isAutowindow = app.AUTOWINDOWButton.Value;
            min_freq = app.MinFreqEditField.Value;
            max_freq = app.MaxFreqEditField.Value;
            upscale = app.ZeroFillingpowerofSpinner.Value; 
            funcName = app.ApodizationFunctionDropDown.Value; %window function
            
            % this applies to all measurements selected for time domain
            % processing
            for cnt = 1:length(addFDList)
                % reference waveform
                % extract the time spacing between logged values
                TDindex = addFDList(cnt);

                refOption = app.TD_data.settings{TDindex}.refOption;
                if isequal(refOption,0)
                    warning('No available reference dataset')
                    return;
                end
                refIdx = refOption*2-1;                
                
                % reference waveform 
                xSpacing = app.TD_data.settings{TDindex}.xSpacing;
                % convert the time spacing into frequency spacing
                fs = 1/(xSpacing*10^-12); % obtain sampling frequency based on xSpacing value
                t_reference = app.TD_data.references{TDindex,refIdx};
                E_reference = app.TD_data.references{TDindex,refIdx+1};
                
                % sample waveform
                t_sample = app.TD_data.samples{TDindex,1};
                E_sample = app.TD_data.samples{TDindex,2};
                
                % time delay between reference and sample measurement
                delta_t = app.TD_data.settings{TDindex}.timeDelay;
                
                % windowing
                % obtaining the time delay for one internal reflection to
                % occur
                % this is calulcated in the TDanalysisUpdate function
                etl_t = app.TD_data.settings{TDindex}.internalReflection;
                
                if isAutowindow
                    % if the auto window function is selected, the upper
                    % limit in the range is defined as the time delay with one
                    % internal reflection, and the lower limit in the range is
                    % defined as the negative of the time
                    % delay with one internal reflection plus the time
                    % delay without internal reflection
                    % this time range is defined such that both the
                    % reference and sample peaks are of a time which is
                    % equivalent to the internal reflection away from the
                    % lower and upper limit respectively
                    td_max = etl_t;
                    td_min = - etl_t + delta_t;
                else
                    % maximum and minimum time delay values are defined
                    % by the user
                    td_max = app.MaxTimeEditField.Value;
                    td_min = app.MinTimeEditField.Value;
                end
                
                % finding the first index that has a time equal or greater than the
                % minimum time delay
                cutoff_low = sum(t_sample < td_min) + 1;
                % finding the greatest value index that has a time less than the
                % maximum time delay
                cutoff_high = sum(t_sample < td_max);
                
                % trim the reference electric field vector using the
                % selected indices
                E_reference = E_reference(cutoff_low:cutoff_high);
                % trim the sample electric field vector using the
                % selected indices
                E_sample = E_sample(cutoff_low:cutoff_high);
                
                % window function
                % if any apodization function is chosen (apart from
                % boxcar), apply the apodization function over the trimmed
                % reference and sample electric field measurements
                % respectively
                if ~isequal(funcName,'Boxcar')
                    wf = str2func(funcName);
                    E_reference = E_reference.*...
                        window(wf,length(E_reference))';
                    E_sample = E_sample.*window(wf,length(E_sample))';
                end
                
                % fast Fourier tranform
                samNum = length(E_sample);
                % calculating the length of the sample electric field with
                % an upscale added
                % this is calculated using a power of two, which the exponent is a sum of
                % the nearest integer (greater than or equal to) exponent that
                % returns the original length of the sample electric
                % field, and the exponent specified by the user on
                % upscaling
                N = 2^(nextpow2(length(E_sample))+upscale);
                
                % perform N-point discrete Fourier transform (multiplying N-by-N square matrix with the vector, of length N, to be Fourier transformed)
                % perform this on both reference and sample electric field
                % measurement
                % the Fourier transform transforms the time domain data
                % into frequency domain
                FD_reference = fft(E_reference,N);
                FD_sample = fft(E_sample,N);
                
                % Calculate the double and single-sided spectra
                % create a frequency vector from 0 to half the frequency
                % spacing (calculated earlier in this function), in
                % increments equivalent to the value obtained by dividing the frequency
                % spacing with the upscaled data length
                freqs = 0:fs/N:fs/2;
                % trim the frequency domain data, for both reference and sample, to the same length as
                % 'freq', and adjust the values in the vector by dividing
                % with the original length of sample values
                FD_reference = FD_reference(1:N/2 + 1)/samNum;
                FD_sample = FD_sample(1:N/2 + 1)/samNum;
                % calculate the spectral resolution
                % in units of THz
                freqRes = fs/(N*10^12);
                % converting the spectral resolution to a string with 3
                % significant figures displayed
                app.Label.Text = num2str(freqRes,'%.3f');
                
                % find the first index that has a frequency equal to or
                % greater than the minimum frequency specified by the user
                cutoff_low = sum(freqs < min_freq*10^12) + 1;
                % find the greatest index that has a frequency
                % less than the maximum frequency specified by the user
                cutoff_high = sum(freqs < max_freq*10^12); 
                
                % trim the frequency, reference and sample data values
                % using the upper limit
                FD_frequency = freqs(1:cutoff_high);                
                FD_reference = FD_reference(1:cutoff_high);
                FD_sample = FD_sample(1:cutoff_high);
                
                % extracting order numbers, descriptions, Fourier transform
                % parameter summary for display in the 'FD list' in the
                % frequency domain tab
                FDindex = cnt + FDindexNum;
                
                % FTsetting description - detailed
                %FTsetting = strcat(' ((',num2str(td_min,3),'-',num2str(td_max,3),'ps/'...
                %    ,num2str(min_freq,3),'-',num2str(max_freq,3),'THz/'...
                %    ,(funcName),'/',num2str(upscale),'upscale))','Ref.',num2str(refOption));
                
                % FTsetting description - simpler
                FTsetting = strcat(' (',num2str(td_min,3),'-',num2str(td_max,3),' ps ,'...
                    ,(funcName),' ,','Ref.',num2str(refOption),')');
                
                sampleID = strjoin(app.TD_data.sampleList{TDindex});
                FDsampleName = strcat(num2str(FDindex),':',sampleID);
                AddItem = strcat(FDsampleName,FTsetting);
                app.FD_data.sampleList{FDindex} = FDsampleName;
                app.FD_data.settings{FDindex} = FTsetting;
                ListBoxItem{FDindex} = AddItem;
                
                % calculate the number of etalon oscillations in the data
                % number of etalon oscillations is default to be one if
                % auto window is selected
                etlNum_sam = floor((td_max - delta_t)/(etl_t-delta_t));
                etlNum_ref = 0;
                
                % input FD_data structure
                sampleID = matlab.lang.makeValidName(sampleID);
                app.FD_data.settings{FDindex} = ...
                    app.TD_data.settings{TDindex};
                app.FD_data.settings{FDindex}.thickness = ...
                    app.TD_data.settings{TDindex}.thickness;
                app.FD_data.settings{FDindex}.refThickness = 0;
                app.FD_data.settings{FDindex}.timeWindow = [td_min td_max];
                app.FD_data.settings{FDindex}.windowFunction = funcName;
                app.FD_data.settings{FDindex}.etlNum_ref = etlNum_ref;
                app.FD_data.settings{FDindex}.etlNum_sam = etlNum_sam;
                
                % unwrap phase data (calling TDS-unwrap function)
                % unwrapping phase values for reference and sample
                % measurements in frequency domain
                app.FD_data.frequency{FDindex} = FD_frequency;
                uw_refPhase = TDSunwrap(app,angle(FD_reference),FD_frequency);
                uw_samPhase = TDSunwrap(app,angle(FD_sample),FD_frequency);
                
                % cut off lower frequency part
                % trim lower end values using the lower cutoff value
                % lower end values can only be trimmed now since trimming
                % them earlier would affect the phase values obtained
                % from unwrapping
                FD_frequency = FD_frequency(cutoff_low:end);
                FD_reference = FD_reference(cutoff_low:end);
                FD_sample = FD_sample(cutoff_low:end);
                uw_refPhase = uw_refPhase(cutoff_low:end);
                uw_samPhase = uw_samPhase(cutoff_low:end);
                
                % allocating FD_data
                app.FD_data.frequency{FDindex} = FD_frequency;
                app.FD_data.ffd_references{FDindex} = FD_reference;
                app.FD_data.ffd_samples{FDindex} = FD_sample;
                app.FD_data.ref_amplitude{FDindex} = abs(FD_reference);
                app.FD_data.ref_phase{FDindex} = uw_refPhase;
                app.FD_data.sam_amplitude{FDindex} = abs(FD_sample);
                app.FD_data.sam_phase{FDindex} = uw_samPhase;
                
                % calculate Transmittance
                % calculate the transmission amplitude by dividing the
                % absolute value of the sample electric field in frequency
                % domain by that of the equivalent reference value
                app.FD_data.transmit_amplitude{FDindex} =...
                    abs(FD_sample)./abs(FD_reference);
                app.FD_data.transmit_phase{FDindex} = ...
                    uw_refPhase - uw_samPhase;
                
            end
            
            app.FDListListBox.Items = ListBoxItem;
            app.FDListListBox.ItemsData = (1:FDindex);
        end

        % Button pushed function: PLOT1TDButton
        function PLOT1TDButtonPushed(app, event)
            plotTD_data(app,app.UIAxes1);
        end

        % Button pushed function: PLOT1FDButton
        function PLOT1FDButtonPushed(app, event)
            plotFD_data(app,app.UIAxes3);     
        end

        % Button pushed function: PLOT2FDButton
        function PLOT2FDButtonPushed(app, event)
            plotFD_data(app,app.UIAxes4);
        end

        % Callback function
        function YscaleButtonGroupSelectionChanged(app, event)
            % YscaleButtonGroupSelectionChanged updates the y-scale of the plot
            % when a different option on the y-scale is selected
            selectedButton = app.YscaleButtonGroup.SelectedObject;
            
            if selectedButton == "logarithm"
                app.UIAxes1.YScale = "log";
            else
                app.UIAxes1.YScale = "linear";
            end
        end

        % Value changed function: AUTOWINDOWButton
        function AUTOWINDOWButtonValueChanged(app, event)
            % AUTOWINDOWButtonValueChanged enables/disables the editing of
            % certain fields based on the deselection/selection of the auto
            % window button
            value = app.AUTOWINDOWButton.Value;
            if value
                app.MaxTimeEditField.Enable = "off";
                app.MinTimeEditField.Enable = "off";
            else
                app.MaxTimeEditField.Enable = "on";
                app.MinTimeEditField.Enable = "on";
            end
        end

        % Button pushed function: DELButton
        function DELButtonPushed(app, event)
            % DELButtonPushed deletes the selected data set from the selection
            % list, updates the selection list and updates the default data set selected in the selection
            % list
            delItem = app.SelectionListBox.Value;
            ListBoxItem = {};
            ListBoxItemValue = [];
            
            % double check only one item is selected for deletion
            if size(delItem,1)
                if  sum(app.TD_select == delItem)
                    % removing the item to be deleted from the selection
                    % list
                    app.TD_select = app.TD_select(app.TD_select~=delItem);
                    % update the selection list displayed
                    ListBoxItemValue = app.TD_select;
                
                    % updating the numbers displayed on the selection list
                    for ListNo = 1:length(app.TD_select)
                        ItemNo = app.TD_select(ListNo);
                        AddItem = strjoin(app.TD_data.sampleList{ItemNo});
                        ListBoxItem{ListNo} = AddItem;
                    end
         
                    app.SelectionListBox.ItemsData = ListBoxItemValue;
                    app.SelectionListBox.Items = ListBoxItem;
                    
                    % if the selection list is not empty, default item to
                    % be selected in the selection list as the item above,
                    % if this is not possible, select the first item on the
                    % selection list
                    if ~isempty(ListBoxItemValue)
                        curLoc = sum(ListBoxItemValue<delItem);
                        if isequal(curLoc,0)
                           curLoc = 1; 
                        end
                        cursor = ListBoxItemValue(curLoc);
                        app.SelectionListBox.Value = cursor;                           
                    end
                    
                end         
            end
        end

        % Button pushed function: ALLButton
        function ALLButtonPushed(app, event)
            % ALLButtonPushed transfers all items in the measurement list box
            % to the selection list box

            % extracts all values in the measurement list box
            ListBoxItemValue = app.MeasurementListBox.ItemsData;
            ListBoxItems = app.MeasurementListBox.Items;
            
            % inputs all the extracted values into the selection list box
            app.TD_select = ListBoxItemValue;            
            app.SelectionListBox.ItemsData = ListBoxItemValue;
            app.SelectionListBox.Items = ListBoxItems;
        end

        % Button pushed function: PLOT2TDButton
        function PLOT2TDButtonPushed(app, event)
            plotTD_data(app,app.UIAxes2);
        end

        % Button pushed function: REMOVEButton
        function REMOVEButtonPushed(app, event)
            % REMOVEButtonPushed removes the selected item from the list box,
            % updates the index for the remaining data in the list box, and
            % clears all strings/data stored in the two selection boxes in the
            % frequency domain tab

            delItem = app.FDListListBox.Value;
            ListBoxItems = app.FDListListBox.Items;
            
            % if no item is selected for deletion, do not continue to run
            % the code
            if isempty(delItem)
                return;
            end
            
            % run the FDdataDel function to delete the item from the list
            % box
            FDdataDel(app,delItem);
            % remove the entry of the item deleted
            ListBoxItems(delItem) = [];

            % at this point, all strings in the list box beyond 'delItem'
            % will shift up by one index in the array, but the number
            % inside the string has not been updated yet
            % this loop updates the number inside the string such that it
            % matches the index number in the array
            for idx = delItem:length(app.FD_data.sampleList)
                % extracting the strings
                ListBoxID = ListBoxItems{idx};
                sampleID = app.FD_data.sampleList{idx};
                % extracting the old number, which is one greater than the
                % index number in the structure, and converting it with the ':' sign into a string                
                repOld = strcat(num2str(idx+1),':');
                % extracting the new number, which equals the
                % index number in the structure, and converting it with the ':' sign into a string
                repNew = strcat(num2str(idx),':');
                
                % replace the number in the string with the updated number
                sampleID = replace(sampleID,repOld,repNew);
                ListBoxID = replace(ListBoxID,repOld, repNew);
                
                % update the information stored in the array
                app.FD_data.sampleList{idx} = sampleID;
                ListBoxItems{idx} = ListBoxID;
            end
            
            % update the information stored in the array
            app.FDListListBox.Items = ListBoxItems;
            app.FDListListBox.ItemsData = (1:length(ListBoxItems));
            
            % clear all strings/names stored in the selection boxes in the frequency domain tab
            app.FD_select = {};
            app.FD_select_2 = {};
            app.FDSelectionListBox.Items = {};
            app.FDSelectionListBox_2.Items = {};
        end

        % Button pushed function: ALLFDButton
        function ALLFDButtonPushed(app, event)
            % ALLFDButtonPushed extracts all strings in the FD list
            % box and place them into the FD selection box

            % extracting values
            ListBoxItemValue = app.FDListListBox.ItemsData;
            % select all values in the list box
            app.FD_select = ListBoxItemValue;
            % if there are no items in the list box, do not continue to run
            % this function            
            if isempty(ListBoxItemValue)
                return;
            end
                
            % for all values selected in the list box
            for ListNo = 1:length(app.FD_select)
                % extracting the value
                ItemNo = app.FD_select(ListNo);
                % extracting the string located at the corresponding index
                AddItem = app.FD_data.sampleList{ItemNo};
                % storing the string into an array
                ListBoxItem{ListNo} = AddItem;
            end
                  
            % places all the values and strings into the FD selection box     
            app.FDSelectionListBox.ItemsData = ListBoxItemValue;
            app.FDSelectionListBox.Items = ListBoxItem;
        end

        % Button pushed function: ADDFDButton
        function ADDFDButtonPushed(app, event)
            % ADDFDButtonPushed adds the selected item from the FD list box to
            % the FD selection box
            
            % extracting the selected value in the FD list box    
            addItem = app.FDListListBox.Value;
            % empty arrays/vectors
            ListBoxItem = {};
            ListBoxItemValue = [];
            
            % if there are no items selected in the FD list box, do not continue
            % to execute this function
            if isempty(addItem)
                return;
            end
            
            % if the selected item is not already in the FD select list,
            % execute the following
            if ~sum(app.FD_select == addItem)
                % add the selected item into the FD select list
                app.FD_select = [app.FD_select addItem];
                % sort the list
                app.FD_select = sort(app.FD_select);
                % store the list under another variable
                ListBoxItemValue = app.FD_select;
                
                for ListNo = 1:length(app.FD_select)
                   % extracting the value
                   ItemNo = app.FD_select(ListNo);
                   % extracting the string stored with an index of the same value
                   AddItem = app.FD_data.sampleList{ItemNo};
                   % storing the string into an array
                   ListBoxItem{ListNo} = AddItem;
                end
                       
             % places all the values and strings into the FD selection box
             app.FDSelectionListBox.ItemsData = ListBoxItemValue;
             app.FDSelectionListBox.Items = ListBoxItem;
            
            end
            
            % if the added item is not on the first of the FD
            % list, default select the item above the added item in the
            % list box
            if ~isequal(addItem,1)
                List = app.FDListListBox.ItemsData;
                curLoc = sum(List < addItem);
                if ~isequal(curLoc,0)
                    cursor = List(curLoc);
                    app.FDListListBox.Value = cursor;                  
                end
            end  
        end

        % Button pushed function: DELFDButton
        function DELFDButtonPushed(app, event)
            % DELFDButton deletes an item from the FD selection box and updates
            % the FD selection box
            
            % extract selected value
            delItem = app.FDSelectionListBox.Value;
            % empty arrays/vectors
            ListBoxItem = {};
            ListBoxItemValue = [];
            
            % if one item is selected for deletion, perform the following
            if size(delItem,1)
                % double check the item to be deleted is in the selection
                % list/box, and if yes, perform the following
                if  sum(app.FD_select == delItem)
                    % remove the deleted item from the selection list
                    app.FD_select = app.FD_select(app.FD_select~=delItem);
                    ListBoxItemValue = app.FD_select;
                
                for ListNo = 1:length(app.FD_select)
                   % extracting the value
                   ItemNo = app.FD_select(ListNo);
                   % extracting the string stored with an index of the same value
                   AddItem = app.FD_data.sampleList{ItemNo};
                   % storing the string into an array
                   ListBoxItem{ListNo} = AddItem;
                end
                       
                % places all the strings into the FD selection box
                app.FDSelectionListBox.ItemsData = ListBoxItemValue;
                app.FDSelectionListBox.Items = ListBoxItem;
                
                % if there are still items in the FD selection box, default
                % select the item that comes before the deleted item; if
                % there is no item before the deleted item, default select
                % the first item on the FD selection box
                if ~isempty(ListBoxItemValue)
                    curLoc = sum(ListBoxItemValue<delItem);
                        if isequal(curLoc,0)
                           curLoc = 1; 
                        end
                    cursor = ListBoxItemValue(curLoc);
                    app.FDSelectionListBox.Value = cursor;
                end
            
            end         
            end
        end

        % Value changed function: DescriptionEditField
        function DescriptionEditFieldValueChanged(app, event)
            % DescriptionEditFieldValueChanged extracts the input of the
            % description value, corresponds it to the selected item, and
            % stores the value into the data structure
            
            % extract the description input value            
            value = app.DescriptionEditField.Value;
            % extract the value of the selected item
            MeasNum = app.MeasurementListBox.Value;
            
            % if there are no items selected, do not continue to perform
            % the the function
            if isempty(MeasNum)
                return;
            end
            
            % update description
            % and store the description into the data structure
            app.TD_data.settings{MeasNum}.description = value;
        end

        % Value changed function: ThicknessmmEditField
        function ThicknessmmEditFieldValueChanged(app, event)
             % ThicknessmmEditFieldValueChanged extracts the input of the
            % thickness value, corresponds it to the selected item, and
            % stores the value into the data structure
            
            % extract the description input value
            value = app.ThicknessmmEditField.Value;
            
            % if a thickness value of <= 0 is input, display error message
            if value <= 0
                fig = app.CatsperUIFigure;
                uialert(fig,'Please input a valid thickness','Invalid Thickness');
                return;
            end
            
            % extract the value of the selected item
            Update = app.MeasurementListBox.Value;
            
            % if no item in the measurement list is selected, do not
            % continue to perform the function
            if isempty(Update)
                return;
            end

            % update thickness
            % and stores the thickness value into the data structure
            TDindex = app.MeasurementListBox.Value;
            app.TD_data.settings{TDindex}.thickness = value;
            
            % update correlated information
            TDanalysisUpdate(app,TDindex);
            
        end

        % Button pushed function: ASSIGNButtonTD
        function ASSIGNButtonTDPushed(app, event)
            % ASSIGNButtonTDPushed assigns the values in 'app.TD_data' to the
            % variable 'TD_data' in the 'base' workspace
            assignin('base',"TD_data",app.TD_data);
        end

        % Button pushed function: ASSIGNButtonFD
        function ASSIGNButtonFDPushed(app, event)
            % ASSIGNButtonFDPushed assigns the values in 'app.FD_data' to the
            % variable 'FD_data' in the 'base' workspace
            assignin('base',"FD_data",app.FD_data);
        end

        % Button pushed function: REMOVEALLButton
        function REMOVEALLButtonPushed(app, event)
            % REMOVEALLButtonPushed removes all stored frequency domain data,
            % empties data in the frequency domain list/selection boxes and
            % reset the buttons in the FD data analysis section to default

            % run FDdataDel to remove all stored frequency domain data
            FDdataDel(app,':');      
            % empty all arrays/vectors relating FD list and selection boxes      
            app.FDListListBox.Items = {};
            app.FDSelectionListBox.Items = {};
            app.FDSelectionListBox_2.Items = {};
            app.FD_select = [];
            app.FD_select_2 = [];
            % run FD_PlotData_reset to reset the buttons in FD data analysis tab to
            % default
            FD_PlotData_reset(app);
        end

        % Button pushed function: SaveData_TD
        function SaveData_TDPushed(app, event)
            % SaveData_TDPushed executes a series of dialouge boxes and saves
            % the selected or all data in the time domain tab
            % pop up box to double check intention of saving all data
            question = "Do you want to save all data?";
            % the dialouge box is titled 'Data Range'
            % available options in responding to question are 'Yes' or 'No, only selected data'
            % if the return key is pressed, the dialouge box will remain
            % open
            answer = questdlg(question,'Data Range','Yes','No, only selected data','cancel');
            
            % in the 'select file to write' dialouge box, allow files to be
            % saved a '*.mat' file or all types
            filter = {'*.mat';'*.*'};
            [filename, filepath] = uiputfile(filter);
            % when the cancel button is selected, the filename and filepath
            % values are registered as zero. do not continue to perform
            % this function.            
            if isequal(filename,0)||isequal(filepath,0)
                return;          
            end
                       
            % create a string with the file path together with the file
            % name
            fullfile = strcat(filepath,filename);
            
            % if 'yes' is selected for saving all data, all data is saved
            if isequal(answer,'Yes')
                ListItems = app.MeasurementListBox.Items;
                TD_data = app.TD_data;
            % if only selected data are to be saved
            else
                % if no items are in the TD selection box, display error
                % message and do not continue to perform the function
                if isempty(app.TD_select)
                    warning('There are no selected data.')
                    return;
                end
                
                % extracting the selected item names and the data (this extends to the for loop below)
                ListItems = app.SelectionListBox.Items;
                ListIdx = app.TD_select;
                cnt = 1
                
                for Idx = ListIdx
                   TD_data.samples{cnt,1} = app.TD_data.samples{Idx,1};
                   TD_data.samples{cnt,2} = app.TD_data.samples{Idx,2};
                   TD_data.references{cnt,1} = app.TD_data.references{Idx,1};
                   TD_data.references{cnt,2} = app.TD_data.references{Idx,2};
                   TD_data.sampleList{cnt} = app.TD_data.sampleList{Idx};
                   TD_data.settings{cnt} = app.TD_data.settings{Idx};
                   %TD_data.analysis{cnt} = app.TD_data.analysis{Idx}; %[Re_max, delta_t, n_eff, elt_t]
                 
                   cnt = cnt + 1;
                end
                TD_data.totalMeasNum = length(ListIdx);

            end

            % save TD data in a structure and all item names as a
            % list in a cell
            save(fullfile,'TD_data','ListItems');
        end

        % Button pushed function: LoadData_TD
        function LoadData_TDButtonPushed(app, event)
            % LoadData_TDButtonPushed loads data from a *.mat file to the time domain tab
            % open a dialouge box for user to select a *.mat file from a folder
            [filename, filepath] = uigetfile('*.mat');
            
            % if either the file name or file path has a value of 0, do not
            % continue to execute the function
            if isequal(filename,0)||isequal(filepath,0)
                return;
            end
            
            % catenate the file path and file name to a single string
            fullfile = strcat(filepath,filename);
            
            % empty arrays associated with the time domain (TD) tab via the
            % TDdataDel function
            TDdataDel(app);
            % load the file
            load(fullfile);
            % extract data from the file to corresponding sections in the app
            app.TD_data = TD_data;
            app.MeasurementListBox.Items = ListItems;
            app.MeasurementListBox.ItemsData = (1:length(ListItems));
            % enable the Fourier transform function
            app.TRANSFORMButton.Enable = true;
            
            % empties the sample list and settings in the frequency domain tab
            app.FD_data.sampleList = {};
            app.FD_data.settings = {};
        end

        % Button pushed function: SaveData_FD
        function SaveData_FDButtonPushed(app, event)
            % SaveData_FDButtonPushed saves data from the frequency domain tab

            % in the 'select file to write' dialouge box, allow files to be
            % saved a '*.mat' file or all types
            filter = {'*.mat';'*.*'};
            % extracts the selected/specified file path
            [filename, filepath] = uiputfile(filter);
            
            % if either the file name or file path has a value of 0, do not
            % continue to execute the function
            if isequal(filename,0)||isequal(filepath,0)
                return;          
            end
            
            % catenate the file path and file name to a single string
            fullfile = strcat(filepath,filename);
            % saving the data
            ListItems = app.FDListListBox.Items;
            ListItems2 = app.FDSelectionListBox_2.Items;
            FD_data = app.FD_data;
            save(fullfile,'FD_data','ListItems','ListItems2');
        end

        % Button pushed function: ALLFDButton_2
        function ALLFDButton_2Pushed(app, event)
           % ALLFDButton_2Pushed adds all items from the FD list to the FD
           % selection box
            
            % extracting the number of items in the FD List
            ListBoxItemValue = app.FDListListBox.ItemsData;
            app.FD_select_2 = ListBoxItemValue;
            
            % if the ListBoxItemValue is empty, do not continue to execute
            % this function
            if isempty(ListBoxItemValue)
                return;
            end
                
            % extract all items from the FD List
            for ListNo = 1:length(app.FD_select_2)
                ItemNo = app.FD_select_2(ListNo);
                AddItem = app.FD_data.sampleList{ItemNo};
                ListBoxItem{ListNo} = AddItem;
            end
                       
            % place all the extracted items into the FD selection box
            app.FDSelectionListBox_2.ItemsData = ListBoxItemValue;
            app.FDSelectionListBox_2.Items = ListBoxItem;
            
            % disable buttons in the FD data analysis tab via the
            % AdvFDbuttonsEnable function
            AdvFDbuttonsEnable(app,0);
        end

        % Button pushed function: ADDFDButton_2
        function ADDFDButton_2Pushed(app, event)
            % ADDFDButton_2Pushed adds the selected item from the FD list to
            % the FD selection box
            
            % extract item to be added from the FD List
            addItem = app.FDListListBox.Value;
            % empty arrays
            ListBoxItem = {};
            ListBoxItemValue = [];
            
            % if there are no items in the FD list, do not continue to
            % execute the function
            if isempty(addItem)
                return;
            end
            
            % if the FD selection list do not contain the item to be added
            if ~sum(app.FD_select_2 == addItem)
                % add the item to the FD selection list
                app.FD_select_2 = [app.FD_select_2 addItem];
                % sort the selection list
                app.FD_select_2 = sort(app.FD_select_2);
                ListBoxItemValue = app.FD_select_2;
                
                % extract all items from the selection list
                for ListNo = 1:length(app.FD_select_2)
                   ItemNo = app.FD_select_2(ListNo);
                   AddItem = app.FD_data.sampleList{ItemNo};
                   ListBoxItem{ListNo} = AddItem;
                end
                       
             % update the FD selection box with the selection list
             app.FDSelectionListBox_2.ItemsData = ListBoxItemValue;
             app.FDSelectionListBox_2.Items = ListBoxItem;          
            end 
            
            % if the added item is not on the first of the FD
            % list, default select the item above the added item in the
            % list box
            if ~isequal(addItem,1)
                List = app.FDListListBox.ItemsData;
                curLoc = sum(List < addItem);
                if ~isequal(curLoc,0)
                    cursor = List(curLoc);
                    app.FDListListBox.Value = cursor;                  
                end
            end 
            
            % disable buttons in the FD data analysis tab via the
            % AdvFDbuttonsEnable function
            AdvFDbuttonsEnable(app,0);
        end

        % Button pushed function: DELFDButton_2
        function DELFDButton_2Pushed(app, event)
            % DELFDButton_2Pushed deletes the selected item from the FD
            % seelction box
            
            % extract the item selected
            delItem = app.FDSelectionListBox_2.Value;
            % empty arrays
            ListBoxItem = {};
            ListBoxItemValue = [];
            
            % if only one item is selected for deletion
            if size(delItem,1)
                % if the selection list contains the item to be deleted
                if  sum(app.FD_select_2 == delItem)
                    % delete item from the selection list
                    app.FD_select_2 = app.FD_select_2(app.FD_select_2~=delItem);
                    ListBoxItemValue = app.FD_select_2;
                
                % extract all items from the selection list
                for ListNo = 1:length(app.FD_select_2)
                   ItemNo = app.FD_select_2(ListNo);
                   AddItem = app.FD_data.sampleList{ItemNo};
                   ListBoxItem{ListNo} = AddItem;
                end
                       
                % update the FD selection box with the selection list
                app.FDSelectionListBox_2.ItemsData = ListBoxItemValue;
                app.FDSelectionListBox_2.Items = ListBoxItem;
                
                % if the added item is not on the first of the FD
                % list, default select the item above the added item in the
                % list box
                if ~isempty(ListBoxItemValue)
                    curLoc = sum(ListBoxItemValue<delItem);
                        if isequal(curLoc,0)
                           curLoc = 1; 
                        end
                    cursor = ListBoxItemValue(curLoc);
                    app.FDSelectionListBox_2.Value = cursor;
                end
            
            end         
            end
        end

        % Value changed function: FDSelectionListBox_2
        function FDSelectionListBox_2ValueChanged(app, event)
            % FDSelectionListBox_2ValueChanged updates fields with the new
            % input values
            
            % extract the index of the selected item
            idx = app.FDSelectionListBox_2.Value;
            
            % extract the input description
            description = app.FD_data.settings{idx}.description;
            
            % extract the input values
            % thickness->FD_data.settings(idx).thickness=[sam ref]
            sam_thickness = app.FD_data.settings{idx}.thickness;
            ref_thickness = app.FD_data.settings{idx}.refThickness;
            etlNum_ref = app.FD_data.settings{idx}.etlNum_ref;
            etlNum_sam= app.FD_data.settings{idx}.etlNum_sam;
                       
            % display in EditTextFields
            app.DescriptionEditField_FD.Value = description;
            app.RefEditField.Value = ref_thickness;
            app.SampleEditField.Value = sam_thickness;
            app.RefNMREditField.Value = etlNum_ref;
            app.SampleNMREditField.Value = etlNum_sam;
                        
        end

        % Button pushed function: CALCULATEOPTICALPARAMATERSButton
        function CALCULATEOPTICALPARAMATERSButtonPushed(app, event)
            % CALCULATEButtonPushed calculates the refractive index, the
            % absorption coefficient, extinction coefficient and the dielectric
            % constants of the sample
            
            % if no items are in the FD selection box (under FD data
            % analysis), display warning message
            if isempty(app.FD_select_2)
                fig = app.CatsperUIFigure;
                uialert(fig,'There is no item to calcate in the list','Warning');
                return;
            end
            
            % perform the following for each item
            for FDindex = app.FD_select_2
                % calculate the difference between the measured thickness
                % and the input reference thickness (this is zero if nothing is placed in the reference measurement)
                t_diff = abs(app.FD_data.settings{FDindex}.thickness -...
                    app.FD_data.settings{FDindex}.refThickness);
                
                % if there is no data on the measured thickness, display
                % error message and do not continue to perform the function
                if isempty(app.FD_data.settings{FDindex}.thickness)
                    fig = app.CatsperUIFigure;
                    ID = app.FD_data.sampleList{FDindex};
                    msg = strcat((ID)," doesn't have the thickness information.");
                    uialert(fig,(msg),'Calculation Aborted');
                    return;
                end
                
                c = 299792458; % the speed of light
                n_medium = 1; % refractive index of medium
                n_reference = 1; % refractive indx of the reference
                % calculate the refractive index of the sample using values
                % extracted from frequency domain calculations
                n_sample = c.*app.FD_data.transmit_phase{FDindex}./...
                    (2*pi*app.FD_data.frequency{FDindex}.*t_diff*10^-3) + 1;
                
                % calculate the absorption coefficient, the logartihm base is e.
                % the following procedures references equation two in the work by Jepsen
                % and Fischer, 2005 (doi.org/10.1364/OL.30.000029) and breaks down equation two into steps
                
                ref_factor = 4.*n_medium.*n_reference./...
                    ((n_medium + n_reference).^2);
                sam_factor = 4.*n_medium.*n_sample./...
                    ((n_medium + n_sample).^2);
                scaleFactor = ref_factor./sam_factor;
                
                scaledTransmitMag = ...
                    app.FD_data.transmit_amplitude{FDindex}.*scaleFactor;
                
                absorption = -2./(t_diff*0.1).*log(scaledTransmitMag); % unit: cm^-1
                % calcuate extinction coefficients
                % 100 is for compensating cm to m in absorption calculation
                % absorption = 4pi*f*k/c -> k = c*absorption/4pi*f
                extinction = c*100*absorption./(4*pi*app.FD_data.frequency{FDindex});

                % storing calculated values
                app.FD_data.refractiveIndex{FDindex} = n_sample;
                app.FD_data.absorption{FDindex} = absorption; 
                app.FD_data.extinction{FDindex} = extinction;
                
                % calculate real and imaginary parts of the dielectric constancts
                eReal = n_sample.^2 - extinction.^2;
                eImag = 2 * n_sample.*extinction;
                
                app.FD_data.eReal{FDindex} = eReal;
                app.FD_data.eImag{FDindex} = eImag;
                
            end
            
            % enable absorption, refractive index, dielectric constant btn
            AdvFDbuttonsEnable(app,1);
        end

        % Button pushed function: PLOT1FDButton_2
        function PLOT1FDButton_2Pushed(app, event)
            plotFD_data2(app,app.UIAxes3);
        end

        % Button pushed function: PLOT2FDButton_2
        function PLOT2FDButton_2Pushed(app, event)
            plotFD_data2(app,app.UIAxes4);
        end

        % Selection changed function: PlotDataButtonGroup
        function PlotDataButtonGroupSelectionChanged(app, event)
            % PlotDataButtonGroupSelectionChanged enables different corresponding 
            % graph plotting options, based on the plot type of transmittance, 
            % absorption coefficient, refractive index and dielectric constant   
            
            % extract the value of the selected button
            selectedButton = app.PlotDataButtonGroup.SelectedObject.Text;
            
            % catenate strings into one
            if size(selectedButton,1) == 2;
                selectedButton = strjoin(selectedButton(1));
            end
            
            % based on the selected options, enable/disable the options of
            % linear/log y-scale, plotting magnitude/phase, real/imaginary
            % values
            switch selectedButton
                % for transmittance, options include plotting linear/log y-scale and magnitude/phase
                case 'TRANSMITTANCE'
                    app.YscaleButtonGroup_2.Visible = true;
                    app.MagPhaseButtonGroup_2.Visible = true;
                    app.RealImagButtonGroup.Visible = false;

                    % for dielectric constant, options include plotting
                    % real/imaginary values                
                case 'DIELECTRIC'
                    app.linearButton_2.Value = true;
                    app.YscaleButtonGroup_2.Visible = false;
                    app.MagPhaseButtonGroup_2.Visible = false;
                    app.RealImagButtonGroup.Visible = true;

                    % for refractive index, options include plotting
                    % real/imaginary values                        
                case 'REFRACTIVE'
                    app.linearButton_2.Value = true;
                    app.YscaleButtonGroup_2.Visible = false;
                    app.MagPhaseButtonGroup_2.Visible = false;
                    app.RealImagButtonGroup.Visible = true;

                    % for absorption coefficient, no options are available                    
                otherwise
                    app.linearButton_2.Value = true;
                    app.YscaleButtonGroup_2.Visible = false;
                    app.MagPhaseButtonGroup_2.Visible = false; 
                    app.RealImagButtonGroup.Visible = false;
            end
            
        end

        % Callback function
        function PLOTREFRACTIVEINDICESButtonPushed(app, event)
            % PLOTREFRACTIVEINDICESButtonPushed plots the time domain refractive indices of
            % different measurements
            
            % Create UIFigure and hide until all components are created
            fig = uifigure('Visible', 'on');
            fig.Position = [100 100 1100 600];
            fig.Name = 'EFFECTIVE REFRACTIVE INDEX';

            % Create UIAxes
            ax = uiaxes(fig);
            title(ax, 'REFRACTIVE INDEX')
            xlabel(ax, 'SAMPLE LIST')
            ylabel(ax, 'REFRACTIVE INDEX (n)')
            ax.Position = [20 10 1065 550];

            labels= {};
            idxNum = app.TD_data.totalMeasNum;
            tList = [];
            
            % extract the strings of the names for each sample measurement,
            % and replaces the '_' with ' '
            for idx=1:idxNum
                labels{idx} = strrep(strjoin(app.TD_data.sampleList{idx}),'_',' ');
                tList =[tList app.TD_data.settings{idx}.refractiveIndex];
            end
            
            % on the x-tick, label the plotted values with the
            % corresponding measurement name
            ax.XTick = (1:idxNum);
            ax.XTickLabel = labels;
            ax.XTickLabelRotation= 45;
            plot(ax,(1:idxNum),tList,'-o');
        end

        % Value changed function: LEGENDButton_2
        function LEGENDButton_2ValueChanged(app, event)
            % LEGENDButton_2ValueChanged displays or hides legend based on
            % user's specified preference
            value = app.LEGENDButton_2.Value;
            if isequal(value,0)
                legend(app.UIAxes1,"hide");
                legend(app.UIAxes2,"hide");
            else
                legend(app.UIAxes1,"show");
                legend(app.UIAxes2,"show");
            end
        end

        % Value changed function: JETCOLORMAPButton
        function JETCOLORMAPButtonValueChanged(app, event)
            % JETCOLORMAPButtonValueChanged applies the jet colormap to the lines in the plot if user
            % selects the jet colormap option, otherwise the lines colormap is applied
            value = app.JETCOLORMAPButton.Value;
            idxNum = length(app.TD_select);
            if isequal(value,1)
                app.UIAxes1.ColorOrder = flipud(jet(idxNum));
                app.UIAxes2.ColorOrder = flipud(jet(idxNum));
            else
                app.UIAxes1.ColorOrder = lines(idxNum);
                app.UIAxes2.ColorOrder = lines(idxNum);
            end
        end

        % Value changed function: LEGENDButton
        function LEGENDButtonValueChanged(app, event)
            % LEGENDButtonValueChanged displays or hides legend based on
            % user's specified preference

            value = app.LEGENDButton.Value;
             if isequal(value,0)
                legend(app.UIAxes3,"hide");
                legend(app.UIAxes4,"hide");
            else
                legend(app.UIAxes3,"show");
                legend(app.UIAxes4,"show");
            end
            
        end

        % Value changed function: JETCOLORMAPButton_2
        function JETCOLORMAPButton_2ValueChanged(app, event)
            % JETCOLORMAPButton_2ValueChanged applies the jet colormap to the lines in the plot if user
            % selects the jet colormap option, otherwise the lines colormap is applied

            value = app.JETCOLORMAPButton_2.Value;
            idxNum = length(app.FD_select_2);
            if isequal(value,1)
                app.UIAxes3.ColorOrder = flipud(jet(idxNum));
                app.UIAxes4.ColorOrder = flipud(jet(idxNum));
            else
                app.UIAxes3.ColorOrder = lines(idxNum);
                app.UIAxes4.ColorOrder = lines(idxNum);
            end
        end

        % Button pushed function: CHECKDYNAMICRANGEButton
        function CHECKDYNAMICRANGEButtonPushed(app, event)
            % CHECKDYNAMICRANGEButtonPushed performs fast fourier transform on the sample measurements,
            % calculates the transmittance and absorption coefficient, and then
            % open the DR checker app together with these values 

            % extract input value            
            measNum = app.SelectionListBox.Value;
            td_max = app.MaxTimeEditField.Value;
            td_min = app.MinTimeEditField.Value;
            upscale = app.ZeroFillingpowerofSpinner.Value; 

            % display warning message if no items are selected
            if isempty(measNum)
                fig = app.CatsperUIFigure;
                uialert(fig,'Select an item in the the list','Warning');
                return;
            end

            % reference waveform
            % extract the time spacing between logged values
            xSpacing = app.TD_data.settings{measNum}.xSpacing;
            % convert the time spacing into frequency spacing
            fs = 1/(xSpacing*10^-12); % obtain sampling frequency based on xSpacing value
            t_reference = app.TD_data.references{measNum,1};
            E_reference = app.TD_data.references{measNum,2};
                
            % sample waveform
            t_sample = app.TD_data.samples{measNum,1};
            E_sample = app.TD_data.samples{measNum,2};
                          
            % finding the first index that has a time equal or greater than the
            % minimum time delay    
            cutoff_low = sum(t_sample < td_min) + 1;
            % finding the greatest value index that has a time less than the
            % maximum time delay
            cutoff_high = sum(t_sample < td_max);
                
            % trim the reference electric field vector using the
            % selected indices
            E_reference = E_reference(cutoff_low:cutoff_high);
            % trim the sample electric field vector using the
            % selected indices
            E_sample = E_sample(cutoff_low:cutoff_high);
                
            % fast Fourier tranform
            samNum = length(E_sample);
            % calculating the length of the sample electric field with
            % an upscale added
            % this is calculated using a power of two, which the exponent is a sum of
            % the nearest integer (greater than or equal to) exponent that
            % returns the original length of the sample electric
            % field, and the exponent specified by the user on
            % upscaling
            N = 2^(nextpow2(length(E_sample))+upscale);
                
            % perform N-point discrete Fourier transform (multiplying N-by-N square matrix with the vector, of length N, to be Fourier transformed)
            % perform this on both reference and sample electric field
            % measurement
            % the Fourier transform transforms the time domain data
            % into frequency domain
            FD_reference = fft(E_reference,N);
            FD_sample = fft(E_sample,N);
                
            % Calculate the double and single-sided spectra
            % create a frequency vector from 0 to half the frequency
            % spacing (calculated earlier in this function), in
            % increments equivalent to the value obtained by dividing the frequency
            % spacing with the upscaled data length
            freqs = 0:fs/N:fs/2;
            % trim the frequency domain data, for both reference and sample, to the same length as
            % 'freq', and adjust the values in the vector by dividing
            % with the original length of sample values
            FD_reference = FD_reference(1:N/2 + 1)/samNum;
            FD_sample = FD_sample(1:N/2 + 1)/samNum;
            
            % find the first index that has a frequency
            % less than 0.2 THz
            cutoff_low = sum(freqs < 0.2*10^12) + 1;
            % find the first index that has a frequency
            % less than 5 THz
            cutoff_high = sum(freqs < 5*10^12); 
                
            % trim the frequency, reference and sample data values
            % using the upper cutoff limit
            FD_frequency = freqs(1:cutoff_high);                
            FD_reference = FD_reference(1:cutoff_high);
            FD_sample = FD_sample(1:cutoff_high);

            % unwrap phase data (calling TDS-unwrap function)
            % unwrapping phase values for reference and sample
            % measurements in frequency domain
            uw_refPhase = TDSunwrap(app,angle(FD_reference),FD_frequency);
            uw_samPhase = TDSunwrap(app,angle(FD_sample),FD_frequency);

            % cut off lower frequency part
            FD_frequency = FD_frequency(cutoff_low:end);
            FD_reference = FD_reference(cutoff_low:end);
            FD_sample = FD_sample(cutoff_low:end);
            uw_refPhase = uw_refPhase(cutoff_low:end);
            uw_samPhase = uw_samPhase(cutoff_low:end);
              
            % calculate Transmittance
            transmAmp = abs(FD_sample)./abs(FD_reference);
            transmPha = uw_refPhase - uw_samPhase;
         
            % calculate the absorption coefficient, the logartihm base is e.
            % this is calculated by referencing equation 2 from Jepsen and Fischer (DOI: 10.1364/ol.30.000029)
            % the calculation is broken down into steps
            
            c = 299792458; % the speed of light
            n_medium = 1; % refractive index of medium
            n_reference = 1; % refractive indx of the reference
            thickness = app.TD_data.settings{measNum}.thickness;
            n_sample = c.*transmPha./(2*pi*FD_frequency.*thickness*10^-3) + 1;
            ref_factor = 4*n_medium*n_reference/((n_medium + n_reference).^2);
            sam_factor = 4*n_medium*n_sample/((n_medium + n_sample).^2);
            scaleFactor = ref_factor/sam_factor;
            scaledTransmitMag = transmAmp*scaleFactor;
                
            absorption = -2./(thickness*0.1).*log(scaledTransmitMag); % unit: cm^-1
  
            % Find the selected item in the list box
            refF = abs(FD_frequency);
            refE = abs(FD_reference);
            samA = absorption;
            sampleID = strjoin(app.TD_data.sampleList{measNum});
            n_eff = app.TD_data.settings{measNum}.refractiveIndex;
            
            % open the DR checker app with the calculated values
            app.DialogApp = DR_Checker(app,refF,refE,samA,n_eff,thickness,sampleID);
        end

        % Button pushed function: PLOTFORCUSTOMISATIONButton_FD2
        function PLOTFORCUSTOMISATIONButton_FD2Pushed(app, event)
            plotFD_dataNew(app);
        end

        % Button pushed function: dataManipulationButton
        function dataManipulationButtonPushed(app, event)
            % dataManipulationButtonPushed extracts values and arrays in the
            % frequency domain tab to the data manipulation tab, and sets up th
            % drop down menu
            
            % extracting arrays and values
            dataList = app.FD_select_2;
            dataList2 = app.FDSelectionListBox_2.Items;
            dataList2v = app.FDSelectionListBox_2.ItemsData;
            app.AvailableDataSetEditField.Value = num2str(dataList);
            app.data3DDropDown.Items = dataList2;
            app.data3DDropDown.ItemsData = dataList2v;
            app.DM_data.set = 'FD_data';
            itemList = {'frequency', 'ref_amplitude', 'ref_phase', 'sam_amplitude', 'sam_phase', 'transmit_amplitude', 'transmit_phase', 'refractiveIndex', 'absorption', 'extinction', 'eReal', 'eImag'};
            app.AforDropDown.Items = itemList;
            app.BforDropDown.Items = itemList;
            app.CforDropDown.Items = itemList;
            app.TabGroup.SelectedTab = app.TabGroup.Children(3);
        end

        % Button pushed function: IMPORTALLDATAButton
        function IMPORTALLDATAButtonPushed(app, event)
            % IMPORTALLDATAButtonPushed imports all datasets to the source data
            % set list in the DM tab and makes them available for data manipulation
        
            dataList = app.FD_select_2;
            app.SourceDataSetEditField.Value = num2str(dataList);
        end

        % Button pushed function: CALCULATEButton_2
        function CALCULATEButton_2Pushed(app, event)
            % CALCULATEButton_2Pushed extracts the relevant data that is
            % specified as A, B and C in DM tab and calculates the specified
            % Y-axis data formulation
            
            % convert the strings in the source data set to numerical values
            dataList = str2num(app.SourceDataSetEditField.Value);
            % extract the number of values
            app.NumberofDataEditField.Value = length(dataList);
            % enable the plotting functions
            app.PLOTindividualdatasetsButton.Enable = "on";
            app.PLOTmeanandrangeButton.Enable = "on";
            
            % extract the parameter that is set to be the y-axis
            Func = app.YaxisDataFormulationEditField.Value;
            
            % do not continue to execute the function if 'Func' is empty
            if isempty(Func)
                return;
            end
            
            dataSrc = app.DM_data.set;
            
            % performing the following for each data set
            for idx = dataList
                % extract parameters that A, B and C corresponds to
                A = app.AforDropDown.Value;
                B = app.BforDropDown.Value;
                C = app.CforDropDown.Value;
                
                % extract the relevant data
                A = app.(dataSrc).(A){idx};
                B = app.(dataSrc).(B){idx};
                C = app.(dataSrc).(C){idx};
                
                % based on the extracted data, calculate the parameter as
                % defined by 'Func'
                output = eval([(Func)]);
                app.DM_data.base{idx} = output;
            end
        end

        % Button pushed function: PLOTindividualdatasetsButton
        function PLOTindividualdatasetsButtonPushed(app, event)
            % PLOTindividualdatasetsButtonPushed plots the specified data sets
            % individually based on the specified values as x and y data

%             if ~exist('app.FD_data.DM1')
%                 display("no data to plot")
%                 return;
%             end
            
            ax = app.UIAxes9;
            
            % deleting graphics objects, that are specified by 'ax', from the axes
            cla(ax);
            % convert the strings in the source data set to numerical values
            dataList = str2num(app.SourceDataSetEditField.Value);
            % extract input value from Y axis data formulation
            ax.YLabel.String = app.YaxisDataFormulationEditField.Value;
            hold(ax,"on");
            
            % extract chosen X axis data value
            xData = app.XaxisDataDropDown.Value;
            % extract the strings of the available data set
            dataSrc = app.DM_data.set;
            
            % plot the selected data sets specified in 'source data sets'
            for idx = dataList
                plot(ax,app.(dataSrc).(xData){idx},app.DM_data.base{idx},"LineWidth",1);
            end
            
            % extract parameters that A, B and C corresponds to
            A = app.AforDropDown.Value;
            B = app.BforDropDown.Value;
            C = app.CforDropDown.Value;
            % creating y-label
            ylabel = strrep(app.YaxisDataFormulationEditField.Value,'A',A);
            ylabel = strrep(ylabel,'B',B);
            ylabel = strrep(ylabel,'C',C);
            
            % put axis labels on plot
            ax.reset;
            ax.YLabel.String = ylabel;
            ax.YLabel.Interpreter = "none";
            ax.XLabel.String = app.XaxisDataDropDown.Value;
            hold(ax,"off");
            
        end

        % Button pushed function: DISPLAYXLINESButton
        function DISPLAYXLINESButtonPushed(app, event)
            % DISPLAYXLINESButtonPushed plots red dashed lines at specified
            % frequencies on the plot

            ax = app.UIAxes9;
            % convert the input frequencies from strings to numerical values
            selectedFreq = str2num(app.GetDatafromFrequencyTHzEditField.Value);
            
            % plotting red x lines (straight lines) on the plot at the
            % specified frequencies
            for idx = selectedFreq
                idxLoc = idx*10^12;
                xlineName = strcat(num2str(idx)," THz");
                xline(ax,idxLoc,'--r',xlineName);
            end
        end

        % Button pushed function: REARRANGEDATAButton
        function REARRANGEDATAButtonPushed(app, event)
            % REARRANGEDATAButtonPushed rearranges the y-axis data formulation
            % value first according to the specified frequncies and then
            % according to data sets
            
            % convert the strings in the source data set to numerical values
            dataList = str2num(app.SourceDataSetEditField.Value);
            % convert the input frequencies from strings to numerical value
            freqList = str2num(app.GetDatafromFrequencyTHzEditField.Value);
            cnt1 = 0;
            
            % for each specified frequency
            for freqIdx = freqList
                % empty array
                dmData = [];
                xtempList = [];
                % setting counts
                cnt1 = cnt1 +1;
                cnt2 = length(dataList);
                
                % for each specified data sets
                for idx = dataList
                    % extract frequency values for the data set
                    freq = app.FD_data.frequency{idx};
                    % convert the specified frequency into units of THz
                    freqTHz = freqIdx * 10^12;
                    % find the index for the first frequency that has a
                    % value greater than the specified frequency
                    freqLoc = find(freq > freqTHz,1);
                    % extract the corresponding value as calculated from y
                    % axis data formulation and adds it to the first position of the array
                    % designated to the specified data set
                    dmData = [app.DM_data.base{idx}(freqLoc) dmData];
                    
                    % extract the common name for the set of data and the
                    % individual measurement identifiers
                    xList = app.FD_data.sampleList{idx};
                    comLoc = strfind(xList,':');
                    % common name for the set of data
                    barLoc = strfind(xList,'_');
                    preName = xList(comLoc+1:barLoc-1);
                    % individual measurement identifier
                    xTemp = xList(barLoc + 1:end);
                    xtempList{cnt2} = xTemp;
                    cnt2 = cnt2 - 1;
                end
                
                % display the name of the data set 
                app.MeasurementEditField.Value = preName;
                % store the frequency value as a string together with the
                % unit 'THz'
                dataFreq = strcat(num2str(freqIdx)," THz");
                app.DM_data.freq{cnt1} = dataFreq;
                % store the specific data value
                app.DM_data.values{cnt1} = dmData;
            end
            
            % stores the total number of specified frequency
            app.DM_count = cnt1;
            % stores the list of names of the specified data sets
            app.DM_data.tempList = xtempList;
            % stores the list of names of the specified data sets as a matrix
            app.XaxisDataEditField.Value = cell2mat(xtempList);
            % enable graph plotting
            app.PLOTButton_2.Enable = "on";
        end

        % Button pushed function: PLOTButton_2
        function PLOTButton_2Pushed(app, event)
            % PLOTButton_2Pushed plots the y-axis data formulation value
            % against data sets for different specified frequencies

            ax = app.UIAxes10;
            % empty legend
            lgd = {};
            % extracting strings for labels in plot
            labels = app.DM_data.tempList;
            % find the number of labels
            numLabels = length(labels);
            
            % deleting graphics objects, that are specified by 'ax', from
            % the axes
            cla(ax)
            hold(ax,"on")
            
            % for each specified frequency
            for idx = 1:app.DM_count
                % setting legends as the specified frequencies
                lgd{idx} = app.DM_data.freq{idx};
                % extracting the data values to be plotted as y-value
                yData = app.DM_data.values{idx};
                % plotting the values
                plot(ax,yData,'--o','LineWidth',1);
            end
            
            % formatting plot title, x-ticks and x-labels
            ax.reset;
            ax.XTick = (1:numLabels);
            ax.XLabel.String = app.XLabelEditField.Value;
            ax.Title.String = app.MeasurementEditField.Value;
            ax.XTickLabel = labels;
            ax.XTickLabelRotation= 45;
            ax.TickLabelInterpreter = 'none';
            legend(ax,lgd,'Interpreter','none');
            hold(ax,"off")
        end

        % Button pushed function: ASSIGNButtonDM
        function ASSIGNButtonDMPushed(app, event)
            % ASSIGNButtonDMPushed assigns the values in app.DM_data to the
            % variable 'DM_data' to the base workspace

            assignin('base',"DM_data",app.DM_data);
        end

        % Button pushed function: REARRANGEDATAButton_2
        function REARRANGEDATAButton_2Pushed(app, event)
            % REARRANGEDATAButton_2Pushed calls the findDMPeaks function,
            % extracts and stores both the common name for the set of data and
            % the individual measurement identifiers
            
            % convert the strings in the source data set to numerical values
            dataList = str2num(app.SourceDataSetEditField.Value);
            % find the number of data sets specified 
            cnt = length(dataList);
            
            % call findDMPeaks function
            app.findDMPeaks;
         
            % extract the common name for the set of data and the
            % individual measurement identifiers
            for idx = dataList
                xList = app.FD_data.sampleList{idx};
                comLoc = strfind(xList,':');
                barLoc = strfind(xList,'_');
                % common name for the set of data
                preName = xList(comLoc+1:barLoc-1);
                % individual measurement identifier
                xTemp = xList(barLoc + 1:end);
                xtempList{cnt} = xTemp;
                cnt = cnt - 1;
            end
           
            % store the common name for the set of data
            app.MeasurementEditField_2.Value = preName;
            % store the individual measurement identifiers
            app.DM_data.tempList = xtempList;
            % convert the individual measurement identifiers to matrix
            app.XaxisDataEditField_2.Value = cell2mat(xtempList);
        end

        % Callback function
        function MinPeakProminenceSliderValueChanged(app, event)
            % MinPeakProminenceSliderValueChanged detects the value change by
            % the minimum peak prominence slider and displays the same value on
            % the minimum peak prominence edit field, and finally calls the
            % findDMPeaks function

            value = app.MinPeakProminenceSlider.Value;
            app.MinPeakProminenceEditField.Value = value;
            findDMPeaks(app);
        end

        % Callback function
        function EditFieldValueChanged(app, event)
            % EditFieldValueChanged detects the value change by
            % the minimum peak prominence edit field and displays the same value on
            % the minimum peak prominence slider, and finally calls the
            % findDMPeaks function    

            value = app.MinPeakProminenceEditField.Value;
            app.MinPeakProminenceSlider.Value = value;
            findDMPeaks(app);
        end

        % Value changed function: LowerLimitTHzEditField
        function LowerLimitTHzEditFieldValueChanged(app, event)
            % LowerLimitTHzEditFieldValueChanged extracts the updated value in
            % the lower limit (THz) field and then calls the findDMPeaks function

            findDMPeaks(app);
        end

        % Button pushed function: PLOTButton_3
        function PLOTButton_3Pushed(app, event)
            % PLOTButton_3Pushed plots specified frequency values 
            % against individual data sets

            ax = app.UIAxes10;
            % extracting strings for labels in plot
            labels = app.DM_data.tempList;
            % find the number of labels
            numLabels = length(labels);
            
            % deleting graphics objects, that are specified by 'ax', from the axes
            cla(ax)
            
            % extract the specified frequency values
            yData = app.DM_data.freqMat;
            % plot specified frequency values against individual data sets
            plot(ax,(1:numLabels),yData,'--o','LineWidth',1);
                  
            % formatting plot title, x-ticks and x-labels      
            ax.reset;
            ax.XTick = (1:numLabels);
            ax.XLabel.String = app.XLabelEditField_2.Value;
            ax.Title.String = app.MeasurementEditField_2.Value;
            ax.XTickLabel = labels;
            ax.XTickLabelRotation= 45;
        end

        % Button pushed function: CLEARMEMORYButton
        function CLEARMEMORYButtonPushed(app, event)
            % CLEARMEMORYButtonPushed creates a dialouge box to ask if the user
            % would like to clear memory and if the answer is yes, arrays and
            % parameters are emptied

                question = "Do you want to clear memory?";
                answer = questdlg(question,'Warning');
                
            % if 'yes' is selected, empty the following arrays and parameters
            if answer == 'Yes'
                app.TD_data = [];
                app.FD_data = [];
                app.DM_data = [];
                app.TD_select = [];
                app.FD_select = [];
                app.FD_select_2 = [];
                app.MeasurementListBox.Items = {};
                app.SelectionListBox.Items = {};
                app.FDListListBox.Items = {};
                app.FDSelectionListBox.Items = {};
                app.FDSelectionListBox_2.Items = {};
                app.filename = [];
                app.fullpathname = [];
                app.PRJ_count = 0;
                app.DEBUGMsgLabel.Text = '';
                app.ProjectsEditField.Value = '';
            end
        end

        % Callback function
        function SwitchValueChanged(app, event)
            % this function is not implemented in the app
            % SwitchValueChanged extracts new values which are changed from the
            % slider and updates the corredponing edit fields with the new
            % values, then runds the updateCFPlot function

            value = app.Switch.Value;
            % if the swtich is activated
            if value == "On"
                % extracts the new value which is changed from the slider
                B = app.BSlider.Value;
                % updates the edit field with the new value
                app.BEditField.Value = B;
                % extracts the new value which is changed from the slider
                b = app.bSlider.Value;
                % updates the edit field with the new value
                app.GAAdjustbEditField.Value = b;
                % runs the updateCFPlot function
                updateCFPlot(app);
            end
        end

        % Callback function
        function ContantCEditFieldValueChanged(app, event)
            updateCFPlot(app);
        end

        % Value changed function: MinPeakProminenceEditField
        function MinPeakProminenceEditFieldValueChanged(app, event)
            findDMPeaks(app);
        end

        % Value changed function: PeakNumSpinner
        function PeakNumSpinnerValueChanged(app, event)
            findDMPeaks(app);
        end

        % Button pushed function: LoadData_FD
        function LoadData_FDButtonPushed(app, event)
            % LoadData_FDButtonPushed loads a *.mat file, extracts its
            % frequency domain data and display the data on the graphical user
            % interface of the app
            
            % open a dialouge box for user to select a *.mat file from a folder
            [filename, filepath] = uigetfile('*.mat');
            
            % if either the file name or file path has a value of 0, do not
            % continue to execute the function
            if isequal(filename,0)||isequal(filepath,0)
                return;
            end
            
            % catenate the file path and file name to a single string
            fullfile = strcat(filepath,filename);
            
            % load the file
            load(fullfile);
            % run FDdataDel to remove all stored frequency domain data on
            % the app
            FDdataDel(app,:);
            % loads frequency domain data from the file to the app and the
            % graphical user interface
            app.FD_data = FD_data;
            app.FDListListBox.Items = ListItems;
            app.FDListListBox.ItemsData = (1:length(ListItems));
            app.FDSelectionListBox_2.Items = ListItems;
            app.FDSelectionListBox_2.ItemsData = (1:length(ListItems));
        end

        % Value changed function: JETCOLORMAPButton_DM
        function JETCOLORMAPButton_DMValueChanged(app, event)
            % JETCOLORMAPButton_DMValueChanged plots data sets using the jet
            % colormap or the lines colormap based on the selection by user
            
            % extracts the selection by user, if the jet colormap button is
            % clicked, the value is one, otherwise the value is zero
            
            value = app.JETCOLORMAPButton_DM.Value;
            % converts the value from a string to number
            dataList = str2num(app.SourceDataSetEditField.Value);
            % extract the number of data sets
            idxNum = length(dataList);
            % if jet colormap is selected, plot data sets using the jet
            % colormap
            if isequal(value,1)
                app.UIAxes9.ColorOrder = flipud(jet(idxNum));
            % if jet colormap is not selected, plot data sets using the lines
            % colormap
            else
                app.UIAxes9.ColorOrder = lines(idxNum);
            end
        end

        % Button pushed function: PLOT1_3DButton
        function PLOT1_3DButtonPushed(app, event)
            % PLOT1_3DButtonPushed plots a 3D plot for the specified data set
        
            ax = app.UIAxes9;
            % extract the chosen data set
            idx = app.data3DDropDown.Value;
            
            % if there is no available data for running the function,
            % display warning message
            if isequal(idx,'noavailabledata')
                fig = app.CatsperUIFigure;
                uialert(fig,'Import data set before using this function.','Warning');
                return;
            end
            
            % deleting graphics objects, that are specified by 'ax', from
            % the axes
            cla(ax);
            % convert the input values in the source data set edit field
            % from strings to numbers
            dataList = str2num(app.SourceDataSetEditField.Value);
            hold(ax,"on");
            
            % extract the data specified as the x-data
            xData = app.XaxisDataDropDown.Value;
            dataSrc = app.DM_data.set;

            % plot the data in a 3D plot using the values specified as A, B and C 
            plot3(ax,app.(dataSrc).frequency{idx},app.(dataSrc).(xData){idx},app.DM_data.base{idx},"LineWidth",1);
            
            % extracts the specified values for A, B, C
            A = app.AforDropDown.Value;
            B = app.BforDropDown.Value;
            C = app.CforDropDown.Value;
            
            % set up the z-label
            zlabel = strrep(app.YaxisDataFormulationEditField.Value,'A',A);
            zlabel = strrep(zlabel,'B',B);
            zlabel = strrep(zlabel,'C',C);
            
            % put the labels onto the plot
            ax.reset;
            ax.XLabel.String = "Frequency";
            ax.ZLabel.String = zlabel;
            ax.YLabel.String = app.XaxisDataDropDown.Value;
            hold(ax,"off");
        end

        % Button pushed function: SAVETDFDDMButton
        function SAVETDFDDMButtonPushed(app, event)
            % SAVETDFDDMButtonPushed saves selected or all time domain data,
            % all frequency domain and data manipulation data

            % TD_data save
            % creates a dialouge box asking if user would like to save all
            % data (time domain, frequency domain and data manipulation),
            % and provides three options for response
            question = "Do you want to save all data?";
            answer = questdlg(question,'Data Range','Yes','No, only selected data','cancel');
            
            % open a dialouge box for saving file as *.mat format or for
            % any file format
            filter = {'*.mat';'*.*'};
            [filename, filepath] = uiputfile(filter);
            
            % if either the file name or file path has a value of 0, do not
            % continue to execute the function
            if isequal(filename,0)||isequal(filepath,0)
                return;          
            end
                        
            % catenate the file path and file name to a single string
            fullfile = strcat(filepath,filename);
            
            % if all data are to be saved, assign the time domain data to parameters
            if isequal(answer,'Yes')
                ListItems = app.MeasurementListBox.Items;
                TD_data = app.TD_data;
            else
                % if no time domain data are selected, display warning message and do
                % not continue to execute the function
                if isempty(app.TD_select)
                    warning('There are no selected data.')
                    return;
                end
                
                % if only selected data are to be saved, assign the
                % selected time domain data to parameters
                ListItems = app.SelectionListBox.Items;
                ListIdx = app.TD_select;
                cnt = 1
                
                for Idx = ListIdx
                   TD_data.samples{cnt,1} = app.TD_data.samples{Idx,1};
                   TD_data.samples{cnt,2} = app.TD_data.samples{Idx,2};
                   TD_data.references{cnt,1} = app.TD_data.references{Idx,1};
                   TD_data.references{cnt,2} = app.TD_data.references{Idx,2};
                   TD_data.sampleList{cnt} = app.TD_data.sampleList{Idx};
                   TD_data.settings{cnt} = app.TD_data.settings{Idx};
                 
                   cnt = cnt + 1;
                end
                % extract the number of selected time domain data for saving
                TD_data.totalMeasNum = length(ListIdx);

            end
            
            % save the time domain data
            save(fullfile,'TD_data','TD_ListItems');
            
            % FD_data save
            % extract the frequency domain data and assign them to
            % parameters
            FD_ListItems = app.FDListListBox.Items;
            FD_ListItems2 = app.FDSelectionListBox_2.Items;
            % save the frequency domain data
            FD_data = app.FD_data;
            save(fullfile,'FD_data','FD_ListItems','FD_ListItems2');
            
            % DM_data save
            % extract the data manipulation data and assign them to parameters
            DM_ListItems = app.SourceDataSetEditField.Value;
            DM_data = app.DM_data;
            save(fullfile,'DM_data','DM_ListItems');
                  
        end

        % Button pushed function: SaveData_DM
        function SaveData_DMButtonPushed(app, event)
            % SaveData_DMButtonPushed saves data generated from the data
            % manipulation tab as a *.mat file
            
            % open a dialouge box for saving file as *.mat format or for any file format
            filter = {'*.mat';'*.*'};
            [filename, filepath] = uiputfile(filter);
            
            % if either the file name or file path has a value of 0, do not
            % continue to execute the function
            if isequal(filename,0)||isequal(filepath,0)
                return;          
            end
            
            % catenate the file path and file name to a single string
            fullfile = strcat(filepath,filename);
            % assign arrays and values to parameters
            ListItems = app.FDListListBox.Items;
            ListItems2 = app.FDSelectionListBox_2.Items;
            DM_data = app.DM_data;
            % save data manipulation data
            save(fullfile,'DM_data');
        end

        % Callback function
        function ANALYSERButtonPushed(app, event)
            % this function is not implemented in the app
            yList = app.DM_data.freq;
            Values = app.DM_data.values;
            tempList = app.DM_data.tempList;
                       
            app.DialogApp = DM_Analyser(app,yList,Values,tempList);
        end

        % Callback function
        function AlgorithmDropDownValueChanged(app, event)
            % this function is not implemented in the app
            value = app.AlgorithmDropDown.Value;
            if isequal(value,'c')
                PLOTALLButtonPushed(app,event);
            end
        end

        % Button pushed function: PLOTmeanandrangeButton
        function PLOTmeanandrangeButtonPushed(app, event)
            % PLOTmeanandrangeButtonPushed caclulates the mean and range for the y axis data formulation values among
            % the data sets at all x-values and then present them on a plot
            
            ax = app.UIAxes9;
            
            % deleting graphics objects, that are specified by 'ax', from the axes
            cla(ax);
            % convert the input values in the source data set edit field from strings to numbers
            dataList = str2num(app.SourceDataSetEditField.Value);
            % extract the value from the y-axis data formulation edit field
            % for generating y-axis label
            ax.YLabel.String = app.YaxisDataFormulationEditField.Value;
            hold(ax,"on");
            
            % extract the data specified as the x-data
            xData = app.XaxisDataDropDown.Value;
            dataSrc = app.DM_data.set;
            % extract the calculated value (specified by Y axis data formulation) for the first data set listed in the source data
            % set edit field
            % note that the minimum and maximum values yet to be determined
            % at this stage
            baseMin = app.DM_data.base{dataList(1)};
            baseMax = app.DM_data.base{dataList(1)};
            % creating a zero column vector which the number of rows is
            % equivalent to the number of data sets
            baseMean = zeros(size(dataList,2),1);
            
            % for each dataset
            for idx = dataList
                % extract the calculated values (specified by Y axis data formulation,
                % each data set has one corresponding calculated value)
                baseCrt = app.DM_data.base{idx};
                % calculate the mean among all values in all data sets
                % baseMean only yields the actual mean value for each
                % column in the Y axis data formulation after this for loop
                % is completed
                baseMean = baseMean + baseCrt./size(dataList,2);
                % extract the minimum value among baseMin and baseCrt
                % the global minimum value is obtained after this for loop
                % is completed
                baseMin = min(baseMin,baseCrt);
                % the global maximum value is obtained after this for loop
                % is completed
                % extract the maximum value among baseMin and baseCrt
                baseMax = max(baseMax,baseCrt);
            end
             
            patch(ax,[app.(dataSrc).(xData){dataList(1)} app.(dataSrc).(xData){dataList(1)}(end:-1:1)],[baseMin baseMax(end:-1:1)],'r','FaceAlpha',0.1,'EdgeColor','none');
            % plot the mean values
            plot(ax,app.(dataSrc).(xData){dataList(1)},baseMean,"LineWidth",1);
            
            % extract parameters that A, B and C corresponds to
            A = app.AforDropDown.Value;
            B = app.BforDropDown.Value;
            C = app.CforDropDown.Value;
            % creating y-label
            ylabel = strrep(app.YaxisDataFormulationEditField.Value,'A',A);
            ylabel = strrep(ylabel,'B',B);
            ylabel = strrep(ylabel,'C',C);
            
            ax.reset;
%             ax.ColorOrder = flipud(jet(length(dataList)));
            % put axis labels on plot
            ax.YLabel.String = ylabel;
            ax.XLabel.String = app.XaxisDataDropDown.Value;
            hold(ax,"off");
        end

        % Button pushed function: ImportTHzFilesButton
        function ImportTHzFilesButtonPushed(app, event)
            % ImportthzFileButtonPushed imports a *.thz file, reads its data
            % and assigns the data to corresponding fields in the app

            % open a dialouge box for user to select a *.thz file from a folder
            [filename, filepath] = uigetfile('*.thz');figure(app.CatsperUIFigure);
            
            % if either the file name or file path has a value of 0, do not
            % continue to execute the function
            PRJ_count = app.PRJ_count; % PRJ_count: number of project files imported

            if isequal(filename,0)||isequal(filepath,0)
                return;
            end

            % if the imported file is already exist in the list,
            % just return
            for cnt = 1:PRJ_count
                if isequal(app.filename{cnt},filename)
                    filename
                    return;
                end
            end

            PRJ_count = PRJ_count + 1;

            fileinfo = strcat(filepath,filename);
            app.filename{PRJ_count} = filename;
            app.fullpathname{PRJ_count} = fileinfo;
   
            allFileList = strjoin(app.filename,',');
            allFileList = strrep(allFileList,'.thz','');          
            app.ProjectsEditField.Value = allFileList;
            
            % initialization
            app.TD_select = [];
            app.FD_select = [];
            app.FD_select_2 = [];
            app.MeasurementListBox.Items = {};
            app.SelectionListBox.Items = {};
            app.FDListListBox.Items = {};
            app.FDSelectionListBox.Items = {};
            cla(app.UIAxes1)
            cla(app.UIAxes2)
            cla(app.UIAxes3)
            cla(app.UIAxes4)

            app.PRJ_count = PRJ_count;
          
        end

        % Button pushed function: DEPLOYButton
        function DEPLOYButtonPushed(app, event)
            idxCap = 1;
            % run the TDdataDel function
            TDdataDel(app);
            allListItems = {};

            for PRJcnt = 1:app.PRJ_count
                % import .thz file to the workspace
                fullpath = app.fullpathname{PRJcnt};

                if isempty(fullpath)
                     return;
                end

                % initialization
                % empty arrays and values
                thzInfo = h5info(fullpath);
                % extract the number of datasets/measurements in the file
                measNum = size(thzInfo.Groups,1);
                % create a column vector
                ListItems = cell(measNum,1);
                % copy the names of the datasets into the column vector 'ListItems'
                [ListItems{:}] = deal(thzInfo.Groups.Name);
                %assignin("base","thzInfo",thzInfo);
                %allListItems = [allListItems;ListItems];
    
                TD_data.totalMeasNum = measNum;
    
                % for each dataset/measurement
                for idx = 1:measNum
                    % create a string for reading data for the dataset
                    %dn = strcat('/',ListItems{idx});
                    dn = ListItems{idx};
                    dn01 = strcat(dn,'/ds01');
                    dn02 = strcat(dn,'/ds02');
                    dn03 = strcat(dn,'/ds03');

                    % read measurement datasets
                    try 
                        ds01 = h5read(fullpath,dn01); % sample datasets
                        TD_data.samples{idxCap+idx-1,1}= ds01(1,:);
                        % first row is taken as the sample measurement time
                        TD_data.samples{idxCap+idx-1,2}= ds01(2,:);
                        % second row is taken as the sample measurement amplitude
                        refOption = 0;
                    catch ME
                        ds01 =[];
                    end

                    try
                        ds02 = h5read(fullpath,dn02); % reference 1 datasets
                        TD_data.references{idxCap+idx-1,1}= ds02(1,:);
                        % first row is taken as the reference measurement time
                        TD_data.references{idxCap+idx-1,2}= ds02(2,:);
                        % second row is taken as the reference measurement amplitude
                        refOption = 1;
                    catch ME
                        ds02 = []; 
                    end

                    try
                        ds03 = h5read(fullpath,dn03); % reference 2 datasets
                        TD_data.references{idxCap+idx-1,3}= ds03(1,:);
                        % first row is taken as the reference 2 measurement time
                        TD_data.references{idxCap+idx-1,4}= ds03(2,:);
                        % second row is taken as the reference 2 measurement amplitude
                    catch ME
                        ds03 = [];
                    end

                    tDelay = h5readatt(fullpath,dn,"time_delay");
                    thickness = h5readatt(fullpath,dn,"thickness");
                    n_eff = h5readatt(fullpath,dn,"n_eff");
                    etl_t = 0;
    
                    % if the array in the dataset has the referecne 1 datasets 
                    if ~isempty(ds02)
                        if isequal(tDelay,0)
                            tDelay = getTimeDelay(app,ds01(1,:),ds01(2,:),ds02(3,:),ds02(4,:));
                        end

                        if ~isequal(thickness,0)
                            n_eff = tDelay*10^-12*3e8/(thickness*10^-3) + 1;
                            etl_t = tDelay + (2*thickness*10^-3*n_eff/3e8)*10^12;
                        end
                    else
                        TD_data.references{idxCap+idx-1,1} = [];
                        TD_data.references{idxCap+idx-1,2} = [];
                    end
    
                    % extract other data and information relating to the
                    % measurement from the dataset or from the attributes
                    allListItems{idxCap+idx-1} = dn(2:end);
                    TD_data.sampleList{idxCap+idx-1}={dn(2:end)};
                    TD_data.settings{idxCap+idx-1}.sampleName = dn(2:end);
                    TD_data.settings{idxCap+idx-1}.scanLength = size(ds01,2);
                    TD_data.settings{idxCap+idx-1}.xSpacing = mean(diff(ds01(1,:)));
                    TD_data.settings{idxCap+idx-1}.description = h5readatt(fullpath,dn,"description");
                    TD_data.settings{idxCap+idx-1}.refDescription = h5readatt(fullpath,dn,"ref_description");
                    TD_data.settings{idxCap+idx-1}.scanStartDateTime = h5readatt(fullpath,dn,"date_time");
                    TD_data.settings{idxCap+idx-1}.refOption = refOption;
                    TD_data.settings{idxCap+idx-1}.timeDelay = tDelay;
                    TD_data.settings{idxCap+idx-1}.refractiveIndex = n_eff;
                    TD_data.settings{idxCap+idx-1}.internalReflection = etl_t;
                    TD_data.settings{idxCap+idx-1}.thickness = thickness;
                    TD_data.settings{idxCap+idx-1}.temperature = h5readatt(fullpath,dn,"temperature");
                    TD_data.settings{idxCap+idx-1}.concentration = h5readatt(fullpath,dn,"concentration");
    
                    % extract the name of the instrument model
                    insModel = extractBefore(h5readatt(fullpath,dn,"instrument"),'/');
    
                    % if the instrument model is not specified, leave the
                    % corresponding field empty
                    if isequal(insModel,"<missing>")
                        TD_data.settings{idxCap+idx-1}.instrument = '';
                    % if the instrument model is specified, assign the value to
                    % the corresponding field
                    else
                        TD_data.settings{idxCap+idx-1}.instrument = insModel;
                    end
    
                end
                idxCap = idxCap + measNum;
            end

            % assigning values and arrays to corresponding fields
            app.TD_data = TD_data;            
            app.MeasurementListBox.Items = allListItems;
            app.MeasurementListBox.ItemsData = (1:length(allListItems));

            % enable the Fourier transform button
            app.TRANSFORMButton.Enable = true;
            
            % empty arrays associated with frequency domain
            app.FD_data.sampleList = {};
            app.FD_data.settings = {};
        end

        % Button pushed function: PLOTFORCUSTOMISATIONButton_TD
        function PLOTFORCUSTOMISATIONButton_TDPushed(app, event)
            plotTD_data(app,"NEW");
        end

        % Button pushed function: PLOTFORCUSTOMISATIONButton_FD1
        function PLOTFORCUSTOMISATIONButton_FD1Pushed(app, event)
            plotFD_data(app,"NEW");
        end

        % Button pushed function: RefSwitchButton
        function RefSwitchButtonPushed(app, event)
            MeasNum = app.MeasurementListBox.Value;
            refOption = app.TD_data.settings{MeasNum}.refOption;

            if isequal(refOption,1)
                refOption = 2;
            else
                refOption = 1;
            end

            app.TD_data.settings{MeasNum}.refOption = refOption;
            MeasurementListBoxValueChanged(app);
            
        end

        % Value changed function: RefDescriptionEditField
        function RefDescriptionEditFieldValueChanged(app, event)
            value = app.RefDescriptionEditField.Value;
            MeasNum = app.MeasurementListBox.Value;
            app.TD_data.settings{MeasNum}.refDescription = value;            
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Get the file path for locating images
            pathToMLAPP = fileparts(mfilename('fullpath'));

            % Create CatsperUIFigure and hide until all components are created
            app.CatsperUIFigure = uifigure('Visible', 'off');
            app.CatsperUIFigure.Position = [100 100 1453 958];
            app.CatsperUIFigure.Name = 'Catsper';
            app.CatsperUIFigure.Icon = fullfile(pathToMLAPP, 'CaT_logo.png');

            % Create TabGroup
            app.TabGroup = uitabgroup(app.CatsperUIFigure);
            app.TabGroup.Position = [25 18 1406 857];

            % Create TimeDomainTDTab
            app.TimeDomainTDTab = uitab(app.TabGroup);
            app.TimeDomainTDTab.Title = 'Time Domain (TD)';

            % Create UIAxes2
            app.UIAxes2 = uiaxes(app.TimeDomainTDTab);
            title(app.UIAxes2, 'PLOT 2')
            xlabel(app.UIAxes2, 'Time (ps)')
            ylabel(app.UIAxes2, 'E_{field intensity} (a.u.)')
            app.UIAxes2.FontWeight = 'bold';
            app.UIAxes2.XLim = [-5 15];
            app.UIAxes2.XTickLabelRotation = 0;
            app.UIAxes2.YTickLabelRotation = 0;
            app.UIAxes2.ZTickLabelRotation = 0;
            app.UIAxes2.LineWidth = 1;
            app.UIAxes2.Box = 'on';
            app.UIAxes2.Position = [634 32 750 390];

            % Create UIAxes1
            app.UIAxes1 = uiaxes(app.TimeDomainTDTab);
            title(app.UIAxes1, 'PLOT 1')
            xlabel(app.UIAxes1, 'Time (ps)')
            ylabel(app.UIAxes1, 'E_{field intensity} (a.u.)')
            app.UIAxes1.FontWeight = 'bold';
            app.UIAxes1.XLim = [-5 15];
            app.UIAxes1.XTickLabelRotation = 0;
            app.UIAxes1.YTickLabelRotation = 0;
            app.UIAxes1.ZTickLabelRotation = 0;
            app.UIAxes1.LineWidth = 1;
            app.UIAxes1.Box = 'on';
            app.UIAxes1.Position = [634 429 750 390];

            % Create MeasurementListBoxLabel
            app.MeasurementListBoxLabel = uilabel(app.TimeDomainTDTab);
            app.MeasurementListBoxLabel.HorizontalAlignment = 'right';
            app.MeasurementListBoxLabel.Position = [18 802 79 22];
            app.MeasurementListBoxLabel.Text = 'Measurement';

            % Create MeasurementListBox
            app.MeasurementListBox = uilistbox(app.TimeDomainTDTab);
            app.MeasurementListBox.Items = {};
            app.MeasurementListBox.ValueChangedFcn = createCallbackFcn(app, @MeasurementListBoxValueChanged, true);
            app.MeasurementListBox.Position = [18 421 215 380];
            app.MeasurementListBox.Value = {};

            % Create ADDButton
            app.ADDButton = uibutton(app.TimeDomainTDTab, 'push');
            app.ADDButton.ButtonPushedFcn = createCallbackFcn(app, @ADDButtonPushed, true);
            app.ADDButton.Position = [248 675 45 45];
            app.ADDButton.Text = 'ADD';

            % Create DELButton
            app.DELButton = uibutton(app.TimeDomainTDTab, 'push');
            app.DELButton.ButtonPushedFcn = createCallbackFcn(app, @DELButtonPushed, true);
            app.DELButton.Position = [248 611 45 45];
            app.DELButton.Text = 'DEL';

            % Create SelectionListBoxLabel
            app.SelectionListBoxLabel = uilabel(app.TimeDomainTDTab);
            app.SelectionListBoxLabel.Position = [308 802 55 22];
            app.SelectionListBoxLabel.Text = 'Selection';

            % Create SelectionListBox
            app.SelectionListBox = uilistbox(app.TimeDomainTDTab);
            app.SelectionListBox.Items = {};
            app.SelectionListBox.Position = [306 421 189 380];
            app.SelectionListBox.Value = {};

            % Create PLOT1TDButton
            app.PLOT1TDButton = uibutton(app.TimeDomainTDTab, 'push');
            app.PLOT1TDButton.ButtonPushedFcn = createCallbackFcn(app, @PLOT1TDButtonPushed, true);
            app.PLOT1TDButton.Position = [509 631 105 45];
            app.PLOT1TDButton.Text = 'PLOT1';

            % Create FFTSettingsPanel
            app.FFTSettingsPanel = uipanel(app.TimeDomainTDTab);
            app.FFTSettingsPanel.Title = 'FFT Settings';
            app.FFTSettingsPanel.FontWeight = 'bold';
            app.FFTSettingsPanel.Position = [302 57 312 347];

            % Create MinFreqEditFieldLabel
            app.MinFreqEditFieldLabel = uilabel(app.FFTSettingsPanel);
            app.MinFreqEditFieldLabel.HorizontalAlignment = 'right';
            app.MinFreqEditFieldLabel.Position = [31 277 59 23];
            app.MinFreqEditFieldLabel.Text = 'Min. Freq.';

            % Create MinFreqEditField
            app.MinFreqEditField = uieditfield(app.FFTSettingsPanel, 'numeric');
            app.MinFreqEditField.Limits = [0 5];
            app.MinFreqEditField.ValueDisplayFormat = '%.1f';
            app.MinFreqEditField.Position = [92 278 45 22];
            app.MinFreqEditField.Value = 0.2;

            % Create MaxFreqEditFieldLabel
            app.MaxFreqEditFieldLabel = uilabel(app.FFTSettingsPanel);
            app.MaxFreqEditFieldLabel.HorizontalAlignment = 'right';
            app.MaxFreqEditFieldLabel.Position = [141 277 63 23];
            app.MaxFreqEditFieldLabel.Text = 'Max. Freq.';

            % Create MaxFreqEditField
            app.MaxFreqEditField = uieditfield(app.FFTSettingsPanel, 'numeric');
            app.MaxFreqEditField.Limits = [1 10];
            app.MaxFreqEditField.ValueDisplayFormat = '%.1f';
            app.MaxFreqEditField.Position = [205 278 45 22];
            app.MaxFreqEditField.Value = 2.8;

            % Create THzLabel_4
            app.THzLabel_4 = uilabel(app.FFTSettingsPanel);
            app.THzLabel_4.Position = [254 277 27 22];
            app.THzLabel_4.Text = 'THz';

            % Create MaxTimeLabel
            app.MaxTimeLabel = uilabel(app.FFTSettingsPanel);
            app.MaxTimeLabel.HorizontalAlignment = 'right';
            app.MaxTimeLabel.Position = [149 109 62 23];
            app.MaxTimeLabel.Text = 'Max.Time';

            % Create MaxTimeEditField
            app.MaxTimeEditField = uieditfield(app.FFTSettingsPanel, 'numeric');
            app.MaxTimeEditField.Limits = [0 100];
            app.MaxTimeEditField.ValueDisplayFormat = '%.2f';
            app.MaxTimeEditField.Tooltip = {'set the maximum value of the sample waveform(s)'};
            app.MaxTimeEditField.Position = [215 110 45 22];
            app.MaxTimeEditField.Value = 20;

            % Create at1stinternalreflectionsLabel
            app.at1stinternalreflectionsLabel = uilabel(app.FFTSettingsPanel);
            app.at1stinternalreflectionsLabel.Position = [128 138 136 22];
            app.at1stinternalreflectionsLabel.Text = 'at 1st internal reflections';

            % Create TRANSFORMButton
            app.TRANSFORMButton = uibutton(app.FFTSettingsPanel, 'push');
            app.TRANSFORMButton.ButtonPushedFcn = createCallbackFcn(app, @TRANSFORMButtonPushed, true);
            app.TRANSFORMButton.FontWeight = 'bold';
            app.TRANSFORMButton.Enable = 'off';
            app.TRANSFORMButton.Position = [19 15 274 37];
            app.TRANSFORMButton.Text = 'TRANSFORM';

            % Create ApodizationFunctionDropDownLabel
            app.ApodizationFunctionDropDownLabel = uilabel(app.FFTSettingsPanel);
            app.ApodizationFunctionDropDownLabel.Position = [20 82 119 23];
            app.ApodizationFunctionDropDownLabel.Text = 'Apodization Function';

            % Create ApodizationFunctionDropDown
            app.ApodizationFunctionDropDown = uidropdown(app.FFTSettingsPanel);
            app.ApodizationFunctionDropDown.Items = {'Boxcar', 'Hamming', 'Bartlett', 'Blackman', 'Hann', 'Taylor', 'Triang'};
            app.ApodizationFunctionDropDown.ItemsData = {'Boxcar', 'hamming', 'bartlett', 'blackman', 'rectwin', 'hann', 'taylorwin', 'triang'};
            app.ApodizationFunctionDropDown.Position = [141 83 144 22];
            app.ApodizationFunctionDropDown.Value = 'Boxcar';

            % Create ZeroFillingpowerofSpinnerLabel
            app.ZeroFillingpowerofSpinnerLabel = uilabel(app.FFTSettingsPanel);
            app.ZeroFillingpowerofSpinnerLabel.Position = [62 225 129 23];
            app.ZeroFillingpowerofSpinnerLabel.Text = 'Zero Filling, + power of';

            % Create ZeroFillingpowerofSpinner
            app.ZeroFillingpowerofSpinner = uispinner(app.FFTSettingsPanel);
            app.ZeroFillingpowerofSpinner.Limits = [1 4];
            app.ZeroFillingpowerofSpinner.Position = [200 226 65 22];
            app.ZeroFillingpowerofSpinner.Value = 2;

            % Create orLabel
            app.orLabel = uilabel(app.FFTSettingsPanel);
            app.orLabel.Position = [18 110 25 22];
            app.orLabel.Text = 'or, ';

            % Create AUTOWINDOWButton
            app.AUTOWINDOWButton = uibutton(app.FFTSettingsPanel, 'state');
            app.AUTOWINDOWButton.ValueChangedFcn = createCallbackFcn(app, @AUTOWINDOWButtonValueChanged, true);
            app.AUTOWINDOWButton.Tooltip = {'set the time_max 1st multiple reflection time'};
            app.AUTOWINDOWButton.Text = 'AUTO WINDOW';
            app.AUTOWINDOWButton.BackgroundColor = [1 1 1];
            app.AUTOWINDOWButton.Position = [20 137 103 23];

            % Create FrequencyrangeLabel
            app.FrequencyrangeLabel = uilabel(app.FFTSettingsPanel);
            app.FrequencyrangeLabel.FontWeight = 'bold';
            app.FrequencyrangeLabel.Position = [18 303 102 22];
            app.FrequencyrangeLabel.Text = 'Frequency range';

            % Create FFTUpsamplingLabel
            app.FFTUpsamplingLabel = uilabel(app.FFTSettingsPanel);
            app.FFTUpsamplingLabel.FontWeight = 'bold';
            app.FFTUpsamplingLabel.Position = [18 247 99 22];
            app.FFTUpsamplingLabel.Text = 'FFT Upsampling';

            % Create WindowFunctionLabel
            app.WindowFunctionLabel = uilabel(app.FFTSettingsPanel);
            app.WindowFunctionLabel.FontWeight = 'bold';
            app.WindowFunctionLabel.Position = [17 163 105 22];
            app.WindowFunctionLabel.Text = 'Window Function';

            % Create psLabel_4
            app.psLabel_4 = uilabel(app.FFTSettingsPanel);
            app.psLabel_4.Position = [266 109 25 22];
            app.psLabel_4.Text = 'ps';

            % Create MinTimeEditFieldLabel
            app.MinTimeEditFieldLabel = uilabel(app.FFTSettingsPanel);
            app.MinTimeEditFieldLabel.HorizontalAlignment = 'right';
            app.MinTimeEditFieldLabel.Position = [37 110 54 22];
            app.MinTimeEditFieldLabel.Text = 'Min.Time';

            % Create MinTimeEditField
            app.MinTimeEditField = uieditfield(app.FFTSettingsPanel, 'numeric');
            app.MinTimeEditField.Limits = [-30 50];
            app.MinTimeEditField.ValueDisplayFormat = '%.2f';
            app.MinTimeEditField.Tooltip = {'Set the minimum value of the sample waveform(s)'};
            app.MinTimeEditField.Position = [95 110 37 22];
            app.MinTimeEditField.Value = -10;

            % Create Label
            app.Label = uilabel(app.FFTSettingsPanel);
            app.Label.Position = [165 58 51 22];
            app.Label.Text = '0';

            % Create SpectralResolutionTHzLabel
            app.SpectralResolutionTHzLabel = uilabel(app.FFTSettingsPanel);
            app.SpectralResolutionTHzLabel.Position = [20 58 143 22];
            app.SpectralResolutionTHzLabel.Text = 'Spectral Resolution(THz):';

            % Create StartFrequencyTHzEditFieldLabel
            app.StartFrequencyTHzEditFieldLabel = uilabel(app.FFTSettingsPanel);
            app.StartFrequencyTHzEditFieldLabel.HorizontalAlignment = 'right';
            app.StartFrequencyTHzEditFieldLabel.Position = [66 184 124 22];
            app.StartFrequencyTHzEditFieldLabel.Text = 'Start Frequency (THz)';

            % Create StartFrequencyTHzEditField
            app.StartFrequencyTHzEditField = uieditfield(app.FFTSettingsPanel, 'numeric');
            app.StartFrequencyTHzEditField.Limits = [0.2 1.5];
            app.StartFrequencyTHzEditField.ValueDisplayFormat = '%5.1f';
            app.StartFrequencyTHzEditField.Position = [220 184 41 22];
            app.StartFrequencyTHzEditField.Value = 0.8;

            % Create UnwrappingLabel
            app.UnwrappingLabel = uilabel(app.FFTSettingsPanel);
            app.UnwrappingLabel.FontWeight = 'bold';
            app.UnwrappingLabel.Position = [17 201 75 22];
            app.UnwrappingLabel.Text = 'Unwrapping';

            % Create PLOT2TDButton
            app.PLOT2TDButton = uibutton(app.TimeDomainTDTab, 'push');
            app.PLOT2TDButton.ButtonPushedFcn = createCallbackFcn(app, @PLOT2TDButtonPushed, true);
            app.PLOT2TDButton.Position = [509 578 105 45];
            app.PLOT2TDButton.Text = 'PLOT2';

            % Create ALLButton
            app.ALLButton = uibutton(app.TimeDomainTDTab, 'push');
            app.ALLButton.ButtonPushedFcn = createCallbackFcn(app, @ALLButtonPushed, true);
            app.ALLButton.Position = [248 739 45 45];
            app.ALLButton.Text = 'ALL';

            % Create ButtonGroupTD
            app.ButtonGroupTD = uibuttongroup(app.TimeDomainTDTab);
            app.ButtonGroupTD.Position = [508 722 100 78];

            % Create ReferenceButtonTD
            app.ReferenceButtonTD = uiradiobutton(app.ButtonGroupTD);
            app.ReferenceButtonTD.Text = 'Reference';
            app.ReferenceButtonTD.Position = [11 51 77 22];

            % Create SampleButtonTD
            app.SampleButtonTD = uiradiobutton(app.ButtonGroupTD);
            app.SampleButtonTD.Text = 'Sample';
            app.SampleButtonTD.Position = [11 29 63 22];

            % Create BothButtonTD
            app.BothButtonTD = uiradiobutton(app.ButtonGroupTD);
            app.BothButtonTD.Text = 'Both';
            app.BothButtonTD.Position = [11 7 65 22];
            app.BothButtonTD.Value = true;

            % Create LEGENDButton_2
            app.LEGENDButton_2 = uibutton(app.TimeDomainTDTab, 'state');
            app.LEGENDButton_2.ValueChangedFcn = createCallbackFcn(app, @LEGENDButton_2ValueChanged, true);
            app.LEGENDButton_2.Text = 'LEGEND';
            app.LEGENDButton_2.Position = [1142 9 99 22];

            % Create JETCOLORMAPButton
            app.JETCOLORMAPButton = uibutton(app.TimeDomainTDTab, 'state');
            app.JETCOLORMAPButton.ValueChangedFcn = createCallbackFcn(app, @JETCOLORMAPButtonValueChanged, true);
            app.JETCOLORMAPButton.Text = 'JET COLORMAP';
            app.JETCOLORMAPButton.Position = [1258 9 107 22];

            % Create GRIDOFFButton
            app.GRIDOFFButton = uibutton(app.TimeDomainTDTab, 'state');
            app.GRIDOFFButton.Text = 'GRID OFF';
            app.GRIDOFFButton.Position = [509 684 105 30];

            % Create SampleDetailsPanel
            app.SampleDetailsPanel = uipanel(app.TimeDomainTDTab);
            app.SampleDetailsPanel.Title = 'Sample Details';
            app.SampleDetailsPanel.FontWeight = 'bold';
            app.SampleDetailsPanel.Position = [18 60 268 344];

            % Create ThicknessmmEditFieldLabel
            app.ThicknessmmEditFieldLabel = uilabel(app.SampleDetailsPanel);
            app.ThicknessmmEditFieldLabel.HorizontalAlignment = 'right';
            app.ThicknessmmEditFieldLabel.Position = [75 107 91 22];
            app.ThicknessmmEditFieldLabel.Text = 'Thickness (mm)';

            % Create ThicknessmmEditField
            app.ThicknessmmEditField = uieditfield(app.SampleDetailsPanel, 'numeric');
            app.ThicknessmmEditField.Limits = [0 Inf];
            app.ThicknessmmEditField.ValueDisplayFormat = '%.3f';
            app.ThicknessmmEditField.ValueChangedFcn = createCallbackFcn(app, @ThicknessmmEditFieldValueChanged, true);
            app.ThicknessmmEditField.Position = [181 107 73 22];

            % Create TimedelaypsEditFieldLabel
            app.TimedelaypsEditFieldLabel = uilabel(app.SampleDetailsPanel);
            app.TimedelaypsEditFieldLabel.HorizontalAlignment = 'right';
            app.TimedelaypsEditFieldLabel.Position = [75 77 88 22];
            app.TimedelaypsEditFieldLabel.Text = 'Time delay (ps)';

            % Create TimedelaypsEditField
            app.TimedelaypsEditField = uieditfield(app.SampleDetailsPanel, 'numeric');
            app.TimedelaypsEditField.Editable = 'off';
            app.TimedelaypsEditField.Position = [181 77 73 22];

            % Create stinternalreflectionpsEditFieldLabel
            app.stinternalreflectionpsEditFieldLabel = uilabel(app.SampleDetailsPanel);
            app.stinternalreflectionpsEditFieldLabel.HorizontalAlignment = 'right';
            app.stinternalreflectionpsEditFieldLabel.Position = [31 18 140 22];
            app.stinternalreflectionpsEditFieldLabel.Text = '1st internal reflection (ps)';

            % Create stinternalreflectionpsEditField
            app.stinternalreflectionpsEditField = uieditfield(app.SampleDetailsPanel, 'numeric');
            app.stinternalreflectionpsEditField.ValueDisplayFormat = '%.3f';
            app.stinternalreflectionpsEditField.Editable = 'off';
            app.stinternalreflectionpsEditField.Position = [181 18 73 22];

            % Create RefractiveIndexEditFieldLabel
            app.RefractiveIndexEditFieldLabel = uilabel(app.SampleDetailsPanel);
            app.RefractiveIndexEditFieldLabel.HorizontalAlignment = 'right';
            app.RefractiveIndexEditFieldLabel.Position = [78 47 92 22];
            app.RefractiveIndexEditFieldLabel.Text = 'Refractive Index';

            % Create RefractiveIndexEditField
            app.RefractiveIndexEditField = uieditfield(app.SampleDetailsPanel, 'numeric');
            app.RefractiveIndexEditField.Editable = 'off';
            app.RefractiveIndexEditField.Position = [181 47 73 22];

            % Create DescriptionEditFieldLabel
            app.DescriptionEditFieldLabel = uilabel(app.SampleDetailsPanel);
            app.DescriptionEditFieldLabel.HorizontalAlignment = 'right';
            app.DescriptionEditFieldLabel.Position = [4 290 66 22];
            app.DescriptionEditFieldLabel.Text = 'Description';

            % Create DescriptionEditField
            app.DescriptionEditField = uieditfield(app.SampleDetailsPanel, 'text');
            app.DescriptionEditField.ValueChangedFcn = createCallbackFcn(app, @DescriptionEditFieldValueChanged, true);
            app.DescriptionEditField.Position = [76 290 180 22];

            % Create ScanTimeEditFieldLabel
            app.ScanTimeEditFieldLabel = uilabel(app.SampleDetailsPanel);
            app.ScanTimeEditFieldLabel.Position = [11 258 62 22];
            app.ScanTimeEditFieldLabel.Text = 'Scan Time';

            % Create ScanTimeEditField
            app.ScanTimeEditField = uieditfield(app.SampleDetailsPanel, 'text');
            app.ScanTimeEditField.Editable = 'off';
            app.ScanTimeEditField.Position = [76 258 180 22];

            % Create InstrumentEditFieldLabel
            app.InstrumentEditFieldLabel = uilabel(app.SampleDetailsPanel);
            app.InstrumentEditFieldLabel.HorizontalAlignment = 'right';
            app.InstrumentEditFieldLabel.Position = [6 226 62 22];
            app.InstrumentEditFieldLabel.Text = 'Instrument';

            % Create InstrumentEditField
            app.InstrumentEditField = uieditfield(app.SampleDetailsPanel, 'text');
            app.InstrumentEditField.Position = [76 226 180 22];

            % Create RefDescriptionEditFieldLabel
            app.RefDescriptionEditFieldLabel = uilabel(app.SampleDetailsPanel);
            app.RefDescriptionEditFieldLabel.HorizontalAlignment = 'right';
            app.RefDescriptionEditFieldLabel.Position = [6 200 90 22];
            app.RefDescriptionEditFieldLabel.Text = 'Ref, Description';

            % Create RefDescriptionEditField
            app.RefDescriptionEditField = uieditfield(app.SampleDetailsPanel, 'text');
            app.RefDescriptionEditField.ValueChangedFcn = createCallbackFcn(app, @RefDescriptionEditFieldValueChanged, true);
            app.RefDescriptionEditField.Position = [11 178 245 22];

            % Create Ref1LampLabel
            app.Ref1LampLabel = uilabel(app.SampleDetailsPanel);
            app.Ref1LampLabel.HorizontalAlignment = 'right';
            app.Ref1LampLabel.Position = [13 147 34 22];
            app.Ref1LampLabel.Text = 'Ref.1';

            % Create Ref1Lamp
            app.Ref1Lamp = uilamp(app.SampleDetailsPanel);
            app.Ref1Lamp.Position = [54 151 16 16];

            % Create Ref2LampLabel
            app.Ref2LampLabel = uilabel(app.SampleDetailsPanel);
            app.Ref2LampLabel.HorizontalAlignment = 'right';
            app.Ref2LampLabel.Position = [79 147 34 22];
            app.Ref2LampLabel.Text = 'Ref.2';

            % Create Ref2Lamp
            app.Ref2Lamp = uilamp(app.SampleDetailsPanel);
            app.Ref2Lamp.Position = [121 151 16 16];
            app.Ref2Lamp.Color = [0.651 0.651 0.651];

            % Create RefSwitchButton
            app.RefSwitchButton = uibutton(app.SampleDetailsPanel, 'push');
            app.RefSwitchButton.ButtonPushedFcn = createCallbackFcn(app, @RefSwitchButtonPushed, true);
            app.RefSwitchButton.Position = [147 145 108 26];
            app.RefSwitchButton.Text = 'Ref. Switch';

            % Create LoadData_TD
            app.LoadData_TD = uibutton(app.TimeDomainTDTab, 'push');
            app.LoadData_TD.ButtonPushedFcn = createCallbackFcn(app, @LoadData_TDButtonPushed, true);
            app.LoadData_TD.BackgroundColor = [0.9412 0.9412 0.9412];
            app.LoadData_TD.FontWeight = 'bold';
            app.LoadData_TD.Tooltip = {'Assign data to variable in the base workspace'};
            app.LoadData_TD.Position = [25 13 111 30];
            app.LoadData_TD.Text = 'LOAD TD_DATA';

            % Create SaveData_TD
            app.SaveData_TD = uibutton(app.TimeDomainTDTab, 'push');
            app.SaveData_TD.ButtonPushedFcn = createCallbackFcn(app, @SaveData_TDPushed, true);
            app.SaveData_TD.BackgroundColor = [0.9412 0.9412 0.9412];
            app.SaveData_TD.FontWeight = 'bold';
            app.SaveData_TD.Tooltip = {'Assign data to variable in the base workspace'};
            app.SaveData_TD.Position = [145 13 111 30];
            app.SaveData_TD.Text = 'SAVE TD_DATA';

            % Create ASSIGNButtonTD
            app.ASSIGNButtonTD = uibutton(app.TimeDomainTDTab, 'push');
            app.ASSIGNButtonTD.ButtonPushedFcn = createCallbackFcn(app, @ASSIGNButtonTDPushed, true);
            app.ASSIGNButtonTD.BackgroundColor = [0.9412 0.9412 0.9412];
            app.ASSIGNButtonTD.FontWeight = 'bold';
            app.ASSIGNButtonTD.Tooltip = {'Assign data to variable in the base workspace'};
            app.ASSIGNButtonTD.Position = [265 13 220 30];
            app.ASSIGNButtonTD.Text = 'ASSIGN TD_DATA IN WORKSPACE';

            % Create CHECKDYNAMICRANGEButton
            app.CHECKDYNAMICRANGEButton = uibutton(app.TimeDomainTDTab, 'push');
            app.CHECKDYNAMICRANGEButton.ButtonPushedFcn = createCallbackFcn(app, @CHECKDYNAMICRANGEButtonPushed, true);
            app.CHECKDYNAMICRANGEButton.Position = [509 468 105 61];
            app.CHECKDYNAMICRANGEButton.Text = {'CHECK'; 'DYNAMIC'; 'RANGE'};

            % Create PLOTFORCUSTOMISATIONButton_TD
            app.PLOTFORCUSTOMISATIONButton_TD = uibutton(app.TimeDomainTDTab, 'push');
            app.PLOTFORCUSTOMISATIONButton_TD.ButtonPushedFcn = createCallbackFcn(app, @PLOTFORCUSTOMISATIONButton_TDPushed, true);
            app.PLOTFORCUSTOMISATIONButton_TD.FontSize = 11;
            app.PLOTFORCUSTOMISATIONButton_TD.Position = [509 536 105 35];
            app.PLOTFORCUSTOMISATIONButton_TD.Text = {'PLOT FOR'; 'CUSTOMISATION'};

            % Create FrequencyDomainFDTab
            app.FrequencyDomainFDTab = uitab(app.TabGroup);
            app.FrequencyDomainFDTab.Title = 'Frequency Domain (FD)';

            % Create UIAxes3
            app.UIAxes3 = uiaxes(app.FrequencyDomainFDTab);
            title(app.UIAxes3, 'PLOT 1')
            xlabel(app.UIAxes3, 'Frequency (THz)')
            ylabel(app.UIAxes3, 'E_{field intensity} (a.u.)')
            app.UIAxes3.FontWeight = 'bold';
            app.UIAxes3.XTickLabelRotation = 0;
            app.UIAxes3.YTickLabelRotation = 0;
            app.UIAxes3.YScale = 'log';
            app.UIAxes3.YMinorTick = 'on';
            app.UIAxes3.ZTickLabelRotation = 0;
            app.UIAxes3.LineWidth = 1;
            app.UIAxes3.Box = 'on';
            app.UIAxes3.Position = [639 435 750 390];

            % Create UIAxes4
            app.UIAxes4 = uiaxes(app.FrequencyDomainFDTab);
            title(app.UIAxes4, 'PLOT 2')
            xlabel(app.UIAxes4, 'Frequency (THz)')
            ylabel(app.UIAxes4, 'E_{field intensity} (a.u.)')
            app.UIAxes4.FontWeight = 'bold';
            app.UIAxes4.XTickLabelRotation = 0;
            app.UIAxes4.YTickLabelRotation = 0;
            app.UIAxes4.YScale = 'log';
            app.UIAxes4.YMinorTick = 'on';
            app.UIAxes4.ZTickLabelRotation = 0;
            app.UIAxes4.LineWidth = 1;
            app.UIAxes4.Box = 'on';
            app.UIAxes4.Position = [639 40 750 390];

            % Create PLOT1FDButton
            app.PLOT1FDButton = uibutton(app.FrequencyDomainFDTab, 'push');
            app.PLOT1FDButton.ButtonPushedFcn = createCallbackFcn(app, @PLOT1FDButtonPushed, true);
            app.PLOT1FDButton.Position = [515 529 100 40];
            app.PLOT1FDButton.Text = 'PLOT1';

            % Create PLOT2FDButton
            app.PLOT2FDButton = uibutton(app.FrequencyDomainFDTab, 'push');
            app.PLOT2FDButton.ButtonPushedFcn = createCallbackFcn(app, @PLOT2FDButtonPushed, true);
            app.PLOT2FDButton.Position = [515 483 100 40];
            app.PLOT2FDButton.Text = 'PLOT2';

            % Create FDListListBoxLabel
            app.FDListListBoxLabel = uilabel(app.FrequencyDomainFDTab);
            app.FDListListBoxLabel.Position = [17 801 79 22];
            app.FDListListBoxLabel.Text = 'FD List';

            % Create FDListListBox
            app.FDListListBox = uilistbox(app.FrequencyDomainFDTab);
            app.FDListListBox.Items = {};
            app.FDListListBox.Position = [14 464 279 336];
            app.FDListListBox.Value = {};

            % Create ALLFDButton
            app.ALLFDButton = uibutton(app.FrequencyDomainFDTab, 'push');
            app.ALLFDButton.ButtonPushedFcn = createCallbackFcn(app, @ALLFDButtonPushed, true);
            app.ALLFDButton.Position = [306 717 45 45];
            app.ALLFDButton.Text = 'ALL';

            % Create ADDFDButton
            app.ADDFDButton = uibutton(app.FrequencyDomainFDTab, 'push');
            app.ADDFDButton.ButtonPushedFcn = createCallbackFcn(app, @ADDFDButtonPushed, true);
            app.ADDFDButton.Position = [306 657 45 45];
            app.ADDFDButton.Text = 'ADD';

            % Create DELFDButton
            app.DELFDButton = uibutton(app.FrequencyDomainFDTab, 'push');
            app.DELFDButton.ButtonPushedFcn = createCallbackFcn(app, @DELFDButtonPushed, true);
            app.DELFDButton.Position = [306 597 45 45];
            app.DELFDButton.Text = 'DEL';

            % Create FDSelectionListBoxLabel
            app.FDSelectionListBoxLabel = uilabel(app.FrequencyDomainFDTab);
            app.FDSelectionListBoxLabel.Position = [361 799 79 22];
            app.FDSelectionListBoxLabel.Text = 'FD Selection';

            % Create FDSelectionListBox
            app.FDSelectionListBox = uilistbox(app.FrequencyDomainFDTab);
            app.FDSelectionListBox.Items = {};
            app.FDSelectionListBox.Position = [361 436 142 364];
            app.FDSelectionListBox.Value = {};

            % Create ButtonGroupFD
            app.ButtonGroupFD = uibuttongroup(app.FrequencyDomainFDTab);
            app.ButtonGroupFD.Position = [515 723 100 78];

            % Create ReferenceButtonFD
            app.ReferenceButtonFD = uiradiobutton(app.ButtonGroupFD);
            app.ReferenceButtonFD.Text = 'Reference';
            app.ReferenceButtonFD.Position = [11 51 77 22];

            % Create SampleButtonFD
            app.SampleButtonFD = uiradiobutton(app.ButtonGroupFD);
            app.SampleButtonFD.Text = 'Sample';
            app.SampleButtonFD.Position = [11 29 63 22];
            app.SampleButtonFD.Value = true;

            % Create BothButtonFD
            app.BothButtonFD = uiradiobutton(app.ButtonGroupFD);
            app.BothButtonFD.Text = 'Both';
            app.BothButtonFD.Position = [11 7 65 22];

            % Create REMOVEButton
            app.REMOVEButton = uibutton(app.FrequencyDomainFDTab, 'push');
            app.REMOVEButton.ButtonPushedFcn = createCallbackFcn(app, @REMOVEButtonPushed, true);
            app.REMOVEButton.Position = [27 424 119 30];
            app.REMOVEButton.Text = 'REMOVE';

            % Create REMOVEALLButton
            app.REMOVEALLButton = uibutton(app.FrequencyDomainFDTab, 'push');
            app.REMOVEALLButton.ButtonPushedFcn = createCallbackFcn(app, @REMOVEALLButtonPushed, true);
            app.REMOVEALLButton.Position = [163 424 119 30];
            app.REMOVEALLButton.Text = 'REMOVE ALL';

            % Create ASSIGNButtonFD
            app.ASSIGNButtonFD = uibutton(app.FrequencyDomainFDTab, 'push');
            app.ASSIGNButtonFD.ButtonPushedFcn = createCallbackFcn(app, @ASSIGNButtonFDPushed, true);
            app.ASSIGNButtonFD.FontWeight = 'bold';
            app.ASSIGNButtonFD.Tooltip = {'Assign data to variable in the base workspace'};
            app.ASSIGNButtonFD.Position = [283 12 220 30];
            app.ASSIGNButtonFD.Text = 'ASSIGN FD_DATA IN WORKSPACE';

            % Create FDDataAnalysisPanel
            app.FDDataAnalysisPanel = uipanel(app.FrequencyDomainFDTab);
            app.FDDataAnalysisPanel.Title = 'FD Data Analysis';
            app.FDDataAnalysisPanel.FontWeight = 'bold';
            app.FDDataAnalysisPanel.Position = [17 93 603 319];

            % Create PLOT1FDButton_2
            app.PLOT1FDButton_2 = uibutton(app.FDDataAnalysisPanel, 'push');
            app.PLOT1FDButton_2.ButtonPushedFcn = createCallbackFcn(app, @PLOT1FDButton_2Pushed, true);
            app.PLOT1FDButton_2.Position = [481 99 109 40];
            app.PLOT1FDButton_2.Text = 'PLOT1';

            % Create PLOT2FDButton_2
            app.PLOT2FDButton_2 = uibutton(app.FDDataAnalysisPanel, 'push');
            app.PLOT2FDButton_2.ButtonPushedFcn = createCallbackFcn(app, @PLOT2FDButton_2Pushed, true);
            app.PLOT2FDButton_2.Position = [481 55 109 40];
            app.PLOT2FDButton_2.Text = 'PLOT2';

            % Create MagPhaseButtonGroup_2
            app.MagPhaseButtonGroup_2 = uibuttongroup(app.FDDataAnalysisPanel);
            app.MagPhaseButtonGroup_2.Position = [482 176 100 50];

            % Create AmplitudeButton_2
            app.AmplitudeButton_2 = uiradiobutton(app.MagPhaseButtonGroup_2);
            app.AmplitudeButton_2.Text = 'Amplitude';
            app.AmplitudeButton_2.Position = [11 24 75 22];
            app.AmplitudeButton_2.Value = true;

            % Create PhaseButton_2
            app.PhaseButton_2 = uiradiobutton(app.MagPhaseButtonGroup_2);
            app.PhaseButton_2.Text = 'Phase';
            app.PhaseButton_2.Position = [11 2 56 22];

            % Create ALLFDButton_2
            app.ALLFDButton_2 = uibutton(app.FDDataAnalysisPanel, 'push');
            app.ALLFDButton_2.ButtonPushedFcn = createCallbackFcn(app, @ALLFDButton_2Pushed, true);
            app.ALLFDButton_2.Position = [8 204 45 45];
            app.ALLFDButton_2.Text = 'ALL';

            % Create ADDFDButton_2
            app.ADDFDButton_2 = uibutton(app.FDDataAnalysisPanel, 'push');
            app.ADDFDButton_2.ButtonPushedFcn = createCallbackFcn(app, @ADDFDButton_2Pushed, true);
            app.ADDFDButton_2.Position = [8 146 45 45];
            app.ADDFDButton_2.Text = 'ADD';

            % Create DELFDButton_2
            app.DELFDButton_2 = uibutton(app.FDDataAnalysisPanel, 'push');
            app.DELFDButton_2.ButtonPushedFcn = createCallbackFcn(app, @DELFDButton_2Pushed, true);
            app.DELFDButton_2.Position = [8 89 45 45];
            app.DELFDButton_2.Text = 'DEL';

            % Create DescriptionEditField_2Label
            app.DescriptionEditField_2Label = uilabel(app.FDDataAnalysisPanel);
            app.DescriptionEditField_2Label.Position = [194 262 66 22];
            app.DescriptionEditField_2Label.Text = 'Description';

            % Create DescriptionEditField_FD
            app.DescriptionEditField_FD = uieditfield(app.FDDataAnalysisPanel, 'text');
            app.DescriptionEditField_FD.Position = [191 240 143 22];

            % Create ThicknessmmPanel
            app.ThicknessmmPanel = uipanel(app.FDDataAnalysisPanel);
            app.ThicknessmmPanel.Title = 'Thickness(mm)';
            app.ThicknessmmPanel.Position = [191 149 143 83];

            % Create RefEditFieldLabel
            app.RefEditFieldLabel = uilabel(app.ThicknessmmPanel);
            app.RefEditFieldLabel.HorizontalAlignment = 'right';
            app.RefEditFieldLabel.Position = [10 36 28 22];
            app.RefEditFieldLabel.Text = 'Ref.';

            % Create RefEditField
            app.RefEditField = uieditfield(app.ThicknessmmPanel, 'numeric');
            app.RefEditField.Position = [83 36 42 22];

            % Create SampleEditFieldLabel
            app.SampleEditFieldLabel = uilabel(app.ThicknessmmPanel);
            app.SampleEditFieldLabel.HorizontalAlignment = 'right';
            app.SampleEditFieldLabel.Position = [10 8 46 22];
            app.SampleEditFieldLabel.Text = 'Sample';

            % Create SampleEditField
            app.SampleEditField = uieditfield(app.ThicknessmmPanel, 'numeric');
            app.SampleEditField.Position = [83 6 42 22];

            % Create MultipleReflectionCountPanel
            app.MultipleReflectionCountPanel = uipanel(app.FDDataAnalysisPanel);
            app.MultipleReflectionCountPanel.Title = 'Multiple Reflection Count';
            app.MultipleReflectionCountPanel.Position = [191 64 144 74];

            % Create RefEditField_2Label
            app.RefEditField_2Label = uilabel(app.MultipleReflectionCountPanel);
            app.RefEditField_2Label.HorizontalAlignment = 'right';
            app.RefEditField_2Label.Position = [10 29 28 22];
            app.RefEditField_2Label.Text = 'Ref.';

            % Create RefNMREditField
            app.RefNMREditField = uieditfield(app.MultipleReflectionCountPanel, 'numeric');
            app.RefNMREditField.Position = [83 29 42 22];

            % Create SampleEditField_2Label
            app.SampleEditField_2Label = uilabel(app.MultipleReflectionCountPanel);
            app.SampleEditField_2Label.HorizontalAlignment = 'right';
            app.SampleEditField_2Label.Position = [9 4 46 22];
            app.SampleEditField_2Label.Text = 'Sample';

            % Create SampleNMREditField
            app.SampleNMREditField = uieditfield(app.MultipleReflectionCountPanel, 'numeric');
            app.SampleNMREditField.Position = [83 4 42 22];

            % Create CALCULATEOPTICALPARAMATERSButton
            app.CALCULATEOPTICALPARAMATERSButton = uibutton(app.FDDataAnalysisPanel, 'push');
            app.CALCULATEOPTICALPARAMATERSButton.ButtonPushedFcn = createCallbackFcn(app, @CALCULATEOPTICALPARAMATERSButtonPushed, true);
            app.CALCULATEOPTICALPARAMATERSButton.FontSize = 11;
            app.CALCULATEOPTICALPARAMATERSButton.FontWeight = 'bold';
            app.CALCULATEOPTICALPARAMATERSButton.Position = [188 14 146 44];
            app.CALCULATEOPTICALPARAMATERSButton.Text = {'CALCULATE'; 'OPTICAL PARAMATERS'};

            % Create FDSelectionListBox_2Label
            app.FDSelectionListBox_2Label = uilabel(app.FDDataAnalysisPanel);
            app.FDSelectionListBox_2Label.Position = [61 265 79 22];
            app.FDSelectionListBox_2Label.Text = 'FD Selection';

            % Create FDSelectionListBox_2
            app.FDSelectionListBox_2 = uilistbox(app.FDDataAnalysisPanel);
            app.FDSelectionListBox_2.Items = {};
            app.FDSelectionListBox_2.ValueChangedFcn = createCallbackFcn(app, @FDSelectionListBox_2ValueChanged, true);
            app.FDSelectionListBox_2.Position = [61 13 120 253];
            app.FDSelectionListBox_2.Value = {};

            % Create PlotDataButtonGroup
            app.PlotDataButtonGroup = uibuttongroup(app.FDDataAnalysisPanel);
            app.PlotDataButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @PlotDataButtonGroupSelectionChanged, true);
            app.PlotDataButtonGroup.Title = 'Plot Data';
            app.PlotDataButtonGroup.Position = [344 15 123 267];

            % Create TRANSMITTANCEButton
            app.TRANSMITTANCEButton = uitogglebutton(app.PlotDataButtonGroup);
            app.TRANSMITTANCEButton.Text = 'TRANSMITTANCE';
            app.TRANSMITTANCEButton.Position = [7 193 110 44];
            app.TRANSMITTANCEButton.Value = true;

            % Create ABSORPTIONButton
            app.ABSORPTIONButton = uitogglebutton(app.PlotDataButtonGroup);
            app.ABSORPTIONButton.Enable = 'off';
            app.ABSORPTIONButton.Text = 'ABSORPTION';
            app.ABSORPTIONButton.Position = [7 133 110 44];

            % Create REFRACTIVEINDEXButton
            app.REFRACTIVEINDEXButton = uitogglebutton(app.PlotDataButtonGroup);
            app.REFRACTIVEINDEXButton.Enable = 'off';
            app.REFRACTIVEINDEXButton.Text = {'REFRACTIVE'; 'INDEX'};
            app.REFRACTIVEINDEXButton.Position = [7 73 110 44];

            % Create DIELECTRICCONSTANTButton
            app.DIELECTRICCONSTANTButton = uitogglebutton(app.PlotDataButtonGroup);
            app.DIELECTRICCONSTANTButton.Enable = 'off';
            app.DIELECTRICCONSTANTButton.Text = {'DIELECTRIC'; 'CONSTANT'};
            app.DIELECTRICCONSTANTButton.Position = [7 14 110 44];

            % Create YscaleButtonGroup_2
            app.YscaleButtonGroup_2 = uibuttongroup(app.FDDataAnalysisPanel);
            app.YscaleButtonGroup_2.Position = [482 231 100 50];

            % Create logButton_2
            app.logButton_2 = uiradiobutton(app.YscaleButtonGroup_2);
            app.logButton_2.Text = 'log';
            app.logButton_2.Position = [11 24 38 22];
            app.logButton_2.Value = true;

            % Create linearButton_2
            app.linearButton_2 = uiradiobutton(app.YscaleButtonGroup_2);
            app.linearButton_2.Text = 'linear';
            app.linearButton_2.Position = [11 2 51 22];

            % Create PLOTFORCUSTOMISATIONButton_FD2
            app.PLOTFORCUSTOMISATIONButton_FD2 = uibutton(app.FDDataAnalysisPanel, 'push');
            app.PLOTFORCUSTOMISATIONButton_FD2.ButtonPushedFcn = createCallbackFcn(app, @PLOTFORCUSTOMISATIONButton_FD2Pushed, true);
            app.PLOTFORCUSTOMISATIONButton_FD2.FontSize = 11;
            app.PLOTFORCUSTOMISATIONButton_FD2.Position = [481 15 109 34];
            app.PLOTFORCUSTOMISATIONButton_FD2.Text = {'PLOT FOR'; 'CUSTOMISATION'};

            % Create RealImagButtonGroup
            app.RealImagButtonGroup = uibuttongroup(app.FDDataAnalysisPanel);
            app.RealImagButtonGroup.Visible = 'off';
            app.RealImagButtonGroup.Position = [482 175 100 50];

            % Create RealButton
            app.RealButton = uiradiobutton(app.RealImagButtonGroup);
            app.RealButton.Text = 'Real';
            app.RealButton.Position = [11 24 58 22];
            app.RealButton.Value = true;

            % Create ImaginaryButton
            app.ImaginaryButton = uiradiobutton(app.RealImagButtonGroup);
            app.ImaginaryButton.Text = 'Imaginary';
            app.ImaginaryButton.Position = [11 2 75 22];

            % Create GRIDOFFButton_3
            app.GRIDOFFButton_3 = uibutton(app.FDDataAnalysisPanel, 'state');
            app.GRIDOFFButton_3.Text = 'GRID OFF';
            app.GRIDOFFButton_3.Position = [481 144 109 25];

            % Create YscaleButtonGroup
            app.YscaleButtonGroup = uibuttongroup(app.FrequencyDomainFDTab);
            app.YscaleButtonGroup.Position = [515 665 100 51];

            % Create logButton
            app.logButton = uiradiobutton(app.YscaleButtonGroup);
            app.logButton.Text = 'log';
            app.logButton.Position = [11 24 38 22];
            app.logButton.Value = true;

            % Create linearButton
            app.linearButton = uiradiobutton(app.YscaleButtonGroup);
            app.linearButton.Text = 'linear';
            app.linearButton.Position = [11 2 51 22];

            % Create MagPhaseButtonGroup
            app.MagPhaseButtonGroup = uibuttongroup(app.FrequencyDomainFDTab);
            app.MagPhaseButtonGroup.Position = [515 608 100 51];

            % Create AmplitudeButton
            app.AmplitudeButton = uiradiobutton(app.MagPhaseButtonGroup);
            app.AmplitudeButton.Text = 'Amplitude';
            app.AmplitudeButton.Position = [11 24 75 22];
            app.AmplitudeButton.Value = true;

            % Create PhaseButton
            app.PhaseButton = uiradiobutton(app.MagPhaseButtonGroup);
            app.PhaseButton.Text = 'Phase';
            app.PhaseButton.Position = [11 2 56 22];

            % Create SaveData_FD
            app.SaveData_FD = uibutton(app.FrequencyDomainFDTab, 'push');
            app.SaveData_FD.ButtonPushedFcn = createCallbackFcn(app, @SaveData_FDButtonPushed, true);
            app.SaveData_FD.FontWeight = 'bold';
            app.SaveData_FD.Tooltip = {'Assign data to variable in the base workspace'};
            app.SaveData_FD.Position = [153 12 117 30];
            app.SaveData_FD.Text = 'SAVE FD_DATA';

            % Create LoadData_FD
            app.LoadData_FD = uibutton(app.FrequencyDomainFDTab, 'push');
            app.LoadData_FD.ButtonPushedFcn = createCallbackFcn(app, @LoadData_FDButtonPushed, true);
            app.LoadData_FD.FontWeight = 'bold';
            app.LoadData_FD.Tooltip = {'Assign data to variable in the base workspace'};
            app.LoadData_FD.Position = [27 12 116 30];
            app.LoadData_FD.Text = 'LOAD FD_DATA';

            % Create LEGENDButton
            app.LEGENDButton = uibutton(app.FrequencyDomainFDTab, 'state');
            app.LEGENDButton.ValueChangedFcn = createCallbackFcn(app, @LEGENDButtonValueChanged, true);
            app.LEGENDButton.Text = 'LEGEND';
            app.LEGENDButton.Position = [1145 9 99 22];

            % Create JETCOLORMAPButton_2
            app.JETCOLORMAPButton_2 = uibutton(app.FrequencyDomainFDTab, 'state');
            app.JETCOLORMAPButton_2.ValueChangedFcn = createCallbackFcn(app, @JETCOLORMAPButton_2ValueChanged, true);
            app.JETCOLORMAPButton_2.Text = 'JET COLORMAP';
            app.JETCOLORMAPButton_2.Position = [1261 9 107 22];

            % Create FDDatatoLabel
            app.FDDatatoLabel = uilabel(app.FrequencyDomainFDTab);
            app.FDDatatoLabel.FontWeight = 'bold';
            app.FDDatatoLabel.Position = [27 59 69 22];
            app.FDDatatoLabel.Text = 'FD Data to ';

            % Create dataManipulationButton
            app.dataManipulationButton = uibutton(app.FrequencyDomainFDTab, 'push');
            app.dataManipulationButton.ButtonPushedFcn = createCallbackFcn(app, @dataManipulationButtonPushed, true);
            app.dataManipulationButton.FontWeight = 'bold';
            app.dataManipulationButton.Enable = 'off';
            app.dataManipulationButton.Tooltip = {'Assign data to variable in the base workspace'};
            app.dataManipulationButton.Position = [97 57 288 26];
            app.dataManipulationButton.Text = 'DATA MANIPULATION';

            % Create GRIDOFFButton_2
            app.GRIDOFFButton_2 = uibutton(app.FrequencyDomainFDTab, 'state');
            app.GRIDOFFButton_2.Text = 'GRID OFF';
            app.GRIDOFFButton_2.Position = [515 575 100 25];

            % Create PLOTFORCUSTOMISATIONButton_FD1
            app.PLOTFORCUSTOMISATIONButton_FD1 = uibutton(app.FrequencyDomainFDTab, 'push');
            app.PLOTFORCUSTOMISATIONButton_FD1.ButtonPushedFcn = createCallbackFcn(app, @PLOTFORCUSTOMISATIONButton_FD1Pushed, true);
            app.PLOTFORCUSTOMISATIONButton_FD1.FontSize = 11;
            app.PLOTFORCUSTOMISATIONButton_FD1.Position = [515 436 100 41];
            app.PLOTFORCUSTOMISATIONButton_FD1.Text = {'PLOT FOR'; 'CUSTOMISATION'};

            % Create DataManipulationDMTab
            app.DataManipulationDMTab = uitab(app.TabGroup);
            app.DataManipulationDMTab.Title = 'Data Manipulation (DM)';

            % Create UIAxes10
            app.UIAxes10 = uiaxes(app.DataManipulationDMTab);
            title(app.UIAxes10, 'PLOT 2')
            app.UIAxes10.FontWeight = 'bold';
            app.UIAxes10.XTickLabelRotation = 0;
            app.UIAxes10.YTickLabelRotation = 0;
            app.UIAxes10.ZTickLabelRotation = 0;
            app.UIAxes10.LineWidth = 1;
            app.UIAxes10.Box = 'on';
            app.UIAxes10.Position = [635 4 750 380];

            % Create STEP1Panel
            app.STEP1Panel = uipanel(app.DataManipulationDMTab);
            app.STEP1Panel.Title = 'STEP 1';
            app.STEP1Panel.Position = [13 396 1376 426];

            % Create UIAxes9
            app.UIAxes9 = uiaxes(app.STEP1Panel);
            title(app.UIAxes9, 'PLOT 1')
            xlabel(app.UIAxes9, 'Frequency (THz)')
            app.UIAxes9.FontWeight = 'bold';
            app.UIAxes9.XLim = [0 4];
            app.UIAxes9.XTickLabelRotation = 0;
            app.UIAxes9.YTickLabelRotation = 0;
            app.UIAxes9.ZTickLabelRotation = 0;
            app.UIAxes9.LineWidth = 1;
            app.UIAxes9.Box = 'on';
            app.UIAxes9.Position = [621 15 750 380];

            % Create SourceDataSetEditFieldLabel
            app.SourceDataSetEditFieldLabel = uilabel(app.STEP1Panel);
            app.SourceDataSetEditFieldLabel.HorizontalAlignment = 'right';
            app.SourceDataSetEditFieldLabel.Position = [18 330 94 22];
            app.SourceDataSetEditFieldLabel.Text = 'Source Data Set';

            % Create SourceDataSetEditField
            app.SourceDataSetEditField = uieditfield(app.STEP1Panel, 'text');
            app.SourceDataSetEditField.Position = [129 330 274 22];
            app.SourceDataSetEditField.Value = 'ex) 1 2 3 4 5';

            % Create AforDropDownLabel
            app.AforDropDownLabel = uilabel(app.STEP1Panel);
            app.AforDropDownLabel.HorizontalAlignment = 'right';
            app.AforDropDownLabel.Position = [117 292 30 22];
            app.AforDropDownLabel.Text = 'A for';

            % Create AforDropDown
            app.AforDropDown = uidropdown(app.STEP1Panel);
            app.AforDropDown.Items = {'frequency', 'ref_amplitude', 'ref_phase', 'sam_amplitude', 'sam_phase', 'transmit_amplitude', 'transmit_phase', 'refractiveIndex', 'absorption', 'extinction', 'eReal', 'eImag'};
            app.AforDropDown.Position = [151 292 113 22];
            app.AforDropDown.Value = 'frequency';

            % Create DefinevariablesLabel
            app.DefinevariablesLabel = uilabel(app.STEP1Panel);
            app.DefinevariablesLabel.Position = [24 291 95 22];
            app.DefinevariablesLabel.Text = 'Define variables ';

            % Create XaxisDataDropDownLabel
            app.XaxisDataDropDownLabel = uilabel(app.STEP1Panel);
            app.XaxisDataDropDownLabel.HorizontalAlignment = 'right';
            app.XaxisDataDropDownLabel.Position = [25 256 67 22];
            app.XaxisDataDropDownLabel.Text = 'X-axis Data';

            % Create XaxisDataDropDown
            app.XaxisDataDropDown = uidropdown(app.STEP1Panel);
            app.XaxisDataDropDown.Items = {'frequency', 'ref_amplitude', 'ref_phase', 'sam_amplitude', 'sam_phase', 'transmit_amplitude', 'transmit_phase', 'refractiveIndex', 'absorption', 'extinction', 'eReal', 'eImag'};
            app.XaxisDataDropDown.Position = [151 256 115 22];
            app.XaxisDataDropDown.Value = 'frequency';

            % Create YaxisDataFormulationEditFieldLabel
            app.YaxisDataFormulationEditFieldLabel = uilabel(app.STEP1Panel);
            app.YaxisDataFormulationEditFieldLabel.HorizontalAlignment = 'right';
            app.YaxisDataFormulationEditFieldLabel.Position = [24 221 133 22];
            app.YaxisDataFormulationEditFieldLabel.Text = 'Y-axis Data Formulation';

            % Create YaxisDataFormulationEditField
            app.YaxisDataFormulationEditField = uieditfield(app.STEP1Panel, 'text');
            app.YaxisDataFormulationEditField.Position = [181 221 382 22];
            app.YaxisDataFormulationEditField.Value = 'A';

            % Create PLOTindividualdatasetsButton
            app.PLOTindividualdatasetsButton = uibutton(app.STEP1Panel, 'push');
            app.PLOTindividualdatasetsButton.ButtonPushedFcn = createCallbackFcn(app, @PLOTindividualdatasetsButtonPushed, true);
            app.PLOTindividualdatasetsButton.Enable = 'off';
            app.PLOTindividualdatasetsButton.Position = [341 70 231 30];
            app.PLOTindividualdatasetsButton.Text = 'PLOT (individual data sets)';

            % Create BforDropDownLabel
            app.BforDropDownLabel = uilabel(app.STEP1Panel);
            app.BforDropDownLabel.HorizontalAlignment = 'right';
            app.BforDropDownLabel.Position = [268 292 31 22];
            app.BforDropDownLabel.Text = 'B for';

            % Create BforDropDown
            app.BforDropDown = uidropdown(app.STEP1Panel);
            app.BforDropDown.Items = {'frequency', 'ref_amplitude', 'ref_phase', 'sam_amplitude', 'sam_phase', 'transmit_amplitude', 'transmit_phase', 'refractiveIndex', 'absorption', 'extinction', 'eReal', 'eImag'};
            app.BforDropDown.Position = [303 292 113 22];
            app.BforDropDown.Value = 'frequency';

            % Create CforDropDownLabel
            app.CforDropDownLabel = uilabel(app.STEP1Panel);
            app.CforDropDownLabel.HorizontalAlignment = 'right';
            app.CforDropDownLabel.Position = [417 292 32 22];
            app.CforDropDownLabel.Text = 'C for';

            % Create CforDropDown
            app.CforDropDown = uidropdown(app.STEP1Panel);
            app.CforDropDown.Items = {'frequency', 'ref_amplitude', 'ref_phase', 'sam_amplitude', 'sam_phase', 'transmit_amplitude', 'transmit_phase', 'refractiveIndex', 'absorption', 'extinction', 'eReal', 'eImag'};
            app.CforDropDown.Position = [454 292 113 22];
            app.CforDropDown.Value = 'frequency';

            % Create CALCULATEButton_2
            app.CALCULATEButton_2 = uibutton(app.STEP1Panel, 'push');
            app.CALCULATEButton_2.ButtonPushedFcn = createCallbackFcn(app, @CALCULATEButton_2Pushed, true);
            app.CALCULATEButton_2.BackgroundColor = [1 1 1];
            app.CALCULATEButton_2.Position = [341 109 231 30];
            app.CALCULATEButton_2.Text = 'CALCULATE';

            % Create IMPORTALLDATAButton
            app.IMPORTALLDATAButton = uibutton(app.STEP1Panel, 'push');
            app.IMPORTALLDATAButton.ButtonPushedFcn = createCallbackFcn(app, @IMPORTALLDATAButtonPushed, true);
            app.IMPORTALLDATAButton.Position = [420 329 152 22];
            app.IMPORTALLDATAButton.Text = 'IMPORT ALL DATA';

            % Create AvailableDataSetEditFieldLabel
            app.AvailableDataSetEditFieldLabel = uilabel(app.STEP1Panel);
            app.AvailableDataSetEditFieldLabel.HorizontalAlignment = 'right';
            app.AvailableDataSetEditFieldLabel.Position = [19 363 104 22];
            app.AvailableDataSetEditFieldLabel.Text = 'Available Data Set';

            % Create AvailableDataSetEditField
            app.AvailableDataSetEditField = uieditfield(app.STEP1Panel, 'text');
            app.AvailableDataSetEditField.Editable = 'off';
            app.AvailableDataSetEditField.Position = [129 363 449 22];

            % Create NumberofDataEditFieldLabel
            app.NumberofDataEditFieldLabel = uilabel(app.STEP1Panel);
            app.NumberofDataEditFieldLabel.HorizontalAlignment = 'right';
            app.NumberofDataEditFieldLabel.Position = [26 167 91 22];
            app.NumberofDataEditFieldLabel.Text = 'Number of Data';

            % Create NumberofDataEditField
            app.NumberofDataEditField = uieditfield(app.STEP1Panel, 'numeric');
            app.NumberofDataEditField.Editable = 'off';
            app.NumberofDataEditField.Position = [131 167 71 22];

            % Create exABABCetcLabel
            app.exABABCetcLabel = uilabel(app.STEP1Panel);
            app.exABABCetcLabel.Position = [182 198 129 22];
            app.exABABCetcLabel.Text = 'ex) A./B , (A+B).*C, etc';

            % Create DPlotFrequencyxaxisPanel
            app.DPlotFrequencyxaxisPanel = uipanel(app.STEP1Panel);
            app.DPlotFrequencyxaxisPanel.Title = '3D Plot (Frequency x-axis)';
            app.DPlotFrequencyxaxisPanel.Position = [22 37 300 71];

            % Create PLOT1_3DButton
            app.PLOT1_3DButton = uibutton(app.DPlotFrequencyxaxisPanel, 'push');
            app.PLOT1_3DButton.ButtonPushedFcn = createCallbackFcn(app, @PLOT1_3DButtonPushed, true);
            app.PLOT1_3DButton.Position = [174 23 110 22];
            app.PLOT1_3DButton.Text = '3D PLOT 1';

            % Create dataDropDownLabel
            app.dataDropDownLabel = uilabel(app.DPlotFrequencyxaxisPanel);
            app.dataDropDownLabel.HorizontalAlignment = 'right';
            app.dataDropDownLabel.Position = [11 23 29 22];
            app.dataDropDownLabel.Text = 'data';

            % Create data3DDropDown
            app.data3DDropDown = uidropdown(app.DPlotFrequencyxaxisPanel);
            app.data3DDropDown.Items = {'no available data'};
            app.data3DDropDown.Position = [55 23 101 22];
            app.data3DDropDown.Value = 'no available data';

            % Create DplotdoesnotsupportthebelowextractingfunctionLabel
            app.DplotdoesnotsupportthebelowextractingfunctionLabel = uilabel(app.DPlotFrequencyxaxisPanel);
            app.DplotdoesnotsupportthebelowextractingfunctionLabel.FontSize = 10;
            app.DplotdoesnotsupportthebelowextractingfunctionLabel.Position = [41 3 249 22];
            app.DplotdoesnotsupportthebelowextractingfunctionLabel.Text = '*3D plot doesnot support the below extracting function.';

            % Create PLOTmeanandrangeButton
            app.PLOTmeanandrangeButton = uibutton(app.STEP1Panel, 'push');
            app.PLOTmeanandrangeButton.ButtonPushedFcn = createCallbackFcn(app, @PLOTmeanandrangeButtonPushed, true);
            app.PLOTmeanandrangeButton.Enable = 'off';
            app.PLOTmeanandrangeButton.Position = [341 32 231 30];
            app.PLOTmeanandrangeButton.Text = 'PLOT (mean and range)';

            % Create ASSIGNButtonDM
            app.ASSIGNButtonDM = uibutton(app.DataManipulationDMTab, 'push');
            app.ASSIGNButtonDM.ButtonPushedFcn = createCallbackFcn(app, @ASSIGNButtonDMPushed, true);
            app.ASSIGNButtonDM.FontWeight = 'bold';
            app.ASSIGNButtonDM.Tooltip = {'Assign data to variable in the base workspace'};
            app.ASSIGNButtonDM.Position = [148 13 220 30];
            app.ASSIGNButtonDM.Text = 'ASSIGN DM_DATA IN WORKSPACE';

            % Create SaveData_DM
            app.SaveData_DM = uibutton(app.DataManipulationDMTab, 'push');
            app.SaveData_DM.ButtonPushedFcn = createCallbackFcn(app, @SaveData_DMButtonPushed, true);
            app.SaveData_DM.FontWeight = 'bold';
            app.SaveData_DM.Tooltip = {'Assign data to variable in the base workspace'};
            app.SaveData_DM.Position = [27 13 113 30];
            app.SaveData_DM.Text = 'SAVE DM_DATA';

            % Create DMTabGroup
            app.DMTabGroup = uitabgroup(app.DataManipulationDMTab);
            app.DMTabGroup.Position = [25 67 600 310];

            % Create FrequencyBaseTab
            app.FrequencyBaseTab = uitab(app.DMTabGroup);
            app.FrequencyBaseTab.Title = 'Frequency Base';

            % Create DISPLAYXLINESButton
            app.DISPLAYXLINESButton = uibutton(app.FrequencyBaseTab, 'push');
            app.DISPLAYXLINESButton.ButtonPushedFcn = createCallbackFcn(app, @DISPLAYXLINESButtonPushed, true);
            app.DISPLAYXLINESButton.Position = [462 234 115 22];
            app.DISPLAYXLINESButton.Text = 'DISPLAY X LINES';

            % Create REARRANGEDATAButton
            app.REARRANGEDATAButton = uibutton(app.FrequencyBaseTab, 'push');
            app.REARRANGEDATAButton.ButtonPushedFcn = createCallbackFcn(app, @REARRANGEDATAButtonPushed, true);
            app.REARRANGEDATAButton.BackgroundColor = [1 1 1];
            app.REARRANGEDATAButton.Position = [104 202 473 21];
            app.REARRANGEDATAButton.Text = 'REARRANGE DATA';

            % Create PLOTButton_2
            app.PLOTButton_2 = uibutton(app.FrequencyBaseTab, 'push');
            app.PLOTButton_2.ButtonPushedFcn = createCallbackFcn(app, @PLOTButton_2Pushed, true);
            app.PLOTButton_2.Enable = 'off';
            app.PLOTButton_2.Position = [329 12 231 30];
            app.PLOTButton_2.Text = 'PLOT';

            % Create XaxisDataEditFieldLabel
            app.XaxisDataEditFieldLabel = uilabel(app.FrequencyBaseTab);
            app.XaxisDataEditFieldLabel.HorizontalAlignment = 'right';
            app.XaxisDataEditFieldLabel.Position = [26 134 67 22];
            app.XaxisDataEditFieldLabel.Text = 'X-axis Data';

            % Create XaxisDataEditField
            app.XaxisDataEditField = uieditfield(app.FrequencyBaseTab, 'text');
            app.XaxisDataEditField.Position = [104 134 464 22];

            % Create GetDatafromFrequencyTHzEditFieldLabel
            app.GetDatafromFrequencyTHzEditFieldLabel = uilabel(app.FrequencyBaseTab);
            app.GetDatafromFrequencyTHzEditFieldLabel.HorizontalAlignment = 'right';
            app.GetDatafromFrequencyTHzEditFieldLabel.Position = [17 234 171 22];
            app.GetDatafromFrequencyTHzEditFieldLabel.Text = 'Get Data from Frequency(THz)';

            % Create GetDatafromFrequencyTHzEditField
            app.GetDatafromFrequencyTHzEditField = uieditfield(app.FrequencyBaseTab, 'text');
            app.GetDatafromFrequencyTHzEditField.Position = [202 234 252 22];
            app.GetDatafromFrequencyTHzEditField.Value = '1';

            % Create YaxisDataEditField_2Label
            app.YaxisDataEditField_2Label = uilabel(app.FrequencyBaseTab);
            app.YaxisDataEditField_2Label.HorizontalAlignment = 'right';
            app.YaxisDataEditField_2Label.Position = [28 98 67 22];
            app.YaxisDataEditField_2Label.Text = 'Y-axis Data';

            % Create YaxisDataEditField_2
            app.YaxisDataEditField_2 = uieditfield(app.FrequencyBaseTab, 'text');
            app.YaxisDataEditField_2.Position = [104 98 466 22];

            % Create XLabelEditFieldLabel
            app.XLabelEditFieldLabel = uilabel(app.FrequencyBaseTab);
            app.XLabelEditFieldLabel.HorizontalAlignment = 'right';
            app.XLabelEditFieldLabel.Position = [50 63 43 22];
            app.XLabelEditFieldLabel.Text = 'XLabel';

            % Create XLabelEditField
            app.XLabelEditField = uieditfield(app.FrequencyBaseTab, 'text');
            app.XLabelEditField.Position = [103 63 204 22];
            app.XLabelEditField.Value = 'Temperature (K)';

            % Create YLabelEditFieldLabel
            app.YLabelEditFieldLabel = uilabel(app.FrequencyBaseTab);
            app.YLabelEditFieldLabel.HorizontalAlignment = 'right';
            app.YLabelEditFieldLabel.Position = [314 63 43 22];
            app.YLabelEditFieldLabel.Text = 'YLabel';

            % Create YLabelEditField
            app.YLabelEditField = uieditfield(app.FrequencyBaseTab, 'text');
            app.YLabelEditField.Position = [365 63 204 22];

            % Create MeasurementEditFieldLabel
            app.MeasurementEditFieldLabel = uilabel(app.FrequencyBaseTab);
            app.MeasurementEditFieldLabel.HorizontalAlignment = 'right';
            app.MeasurementEditFieldLabel.Position = [19 168 79 23];
            app.MeasurementEditFieldLabel.Text = 'Measurement';

            % Create MeasurementEditField
            app.MeasurementEditField = uieditfield(app.FrequencyBaseTab, 'text');
            app.MeasurementEditField.Position = [104 168 256 22];

            % Create PeakBaseTab
            app.PeakBaseTab = uitab(app.DMTabGroup);
            app.PeakBaseTab.Title = 'Peak Base';

            % Create REARRANGEDATAButton_2
            app.REARRANGEDATAButton_2 = uibutton(app.PeakBaseTab, 'push');
            app.REARRANGEDATAButton_2.ButtonPushedFcn = createCallbackFcn(app, @REARRANGEDATAButton_2Pushed, true);
            app.REARRANGEDATAButton_2.BackgroundColor = [1 1 1];
            app.REARRANGEDATAButton_2.Position = [103 195 471 22];
            app.REARRANGEDATAButton_2.Text = 'REARRANGE DATA';

            % Create PLOTButton_3
            app.PLOTButton_3 = uibutton(app.PeakBaseTab, 'push');
            app.PLOTButton_3.ButtonPushedFcn = createCallbackFcn(app, @PLOTButton_3Pushed, true);
            app.PLOTButton_3.Position = [329 12 231 30];
            app.PLOTButton_3.Text = 'PLOT';

            % Create PeakNumSpinnerLabel
            app.PeakNumSpinnerLabel = uilabel(app.PeakBaseTab);
            app.PeakNumSpinnerLabel.HorizontalAlignment = 'right';
            app.PeakNumSpinnerLabel.Position = [444 229 65 22];
            app.PeakNumSpinnerLabel.Text = 'Peak Num.';

            % Create PeakNumSpinner
            app.PeakNumSpinner = uispinner(app.PeakBaseTab);
            app.PeakNumSpinner.Limits = [1 3];
            app.PeakNumSpinner.ValueChangedFcn = createCallbackFcn(app, @PeakNumSpinnerValueChanged, true);
            app.PeakNumSpinner.Position = [514 230 64 22];
            app.PeakNumSpinner.Value = 1;

            % Create LowerLimitTHzEditFieldLabel
            app.LowerLimitTHzEditFieldLabel = uilabel(app.PeakBaseTab);
            app.LowerLimitTHzEditFieldLabel.HorizontalAlignment = 'right';
            app.LowerLimitTHzEditFieldLabel.Position = [267 229 100 22];
            app.LowerLimitTHzEditFieldLabel.Text = 'Lower Limit (THz)';

            % Create LowerLimitTHzEditField
            app.LowerLimitTHzEditField = uieditfield(app.PeakBaseTab, 'numeric');
            app.LowerLimitTHzEditField.Limits = [0 4];
            app.LowerLimitTHzEditField.ValueChangedFcn = createCallbackFcn(app, @LowerLimitTHzEditFieldValueChanged, true);
            app.LowerLimitTHzEditField.Position = [373 229 54 22];
            app.LowerLimitTHzEditField.Value = 1;

            % Create XaxisDataEditField_2Label
            app.XaxisDataEditField_2Label = uilabel(app.PeakBaseTab);
            app.XaxisDataEditField_2Label.HorizontalAlignment = 'right';
            app.XaxisDataEditField_2Label.Position = [25 128 67 22];
            app.XaxisDataEditField_2Label.Text = 'X-axis Data';

            % Create XaxisDataEditField_2
            app.XaxisDataEditField_2 = uieditfield(app.PeakBaseTab, 'text');
            app.XaxisDataEditField_2.Position = [103 128 464 22];

            % Create YaxisDataEditField_3Label
            app.YaxisDataEditField_3Label = uilabel(app.PeakBaseTab);
            app.YaxisDataEditField_3Label.HorizontalAlignment = 'right';
            app.YaxisDataEditField_3Label.Position = [27 92 67 22];
            app.YaxisDataEditField_3Label.Text = 'Y-axis Data';

            % Create YaxisDataEditField_3
            app.YaxisDataEditField_3 = uieditfield(app.PeakBaseTab, 'text');
            app.YaxisDataEditField_3.Position = [103 92 466 22];

            % Create XLabelEditField_2Label
            app.XLabelEditField_2Label = uilabel(app.PeakBaseTab);
            app.XLabelEditField_2Label.HorizontalAlignment = 'right';
            app.XLabelEditField_2Label.Position = [49 57 43 22];
            app.XLabelEditField_2Label.Text = 'XLabel';

            % Create XLabelEditField_2
            app.XLabelEditField_2 = uieditfield(app.PeakBaseTab, 'text');
            app.XLabelEditField_2.Position = [102 57 204 22];
            app.XLabelEditField_2.Value = 'Temperature (K)';

            % Create YLabelEditField_2Label
            app.YLabelEditField_2Label = uilabel(app.PeakBaseTab);
            app.YLabelEditField_2Label.HorizontalAlignment = 'right';
            app.YLabelEditField_2Label.Position = [313 57 43 22];
            app.YLabelEditField_2Label.Text = 'YLabel';

            % Create YLabelEditField_2
            app.YLabelEditField_2 = uieditfield(app.PeakBaseTab, 'text');
            app.YLabelEditField_2.Position = [364 57 204 22];

            % Create MeasurementEditField_2Label
            app.MeasurementEditField_2Label = uilabel(app.PeakBaseTab);
            app.MeasurementEditField_2Label.HorizontalAlignment = 'right';
            app.MeasurementEditField_2Label.Position = [18 162 79 23];
            app.MeasurementEditField_2Label.Text = 'Measurement';

            % Create MeasurementEditField_2
            app.MeasurementEditField_2 = uieditfield(app.PeakBaseTab, 'text');
            app.MeasurementEditField_2.Position = [103 162 256 22];

            % Create MinPeakProminenceEditFieldLabel
            app.MinPeakProminenceEditFieldLabel = uilabel(app.PeakBaseTab);
            app.MinPeakProminenceEditFieldLabel.HorizontalAlignment = 'right';
            app.MinPeakProminenceEditFieldLabel.Position = [45 229 126 22];
            app.MinPeakProminenceEditFieldLabel.Text = 'Min. Peak Prominence';

            % Create MinPeakProminenceEditField
            app.MinPeakProminenceEditField = uieditfield(app.PeakBaseTab, 'numeric');
            app.MinPeakProminenceEditField.Limits = [0 Inf];
            app.MinPeakProminenceEditField.ValueChangedFcn = createCallbackFcn(app, @MinPeakProminenceEditFieldValueChanged, true);
            app.MinPeakProminenceEditField.Position = [178 229 74 22];

            % Create JETCOLORMAPButton_DM
            app.JETCOLORMAPButton_DM = uibutton(app.DataManipulationDMTab, 'state');
            app.JETCOLORMAPButton_DM.ValueChangedFcn = createCallbackFcn(app, @JETCOLORMAPButton_DMValueChanged, true);
            app.JETCOLORMAPButton_DM.Text = 'JET COLORMAP';
            app.JETCOLORMAPButton_DM.Position = [511 13 107 22];

            % Create SystemStatusLabel
            app.SystemStatusLabel = uilabel(app.CatsperUIFigure);
            app.SystemStatusLabel.Position = [967 925 84 22];
            app.SystemStatusLabel.Text = 'System Status';

            % Create DEBUGMsgLabel
            app.DEBUGMsgLabel = uilabel(app.CatsperUIFigure);
            app.DEBUGMsgLabel.FontWeight = 'bold';
            app.DEBUGMsgLabel.Position = [1060 924 347 22];
            app.DEBUGMsgLabel.Text = '';

            % Create CLEARMEMORYButton
            app.CLEARMEMORYButton = uibutton(app.CatsperUIFigure, 'push');
            app.CLEARMEMORYButton.ButtonPushedFcn = createCallbackFcn(app, @CLEARMEMORYButtonPushed, true);
            app.CLEARMEMORYButton.FontWeight = 'bold';
            app.CLEARMEMORYButton.Position = [1196 889 112 29];
            app.CLEARMEMORYButton.Text = 'CLEAR MEMORY';

            % Create SAVETDFDDMButton
            app.SAVETDFDDMButton = uibutton(app.CatsperUIFigure, 'push');
            app.SAVETDFDDMButton.ButtonPushedFcn = createCallbackFcn(app, @SAVETDFDDMButtonPushed, true);
            app.SAVETDFDDMButton.FontWeight = 'bold';
            app.SAVETDFDDMButton.Position = [1314 889 109 29];
            app.SAVETDFDDMButton.Text = 'SAVE TD/FD/DM';

            % Create CaTSperLabel
            app.CaTSperLabel = uilabel(app.CatsperUIFigure);
            app.CaTSperLabel.FontSize = 37;
            app.CaTSperLabel.FontWeight = 'bold';
            app.CaTSperLabel.FontAngle = 'italic';
            app.CaTSperLabel.Position = [81 889 158 48];
            app.CaTSperLabel.Text = 'CaTSper';

            % Create ImportTHzFilesButton
            app.ImportTHzFilesButton = uibutton(app.CatsperUIFigure, 'push');
            app.ImportTHzFilesButton.ButtonPushedFcn = createCallbackFcn(app, @ImportTHzFilesButtonPushed, true);
            app.ImportTHzFilesButton.BackgroundColor = [1 1 1];
            app.ImportTHzFilesButton.FontSize = 13;
            app.ImportTHzFilesButton.FontWeight = 'bold';
            app.ImportTHzFilesButton.Position = [251 889 135 29];
            app.ImportTHzFilesButton.Text = 'Import THz Files';

            % Create ProjectsEditField
            app.ProjectsEditField = uieditfield(app.CatsperUIFigure, 'text');
            app.ProjectsEditField.FontWeight = 'bold';
            app.ProjectsEditField.BackgroundColor = [0.9412 0.9412 0.9412];
            app.ProjectsEditField.Position = [396 891 662 25];

            % Create Image
            app.Image = uiimage(app.CatsperUIFigure);
            app.Image.Position = [24 893 58 58];
            app.Image.ImageSource = fullfile(pathToMLAPP, 'dotTHz_logo.png');

            % Create DEPLOYButton
            app.DEPLOYButton = uibutton(app.CatsperUIFigure, 'push');
            app.DEPLOYButton.ButtonPushedFcn = createCallbackFcn(app, @DEPLOYButtonPushed, true);
            app.DEPLOYButton.BackgroundColor = [1 1 1];
            app.DEPLOYButton.FontSize = 13;
            app.DEPLOYButton.FontWeight = 'bold';
            app.DEPLOYButton.Position = [1069 889 120 29];
            app.DEPLOYButton.Text = 'DEPLOY';

            % Show the figure after all components are created
            app.CatsperUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = CaTSper_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.CatsperUIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.CatsperUIFigure)
        end
    end
end