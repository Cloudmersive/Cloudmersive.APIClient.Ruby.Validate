# CloudmersiveValidateApiClient::PhoneNumberApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**phone_number_syntax_only**](PhoneNumberApi.md#phone_number_syntax_only) | **POST** /validate/phonenumber/basic | Validate phone number (basic)


# **phone_number_syntax_only**
> PhoneNumberValidationResponse phone_number_syntax_only(value)

Validate phone number (basic)

Validate a phone number by analyzing the syntax

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

api_instance = CloudmersiveValidateApiClient::PhoneNumberApi.new

value = CloudmersiveValidateApiClient::PhoneNumberValidateRequest.new # PhoneNumberValidateRequest | Phone number to validate in a PhoneNumberValidateRequest object.  Try a phone number such as \"1.800.463.3339\", and either leave DefaultCountryCode blank or use \"US\".


begin
  #Validate phone number (basic)
  result = api_instance.phone_number_syntax_only(value)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling PhoneNumberApi->phone_number_syntax_only: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | [**PhoneNumberValidateRequest**](PhoneNumberValidateRequest.md)| Phone number to validate in a PhoneNumberValidateRequest object.  Try a phone number such as \&quot;1.800.463.3339\&quot;, and either leave DefaultCountryCode blank or use \&quot;US\&quot;. | 

### Return type

[**PhoneNumberValidationResponse**](PhoneNumberValidationResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



