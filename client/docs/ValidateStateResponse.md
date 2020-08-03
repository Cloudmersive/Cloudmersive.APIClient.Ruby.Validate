# CloudmersiveValidateApiClient::ValidateStateResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**valid_state** | **BOOLEAN** | True if the address is valid, false otherwise | [optional] 
**state_or_province** | **String** | If valid; State or province corresponding to the input state name, such as &#39;CA&#39; or &#39;California&#39; | [optional] 
**latitude** | **Float** | If the postal code is valid, the degrees latitude of the centroid of the state, null otherwise | [optional] 
**longitude** | **Float** | If the postal code is valid, the degrees longitude of the centroid of the state, null otherwise | [optional] 


