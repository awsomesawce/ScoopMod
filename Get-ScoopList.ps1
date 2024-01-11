function Get-ScoopList {
    <#
    .SYNOPSIS
    Prints list of `scoop`-installed apps.
    #>
    [CmdletBinding()]
    param (
        [Parameter()]
        [ValidateNotNullOrEmpty()]
        [string]
        $Query
    )
    Write-Verbose "Starting ``scoop list``"
    if ($Query) {
        return scoop list $Query
    }
    return scoop list
}