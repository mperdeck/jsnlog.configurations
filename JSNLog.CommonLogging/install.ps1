param($installPath, $toolsPath, $package, $project)
 
$project.ProjectItems | ForEach { if ($_.Name -eq "Installation Dummy - reopen solution to will disappear on solutionFile.txt") { $_.Remove() } }
$projectPath = Split-Path $project.FullName -Parent
Join-Path $projectPath "Scripts\InstallationDummyFile.txt" | Remove-Item
