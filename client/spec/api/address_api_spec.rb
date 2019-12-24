=begin
#validateapi

#The validation APIs help you validate data. Check if an E-mail address is real. Check if a domain is real. Check up on an IP address, and even where it is located. All this and much more is available in the validation API.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for CloudmersiveValidateApiClient::AddressApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AddressApi' do
  before do
    # run before each test
    @instance = CloudmersiveValidateApiClient::AddressApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AddressApi' do
    it 'should create an instance of AddressApi' do
      expect(@instance).to be_instance_of(CloudmersiveValidateApiClient::AddressApi)
    end
  end

  # unit tests for address_country
  # Validate and normalize country information, return ISO 3166-1 country codes and country name
  # Validates and normalizes country information, and returns key information about a country.
  # @param input Input request
  # @param [Hash] opts the optional parameters
  # @return [ValidateCountryResponse]
  describe 'address_country test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for address_parse_string
  # Parse an unstructured input text string into an international, formatted address
  # Uses machine learning and Natural Language Processing (NLP) to handle a wide array of cases, including non-standard and unstructured address strings across a wide array of countries and address formatting norms.
  # @param input Input parse request
  # @param [Hash] opts the optional parameters
  # @return [ParseAddressResponse]
  describe 'address_parse_string test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
