# CloudmersiveValidateApiClient::ParseAddressResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**successful** | **BOOLEAN** | True if the parsing operation was successful, false otherwise | [optional] 
**building** | **String** | The name of the building, house or structure if applicable, such as \&quot;Cloudmersive Building 2\&quot;.  This will often by null. | [optional] 
**street_number** | **String** | The street number or house number of the address.  For example, in the address \&quot;1600 Pennsylvania Avenue NW\&quot; the street number would be \&quot;1600\&quot;.  This value will typically be populated for most addresses. | [optional] 
**street** | **String** | The name of the street or road of the address.  For example, in the address \&quot;1600 Pennsylvania Avenue NW\&quot; the street number would be \&quot;Pennsylvania Avenue NW\&quot;. | [optional] 
**city** | **String** | The city of the address. | [optional] 
**state_or_province** | **String** | The state or province of the address. | [optional] 
**postal_code** | **String** | The postal code or zip code of the address. | [optional] 
**country_full_name** | **String** | Country of the address, if present in the address.  If not included in the address it will be null. | [optional] 
**iso_two_letter_code** | **String** | Two-letter ISO 3166-1 country code | [optional] 


