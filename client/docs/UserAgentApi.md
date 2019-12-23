# CloudmersiveValidateApiClient::UserAgentApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**user_agent_parse**](UserAgentApi.md#user_agent_parse) | **POST** /validate/useragent/parse | Parse an HTTP User-Agent string, identify robots


# **user_agent_parse**
> UserAgentValidateResponse user_agent_parse(request)

Parse an HTTP User-Agent string, identify robots

Uses a parsing system and database to parse the User-Agent into its structured component parts, such as Browser, Browser Version, Browser Engine, Operating System, and importantly, Robot identification.

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

api_instance = CloudmersiveValidateApiClient::UserAgentApi.new

request = CloudmersiveValidateApiClient::UserAgentValidateRequest.new # UserAgentValidateRequest | Input parse request


begin
  #Parse an HTTP User-Agent string, identify robots
  result = api_instance.user_agent_parse(request)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling UserAgentApi->user_agent_parse: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**UserAgentValidateRequest**](UserAgentValidateRequest.md)| Input parse request | 

### Return type

[**UserAgentValidateResponse**](UserAgentValidateResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



