$Location="Central India"
$ResourceGroupName="azcloudshell-grp"

$AppServicePlanName="appserviceplan7231"

New-AzAppServicePlan -ResourceGroupName $ResourceGroupName -Name $AppServicePlanName `
-Location $Location -Tier Free -Linux

$AppName="leaningapp7231"

New-AzWebApp -ResourceGroupName $ResourceGroupName -Location $Location -Name $AppName `
-AppServicePlan $AppServicePlanName