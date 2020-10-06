=begin
#validateapi

#The validation APIs help you validate data. Check if an E-mail address is real. Check if a domain is real. Check up on an IP address, and even where it is located. All this and much more is available in the validation API.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'uri'

module CloudmersiveValidateApiClient
  class TextInputApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Check text input for Cross-Site-Scripting (XSS) attacks
    # Detects XSS (Cross-Site-Scripting) attacks from text input.
    # @param value User-facing text input.
    # @param [Hash] opts the optional parameters
    # @return [XssProtectionResult]
    def text_input_check_xss(value, opts = {})
      data, _status_code, _headers = text_input_check_xss_with_http_info(value, opts)
      data
    end

    # Check text input for Cross-Site-Scripting (XSS) attacks
    # Detects XSS (Cross-Site-Scripting) attacks from text input.
    # @param value User-facing text input.
    # @param [Hash] opts the optional parameters
    # @return [Array<(XssProtectionResult, Fixnum, Hash)>] XssProtectionResult data, response status code and response headers
    def text_input_check_xss_with_http_info(value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TextInputApi.text_input_check_xss ...'
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling TextInputApi.text_input_check_xss"
      end
      # resource path
      local_var_path = '/validate/text-input/check/xss'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['text/javascript', 'application/json', 'text/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(value)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'XssProtectionResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TextInputApi#text_input_check_xss\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Protect text input from Cross-Site-Scripting (XSS) attacks through normalization
    # Detects and removes XSS (Cross-Site-Scripting) attacks from text input through normalization.  Returns the normalized result, as well as information on whether the original input contained an XSS risk.
    # @param value User-facing text input.
    # @param [Hash] opts the optional parameters
    # @return [XssProtectionResult]
    def text_input_protect_xss(value, opts = {})
      data, _status_code, _headers = text_input_protect_xss_with_http_info(value, opts)
      data
    end

    # Protect text input from Cross-Site-Scripting (XSS) attacks through normalization
    # Detects and removes XSS (Cross-Site-Scripting) attacks from text input through normalization.  Returns the normalized result, as well as information on whether the original input contained an XSS risk.
    # @param value User-facing text input.
    # @param [Hash] opts the optional parameters
    # @return [Array<(XssProtectionResult, Fixnum, Hash)>] XssProtectionResult data, response status code and response headers
    def text_input_protect_xss_with_http_info(value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TextInputApi.text_input_protect_xss ...'
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling TextInputApi.text_input_protect_xss"
      end
      # resource path
      local_var_path = '/validate/text-input/protect/xss'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['text/javascript', 'application/json', 'text/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(value)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'XssProtectionResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TextInputApi#text_input_protect_xss\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end