# CloudmersiveValidateApiClient::FullNameValidationResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**successful** | **BOOLEAN** | True if the validation operation was successful, false otherwise | [optional] 
**validation_result_first_name** | **String** | Possible values are: ValidFirstName, ValidUnknownFirstName, InvalidSpamInput, InvalidCharacters, InvalidEmpty | [optional] 
**validation_result_last_name** | **String** | Possible values are: ValidLastName, ValidUnknownLastName, InvalidSpamInput, InvalidCharacters, InvalidEmpty | [optional] 
**title** | **String** | The person&#39;s title (if supplied), e.g. \&quot;Mr.\&quot; or \&quot;Ms.\&quot; | [optional] 
**first_name** | **String** | The first name (given name) | [optional] 
**middle_name** | **String** | The middle name(s); if there are multiple names they will be separated by spaces | [optional] 
**last_name** | **String** | The last name (surname) | [optional] 
**nick_name** | **String** | Nickname (if supplied) | [optional] 
**suffix** | **String** | Suffix to the name, e.g. \&quot;Jr.\&quot; or \&quot;Sr.\&quot; | [optional] 
**display_name** | **String** | The full display name of the name | [optional] 


