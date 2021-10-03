# Before running this batch file, install wyam
# https://wyam.io
#
# During a build, first process all .template files (replacing __FrameworkVersion__ with final version), then run this file.

function CopyContentFiles([string]$packageId)
{
	xcopy  Source\content\App_Start\*.* FinalPackages\$packageId\content\App_Start\*.* /e /q
	xcopy  Source\content\Scripts\*.* FinalPackages\$packageId\content\Scripts\*.* /e /q
}

wyam --input .\Source --output .\FinalPackages

CopyContentFiles "JSNLog.Elmah" 
CopyContentFiles "JSNLog.Log4Net" 
CopyContentFiles "JSNLog.NLog" 
CopyContentFiles "JSNLog.Serilog" 
CopyContentFiles "JSNLog.CommonLogging" 



