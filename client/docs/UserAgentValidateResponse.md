# CloudmersiveValidateApiClient::UserAgentValidateResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**successful** | **BOOLEAN** | True if the operation was successful, false otherwise | [optional] 
**is_bot** | **BOOLEAN** | True if the request is a known robot, false otherwise | [optional] 
**bot_name** | **String** | Optional; name of the robot if the request was from a known robot, otherwise null | [optional] 
**bot_url** | **String** | Optional; if available, the URL to the robot | [optional] 
**operating_system** | **String** | Operating System of the User-Agent (e.g. Windows) | [optional] 
**operating_system_cpu_platform** | **String** | The CPU platform of the User-Agent (e.g. x64) | [optional] 
**operating_system_version** | **String** | The version of the operating system of the User-Agent (e.g. \&quot;10\&quot; for Windows 10) | [optional] 
**device_type** | **String** | Device type of the User-Agent; possible values are \&quot;DESKTOP\&quot;, \&quot;SMARTPHONE\&quot;, \&quot;TABLET\&quot; | [optional] 
**device_brand_name** | **String** | Brand name of the User-Agent | [optional] 
**device_model** | **String** | Model name or number of the User-Agent | [optional] 
**browser_name** | **String** | Name of the Browser | [optional] 
**browser_version** | **String** | Version of the Browser | [optional] 
**browser_engine_name** | **String** | Name of the Browser Engine | [optional] 
**browser_engine_version** | **String** | Version of the Browser Engine | [optional] 


