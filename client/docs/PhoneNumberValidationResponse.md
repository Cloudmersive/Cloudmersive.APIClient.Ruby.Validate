# CloudmersiveValidateApiClient::PhoneNumberValidationResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_valid** | **BOOLEAN** | True if the phone number is valid, false otherwise | [optional] 
**successful** | **BOOLEAN** | True if the operation was successful, false if there was an error during validation.  See IsValid for validation result. | [optional] 
**phone_number_type** | **String** | Type of phone number; possible values are: FixedLine, Mobile, FixedLineOrMobile, TollFree, PremiumRate,   SharedCost, Voip, PersonalNumber, Pager, Uan, Voicemail, Unknown | [optional] 
**e164_format** | **String** | E.164 format of the phone number | [optional] 
**international_format** | **String** | Internaltional format of the phone number | [optional] 
**national_format** | **String** | National format of the phone number | [optional] 
**country_code** | **String** | Two digit country code of the phone number | [optional] 
**country_name** | **String** | User-friendly long name of the country for the phone number | [optional] 


