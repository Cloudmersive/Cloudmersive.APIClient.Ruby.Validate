# CloudmersiveValidateApiClient::AddressApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**address_parse_string**](AddressApi.md#address_parse_string) | **POST** /validate/address/parse | Parse an unstructured input text string into an international, formatted address


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

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



