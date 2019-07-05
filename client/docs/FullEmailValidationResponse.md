# CloudmersiveValidateApiClient::FullEmailValidationResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**valid_address** | **BOOLEAN** | True if the email address is valid overall, false otherwise | [optional] 
**mail_server_used_for_validation** | **String** | Email server connected to for verification | [optional] 
**valid_syntax** | **BOOLEAN** | True if the syntax of the email address is valid, false otherwise.  This is one component of ValidAddress, but not the only one. | [optional] 
**valid_domain** | **BOOLEAN** | True if the domain name of the email address is valid, false otherwise.  This is one component of ValidAddress, but not the only one. | [optional] 
**valid_smtp** | **BOOLEAN** | True if the email address was verified by the remote server, false otherwise.  This is one component of ValidAddress, but not the only one. | [optional] 
**is_catchall_domain** | **BOOLEAN** | True if the domain is a catch-all domain name, false otherwise.  Catch-all domain names, while rare, always accept inbound email to ensure they do not lose any potentially useful emails.  Catch-all domain names can occassionally be configured to first accept and store all inbound email, but then later send a bounce email back to the sender after a delayed period of time. | [optional] 
**domain** | **String** | Domain name of the email address | [optional] 
**is_free_email_provider** | **BOOLEAN** | True if the email domain name is a free provider (typically a free to sign up web email provider for consumers / personal use), false otherwise. | [optional] 
**is_disposable** | **BOOLEAN** | True if the email address is a disposable email address, false otherwise; these disposable providers are not typically used to receive email and so will have a low likelihood of opening mail sent there. | [optional] 


