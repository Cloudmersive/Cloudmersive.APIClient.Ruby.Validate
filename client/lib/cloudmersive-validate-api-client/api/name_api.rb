=begin
#validateapi

#The validation APIs help you validate data. Check if an E-mail address is real. Check if a domain is real. Check up on an IP address, and even where it is located. All this and much more is available in the validation API.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require "uri"

module CloudmersiveValidateApiClient
  class NameApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get the gender of a first name
    # Determines the gender of a first name (given name)
    # @param input Gender request information
    # @param [Hash] opts the optional parameters
    # @return [GetGenderResponse]
    def name_get_gender(input, opts = {})
      data, _status_code, _headers = name_get_gender_with_http_info(input, opts)
      return data
    end

    # Get the gender of a first name
    # Determines the gender of a first name (given name)
    # @param input Gender request information
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetGenderResponse, Fixnum, Hash)>] GetGenderResponse data, response status code and response headers
    def name_get_gender_with_http_info(input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NameApi.name_get_gender ..."
      end
      # verify the required parameter 'input' is set
      if @api_client.config.client_side_validation && input.nil?
        fail ArgumentError, "Missing the required parameter 'input' when calling NameApi.name_get_gender"
      end
      # resource path
      local_var_path = "/validate/name/get-gender"

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
      post_body = @api_client.object_to_http_body(input)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetGenderResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NameApi#name_get_gender\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Validate a first name
    # Determines if a string is a valid first name (given name)
    # @param input Validation request information
    # @param [Hash] opts the optional parameters
    # @return [FirstNameValidationResponse]
    def name_validate_first_name(input, opts = {})
      data, _status_code, _headers = name_validate_first_name_with_http_info(input, opts)
      return data
    end

    # Validate a first name
    # Determines if a string is a valid first name (given name)
    # @param input Validation request information
    # @param [Hash] opts the optional parameters
    # @return [Array<(FirstNameValidationResponse, Fixnum, Hash)>] FirstNameValidationResponse data, response status code and response headers
    def name_validate_first_name_with_http_info(input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NameApi.name_validate_first_name ..."
      end
      # verify the required parameter 'input' is set
      if @api_client.config.client_side_validation && input.nil?
        fail ArgumentError, "Missing the required parameter 'input' when calling NameApi.name_validate_first_name"
      end
      # resource path
      local_var_path = "/validate/name/first"

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
      post_body = @api_client.object_to_http_body(input)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FirstNameValidationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NameApi#name_validate_first_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Parse and validate a full name
    # Parses a full name string (e.g. \"Mr. Jon van der Waal Jr.\") into its component parts (and returns these component parts), and then validates whether it is a valid name string or not
    # @param input Validation request information
    # @param [Hash] opts the optional parameters
    # @return [FullNameValidationResponse]
    def name_validate_full_name(input, opts = {})
      data, _status_code, _headers = name_validate_full_name_with_http_info(input, opts)
      return data
    end

    # Parse and validate a full name
    # Parses a full name string (e.g. \&quot;Mr. Jon van der Waal Jr.\&quot;) into its component parts (and returns these component parts), and then validates whether it is a valid name string or not
    # @param input Validation request information
    # @param [Hash] opts the optional parameters
    # @return [Array<(FullNameValidationResponse, Fixnum, Hash)>] FullNameValidationResponse data, response status code and response headers
    def name_validate_full_name_with_http_info(input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NameApi.name_validate_full_name ..."
      end
      # verify the required parameter 'input' is set
      if @api_client.config.client_side_validation && input.nil?
        fail ArgumentError, "Missing the required parameter 'input' when calling NameApi.name_validate_full_name"
      end
      # resource path
      local_var_path = "/validate/name/full-name"

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
      post_body = @api_client.object_to_http_body(input)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FullNameValidationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NameApi#name_validate_full_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Validate a last name
    # Determines if a string is a valid last name (surname)
    # @param input Validation request information
    # @param [Hash] opts the optional parameters
    # @return [LastNameValidationResponse]
    def name_validate_last_name(input, opts = {})
      data, _status_code, _headers = name_validate_last_name_with_http_info(input, opts)
      return data
    end

    # Validate a last name
    # Determines if a string is a valid last name (surname)
    # @param input Validation request information
    # @param [Hash] opts the optional parameters
    # @return [Array<(LastNameValidationResponse, Fixnum, Hash)>] LastNameValidationResponse data, response status code and response headers
    def name_validate_last_name_with_http_info(input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NameApi.name_validate_last_name ..."
      end
      # verify the required parameter 'input' is set
      if @api_client.config.client_side_validation && input.nil?
        fail ArgumentError, "Missing the required parameter 'input' when calling NameApi.name_validate_last_name"
      end
      # resource path
      local_var_path = "/validate/name/last"

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
      post_body = @api_client.object_to_http_body(input)
      auth_names = ['Apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LastNameValidationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NameApi#name_validate_last_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
