# Script to Display information about the Jobs installed on the Server
# Lists Owner and Status, reporting it in a Table Format

[void][System.Reflection.Assembly]::LoadWithPartialName("Microsoft.SqlServer.SMO")
$sqlServerName = 'localhost'

$sqlServer = New-Object Microsoft.SqlServer.Management.Smo.Server($sqlServerName)

foreach($job in $sqlServer.JobServer.Jobs)
{
    $job | select Name, OwnerLoginName, IsEnabled, LastRunDate, LastRunOutcome | format-table
}

# Script to Display information about the Jobs installed on the Server
# Lists Owner, Status, Creation Date and the Date Last Modified

[void][System.Reflection.Assembly]::LoadWithPartialName("Microsoft.SqlServer.SMO")
$sqlServerName = 'localhost'

$sqlServer = New-Object Microsoft.SqlServer.Management.Smo.Server($sqlServerName)

foreach($job in $sqlServer.JobServer.Jobs)
{
    $job | select Name, OwnerLoginName, IsEnabled, LastRunDate, LastRunOutcome, DateCReated, DateLastModified
}