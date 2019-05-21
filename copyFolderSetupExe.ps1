#designate the case folder
$casesFolder = "G:\Cases"
#designate the path to the source file
$folderSetupPath = "G:\Cases\_NewCase Template\Admin\FolderSetup.exe"

#for each folder in G:\Cases paste the source file in the admin folder, and overwrite any existing version
foreach ($case in $(Get-ChildItem $casesFolder)) {
    #debugging  write-host $case.Name
    if($case.Name -eq "_NewCase Template") {
        #debugging  write-host "Skipped _NewCase Template"
        continue
    } else {
        $destPath = $casesFolder + "\" + $case.Name + "\Admin\FolderSetup.exe"
        #check if path exists
        if (Test-Path $destPath.Trim("FolderSetup.exe")) {
            #debugging  write-host ($folderSetupPath + " " + $destPath)
            Copy-Item -Path $folderSetupPath -Destination ($destPath) -Force 
        }
    }
}