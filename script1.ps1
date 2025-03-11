$Location="Central India"
$ResourceGroupName="azcloudshell-grp"

New-AzResourceGroup -Name $ResourceGroupName -Location $Location

$AppServicePlanName="appserviceplan5413723"

New-AzAppServicePlan -ResourceGroupName $ResourceGroupName -Name $AppServicePlanName `
-Location $Location -Tier Free

$AppName="leaningapp5413723"

New-AzWebApp -ResourceGroupName $ResourceGroupName -Location $Location -Name $AppName `
-AppServicePlan $AppServicePlanName