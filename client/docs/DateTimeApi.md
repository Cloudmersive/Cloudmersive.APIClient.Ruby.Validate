# CloudmersiveValidateApiClient::DateTimeApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**date_time_get_now_simple**](DateTimeApi.md#date_time_get_now_simple) | **GET** /validate/date-time/get/now | Get current date and time as of now
[**date_time_get_public_holidays**](DateTimeApi.md#date_time_get_public_holidays) | **POST** /validate/date-time/get/holidays | Get public holidays in the specified country and year
[**date_time_parse_natural_language_date_time**](DateTimeApi.md#date_time_parse_natural_language_date_time) | **POST** /validate/date-time/parse/date-time/natural-language | Parses a free-form natural language date and time string into a date and time
[**date_time_parse_standard_date_time**](DateTimeApi.md#date_time_parse_standard_date_time) | **POST** /validate/date-time/parse/date-time/structured | Parses a standardized date and time string into a date and time


# **date_time_get_now_simple**
> DateTimeNowResult date_time_get_now_simple

Get current date and time as of now

Gets the current date and time.  Response time is syncronized with atomic clocks, and represents a monotonic, centrally available, consistent clock.

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

api_instance = CloudmersiveValidateApiClient::DateTimeApi.new

begin
  #Get current date and time as of now
  result = api_instance.date_time_get_now_simple
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling DateTimeApi->date_time_get_now_simple: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DateTimeNowResult**](DateTimeNowResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **date_time_get_public_holidays**
> PublicHolidaysResponse date_time_get_public_holidays(input)

Get public holidays in the specified country and year

Enumerates all public holidays in a given country for a given year.  Supports over 100 countries.

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

api_instance = CloudmersiveValidateApiClient::DateTimeApi.new

input = CloudmersiveValidateApiClient::GetPublicHolidaysRequest.new # GetPublicHolidaysRequest | Input request


begin
  #Get public holidays in the specified country and year
  result = api_instance.date_time_get_public_holidays(input)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling DateTimeApi->date_time_get_public_holidays: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**GetPublicHolidaysRequest**](GetPublicHolidaysRequest.md)| Input request | 

### Return type

[**PublicHolidaysResponse**](PublicHolidaysResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **date_time_parse_natural_language_date_time**
> DateTimeStandardizedParseResponse date_time_parse_natural_language_date_time(input)

Parses a free-form natural language date and time string into a date and time

Parses an unstructured, free-form, natural language date and time string into a date time object.  This is intended for lightweight human-entered input, such as \"tomorrow at 3pm\" or \"tuesday\".

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

api_instance = CloudmersiveValidateApiClient::DateTimeApi.new

input = CloudmersiveValidateApiClient::DateTimeNaturalLanguageParseRequest.new # DateTimeNaturalLanguageParseRequest | Input request


begin
  #Parses a free-form natural language date and time string into a date and time
  result = api_instance.date_time_parse_natural_language_date_time(input)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling DateTimeApi->date_time_parse_natural_language_date_time: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**DateTimeNaturalLanguageParseRequest**](DateTimeNaturalLanguageParseRequest.md)| Input request | 

### Return type

[**DateTimeStandardizedParseResponse**](DateTimeStandardizedParseResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **date_time_parse_standard_date_time**
> DateTimeStandardizedParseResponse date_time_parse_standard_date_time(input)

Parses a standardized date and time string into a date and time

Parses a structured date and time string into a date time object.  This is intended for standardized date strings that adhere to formatting conventions, rather than natural language input.

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

api_instance = CloudmersiveValidateApiClient::DateTimeApi.new

input = CloudmersiveValidateApiClient::DateTimeStandardizedParseRequest.new # DateTimeStandardizedParseRequest | Input request


begin
  #Parses a standardized date and time string into a date and time
  result = api_instance.date_time_parse_standard_date_time(input)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling DateTimeApi->date_time_parse_standard_date_time: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**DateTimeStandardizedParseRequest**](DateTimeStandardizedParseRequest.md)| Input request | 

### Return type

[**DateTimeStandardizedParseResponse**](DateTimeStandardizedParseResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



