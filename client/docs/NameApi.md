# CloudmersiveValidateApiClient::NameApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**name_get_gender**](NameApi.md#name_get_gender) | **POST** /validate/name/get-gender | Get the gender of a first name
[**name_identifier**](NameApi.md#name_identifier) | **POST** /validate/name/identifier | Validate a code identifier
[**name_validate_first_name**](NameApi.md#name_validate_first_name) | **POST** /validate/name/first | Validate a first name
[**name_validate_full_name**](NameApi.md#name_validate_full_name) | **POST** /validate/name/full-name | Parse and validate a full name
[**name_validate_last_name**](NameApi.md#name_validate_last_name) | **POST** /validate/name/last | Validate a last name


# **name_get_gender**
> GetGenderResponse name_get_gender(input)

Get the gender of a first name

Determines the gender of a first name (given name)

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

api_instance = CloudmersiveValidateApiClient::NameApi.new

input = CloudmersiveValidateApiClient::GetGenderRequest.new # GetGenderRequest | Gender request information


begin
  #Get the gender of a first name
  result = api_instance.name_get_gender(input)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling NameApi->name_get_gender: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**GetGenderRequest**](GetGenderRequest.md)| Gender request information | 

### Return type

[**GetGenderResponse**](GetGenderResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **name_identifier**
> ValidateIdentifierResponse name_identifier(input)

Validate a code identifier

Determines if the input name is a valid technical / code identifier.  Configure input rules such as whether whitespace, hyphens, underscores, etc. are allowed.  For example, a valid identifier might be \"helloWorld\" but not \"hello*World\".

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

api_instance = CloudmersiveValidateApiClient::NameApi.new

input = CloudmersiveValidateApiClient::ValidateIdentifierRequest.new # ValidateIdentifierRequest | Identifier validation request information


begin
  #Validate a code identifier
  result = api_instance.name_identifier(input)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling NameApi->name_identifier: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**ValidateIdentifierRequest**](ValidateIdentifierRequest.md)| Identifier validation request information | 

### Return type

[**ValidateIdentifierResponse**](ValidateIdentifierResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **name_validate_first_name**
> FirstNameValidationResponse name_validate_first_name(input)

Validate a first name

Determines if a string is a valid first name (given name)

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

api_instance = CloudmersiveValidateApiClient::NameApi.new

input = CloudmersiveValidateApiClient::FirstNameValidationRequest.new # FirstNameValidationRequest | Validation request information


begin
  #Validate a first name
  result = api_instance.name_validate_first_name(input)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling NameApi->name_validate_first_name: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**FirstNameValidationRequest**](FirstNameValidationRequest.md)| Validation request information | 

### Return type

[**FirstNameValidationResponse**](FirstNameValidationResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **name_validate_full_name**
> FullNameValidationResponse name_validate_full_name(input)

Parse and validate a full name

Parses a full name string (e.g. \"Mr. Jon van der Waal Jr.\") into its component parts (and returns these component parts), and then validates whether it is a valid name string or not

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

api_instance = CloudmersiveValidateApiClient::NameApi.new

input = CloudmersiveValidateApiClient::FullNameValidationRequest.new # FullNameValidationRequest | Validation request information


begin
  #Parse and validate a full name
  result = api_instance.name_validate_full_name(input)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling NameApi->name_validate_full_name: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**FullNameValidationRequest**](FullNameValidationRequest.md)| Validation request information | 

### Return type

[**FullNameValidationResponse**](FullNameValidationResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **name_validate_last_name**
> LastNameValidationResponse name_validate_last_name(input)

Validate a last name

Determines if a string is a valid last name (surname)

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

api_instance = CloudmersiveValidateApiClient::NameApi.new

input = CloudmersiveValidateApiClient::LastNameValidationRequest.new # LastNameValidationRequest | Validation request information


begin
  #Validate a last name
  result = api_instance.name_validate_last_name(input)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling NameApi->name_validate_last_name: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**LastNameValidationRequest**](LastNameValidationRequest.md)| Validation request information | 

### Return type

[**LastNameValidationResponse**](LastNameValidationResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



