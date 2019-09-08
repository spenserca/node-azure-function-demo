$resourceGroupName = 'node-azure-function-demo'

Remove-AzureRmResourceGroup `
    -Name $resourceGroupName `
    -Force `
    -Verbose
