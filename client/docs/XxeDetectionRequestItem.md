# CloudmersiveValidateApiClient::XxeDetectionRequestItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**input_text** | **String** | Individual input text item to protect from XXE | [optional] 
**allow_internet_urls** | **BOOLEAN** | Optional: Set to true to allow Internet-based dependency URLs for DTDs and other XML External Entitites, set to false to block.  Default is false. | [optional] 
**known_safe_urls** | **Array&lt;String&gt;** | Optional: Comma separated list of fully-qualified URLs that will automatically be considered safe. | [optional] 
**known_unsafe_urls** | **Array&lt;String&gt;** | Optional: Comma separated list of fully-qualified URLs that will automatically be considered unsafe. | [optional] 


