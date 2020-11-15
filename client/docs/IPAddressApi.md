# CloudmersiveValidateApiClient::IPAddressApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**i_p_address_geolocate_street_address**](IPAddressApi.md#i_p_address_geolocate_street_address) | **POST** /validate/ip/geolocate/street-address | Geolocate an IP address to a street address
[**i_p_address_is_threat**](IPAddressApi.md#i_p_address_is_threat) | **POST** /validate/ip/is-threat | Check if IP address is a known threat
[**i_p_address_is_tor_node**](IPAddressApi.md#i_p_address_is_tor_node) | **POST** /validate/ip/is-tor-node | Check if IP address is a Tor node server
[**i_p_address_post**](IPAddressApi.md#i_p_address_post) | **POST** /validate/ip/geolocate | Geolocate an IP address


# **i_p_address_geolocate_street_address**
> GeolocateStreetAddressResponse i_p_address_geolocate_street_address(value)

Geolocate an IP address to a street address

Identify an IP address's street address.  Useful for security and UX applications.

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

api_instance = CloudmersiveValidateApiClient::IPAddressApi.new

value = 'value_example' # String | IP address to geolocate, e.g. \"55.55.55.55\".  The input is a string so be sure to enclose it in double-quotes.


begin
  #Geolocate an IP address to a street address
  result = api_instance.i_p_address_geolocate_street_address(value)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling IPAddressApi->i_p_address_geolocate_street_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **String**| IP address to geolocate, e.g. \&quot;55.55.55.55\&quot;.  The input is a string so be sure to enclose it in double-quotes. | 

### Return type

[**GeolocateStreetAddressResponse**](GeolocateStreetAddressResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **i_p_address_is_threat**
> IPThreatResponse i_p_address_is_threat(value)

Check if IP address is a known threat

Check if the input IP address is a known threat IP address.  Checks against known bad IPs, botnets, compromised servers, and other lists of threats.

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

api_instance = CloudmersiveValidateApiClient::IPAddressApi.new

value = 'value_example' # String | IP address to check, e.g. \"55.55.55.55\".  The input is a string so be sure to enclose it in double-quotes.


begin
  #Check if IP address is a known threat
  result = api_instance.i_p_address_is_threat(value)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling IPAddressApi->i_p_address_is_threat: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **String**| IP address to check, e.g. \&quot;55.55.55.55\&quot;.  The input is a string so be sure to enclose it in double-quotes. | 

### Return type

[**IPThreatResponse**](IPThreatResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **i_p_address_is_tor_node**
> TorNodeResponse i_p_address_is_tor_node(value)

Check if IP address is a Tor node server

Check if the input IP address is a Tor exit node server.  Tor servers are a type of privacy-preserving technology that can hide the original IP address who makes a request.

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

api_instance = CloudmersiveValidateApiClient::IPAddressApi.new

value = 'value_example' # String | IP address to check, e.g. \"55.55.55.55\".  The input is a string so be sure to enclose it in double-quotes.


begin
  #Check if IP address is a Tor node server
  result = api_instance.i_p_address_is_tor_node(value)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling IPAddressApi->i_p_address_is_tor_node: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **String**| IP address to check, e.g. \&quot;55.55.55.55\&quot;.  The input is a string so be sure to enclose it in double-quotes. | 

### Return type

[**TorNodeResponse**](TorNodeResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **i_p_address_post**
> GeolocateResponse i_p_address_post(value)

Geolocate an IP address

Identify an IP address Country, State/Provence, City, Zip/Postal Code, etc.  Useful for security and UX applications.

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

api_instance = CloudmersiveValidateApiClient::IPAddressApi.new

value = 'value_example' # String | IP address to geolocate, e.g. \"55.55.55.55\".  The input is a string so be sure to enclose it in double-quotes.


begin
  #Geolocate an IP address
  result = api_instance.i_p_address_post(value)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling IPAddressApi->i_p_address_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **String**| IP address to geolocate, e.g. \&quot;55.55.55.55\&quot;.  The input is a string so be sure to enclose it in double-quotes. | 

### Return type

[**GeolocateResponse**](GeolocateResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



