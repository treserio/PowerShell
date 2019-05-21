# Should return group member info for requested group, correct Runtime syntax:
#       Get-Adgrpmembr -GroupName '#Name'
function Get-Adgrpmembr ($GroupName) {
    (Get-Adgrpmembr -identify $GroupName).samAccountName
}