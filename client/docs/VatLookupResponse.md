# CloudmersiveValidateApiClient::VatLookupResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**country_code** | **String** | Two-letter country code | [optional] 
**vat_number** | **String** | VAT number | [optional] 
**is_valid** | **BOOLEAN** | True if the VAT code is valid, false otherwise | [optional] 
**business_name** | **String** | Name of the business | [optional] 
**business_address** | **String** | Business address as a single string | [optional] 
**business_building** | **String** | For the business address, the name of the building, house or structure if applicable, such as \&quot;Cloudmersive Building 2\&quot;.  This will often by null. | [optional] 
**business_street_number** | **String** | For the business address, the street number or house number of the address.  For example, in the address \&quot;1600 Pennsylvania Avenue NW\&quot; the street number would be \&quot;1600\&quot;.  This value will typically be populated for most addresses. | [optional] 
**business_street** | **String** | For the business address, the name of the street or road of the address.  For example, in the address \&quot;1600 Pennsylvania Avenue NW\&quot; the street number would be \&quot;Pennsylvania Avenue NW\&quot;. | [optional] 
**business_city** | **String** | For the business address, the city of the address. | [optional] 
**business_state_or_province** | **String** | For the business address, the state or province of the address. | [optional] 
**business_postal_code** | **String** | For the business address, the postal code or zip code of the address. | [optional] 
**business_country** | **String** | For the business address, country of the address, if present in the address.  If not included in the address it will be null. | [optional] 


