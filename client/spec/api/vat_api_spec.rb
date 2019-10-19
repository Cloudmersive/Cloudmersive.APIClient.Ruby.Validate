=begin
#validateapi

#The validation APIs help you validate data. Check if an E-mail address is real. Check if a domain is real. Check up on an IP address, and even where it is located. All this and much more is available in the validation API.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for CloudmersiveValidateApiClient::VatApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'VatApi' do
  before do
    # run before each test
    @instance = CloudmersiveValidateApiClient::VatApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VatApi' do
    it 'should create an instance of VatApi' do
      expect(@instance).to be_instance_of(CloudmersiveValidateApiClient::VatApi)
    end
  end

  # unit tests for vat_vat_lookup
  # Lookup a VAT code
  # Checks if a VAT code is valid, and if it is, returns more information about it
  # @param input Input VAT code
  # @param [Hash] opts the optional parameters
  # @return [VatLookupResponse]
  describe 'vat_vat_lookup test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
