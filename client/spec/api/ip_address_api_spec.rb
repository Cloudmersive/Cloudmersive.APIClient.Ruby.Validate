=begin
#validateapi

#The validation APIs help you validate data. Check if an E-mail address is real. Check if a domain is real. Check up on an IP address, and even where it is located. All this and much more is available in the validation API.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'spec_helper'
require 'json'

# Unit tests for CloudmersiveValidateApiClient::IPAddressApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'IPAddressApi' do
  before do
    # run before each test
    @instance = CloudmersiveValidateApiClient::IPAddressApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IPAddressApi' do
    it 'should create an instance of IPAddressApi' do
      expect(@instance).to be_instance_of(CloudmersiveValidateApiClient::IPAddressApi)
    end
  end

  # unit tests for i_p_address_geolocate_street_address
  # Geolocate an IP address to a street address
  # Identify an IP address&#39;s street address.  Useful for security and UX applications.
  # @param value IP address to geolocate, e.g. \&quot;55.55.55.55\&quot;.  The input is a string so be sure to enclose it in double-quotes.
  # @param [Hash] opts the optional parameters
  # @return [GeolocateStreetAddressResponse]
  describe 'i_p_address_geolocate_street_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for i_p_address_is_threat
  # Check if IP address is a known threat
  # Check if the input IP address is a known threat IP address.  Checks against known bad IPs, botnets, compromised servers, and other lists of threats.
  # @param value IP address to check, e.g. \&quot;55.55.55.55\&quot;.  The input is a string so be sure to enclose it in double-quotes.
  # @param [Hash] opts the optional parameters
  # @return [IPThreatResponse]
  describe 'i_p_address_is_threat test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for i_p_address_is_tor_node
  # Check if IP address is a Tor node server
  # Check if the input IP address is a Tor exit node server.  Tor servers are a type of privacy-preserving technology that can hide the original IP address who makes a request.
  # @param value IP address to check, e.g. \&quot;55.55.55.55\&quot;.  The input is a string so be sure to enclose it in double-quotes.
  # @param [Hash] opts the optional parameters
  # @return [TorNodeResponse]
  describe 'i_p_address_is_tor_node test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for i_p_address_post
  # Geolocate an IP address
  # Identify an IP address Country, State/Provence, City, Zip/Postal Code, etc.  Useful for security and UX applications.
  # @param value IP address to geolocate, e.g. \&quot;55.55.55.55\&quot;.  The input is a string so be sure to enclose it in double-quotes.
  # @param [Hash] opts the optional parameters
  # @return [GeolocateResponse]
  describe 'i_p_address_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
