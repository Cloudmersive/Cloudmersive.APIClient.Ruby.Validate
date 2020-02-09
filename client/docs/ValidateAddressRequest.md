# CloudmersiveValidateApiClient::ValidateAddressRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**street_address** | **String** | Required; Street address to validate, such as &#39;2950 Buskirk Ave.&#39; | [optional] 
**city** | **String** | Required; City part of the addrerss to validate, such as &#39;Walnut Creek&#39; | [optional] 
**state_or_province** | **String** | Required; State or province of the address to validate, such as &#39;CA&#39; or &#39;California&#39; | [optional] 
**postal_code** | **String** | Optional (recommended); Zip code or postal code of the address to validate, such as &#39;94597&#39; | [optional] 
**country_full_name** | **String** | Optional (recommended); Name of the country, such as &#39;United States&#39;.  If left blank, and CountryCode is also left blank, will default to United States.  Global countries are supported. | [optional] 
**country_code** | **String** | Optional; two-letter country code (Two-letter ISO 3166-1 country code) of the country.  If left blank, and CountryFullName is also left blank, will default to United States.  Global countries are supported. | [optional] 


