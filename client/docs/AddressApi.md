# CloudmersiveValidateApiClient::AddressApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**address_check_eu_membership**](AddressApi.md#address_check_eu_membership) | **POST** /validate/address/country/check-eu-membership | Check if a country is a member of the European Union (EU)
[**address_country**](AddressApi.md#address_country) | **POST** /validate/address/country | Validate and normalize country information, return ISO 3166-1 country codes and country name
[**address_country_list**](AddressApi.md#address_country_list) | **POST** /validate/address/country/list | Get a list of ISO 3166-1 countries
[**address_get_country_currency**](AddressApi.md#address_get_country_currency) | **POST** /validate/address/country/get-currency | Get the currency of the input country
[**address_get_timezone**](AddressApi.md#address_get_timezone) | **POST** /validate/address/country/get-timezones | Gets IANA/Olsen time zones for a country
[**address_parse_string**](AddressApi.md#address_parse_string) | **POST** /validate/address/parse | Parse an unstructured input text string into an international, formatted address
[**address_validate_address**](AddressApi.md#address_validate_address) | **POST** /validate/address/street-address | Validate a street address
[**address_validate_city**](AddressApi.md#address_validate_city) | **POST** /validate/address/city | Validate a City and State/Province combination, get location information about it
[**address_validate_postal_code**](AddressApi.md#address_validate_postal_code) | **POST** /validate/address/postal-code | Validate a postal code, get location information about it
[**address_validate_state**](AddressApi.md#address_validate_state) | **POST** /validate/address/state | Validate a state or province, name or abbreviation, get location information about it


# **address_check_eu_membership**
> ValidateCountryResponse address_check_eu_membership(input)

Check if a country is a member of the European Union (EU)

Checks if the input country is a member of the European Union or not.

### Example
```ruby
# load the gem
require 'cloudmersive-validate-api-client'
# setup authorization
CloudmersiveValidateApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveValidateApiClient::AddressApi.new

input = CloudmersiveValidateApiClient::ValidateCountryRequest.new # ValidateCountryRequest | Input request


begin
  #Check if a country is a member of the European Union (EU)
  result = api_instance.address_check_eu_membership(input)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling AddressApi->address_check_eu_membership: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**ValidateCountryRequest**](ValidateCountryRequest.md)| Input request | 

### Return type

[**ValidateCountryResponse**](ValidateCountryResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **address_country**
> ValidateCountryResponse address_country(input)

Validate and normalize country information, return ISO 3166-1 country codes and country name

Validates and normalizes country information, and returns key information about a country, as well as whether it is a member of the European Union.  Also returns distinct time zones in the country.

### Example
```ruby
# load the gem
require 'cloudmersive-validate-api-client'
# setup authorization
CloudmersiveValidateApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveValidateApiClient::AddressApi.new

input = CloudmersiveValidateApiClient::ValidateCountryRequest.new # ValidateCountryRequest | Input request


begin
  #Validate and normalize country information, return ISO 3166-1 country codes and country name
  result = api_instance.address_country(input)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling AddressApi->address_country: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**ValidateCountryRequest**](ValidateCountryRequest.md)| Input request | 

### Return type

[**ValidateCountryResponse**](ValidateCountryResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **address_country_list**
> CountryListResult address_country_list

Get a list of ISO 3166-1 countries

Enumerates the list of ISO 3166-1 countries, including name, country codes, and more.

### Example
```ruby
# load the gem
require 'cloudmersive-validate-api-client'
# setup authorization
CloudmersiveValidateApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveValidateApiClient::AddressApi.new

begin
  #Get a list of ISO 3166-1 countries
  result = api_instance.address_country_list
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling AddressApi->address_country_list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CountryListResult**](CountryListResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **address_get_country_currency**
> ValidateCountryResponse address_get_country_currency(input)

Get the currency of the input country

Gets the currency information for the input country, including the ISO three-letter country code, currency symbol, and English currency name.

### Example
```ruby
# load the gem
require 'cloudmersive-validate-api-client'
# setup authorization
CloudmersiveValidateApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveValidateApiClient::AddressApi.new

input = CloudmersiveValidateApiClient::ValidateCountryRequest.new # ValidateCountryRequest | Input request


begin
  #Get the currency of the input country
  result = api_instance.address_get_country_currency(input)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling AddressApi->address_get_country_currency: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**ValidateCountryRequest**](ValidateCountryRequest.md)| Input request | 

### Return type

[**ValidateCountryResponse**](ValidateCountryResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **address_get_timezone**
> GetTimezonesResponse address_get_timezone(input)

Gets IANA/Olsen time zones for a country

Gets the IANA/Olsen time zones for a country.

### Example
```ruby
# load the gem
require 'cloudmersive-validate-api-client'
# setup authorization
CloudmersiveValidateApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveValidateApiClient::AddressApi.new

input = CloudmersiveValidateApiClient::GetTimezonesRequest.new # GetTimezonesRequest | Input request


begin
  #Gets IANA/Olsen time zones for a country
  result = api_instance.address_get_timezone(input)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling AddressApi->address_get_timezone: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**GetTimezonesRequest**](GetTimezonesRequest.md)| Input request | 

### Return type

[**GetTimezonesResponse**](GetTimezonesResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **address_parse_string**
> ParseAddressResponse address_parse_string(input)

Parse an unstructured input text string into an international, formatted address

Uses machine learning and Natural Language Processing (NLP) to handle a wide array of cases, including non-standard and unstructured address strings across a wide array of countries and address formatting norms.

### Example
```ruby
# load the gem
require 'cloudmersive-validate-api-client'
# setup authorization
CloudmersiveValidateApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveValidateApiClient::AddressApi.new

input = CloudmersiveValidateApiClient::ParseAddressRequest.new # ParseAddressRequest | Input parse request


begin
  #Parse an unstructured input text string into an international, formatted address
  result = api_instance.address_parse_string(input)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling AddressApi->address_parse_string: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**ParseAddressRequest**](ParseAddressRequest.md)| Input parse request | 

### Return type

[**ParseAddressResponse**](ParseAddressResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **address_validate_address**
> ValidateAddressResponse address_validate_address(input)

Validate a street address

Determines if an input structured street address is valid or invalid.  If the address is valid, also returns the latitude and longitude of the address.  Supports all major international addresses.

### Example
```ruby
# load the gem
require 'cloudmersive-validate-api-client'
# setup authorization
CloudmersiveValidateApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveValidateApiClient::AddressApi.new

input = CloudmersiveValidateApiClient::ValidateAddressRequest.new # ValidateAddressRequest | Input parse request


begin
  #Validate a street address
  result = api_instance.address_validate_address(input)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling AddressApi->address_validate_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**ValidateAddressRequest**](ValidateAddressRequest.md)| Input parse request | 

### Return type

[**ValidateAddressResponse**](ValidateAddressResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **address_validate_city**
> ValidateCityResponse address_validate_city(input)

Validate a City and State/Province combination, get location information about it

Checks if the input city and state name or code is valid, and returns information about it such as normalized City name, State name and more.  Supports all major international addresses.

### Example
```ruby
# load the gem
require 'cloudmersive-validate-api-client'
# setup authorization
CloudmersiveValidateApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveValidateApiClient::AddressApi.new

input = CloudmersiveValidateApiClient::ValidateCityRequest.new # ValidateCityRequest | Input parse request


begin
  #Validate a City and State/Province combination, get location information about it
  result = api_instance.address_validate_city(input)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling AddressApi->address_validate_city: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**ValidateCityRequest**](ValidateCityRequest.md)| Input parse request | 

### Return type

[**ValidateCityResponse**](ValidateCityResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **address_validate_postal_code**
> ValidatePostalCodeResponse address_validate_postal_code(input)

Validate a postal code, get location information about it

Checks if the input postal code is valid, and returns information about it such as City, State and more.  Supports all major countries.

### Example
```ruby
# load the gem
require 'cloudmersive-validate-api-client'
# setup authorization
CloudmersiveValidateApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveValidateApiClient::AddressApi.new

input = CloudmersiveValidateApiClient::ValidatePostalCodeRequest.new # ValidatePostalCodeRequest | Input parse request


begin
  #Validate a postal code, get location information about it
  result = api_instance.address_validate_postal_code(input)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling AddressApi->address_validate_postal_code: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**ValidatePostalCodeRequest**](ValidatePostalCodeRequest.md)| Input parse request | 

### Return type

[**ValidatePostalCodeResponse**](ValidatePostalCodeResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **address_validate_state**
> ValidateStateResponse address_validate_state(input)

Validate a state or province, name or abbreviation, get location information about it

Checks if the input state name or code is valid, and returns information about it such as normalized State name and more.  Supports all major countries.

### Example
```ruby
# load the gem
require 'cloudmersive-validate-api-client'
# setup authorization
CloudmersiveValidateApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveValidateApiClient::AddressApi.new

input = CloudmersiveValidateApiClient::ValidateStateRequest.new # ValidateStateRequest | Input parse request


begin
  #Validate a state or province, name or abbreviation, get location information about it
  result = api_instance.address_validate_state(input)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling AddressApi->address_validate_state: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**ValidateStateRequest**](ValidateStateRequest.md)| Input parse request | 

### Return type

[**ValidateStateResponse**](ValidateStateResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



