# CaTx (CambridgeTHzConverter)
CaTx for the dotTHz project

   <img src="/Images/CaTx_splash.png" height ="300">

**Installation guide (standalone version)**

Please download the installer and run it on your local computer as decribed below.

**For Windows**

*MATLAB Application Installation:*
 -	Download and run [CaTxInstaller_Windows_web.exe](CaTxInstaller_Windows_web.exe) (an internect connection is necessary for installation.)
 -	The MATLAB Installer will launch. Click **Next**.
 -	At the ‘Select destination folder’ step, leave ‘Add shortcut to desktop’ **UNCHECKED**.
 -	Click **Next**, then click **Begin Install**

 *Add Shortcut to Desktop:*
 -	Right-click and drag the CaTx.exe file at C:\Program Files\CaTx\application\ to Windows Desktop
 -	Select **Create shortcut to here.**
 -	Right-click the shortcut and select **properties.**
 -	At the Shortcut tab, click **Advanced…**
 -	Check **Run as administrator.**
 -	Click **OK** and **OK**

 *Please run CaTx as administrator!!!*


**For MacOS**

*MATLAB Application Installation:*
 -	Download and run [CaTxMacInstaller_web.app](CaTxMacInstaller_web.app) (an internect connection is necessary for installation.)
 -	The MATLAB Installer will launch. Click **Next**.
 -	Click **Next**, then click **Begin Install**

 *Unlock 'json' files after installation*
 -	Move to the application folder at /Applications/CaTx/application
 -	Unlock *'Configuration.json'*,*'DeploymentRecipes.json'*,*'Profiles.json'* files.
 -	To unlock a json file:
   1) Double-click the file and try to change its content. When a warning message pops up, Select 'Unlock'.
   2) Right-click the file and change its file permissions from *Read* to *Read & Write*.



 <img src="/Images/dotTHzProject_logo.png" height ="150">

**For the source code modification**

CaTx.mlapp is a MATLAB App-Designer (version r2023a) file and runs on MATLAB environment. If MATLAB is not installed in your PC, please visit https://uk.mathworks.com/products/matlab.html and install the latest version before you run CaTSper. 

In the repository, there is a pair of .mlapp and .m files. Basically, .m file is a text version of .mlapp for code-reviewing and version-tracking and not necessary for running the tool. In case you modify *.mlapp file and commit it back to the repository, please update and upload the associated .m file as well so that users can easily track the changes in the code.

Please follow the instructions below.
1. **MATLAB** needs to be installed in your computer to modify CaTx.
2. Download *.mlapp and \Images files.
 - **CaTx.mlapp** : CaTx MATLAB App-designer file
 - **.\images\CaT_logo.png** : logo image
 - **.\images\dotTHz_logo.png** : logo image
3. Double click **CaTx.mlapp** to launch the software.

For detailed descriptions for CaTx and step-by-step tutorial, please visit [dotTHz documentation](https://github.com/dotTHzTAG/Documentation).
