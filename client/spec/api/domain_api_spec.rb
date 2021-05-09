=begin
#validateapi

#The validation APIs help you validate data. Check if an E-mail address is real. Check if a domain is real. Check up on an IP address, and even where it is located. All this and much more is available in the validation API.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'spec_helper'
require 'json'

# Unit tests for CloudmersiveValidateApiClient::DomainApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DomainApi' do
  before do
    # run before each test
    @instance = CloudmersiveValidateApiClient::DomainApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DomainApi' do
    it 'should create an instance of DomainApi' do
      expect(@instance).to be_instance_of(CloudmersiveValidateApiClient::DomainApi)
    end
  end

  # unit tests for domain_check
  # Validate a domain name
  # Check whether a domain name is valid or not.  API performs a live validation by contacting DNS services to validate the existence of the domain name.
  # @param domain Domain name to check, for example \&quot;cloudmersive.com\&quot;.  The input is a string so be sure to enclose it in double-quotes.
  # @param [Hash] opts the optional parameters
  # @return [CheckResponse]
  describe 'domain_check test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for domain_get_top_level_domain_from_url
  # Get top-level domain name from URL
  # Gets the top-level domain name from a URL, such as mydomain.com.
  # @param request Input URL information
  # @param [Hash] opts the optional parameters
  # @return [ValidateUrlResponseSyntaxOnly]
  describe 'domain_get_top_level_domain_from_url test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for domain_is_admin_path
  # Check if path is a high-risk or vulnerable server administration path
  # Check if the input URL or relative path is a server Administration Path, and therefore a risk or vulnerability for remote access.
  # @param value URL or relative path to check, e.g. \&quot;/admin/login\&quot;.  The input is a string so be sure to enclose it in double-quotes.
  # @param [Hash] opts the optional parameters
  # @return [IsAdminPathResponse]
  describe 'domain_is_admin_path test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for domain_phishing_check
  # Check a URL for Phishing threats
  # Checks if an input URL is at risk of being an Phishing (fake login page, or other page designed to collect information via social engineering) threat or attack.
  # @param request Input URL request
  # @param [Hash] opts the optional parameters
  # @return [PhishingCheckResponse]
  describe 'domain_phishing_check test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for domain_post
  # Get WHOIS information for a domain
  # Validate whether a domain name exists, and also return the full WHOIS record for that domain name.  WHOIS records include all the registration details of the domain name, such as information about the domain&#39;s owners.
  # @param domain Domain name to check, for example \&quot;cloudmersive.com\&quot;.   The input is a string so be sure to enclose it in double-quotes.
  # @param [Hash] opts the optional parameters
  # @return [WhoisResponse]
  describe 'domain_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for domain_quality_score
  # Validate a domain name&#39;s quality score
  # Check the quality of a domain name.  Supports over 9 million domain names.  Higher quality scores indicate more trust and authority in the domain name, with values ranging from 0.0 (low quality) to 10.0 (maximum quality).
  # @param domain Domain name to check, for example \&quot;cloudmersive.com\&quot;.
  # @param [Hash] opts the optional parameters
  # @return [DomainQualityResponse]
  describe 'domain_quality_score test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for domain_safety_check
  # Check a URL for safety threats
  # Checks if an input URL is at risk of being a safety threat through malware, unwanted software, or social engineering threats.
  # @param request Input URL request
  # @param [Hash] opts the optional parameters
  # @return [UrlSafetyCheckResponseFull]
  describe 'domain_safety_check test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for domain_ssrf_check
  # Check a URL for SSRF threats
  # Checks if an input URL is at risk of being an SSRF (Server-side request forgery) threat or attack.
  # @param request Input URL request
  # @param [Hash] opts the optional parameters
  # @return [UrlSsrfResponseFull]
  describe 'domain_ssrf_check test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for domain_ssrf_check_batch
  # Check a URL for SSRF threats in batches
  # Batch-checks if input URLs are at risk of being an SSRF (Server-side request forgery) threat or attack.
  # @param request Input URL request as a batch of multiple URLs
  # @param [Hash] opts the optional parameters
  # @return [UrlSsrfResponseBatch]
  describe 'domain_ssrf_check_batch test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for domain_url_full
  # Validate a URL fully
  # Validate whether a URL is syntactically valid (does not check endpoint for validity), whether it exists, and whether the endpoint is up and passes virus scan checks.  Accepts various types of input and produces a well-formed URL as output.
  # @param request Input URL request
  # @param [Hash] opts the optional parameters
  # @return [ValidateUrlResponseFull]
  describe 'domain_url_full test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for domain_url_html_ssrf_check
  # Check a URL for HTML embedded SSRF threats
  # Checks if an input URL HTML is at risk of containing one or more embedded SSRF (Server-side request forgery) threats or attacks.
  # @param request Input URL request
  # @param [Hash] opts the optional parameters
  # @return [UrlHtmlSsrfResponseFull]
  describe 'domain_url_html_ssrf_check test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for domain_url_syntax_only
  # Validate a URL syntactically
  # Validate whether a URL is syntactically valid (does not check endpoint for validity).  Accepts various types of input and produces a well-formed URL as output.
  # @param request Input URL information
  # @param [Hash] opts the optional parameters
  # @return [ValidateUrlResponseSyntaxOnly]
  describe 'domain_url_syntax_only test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
