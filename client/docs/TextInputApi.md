# CloudmersiveValidateApiClient::TextInputApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**text_input_check_sql_injection**](TextInputApi.md#text_input_check_sql_injection) | **POST** /validate/text-input/check/sql-injection | Check text input for SQL Injection (SQLI) attacks
[**text_input_check_sql_injection_batch**](TextInputApi.md#text_input_check_sql_injection_batch) | **POST** /validate/text-input/check/sql-injection/batch | Check and protect multiple text inputs for SQL Injection (SQLI) attacks in batch
[**text_input_check_xss**](TextInputApi.md#text_input_check_xss) | **POST** /validate/text-input/check/xss | Check text input for Cross-Site-Scripting (XSS) attacks
[**text_input_check_xss_batch**](TextInputApi.md#text_input_check_xss_batch) | **POST** /validate/text-input/check-and-protect/xss/batch | Check and protect multiple text inputs for Cross-Site-Scripting (XSS) attacks in batch
[**text_input_check_xxe**](TextInputApi.md#text_input_check_xxe) | **POST** /validate/text-input/check/xxe | Protect text input from XML External Entity (XXE) attacks
[**text_input_check_xxe_batch**](TextInputApi.md#text_input_check_xxe_batch) | **POST** /validate/text-input/check/xxe/batch | Protect text input from XML External Entity (XXE) attacks
[**text_input_protect_xss**](TextInputApi.md#text_input_protect_xss) | **POST** /validate/text-input/protect/xss | Protect text input from Cross-Site-Scripting (XSS) attacks through normalization


# **text_input_check_sql_injection**
> SqlInjectionDetectionResult text_input_check_sql_injection(value, opts)

Check text input for SQL Injection (SQLI) attacks

Detects SQL Injection (SQLI) attacks from text input.

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

api_instance = CloudmersiveValidateApiClient::TextInputApi.new

value = 'value_example' # String | User-facing text input.

opts = { 
  detection_level: 'detection_level_example' # String | Set to Normal to target a high-security SQL Injection detection level with a very low false positive rate; select High to target a very-high security SQL Injection detection level with higher false positives.  Default is Normal (recommended).
}

begin
  #Check text input for SQL Injection (SQLI) attacks
  result = api_instance.text_input_check_sql_injection(value, opts)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling TextInputApi->text_input_check_sql_injection: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **String**| User-facing text input. | 
 **detection_level** | **String**| Set to Normal to target a high-security SQL Injection detection level with a very low false positive rate; select High to target a very-high security SQL Injection detection level with higher false positives.  Default is Normal (recommended). | [optional] 

### Return type

[**SqlInjectionDetectionResult**](SqlInjectionDetectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **text_input_check_sql_injection_batch**
> SqlInjectionCheckBatchResponse text_input_check_sql_injection_batch(value)

Check and protect multiple text inputs for SQL Injection (SQLI) attacks in batch

Detects SQL Injection (SQLI) attacks from multiple text inputs.  Output preverses order of input items.

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

api_instance = CloudmersiveValidateApiClient::TextInputApi.new

value = CloudmersiveValidateApiClient::SqlInjectionCheckBatchRequest.new # SqlInjectionCheckBatchRequest | User-facing text input.


begin
  #Check and protect multiple text inputs for SQL Injection (SQLI) attacks in batch
  result = api_instance.text_input_check_sql_injection_batch(value)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling TextInputApi->text_input_check_sql_injection_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | [**SqlInjectionCheckBatchRequest**](SqlInjectionCheckBatchRequest.md)| User-facing text input. | 

### Return type

[**SqlInjectionCheckBatchResponse**](SqlInjectionCheckBatchResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **text_input_check_xss**
> XssProtectionResult text_input_check_xss(value)

Check text input for Cross-Site-Scripting (XSS) attacks

Detects XSS (Cross-Site-Scripting) attacks from text input.

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

api_instance = CloudmersiveValidateApiClient::TextInputApi.new

value = 'value_example' # String | User-facing text input.


begin
  #Check text input for Cross-Site-Scripting (XSS) attacks
  result = api_instance.text_input_check_xss(value)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling TextInputApi->text_input_check_xss: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **String**| User-facing text input. | 

### Return type

[**XssProtectionResult**](XssProtectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **text_input_check_xss_batch**
> XssProtectionBatchResponse text_input_check_xss_batch(value)

Check and protect multiple text inputs for Cross-Site-Scripting (XSS) attacks in batch

Detects XSS (Cross-Site-Scripting) attacks from multiple text inputs.  Output preverses order of input items.

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

api_instance = CloudmersiveValidateApiClient::TextInputApi.new

value = CloudmersiveValidateApiClient::XssProtectionBatchRequest.new # XssProtectionBatchRequest | User-facing text input.


begin
  #Check and protect multiple text inputs for Cross-Site-Scripting (XSS) attacks in batch
  result = api_instance.text_input_check_xss_batch(value)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling TextInputApi->text_input_check_xss_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | [**XssProtectionBatchRequest**](XssProtectionBatchRequest.md)| User-facing text input. | 

### Return type

[**XssProtectionBatchResponse**](XssProtectionBatchResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **text_input_check_xxe**
> XxeDetectionResult text_input_check_xxe(value, opts)

Protect text input from XML External Entity (XXE) attacks

Detects XXE (XML External Entity) attacks from text input.

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

api_instance = CloudmersiveValidateApiClient::TextInputApi.new

value = 'value_example' # String | User-facing text input.

opts = { 
  allow_internet_urls: true, # BOOLEAN | Optional: Set to true to allow Internet-based dependency URLs for DTDs and other XML External Entitites, set to false to block.  Default is false.
  known_safe_urls: 'known_safe_urls_example', # String | Optional: Comma separated list of fully-qualified URLs that will automatically be considered safe.
  known_unsafe_urls: 'known_unsafe_urls_example' # String | Optional: Comma separated list of fully-qualified URLs that will automatically be considered unsafe.
}

begin
  #Protect text input from XML External Entity (XXE) attacks
  result = api_instance.text_input_check_xxe(value, opts)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling TextInputApi->text_input_check_xxe: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **String**| User-facing text input. | 
 **allow_internet_urls** | **BOOLEAN**| Optional: Set to true to allow Internet-based dependency URLs for DTDs and other XML External Entitites, set to false to block.  Default is false. | [optional] 
 **known_safe_urls** | **String**| Optional: Comma separated list of fully-qualified URLs that will automatically be considered safe. | [optional] 
 **known_unsafe_urls** | **String**| Optional: Comma separated list of fully-qualified URLs that will automatically be considered unsafe. | [optional] 

### Return type

[**XxeDetectionResult**](XxeDetectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **text_input_check_xxe_batch**
> XxeDetectionBatchResponse text_input_check_xxe_batch(request)

Protect text input from XML External Entity (XXE) attacks

Detects XXE (XML External Entity) attacks from text input.

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

api_instance = CloudmersiveValidateApiClient::TextInputApi.new

request = CloudmersiveValidateApiClient::XxeDetectionBatchRequest.new # XxeDetectionBatchRequest | 


begin
  #Protect text input from XML External Entity (XXE) attacks
  result = api_instance.text_input_check_xxe_batch(request)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling TextInputApi->text_input_check_xxe_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**XxeDetectionBatchRequest**](XxeDetectionBatchRequest.md)|  | 

### Return type

[**XxeDetectionBatchResponse**](XxeDetectionBatchResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **text_input_protect_xss**
> XssProtectionResult text_input_protect_xss(value)

Protect text input from Cross-Site-Scripting (XSS) attacks through normalization

Detects and removes XSS (Cross-Site-Scripting) attacks from text input through normalization.  Returns the normalized result, as well as information on whether the original input contained an XSS risk.

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

api_instance = CloudmersiveValidateApiClient::TextInputApi.new

value = 'value_example' # String | User-facing text input.


begin
  #Protect text input from Cross-Site-Scripting (XSS) attacks through normalization
  result = api_instance.text_input_protect_xss(value)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling TextInputApi->text_input_protect_xss: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **String**| User-facing text input. | 

### Return type

[**XssProtectionResult**](XssProtectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



