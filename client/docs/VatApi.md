# CloudmersiveValidateApiClient::VatApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**vat_vat_lookup**](VatApi.md#vat_vat_lookup) | **POST** /validate/vat/lookup | Validate a VAT number


# **vat_vat_lookup**
> VatLookupResponse vat_vat_lookup(input)

Validate a VAT number

Checks if a VAT code is valid, and if it is, returns more information about it.  The first two letters of the VAT number must be letters that indicate the country, such as LU20260743.  Possible country codes include Austria (AT), Belgium (BE), Bulgaria (BG), Cyprus (CY), Czech Republic (CZ), Germany (DE), Denmark (DK), Estonia (EE), Greece (EL), Spain (ES), Finland (FI), France (FR), United Kingdom (GB), Croatia (HR), Hungary (HU), Ireland (IE), Italy (IT), Lithuania (LT), Luxembourg (LU), Latvia (LV), Malta (MT), The Netherlands (NL), Poland (PL), Portugal (PT), Romania (RO), Sweden (SE), Slovenia (SI), Slovakia (SK).

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
  #Validate a VAT number
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



