# CloudmersiveValidateApiClient::LeadEnrichmentResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**successful** | **BOOLEAN** | True if the operation was successful, false otherwise | [optional] 
**lead_type** | **String** | The type of the lead; possible types are Junk (a single individual using a disposable/throwaway email address); Individual (a single individual, typically a consumer, not purchasing on behalf of a business); SmallBusiness (a small business, typically with fewer than 100 employees); MediumBusiness (a medium business, larger than 100 employees but fewer than 1000 employees); Enterprise (a large business with greater than 1000 employees); Business (a business customer of unknown size) | [optional] 
**contact_business_email** | **String** | The person&#39;s business email address for the lead | [optional] 
**contact_first_name** | **String** | The person&#39;s first name for the lead | [optional] 
**contact_last_name** | **String** | The person&#39;s last name for the lead | [optional] 
**contact_gender** | **String** | Gender for contact name; possible values are Male, Female, and Neutral (can be applied to Male or Female).  Requires ContactFirstName. | [optional] 
**company_name** | **String** | Name of the company for the lead | [optional] 
**company_domain_name** | **String** | Domain name / website for the lead | [optional] 
**company_house_number** | **String** | House number of the address of the company for the lead | [optional] 
**company_street** | **String** | Street name of the address of the company for the lead | [optional] 
**company_city** | **String** | City of the address of the company for the lead | [optional] 
**company_state_or_province** | **String** | State or Province of the address of the company for the lead | [optional] 
**company_postal_code** | **String** | Postal Code of the address of the company for the lead | [optional] 
**company_country** | **String** | Country Name of the address of the company for the lead | [optional] 
**company_country_code** | **String** | Country Code (2-letter ISO 3166-1) of the address of the company for the lead | [optional] 
**company_telephone** | **String** | Telephone of the company office for the lead | [optional] 
**company_vat_number** | **String** | VAT number of the company for the lead | [optional] 
**employee_count** | **Integer** | Count of employees at the company (estimated), if available | [optional] 


