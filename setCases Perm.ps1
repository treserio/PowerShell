# Set all subfolders permissions for "HOLDENMCKENNA\Limited Case Access" to allow modifying and write permissions in their child folders, below is the command to run recusively? in the appropriate folder.
# icacls * /grant:r '"HOLDENMCKENNA\Limited Case Access":(OI)(CI)(IO)M'; icacls * /grant:r '"HOLDENMCKENNA\Limited Case Access":(NP)W'


#This is the correctly formatted file permissions, it will save into this variable
#$acl=Get-Acl 'G:\New File Checklist\_NewCase Template\1.1 Cast'

#This will apply the variable to all of the childs children in cases folder
#foreach ($folder in $(Get-ChildItem *\*)) {set-acl $folder $acl}

# Both in one line
# $acl=Get-Acl 'G:\New File Checklist\_NewCase Template\1.1 Cast'; foreach ($folder in $(Get-ChildItem *\*\*\*\*)) {set-acl $folder $acl}

