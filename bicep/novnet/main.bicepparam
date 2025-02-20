using './main.bicep'

param prefix = 'CHAT'
param suffix = 'tst'
// az account show get the id  and paste below
param userObjectId = '4e62b871-6174-453f-9be7-e95ab2e6a7cc'
param keyVaultEnablePurgeProtection = false
param acrEnabled = false
param nspEnabled = false
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
  environment: 'test'
  iac: 'bicep'
}
