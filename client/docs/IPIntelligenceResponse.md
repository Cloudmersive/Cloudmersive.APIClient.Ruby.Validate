# CloudmersiveValidateApiClient::IPIntelligenceResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_bot** | **BOOLEAN** | True if the IP address is a known bot, otherwise false | [optional] 
**is_tor_node** | **BOOLEAN** | True if the IP address is a known Tor exit node, otherwise false | [optional] 
**is_threat** | **BOOLEAN** | True if the IP address is a known threat IP, otherwise false | [optional] 
**is_eu** | **BOOLEAN** | True if the IP address is in the European Union, otherwise false | [optional] 
**location** | [**GeolocateResponse**](GeolocateResponse.md) | Returns the location of the IP address | [optional] 
**currency_code** | **String** | ISO 4217 currency code for the IP address location | [optional] 
**currency_name** | **String** | Name of the currency in English | [optional] 
**region_area** | **String** | Region (continent) in which the country is located; possible values are None, Europe, Americas, Asia, Africa, Oceania | [optional] 
**subregion_area** | **String** | Subregion in which the country is located; possible values are None, NorthernEurope, WesternEurope, SouthernEurope, EasternEurope, CentralAmerica, NorthernAmerica, SouthAmerica, EasternAfrica, MiddleAfrica, NorthernAfrica , SouthernAfrica , WesternAfrica , CentralAsia , EasternAsia , SouthernAsia , SouthEasternAsia , WesternAsia , Southern , Middle , AustraliaandNewZealand , Melanesia , Polynesia , Micronesia , Caribbean, | [optional] 


