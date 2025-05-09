Connect-AzAccount

$Location="North Europe"
$ResourceGroupName="web-grp"
$AppServicePlanName="learningplan7000"

New-AzAppServicePlan -ResourceGroupName $ResourceGroupName -Name $AppServicePlanName `
-Location $Location -Tier Basic

$AppName="leaningapp588787"

New-AzWebApp -ResourceGroupName $ResourceGroupName -Location $Location -Name $AppName `
-AppServicePlan $AppServicePlanName

$gitrepo="https://github.com/cloudlearning4000/learningapp"

$PropertiesObject = @{
    repoUrl = $gitrepo;
    branch ="main";
    isManualIntegration = "true";
}

Set-AzResource -PropertyObject $PropertiesObject -ResourceGroupName $ResourceGroupName `
-ResourceType Microsoft.Web/sites/sourcecontrols `
-ResourceName $AppName/web -ApiVersion 2015-08-01 -Force