rem Before running this batch file, install wyam
rem https://wyam.io
rem
rem During a build, first process all .template files (replacing __Version__ with final version), then run this file.

wyam --input .\Source --output .\FinalPackages

copy Source\readme.txt FinalPackages\JSNLog.Elmah
copy Source\readme.txt FinalPackages\JSNLog.Log4Net
copy Source\readme.txt FinalPackages\JSNLog.NLog
copy Source\readme.txt.serilog FinalPackages\JSNLog.Serilog\readme.txt

xcopy  Source\content\*.* FinalPackages\JSNLog.Elmah\content\*.* /e /q
xcopy  Source\content\*.* FinalPackages\JSNLog.Log4Net\content\*.* /e /q
xcopy  Source\content\*.* FinalPackages\JSNLog.NLog\content\*.* /e /q
xcopy  Source\content\*.* FinalPackages\JSNLog.Serilog\content\*.* /e /q

copy Source\web.config.transform.nlog FinalPackages\JSNLog.NLog\web.config.transform

