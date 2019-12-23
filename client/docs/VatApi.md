# CloudmersiveValidateApiClient::VatApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**vat_vat_lookup**](VatApi.md#vat_vat_lookup) | **POST** /validate/vat/lookup | Lookup a VAT code


# **vat_vat_lookup**
> VatLookupResponse vat_vat_lookup(input)

Lookup a VAT code

Checks if a VAT code is valid, and if it is, returns more information about it

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

api_instance = CloudmersiveValidateApiClient::VatApi.new

input = CloudmersiveValidateApiClient::VatLookupRequest.new # VatLookupRequest | Input VAT code


begin
  #Lookup a VAT code
  result = api_instance.vat_vat_lookup(input)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling VatApi->vat_vat_lookup: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**VatLookupRequest**](VatLookupRequest.md)| Input VAT code | 

### Return type

[**VatLookupResponse**](VatLookupResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



