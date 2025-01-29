using './main.bicep'

param prefix = 'bami'
param suffix = 'test'
// az account show get the id  and paste below
param userObjectId = 'f4cadff2-0acc-4809-9c54-1059773ec5ed'
param keyVaultEnablePurgeProtection = false
param acrEnabled = true
param vmAdminUsername = 'azadmin'
//param vmAdminPasswordOrKey = getSecret('1a45a694-ae23-4650-9774-89a571c462f6', 'BaboKeyVaultResourceGroup', 'BaboKeyVault', 'vmAdminPasswordOrKey')
param vmAdminPasswordOrKey = 'Trustno1234!'
param openAiDeployments = [
  {
    model: {
      name: 'text-embedding-ada-002'
      version: '2'
    }
    sku: {
      name: 'Standard'
      capacity: 10
    }
  }
  {
    model: {
      name: 'gpt-4o'
      version: '2024-05-13'
    }
    sku: {
      name: 'GlobalStandard'
      capacity: 10
    }
  }
]
param tags = {
  environment: 'development'
  iac: 'bicep'
}
