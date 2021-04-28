# CloudmersiveValidateApiClient::DomainApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**domain_check**](DomainApi.md#domain_check) | **POST** /validate/domain/check | Validate a domain name
[**domain_get_top_level_domain_from_url**](DomainApi.md#domain_get_top_level_domain_from_url) | **POST** /validate/domain/url/get-top-level-domain | Get top-level domain name from URL
[**domain_is_admin_path**](DomainApi.md#domain_is_admin_path) | **POST** /validate/domain/url/is-admin-path | Check if path is a high-risk or vulnerable server administration path
[**domain_phishing_check**](DomainApi.md#domain_phishing_check) | **POST** /validate/domain/url/phishing-threat-check | Check a URL for Phishing threats
[**domain_post**](DomainApi.md#domain_post) | **POST** /validate/domain/whois | Get WHOIS information for a domain
[**domain_quality_score**](DomainApi.md#domain_quality_score) | **POST** /validate/domain/quality-score | Validate a domain name&#39;s quality score
[**domain_safety_check**](DomainApi.md#domain_safety_check) | **POST** /validate/domain/url/safety-threat-check | Check a URL for safety threats
[**domain_ssrf_check**](DomainApi.md#domain_ssrf_check) | **POST** /validate/domain/url/ssrf-threat-check | Check a URL for SSRF threats
[**domain_ssrf_check_batch**](DomainApi.md#domain_ssrf_check_batch) | **POST** /validate/domain/url/ssrf-threat-check/batch | Check a URL for SSRF threats in batches
[**domain_url_full**](DomainApi.md#domain_url_full) | **POST** /validate/domain/url/full | Validate a URL fully
[**domain_url_syntax_only**](DomainApi.md#domain_url_syntax_only) | **POST** /validate/domain/url/syntax-only | Validate a URL syntactically


# **domain_check**
> CheckResponse domain_check(domain)

Validate a domain name

Check whether a domain name is valid or not.  API performs a live validation by contacting DNS services to validate the existence of the domain name.

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

api_instance = CloudmersiveValidateApiClient::DomainApi.new

domain = 'domain_example' # String | Domain name to check, for example \"cloudmersive.com\".  The input is a string so be sure to enclose it in double-quotes.


begin
  #Validate a domain name
  result = api_instance.domain_check(domain)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling DomainApi->domain_check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**| Domain name to check, for example \&quot;cloudmersive.com\&quot;.  The input is a string so be sure to enclose it in double-quotes. | 

### Return type

[**CheckResponse**](CheckResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **domain_get_top_level_domain_from_url**
> ValidateUrlResponseSyntaxOnly domain_get_top_level_domain_from_url(request)

Get top-level domain name from URL

Gets the top-level domain name from a URL, such as mydomain.com.

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

api_instance = CloudmersiveValidateApiClient::DomainApi.new

request = CloudmersiveValidateApiClient::ValidateUrlRequestSyntaxOnly.new # ValidateUrlRequestSyntaxOnly | Input URL information


begin
  #Get top-level domain name from URL
  result = api_instance.domain_get_top_level_domain_from_url(request)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling DomainApi->domain_get_top_level_domain_from_url: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ValidateUrlRequestSyntaxOnly**](ValidateUrlRequestSyntaxOnly.md)| Input URL information | 

### Return type

[**ValidateUrlResponseSyntaxOnly**](ValidateUrlResponseSyntaxOnly.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **domain_is_admin_path**
> IsAdminPathResponse domain_is_admin_path(value)

Check if path is a high-risk or vulnerable server administration path

Check if the input URL or relative path is a server Administration Path, and therefore a risk or vulnerability for remote access.

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

api_instance = CloudmersiveValidateApiClient::DomainApi.new

value = 'value_example' # String | URL or relative path to check, e.g. \"/admin/login\".  The input is a string so be sure to enclose it in double-quotes.


begin
  #Check if path is a high-risk or vulnerable server administration path
  result = api_instance.domain_is_admin_path(value)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling DomainApi->domain_is_admin_path: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **String**| URL or relative path to check, e.g. \&quot;/admin/login\&quot;.  The input is a string so be sure to enclose it in double-quotes. | 

### Return type

[**IsAdminPathResponse**](IsAdminPathResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **domain_phishing_check**
> PhishingCheckResponse domain_phishing_check(request)

Check a URL for Phishing threats

Checks if an input URL is at risk of being an Phishing (fake login page, or other page designed to collect information via social engineering) threat or attack.

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

api_instance = CloudmersiveValidateApiClient::DomainApi.new

request = CloudmersiveValidateApiClient::PhishingCheckRequest.new # PhishingCheckRequest | Input URL request


begin
  #Check a URL for Phishing threats
  result = api_instance.domain_phishing_check(request)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling DomainApi->domain_phishing_check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**PhishingCheckRequest**](PhishingCheckRequest.md)| Input URL request | 

### Return type

[**PhishingCheckResponse**](PhishingCheckResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **domain_post**
> WhoisResponse domain_post(domain)

Get WHOIS information for a domain

Validate whether a domain name exists, and also return the full WHOIS record for that domain name.  WHOIS records include all the registration details of the domain name, such as information about the domain's owners.

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

api_instance = CloudmersiveValidateApiClient::DomainApi.new

domain = 'domain_example' # String | Domain name to check, for example \"cloudmersive.com\".   The input is a string so be sure to enclose it in double-quotes.


begin
  #Get WHOIS information for a domain
  result = api_instance.domain_post(domain)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling DomainApi->domain_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**| Domain name to check, for example \&quot;cloudmersive.com\&quot;.   The input is a string so be sure to enclose it in double-quotes. | 

### Return type

[**WhoisResponse**](WhoisResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **domain_quality_score**
> DomainQualityResponse domain_quality_score(domain)

Validate a domain name's quality score

Check the quality of a domain name.  Supports over 9 million domain names.  Higher quality scores indicate more trust and authority in the domain name, with values ranging from 0.0 (low quality) to 10.0 (maximum quality).

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

api_instance = CloudmersiveValidateApiClient::DomainApi.new

domain = 'domain_example' # String | Domain name to check, for example \"cloudmersive.com\".


begin
  #Validate a domain name's quality score
  result = api_instance.domain_quality_score(domain)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling DomainApi->domain_quality_score: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**| Domain name to check, for example \&quot;cloudmersive.com\&quot;. | 

### Return type

[**DomainQualityResponse**](DomainQualityResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **domain_safety_check**
> UrlSafetyCheckResponseFull domain_safety_check(request)

Check a URL for safety threats

Checks if an input URL is at risk of being a safety threat through malware, unwanted software, or social engineering threats.

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

api_instance = CloudmersiveValidateApiClient::DomainApi.new

request = CloudmersiveValidateApiClient::UrlSafetyCheckRequestFull.new # UrlSafetyCheckRequestFull | Input URL request


begin
  #Check a URL for safety threats
  result = api_instance.domain_safety_check(request)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling DomainApi->domain_safety_check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**UrlSafetyCheckRequestFull**](UrlSafetyCheckRequestFull.md)| Input URL request | 

### Return type

[**UrlSafetyCheckResponseFull**](UrlSafetyCheckResponseFull.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **domain_ssrf_check**
> UrlSsrfResponseFull domain_ssrf_check(request)

Check a URL for SSRF threats

Checks if an input URL is at risk of being an SSRF (Server-side request forgery) threat or attack.

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

api_instance = CloudmersiveValidateApiClient::DomainApi.new

request = CloudmersiveValidateApiClient::UrlSsrfRequestFull.new # UrlSsrfRequestFull | Input URL request


begin
  #Check a URL for SSRF threats
  result = api_instance.domain_ssrf_check(request)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling DomainApi->domain_ssrf_check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**UrlSsrfRequestFull**](UrlSsrfRequestFull.md)| Input URL request | 

### Return type

[**UrlSsrfResponseFull**](UrlSsrfResponseFull.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **domain_ssrf_check_batch**
> UrlSsrfResponseBatch domain_ssrf_check_batch(request)

Check a URL for SSRF threats in batches

Batch-checks if input URLs are at risk of being an SSRF (Server-side request forgery) threat or attack.

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

api_instance = CloudmersiveValidateApiClient::DomainApi.new

request = CloudmersiveValidateApiClient::UrlSsrfRequestBatch.new # UrlSsrfRequestBatch | Input URL request as a batch of multiple URLs


begin
  #Check a URL for SSRF threats in batches
  result = api_instance.domain_ssrf_check_batch(request)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling DomainApi->domain_ssrf_check_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**UrlSsrfRequestBatch**](UrlSsrfRequestBatch.md)| Input URL request as a batch of multiple URLs | 

### Return type

[**UrlSsrfResponseBatch**](UrlSsrfResponseBatch.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **domain_url_full**
> ValidateUrlResponseFull domain_url_full(request)

Validate a URL fully

Validate whether a URL is syntactically valid (does not check endpoint for validity), whether it exists, and whether the endpoint is up and passes virus scan checks.  Accepts various types of input and produces a well-formed URL as output.

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

api_instance = CloudmersiveValidateApiClient::DomainApi.new

request = CloudmersiveValidateApiClient::ValidateUrlRequestFull.new # ValidateUrlRequestFull | Input URL request


begin
  #Validate a URL fully
  result = api_instance.domain_url_full(request)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling DomainApi->domain_url_full: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ValidateUrlRequestFull**](ValidateUrlRequestFull.md)| Input URL request | 

### Return type

[**ValidateUrlResponseFull**](ValidateUrlResponseFull.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **domain_url_syntax_only**
> ValidateUrlResponseSyntaxOnly domain_url_syntax_only(request)

Validate a URL syntactically

Validate whether a URL is syntactically valid (does not check endpoint for validity).  Accepts various types of input and produces a well-formed URL as output.

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

api_instance = CloudmersiveValidateApiClient::DomainApi.new

request = CloudmersiveValidateApiClient::ValidateUrlRequestSyntaxOnly.new # ValidateUrlRequestSyntaxOnly | Input URL information


begin
  #Validate a URL syntactically
  result = api_instance.domain_url_syntax_only(request)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling DomainApi->domain_url_syntax_only: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ValidateUrlRequestSyntaxOnly**](ValidateUrlRequestSyntaxOnly.md)| Input URL information | 

### Return type

[**ValidateUrlResponseSyntaxOnly**](ValidateUrlResponseSyntaxOnly.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



