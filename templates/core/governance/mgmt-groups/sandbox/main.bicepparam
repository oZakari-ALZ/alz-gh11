using './main.bicep'

// General Parameters
param parLocations = [
  'eastus2'
  'westus2'
]
param parEnableTelemetry = true

param sandboxConfig = {
  createOrUpdateManagementGroup: true
  managementGroupName: 'sandbox'
  managementGroupParentId: 'alz'
  managementGroupIntermediateRootName: 'alzgh'
  managementGroupDisplayName: 'Sandbox'
  managementGroupDoNotEnforcePolicyAssignments: []
  managementGroupExcludedPolicyAssignments: []
  customerRbacRoleDefs: []
  customerRbacRoleAssignments: []
  customerPolicyDefs: []
  customerPolicySetDefs: []
  customerPolicyAssignments: []
  subscriptionsToPlaceInManagementGroup: []
  waitForConsistencyCounterBeforeCustomPolicyDefinitions: 10
  waitForConsistencyCounterBeforeCustomPolicySetDefinitions: 10
  waitForConsistencyCounterBeforeCustomRoleDefinitions: 10
  waitForConsistencyCounterBeforePolicyAssignments: 10
  waitForConsistencyCounterBeforeRoleAssignment: 10
  waitForConsistencyCounterBeforeSubPlacement: 10
}

// Only specify the parameters you want to override - others will use defaults from JSON files
param parPolicyAssignmentParameterOverrides = {
  // Currently no common parameter overrides needed, but can be added here
}
