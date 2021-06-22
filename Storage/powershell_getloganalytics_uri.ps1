#import-module Az

#login to azure
Connect-AzAccount

Install-Module Az.OperationalInsights

$resourceGroupName = "<theNameOfYourResourceGroup>"
$workspaceName = "<theNameOfTheLogAnalyticsWorkspace>"

#$uri = "https://portal.loganalytics.io/subscriptions/{0}/resourcegroups/{1}/workspaces/{2}" -f $subscriptionId, $resourceGroupName, $workspaceName

#instead of the uri, get the guid for the power bi report instead:
$workspace = Get-AzOperationalInsightsWorkspace -ResourceGroupName $resourceGroupName -Name $workspaceName
$GuidString = $workspace.CustomerId.Guid.ToString()
$pbistring = "https://api.loganalytics.io/v1/workspaces/$GuidString/query"
$pbistring


