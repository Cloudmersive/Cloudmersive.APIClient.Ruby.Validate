=begin
#validateapi

#The validation APIs help you validate data. Check if an E-mail address is real. Check if a domain is real. Check up on an IP address, and even where it is located. All this and much more is available in the validation API.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require "uri"

module CloudmersiveValidateApiClient
  class UserAgentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Parse an HTTP User-Agent string, identify robots
    # Uses a parsing system and database to parse the User-Agent into its structured component parts, such as Browser, Browser Version, Browser Engine, Operating System, and importantly, Robot identification.
    # @param request Input parse request
    # @param [Hash] opts the optional parameters
    # @return [UserAgentValidateResponse]
    def user_agent_parse(request, opts = {})
      data, _status_code, _headers = user_agent_parse_with_http_info(request, opts)
      return data
    end

    # Parse an HTTP User-Agent string, identify robots
    # Uses a parsing system and database to parse the User-Agent into its structured component parts, such as Browser, Browser Version, Browser Engine, Operating System, and importantly, Robot identification.
    # @param request Input parse request
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserAgentValidateResponse, Fixnum, Hash)>] UserAgentValidateResponse data, response status code and response headers
    def user_agent_parse_with_http_info(request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserAgentApi.user_agent_parse ..."
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling UserAgentApi.user_agent_parse"
      end
      # resource path
      local_var_path = "/validate/useragent/parse"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json', 'application/xml', 'text/xml', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UserAgentValidateResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserAgentApi#user_agent_parse\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
