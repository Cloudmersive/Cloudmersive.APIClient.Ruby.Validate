=begin
#validateapi

#The validation APIs help you validate data. Check if an E-mail address is real. Check if a domain is real. Check up on an IP address, and even where it is located. All this and much more is available in the validation API.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for CloudmersiveValidateApiClient::UserAgentApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UserAgentApi' do
  before do
    # run before each test
    @instance = CloudmersiveValidateApiClient::UserAgentApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserAgentApi' do
    it 'should create an instance of UserAgentApi' do
      expect(@instance).to be_instance_of(CloudmersiveValidateApiClient::UserAgentApi)
    end
  end

  # unit tests for user_agent_parse
  # Parse an HTTP User-Agent string, identify robots
  # Uses a parsing system and database to parse the User-Agent into its structured component parts, such as Browser, Browser Version, Browser Engine, Operating System, and importantly, Robot identification.
  # @param request Input parse request
  # @param [Hash] opts the optional parameters
  # @return [UserAgentValidateResponse]
  describe 'user_agent_parse test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
