# cloudmersive-validate-api-client

CloudmersiveValidateApiClient - the Ruby gem for the validateapi

The validation APIs help you validate data. Check if an E-mail address is real. Check if a domain is real. Check up on an IP address, and even where it is located. All this and much more is available in the validation API.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v1
- Package version: 2.2.6
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build cloudmersive-validate-api-client.gemspec
```

Then either install the gem locally:

```shell
gem install ./cloudmersive-validate-api-client-2.2.6.gem
```
(for development, run `gem install --dev ./cloudmersive-validate-api-client-2.2.6.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'cloudmersive-validate-api-client', '~> 2.2.6'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'cloudmersive-validate-api-client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'cloudmersive-validate-api-client'

# Setup authorization
CloudmersiveValidateApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveValidateApiClient::AddressApi.new

input = CloudmersiveValidateApiClient::ValidateCountryRequest.new # ValidateCountryRequest | Input request


begin
  #Check if a country is a member of the European Union (EU)
  result = api_instance.address_check_eu_membership(input)
  p result
rescue CloudmersiveValidateApiClient::ApiError => e
  puts "Exception when calling AddressApi->address_check_eu_membership: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.cloudmersive.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CloudmersiveValidateApiClient::AddressApi* | [**address_check_eu_membership**](docs/AddressApi.md#address_check_eu_membership) | **POST** /validate/address/country/check-eu-membership | Check if a country is a member of the European Union (EU)
*CloudmersiveValidateApiClient::AddressApi* | [**address_country**](docs/AddressApi.md#address_country) | **POST** /validate/address/country | Validate and normalize country information, return ISO 3166-1 country codes and country name
*CloudmersiveValidateApiClient::AddressApi* | [**address_country_list**](docs/AddressApi.md#address_country_list) | **POST** /validate/address/country/list | Get a list of ISO 3166-1 countries
*CloudmersiveValidateApiClient::AddressApi* | [**address_geocode**](docs/AddressApi.md#address_geocode) | **POST** /validate/address/geocode | Geocode a street address into latitude and longitude
*CloudmersiveValidateApiClient::AddressApi* | [**address_get_country_currency**](docs/AddressApi.md#address_get_country_currency) | **POST** /validate/address/country/get-currency | Get the currency of the input country
*CloudmersiveValidateApiClient::AddressApi* | [**address_get_country_region**](docs/AddressApi.md#address_get_country_region) | **POST** /validate/address/country/get-region | Get the region, subregion and continent of the country
*CloudmersiveValidateApiClient::AddressApi* | [**address_get_timezone**](docs/AddressApi.md#address_get_timezone) | **POST** /validate/address/country/get-timezones | Gets IANA/Olsen time zones for a country
*CloudmersiveValidateApiClient::AddressApi* | [**address_normalize_address**](docs/AddressApi.md#address_normalize_address) | **POST** /validate/address/street-address/normalize | Normalize a street address
*CloudmersiveValidateApiClient::AddressApi* | [**address_parse_string**](docs/AddressApi.md#address_parse_string) | **POST** /validate/address/parse | Parse an unstructured input text string into an international, formatted address
*CloudmersiveValidateApiClient::AddressApi* | [**address_reverse_geocode_address**](docs/AddressApi.md#address_reverse_geocode_address) | **POST** /validate/address/geocode/reverse | Reverse geocode a lattitude and longitude into an address
*CloudmersiveValidateApiClient::AddressApi* | [**address_validate_address**](docs/AddressApi.md#address_validate_address) | **POST** /validate/address/street-address | Validate a street address
*CloudmersiveValidateApiClient::AddressApi* | [**address_validate_city**](docs/AddressApi.md#address_validate_city) | **POST** /validate/address/city | Validate a City and State/Province combination, get location information about it
*CloudmersiveValidateApiClient::AddressApi* | [**address_validate_postal_code**](docs/AddressApi.md#address_validate_postal_code) | **POST** /validate/address/postal-code | Validate a postal code, get location information about it
*CloudmersiveValidateApiClient::AddressApi* | [**address_validate_state**](docs/AddressApi.md#address_validate_state) | **POST** /validate/address/state | Validate a state or province, name or abbreviation, get location information about it
*CloudmersiveValidateApiClient::DateTimeApi* | [**date_time_get_now_simple**](docs/DateTimeApi.md#date_time_get_now_simple) | **GET** /validate/date-time/get/now | Get current date and time as of now
*CloudmersiveValidateApiClient::DateTimeApi* | [**date_time_get_public_holidays**](docs/DateTimeApi.md#date_time_get_public_holidays) | **POST** /validate/date-time/get/holidays | Get public holidays in the specified country and year
*CloudmersiveValidateApiClient::DateTimeApi* | [**date_time_parse_natural_language_date_time**](docs/DateTimeApi.md#date_time_parse_natural_language_date_time) | **POST** /validate/date-time/parse/date-time/natural-language | Parses a free-form natural language date and time string into a date and time
*CloudmersiveValidateApiClient::DateTimeApi* | [**date_time_parse_standard_date_time**](docs/DateTimeApi.md#date_time_parse_standard_date_time) | **POST** /validate/date-time/parse/date-time/structured | Parses a standardized date and time string into a date and time
*CloudmersiveValidateApiClient::DomainApi* | [**domain_check**](docs/DomainApi.md#domain_check) | **POST** /validate/domain/check | Validate a domain name
*CloudmersiveValidateApiClient::DomainApi* | [**domain_get_top_level_domain_from_url**](docs/DomainApi.md#domain_get_top_level_domain_from_url) | **POST** /validate/domain/url/get-top-level-domain | Get top-level domain name from URL
*CloudmersiveValidateApiClient::DomainApi* | [**domain_is_admin_path**](docs/DomainApi.md#domain_is_admin_path) | **POST** /validate/domain/url/is-admin-path | Check if path is a high-risk or vulnerable server administration path
*CloudmersiveValidateApiClient::DomainApi* | [**domain_phishing_check**](docs/DomainApi.md#domain_phishing_check) | **POST** /validate/domain/url/phishing-threat-check | Check a URL for Phishing threats
*CloudmersiveValidateApiClient::DomainApi* | [**domain_post**](docs/DomainApi.md#domain_post) | **POST** /validate/domain/whois | Get WHOIS information for a domain
*CloudmersiveValidateApiClient::DomainApi* | [**domain_quality_score**](docs/DomainApi.md#domain_quality_score) | **POST** /validate/domain/quality-score | Validate a domain name's quality score
*CloudmersiveValidateApiClient::DomainApi* | [**domain_safety_check**](docs/DomainApi.md#domain_safety_check) | **POST** /validate/domain/url/safety-threat-check | Check a URL for safety threats
*CloudmersiveValidateApiClient::DomainApi* | [**domain_ssrf_check**](docs/DomainApi.md#domain_ssrf_check) | **POST** /validate/domain/url/ssrf-threat-check | Check a URL for SSRF threats
*CloudmersiveValidateApiClient::DomainApi* | [**domain_ssrf_check_batch**](docs/DomainApi.md#domain_ssrf_check_batch) | **POST** /validate/domain/url/ssrf-threat-check/batch | Check a URL for SSRF threats in batches
*CloudmersiveValidateApiClient::DomainApi* | [**domain_url_full**](docs/DomainApi.md#domain_url_full) | **POST** /validate/domain/url/full | Validate a URL fully
*CloudmersiveValidateApiClient::DomainApi* | [**domain_url_html_ssrf_check**](docs/DomainApi.md#domain_url_html_ssrf_check) | **POST** /validate/domain/url/ssrf-threat-check/html-embedded | Check a URL for HTML embedded SSRF threats
*CloudmersiveValidateApiClient::DomainApi* | [**domain_url_syntax_only**](docs/DomainApi.md#domain_url_syntax_only) | **POST** /validate/domain/url/syntax-only | Validate a URL syntactically
*CloudmersiveValidateApiClient::EmailApi* | [**email_address_get_servers**](docs/EmailApi.md#email_address_get_servers) | **POST** /validate/email/address/servers | Partially check whether an email address is valid
*CloudmersiveValidateApiClient::EmailApi* | [**email_full_validation**](docs/EmailApi.md#email_full_validation) | **POST** /validate/email/address/full | Fully validate an email address
*CloudmersiveValidateApiClient::EmailApi* | [**email_post**](docs/EmailApi.md#email_post) | **POST** /validate/email/address/syntaxOnly | Validate email adddress for syntactic correctness only
*CloudmersiveValidateApiClient::IPAddressApi* | [**i_p_address_geolocate_street_address**](docs/IPAddressApi.md#i_p_address_geolocate_street_address) | **POST** /validate/ip/geolocate/street-address | Geolocate an IP address to a street address
*CloudmersiveValidateApiClient::IPAddressApi* | [**i_p_address_ip_intelligence**](docs/IPAddressApi.md#i_p_address_ip_intelligence) | **POST** /validate/ip/intelligence | Get intelligence on an IP address
*CloudmersiveValidateApiClient::IPAddressApi* | [**i_p_address_is_bot**](docs/IPAddressApi.md#i_p_address_is_bot) | **POST** /validate/ip/is-bot | Check if IP address is a Bot client
*CloudmersiveValidateApiClient::IPAddressApi* | [**i_p_address_is_threat**](docs/IPAddressApi.md#i_p_address_is_threat) | **POST** /validate/ip/is-threat | Check if IP address is a known threat
*CloudmersiveValidateApiClient::IPAddressApi* | [**i_p_address_is_tor_node**](docs/IPAddressApi.md#i_p_address_is_tor_node) | **POST** /validate/ip/is-tor-node | Check if IP address is a Tor node server
*CloudmersiveValidateApiClient::IPAddressApi* | [**i_p_address_post**](docs/IPAddressApi.md#i_p_address_post) | **POST** /validate/ip/geolocate | Geolocate an IP address
*CloudmersiveValidateApiClient::IPAddressApi* | [**i_p_address_reverse_domain_lookup**](docs/IPAddressApi.md#i_p_address_reverse_domain_lookup) | **POST** /validate/ip/reverse-domain-lookup | Perform a reverse domain name (DNS) lookup on an IP address
*CloudmersiveValidateApiClient::LeadEnrichmentApi* | [**lead_enrichment_enrich_lead**](docs/LeadEnrichmentApi.md#lead_enrichment_enrich_lead) | **POST** /validate/lead-enrichment/lead/enrich | Enrich an input lead with additional fields of data
*CloudmersiveValidateApiClient::LeadEnrichmentApi* | [**lead_enrichment_get_company_information**](docs/LeadEnrichmentApi.md#lead_enrichment_get_company_information) | **POST** /validate/lead-enrichment/lead/email/company-information | Get company information from email address
*CloudmersiveValidateApiClient::NameApi* | [**name_get_gender**](docs/NameApi.md#name_get_gender) | **POST** /validate/name/get-gender | Get the gender of a first name
*CloudmersiveValidateApiClient::NameApi* | [**name_identifier**](docs/NameApi.md#name_identifier) | **POST** /validate/name/identifier | Validate a code identifier
*CloudmersiveValidateApiClient::NameApi* | [**name_validate_first_name**](docs/NameApi.md#name_validate_first_name) | **POST** /validate/name/first | Validate a first name
*CloudmersiveValidateApiClient::NameApi* | [**name_validate_full_name**](docs/NameApi.md#name_validate_full_name) | **POST** /validate/name/full-name | Parse and validate a full name
*CloudmersiveValidateApiClient::NameApi* | [**name_validate_last_name**](docs/NameApi.md#name_validate_last_name) | **POST** /validate/name/last | Validate a last name
*CloudmersiveValidateApiClient::PhoneNumberApi* | [**phone_number_syntax_only**](docs/PhoneNumberApi.md#phone_number_syntax_only) | **POST** /validate/phonenumber/basic | Validate phone number (basic)
*CloudmersiveValidateApiClient::TextInputApi* | [**text_input_check_html_ssrf**](docs/TextInputApi.md#text_input_check_html_ssrf) | **POST** /validate/text-input/html/check/ssrf | Protect html input from Server-side Request Forgery (SSRF) attacks
*CloudmersiveValidateApiClient::TextInputApi* | [**text_input_check_sql_injection**](docs/TextInputApi.md#text_input_check_sql_injection) | **POST** /validate/text-input/check/sql-injection | Check text input for SQL Injection (SQLI) attacks
*CloudmersiveValidateApiClient::TextInputApi* | [**text_input_check_sql_injection_batch**](docs/TextInputApi.md#text_input_check_sql_injection_batch) | **POST** /validate/text-input/check/sql-injection/batch | Check and protect multiple text inputs for SQL Injection (SQLI) attacks in batch
*CloudmersiveValidateApiClient::TextInputApi* | [**text_input_check_xss**](docs/TextInputApi.md#text_input_check_xss) | **POST** /validate/text-input/check/xss | Check text input for Cross-Site-Scripting (XSS) attacks
*CloudmersiveValidateApiClient::TextInputApi* | [**text_input_check_xss_batch**](docs/TextInputApi.md#text_input_check_xss_batch) | **POST** /validate/text-input/check-and-protect/xss/batch | Check and protect multiple text inputs for Cross-Site-Scripting (XSS) attacks in batch
*CloudmersiveValidateApiClient::TextInputApi* | [**text_input_check_xxe**](docs/TextInputApi.md#text_input_check_xxe) | **POST** /validate/text-input/check/xxe | Protect text input from XML External Entity (XXE) attacks
*CloudmersiveValidateApiClient::TextInputApi* | [**text_input_check_xxe_batch**](docs/TextInputApi.md#text_input_check_xxe_batch) | **POST** /validate/text-input/check/xxe/batch | Protect text input from XML External Entity (XXE) attacks
*CloudmersiveValidateApiClient::TextInputApi* | [**text_input_protect_xss**](docs/TextInputApi.md#text_input_protect_xss) | **POST** /validate/text-input/protect/xss | Protect text input from Cross-Site-Scripting (XSS) attacks through normalization
*CloudmersiveValidateApiClient::UserAgentApi* | [**user_agent_parse**](docs/UserAgentApi.md#user_agent_parse) | **POST** /validate/useragent/parse | Parse an HTTP User-Agent string, identify robots
*CloudmersiveValidateApiClient::VatApi* | [**vat_vat_lookup**](docs/VatApi.md#vat_vat_lookup) | **POST** /validate/vat/lookup | Validate a VAT number


## Documentation for Models

 - [CloudmersiveValidateApiClient::AddressGetServersResponse](docs/AddressGetServersResponse.md)
 - [CloudmersiveValidateApiClient::AddressVerifySyntaxOnlyResponse](docs/AddressVerifySyntaxOnlyResponse.md)
 - [CloudmersiveValidateApiClient::BotCheckResponse](docs/BotCheckResponse.md)
 - [CloudmersiveValidateApiClient::CheckResponse](docs/CheckResponse.md)
 - [CloudmersiveValidateApiClient::CountryDetails](docs/CountryDetails.md)
 - [CloudmersiveValidateApiClient::CountryListResult](docs/CountryListResult.md)
 - [CloudmersiveValidateApiClient::DateTimeNaturalLanguageParseRequest](docs/DateTimeNaturalLanguageParseRequest.md)
 - [CloudmersiveValidateApiClient::DateTimeNowResult](docs/DateTimeNowResult.md)
 - [CloudmersiveValidateApiClient::DateTimeStandardizedParseRequest](docs/DateTimeStandardizedParseRequest.md)
 - [CloudmersiveValidateApiClient::DateTimeStandardizedParseResponse](docs/DateTimeStandardizedParseResponse.md)
 - [CloudmersiveValidateApiClient::DomainQualityResponse](docs/DomainQualityResponse.md)
 - [CloudmersiveValidateApiClient::EmailLead](docs/EmailLead.md)
 - [CloudmersiveValidateApiClient::FirstNameValidationRequest](docs/FirstNameValidationRequest.md)
 - [CloudmersiveValidateApiClient::FirstNameValidationResponse](docs/FirstNameValidationResponse.md)
 - [CloudmersiveValidateApiClient::FullEmailValidationResponse](docs/FullEmailValidationResponse.md)
 - [CloudmersiveValidateApiClient::FullNameValidationRequest](docs/FullNameValidationRequest.md)
 - [CloudmersiveValidateApiClient::FullNameValidationResponse](docs/FullNameValidationResponse.md)
 - [CloudmersiveValidateApiClient::GeolocateResponse](docs/GeolocateResponse.md)
 - [CloudmersiveValidateApiClient::GeolocateStreetAddressResponse](docs/GeolocateStreetAddressResponse.md)
 - [CloudmersiveValidateApiClient::GetGenderRequest](docs/GetGenderRequest.md)
 - [CloudmersiveValidateApiClient::GetGenderResponse](docs/GetGenderResponse.md)
 - [CloudmersiveValidateApiClient::GetPublicHolidaysRequest](docs/GetPublicHolidaysRequest.md)
 - [CloudmersiveValidateApiClient::GetTimezonesRequest](docs/GetTimezonesRequest.md)
 - [CloudmersiveValidateApiClient::GetTimezonesResponse](docs/GetTimezonesResponse.md)
 - [CloudmersiveValidateApiClient::HtmlSsrfDetectionResult](docs/HtmlSsrfDetectionResult.md)
 - [CloudmersiveValidateApiClient::IPIntelligenceResponse](docs/IPIntelligenceResponse.md)
 - [CloudmersiveValidateApiClient::IPReverseDNSLookupResponse](docs/IPReverseDNSLookupResponse.md)
 - [CloudmersiveValidateApiClient::IPThreatResponse](docs/IPThreatResponse.md)
 - [CloudmersiveValidateApiClient::IsAdminPathResponse](docs/IsAdminPathResponse.md)
 - [CloudmersiveValidateApiClient::LastNameValidationRequest](docs/LastNameValidationRequest.md)
 - [CloudmersiveValidateApiClient::LastNameValidationResponse](docs/LastNameValidationResponse.md)
 - [CloudmersiveValidateApiClient::LeadEnrichmentRequest](docs/LeadEnrichmentRequest.md)
 - [CloudmersiveValidateApiClient::LeadEnrichmentResponse](docs/LeadEnrichmentResponse.md)
 - [CloudmersiveValidateApiClient::NormalizeAddressResponse](docs/NormalizeAddressResponse.md)
 - [CloudmersiveValidateApiClient::ParseAddressRequest](docs/ParseAddressRequest.md)
 - [CloudmersiveValidateApiClient::ParseAddressResponse](docs/ParseAddressResponse.md)
 - [CloudmersiveValidateApiClient::PhishingCheckRequest](docs/PhishingCheckRequest.md)
 - [CloudmersiveValidateApiClient::PhishingCheckResponse](docs/PhishingCheckResponse.md)
 - [CloudmersiveValidateApiClient::PhoneNumberValidateRequest](docs/PhoneNumberValidateRequest.md)
 - [CloudmersiveValidateApiClient::PhoneNumberValidationResponse](docs/PhoneNumberValidationResponse.md)
 - [CloudmersiveValidateApiClient::PublicHolidayOccurrence](docs/PublicHolidayOccurrence.md)
 - [CloudmersiveValidateApiClient::PublicHolidaysResponse](docs/PublicHolidaysResponse.md)
 - [CloudmersiveValidateApiClient::ReverseGeocodeAddressRequest](docs/ReverseGeocodeAddressRequest.md)
 - [CloudmersiveValidateApiClient::ReverseGeocodeAddressResponse](docs/ReverseGeocodeAddressResponse.md)
 - [CloudmersiveValidateApiClient::SqlInjectionCheckBatchRequest](docs/SqlInjectionCheckBatchRequest.md)
 - [CloudmersiveValidateApiClient::SqlInjectionCheckBatchResponse](docs/SqlInjectionCheckBatchResponse.md)
 - [CloudmersiveValidateApiClient::SqlInjectionCheckRequestItem](docs/SqlInjectionCheckRequestItem.md)
 - [CloudmersiveValidateApiClient::SqlInjectionDetectionResult](docs/SqlInjectionDetectionResult.md)
 - [CloudmersiveValidateApiClient::Timezone](docs/Timezone.md)
 - [CloudmersiveValidateApiClient::TorNodeResponse](docs/TorNodeResponse.md)
 - [CloudmersiveValidateApiClient::UrlHtmlSsrfRequestFull](docs/UrlHtmlSsrfRequestFull.md)
 - [CloudmersiveValidateApiClient::UrlHtmlSsrfResponseFull](docs/UrlHtmlSsrfResponseFull.md)
 - [CloudmersiveValidateApiClient::UrlSafetyCheckRequestFull](docs/UrlSafetyCheckRequestFull.md)
 - [CloudmersiveValidateApiClient::UrlSafetyCheckResponseFull](docs/UrlSafetyCheckResponseFull.md)
 - [CloudmersiveValidateApiClient::UrlSsrfRequestBatch](docs/UrlSsrfRequestBatch.md)
 - [CloudmersiveValidateApiClient::UrlSsrfRequestFull](docs/UrlSsrfRequestFull.md)
 - [CloudmersiveValidateApiClient::UrlSsrfResponseBatch](docs/UrlSsrfResponseBatch.md)
 - [CloudmersiveValidateApiClient::UrlSsrfResponseFull](docs/UrlSsrfResponseFull.md)
 - [CloudmersiveValidateApiClient::UserAgentValidateRequest](docs/UserAgentValidateRequest.md)
 - [CloudmersiveValidateApiClient::UserAgentValidateResponse](docs/UserAgentValidateResponse.md)
 - [CloudmersiveValidateApiClient::ValidateAddressRequest](docs/ValidateAddressRequest.md)
 - [CloudmersiveValidateApiClient::ValidateAddressResponse](docs/ValidateAddressResponse.md)
 - [CloudmersiveValidateApiClient::ValidateCityRequest](docs/ValidateCityRequest.md)
 - [CloudmersiveValidateApiClient::ValidateCityResponse](docs/ValidateCityResponse.md)
 - [CloudmersiveValidateApiClient::ValidateCountryRequest](docs/ValidateCountryRequest.md)
 - [CloudmersiveValidateApiClient::ValidateCountryResponse](docs/ValidateCountryResponse.md)
 - [CloudmersiveValidateApiClient::ValidateIdentifierRequest](docs/ValidateIdentifierRequest.md)
 - [CloudmersiveValidateApiClient::ValidateIdentifierResponse](docs/ValidateIdentifierResponse.md)
 - [CloudmersiveValidateApiClient::ValidatePostalCodeRequest](docs/ValidatePostalCodeRequest.md)
 - [CloudmersiveValidateApiClient::ValidatePostalCodeResponse](docs/ValidatePostalCodeResponse.md)
 - [CloudmersiveValidateApiClient::ValidateStateRequest](docs/ValidateStateRequest.md)
 - [CloudmersiveValidateApiClient::ValidateStateResponse](docs/ValidateStateResponse.md)
 - [CloudmersiveValidateApiClient::ValidateUrlRequestFull](docs/ValidateUrlRequestFull.md)
 - [CloudmersiveValidateApiClient::ValidateUrlRequestSyntaxOnly](docs/ValidateUrlRequestSyntaxOnly.md)
 - [CloudmersiveValidateApiClient::ValidateUrlResponseFull](docs/ValidateUrlResponseFull.md)
 - [CloudmersiveValidateApiClient::ValidateUrlResponseSyntaxOnly](docs/ValidateUrlResponseSyntaxOnly.md)
 - [CloudmersiveValidateApiClient::VatLookupRequest](docs/VatLookupRequest.md)
 - [CloudmersiveValidateApiClient::VatLookupResponse](docs/VatLookupResponse.md)
 - [CloudmersiveValidateApiClient::WhoisResponse](docs/WhoisResponse.md)
 - [CloudmersiveValidateApiClient::XssProtectionBatchRequest](docs/XssProtectionBatchRequest.md)
 - [CloudmersiveValidateApiClient::XssProtectionBatchResponse](docs/XssProtectionBatchResponse.md)
 - [CloudmersiveValidateApiClient::XssProtectionRequestItem](docs/XssProtectionRequestItem.md)
 - [CloudmersiveValidateApiClient::XssProtectionResult](docs/XssProtectionResult.md)
 - [CloudmersiveValidateApiClient::XxeDetectionBatchRequest](docs/XxeDetectionBatchRequest.md)
 - [CloudmersiveValidateApiClient::XxeDetectionBatchResponse](docs/XxeDetectionBatchResponse.md)
 - [CloudmersiveValidateApiClient::XxeDetectionRequestItem](docs/XxeDetectionRequestItem.md)
 - [CloudmersiveValidateApiClient::XxeDetectionResult](docs/XxeDetectionResult.md)


## Documentation for Authorization


### Apikey

- **Type**: API key
- **API key parameter name**: Apikey
- **Location**: HTTP header

