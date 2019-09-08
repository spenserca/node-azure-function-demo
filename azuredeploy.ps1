param(
    [string]$pathToDrop,
    [string]$resourceGroupName = 'node-azure-function-demo'
)

# Create Azure resource group
New-AzureRmResourceGroup `
    -Name $resourceGroupName `
    -Location 'Central US' `
    -Force `
    -Verbose

# Create Azure resource group deployment
# This will create the infrastructure described
# in azuredeploy.json to host the application
New-AzureRmResourceGroupDeployment `
    -ResourceGroupName $resourceGroupName `
    -Mode Complete `
    -TemplateFile "$( $pathToDrop )/azuredeploy.json" `
    -OutVariable deployment `
    -Force `
    -Verbose

if ($deployment.ProvisioningState -ne 'Succeeded')
{
    throw 'Deployment of Azure resources failed'
}
