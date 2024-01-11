function Get-ScoopHome {
    <#
    .SYNOPSIS
    Open app site using scoop
    .NOTES
    Can open multiple pages
    .PARAMETER AppNames
    Array of strings containing app names to look up.
    
    #>
    [CmdletBinding()]
    param(
        [Parameter(ValueFromRemainingArguments)]
        [string[]]
        $AppNames
    )
    if ($AppNames.Count -gt 1) {
        foreach ($n in $AppNames) {
            scoop home $n
        }
    }
    scoop home $AppNames

}