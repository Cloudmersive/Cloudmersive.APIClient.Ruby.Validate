# CloudmersiveValidateApiClient::LeadEnrichmentApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**lead_enrichment_enrich_lead**](LeadEnrichmentApi.md#lead_enrichment_enrich_lead) | **POST** /validate/lead-enrichment/lead/enrich | Enrich an input lead with additional fields of data
[**lead_enrichment_get_company_information**](LeadEnrichmentApi.md#lead_enrichment_get_company_information) | **POST** /validate/lead-enrichment/lead/email/company-information | Get company information from email address


# **lead_enrichment_enrich_lead**
> LeadEnrichmentResponse lead_enrichment_enrich_lead(request)

Enrich an input lead with additional fields of data

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

api_instance = CloudmersiveValidateApiClient::LeadEnrichmentApi.new

request = CloudmersiveValidateApiClient::LeadEnrichmentRequest.new # LeadEnrichmentRequest | Input lead with known fields set, and unknown fields left blank (null)


begin
  #Enrich an input lead with additional fields of data
  result = api_instance.lead_enrichment_enrich_lead(request)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling LeadEnrichmentApi->lead_enrichment_enrich_lead: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**LeadEnrichmentRequest**](LeadEnrichmentRequest.md)| Input lead with known fields set, and unknown fields left blank (null) | 

### Return type

[**LeadEnrichmentResponse**](LeadEnrichmentResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



# **lead_enrichment_get_company_information**
> LeadEnrichmentResponse lead_enrichment_get_company_information(request)

Get company information from email address

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

api_instance = CloudmersiveValidateApiClient::LeadEnrichmentApi.new

request = CloudmersiveValidateApiClient::EmailLead.new # EmailLead | Input email address lead


begin
  #Get company information from email address
  result = api_instance.lead_enrichment_get_company_information(request)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling LeadEnrichmentApi->lead_enrichment_get_company_information: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**EmailLead**](EmailLead.md)| Input email address lead | 

### Return type

[**LeadEnrichmentResponse**](LeadEnrichmentResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml



