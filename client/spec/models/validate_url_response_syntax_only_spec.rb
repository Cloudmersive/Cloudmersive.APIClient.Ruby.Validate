=begin
#validateapi

#The validation APIs help you validate data. Check if an E-mail address is real. Check if a domain is real. Check up on an IP address, and even where it is located. All this and much more is available in the validation API.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CloudmersiveValidateApiClient::ValidateUrlResponseSyntaxOnly
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ValidateUrlResponseSyntaxOnly' do
  before do
    # run before each test
    @instance = CloudmersiveValidateApiClient::ValidateUrlResponseSyntaxOnly.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ValidateUrlResponseSyntaxOnly' do
    it 'should create an instance of ValidateUrlResponseSyntaxOnly' do
      expect(@instance).to be_instance_of(CloudmersiveValidateApiClient::ValidateUrlResponseSyntaxOnly)
    end
  end
  describe 'test attribute "valid_url"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "well_formed_url"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "top_level_domain_name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
