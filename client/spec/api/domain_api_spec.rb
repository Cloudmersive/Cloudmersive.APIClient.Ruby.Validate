=begin
#validateapi

#The validation APIs help you validate data. Check if an E-mail address is real. Check if a domain is real. Check up on an IP address, and even where it is located. All this and much more is available in the validation API.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

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
    it "should work" do
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
    it "should work" do
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
    it "should work" do
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
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
