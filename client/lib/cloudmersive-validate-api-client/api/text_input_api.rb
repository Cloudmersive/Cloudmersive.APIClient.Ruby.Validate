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
    # Protect html input from Server-side Request Forgery (SSRF) attacks
    # Detects SSRF (Server-side request forgery) attacks and unsafe URL attacks from HTML text input, where attackers can attempt to access unsafe local or network paths in the server environment by injecting them into HTML.
    # @param value User-facing HTML input.
    # @param [Hash] opts the optional parameters
    # @return [HtmlSsrfDetectionResult]
    def text_input_check_html_ssrf(value, opts = {})
      data, _status_code, _headers = text_input_check_html_ssrf_with_http_info(value, opts)
      data
    end

    # Protect html input from Server-side Request Forgery (SSRF) attacks
    # Detects SSRF (Server-side request forgery) attacks and unsafe URL attacks from HTML text input, where attackers can attempt to access unsafe local or network paths in the server environment by injecting them into HTML.
    # @param value User-facing HTML input.
    # @param [Hash] opts the optional parameters
    # @return [Array<(HtmlSsrfDetectionResult, Fixnum, Hash)>] HtmlSsrfDetectionResult data, response status code and response headers
    def text_input_check_html_ssrf_with_http_info(value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TextInputApi.text_input_check_html_ssrf ...'
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling TextInputApi.text_input_check_html_ssrf"
      end
      # resource path
      local_var_path = '/validate/text-input/html/check/ssrf'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json'])

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
        :return_type => 'HtmlSsrfDetectionResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TextInputApi#text_input_check_html_ssrf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Check text input for SQL Injection (SQLI) attacks
    # Detects SQL Injection (SQLI) attacks from text input.
    # @param value User-facing text input.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :detection_level Set to Normal to target a high-security SQL Injection detection level with a very low false positive rate; select High to target a very-high security SQL Injection detection level with higher false positives.  Default is Normal (recommended).
    # @return [SqlInjectionDetectionResult]
    def text_input_check_sql_injection(value, opts = {})
      data, _status_code, _headers = text_input_check_sql_injection_with_http_info(value, opts)
      data
    end

    # Check text input for SQL Injection (SQLI) attacks
    # Detects SQL Injection (SQLI) attacks from text input.
    # @param value User-facing text input.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :detection_level Set to Normal to target a high-security SQL Injection detection level with a very low false positive rate; select High to target a very-high security SQL Injection detection level with higher false positives.  Default is Normal (recommended).
    # @return [Array<(SqlInjectionDetectionResult, Fixnum, Hash)>] SqlInjectionDetectionResult data, response status code and response headers
    def text_input_check_sql_injection_with_http_info(value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TextInputApi.text_input_check_sql_injection ...'
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling TextInputApi.text_input_check_sql_injection"
      end
      # resource path
      local_var_path = '/validate/text-input/check/sql-injection'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json'])
      header_params[:'detectionLevel'] = opts[:'detection_level'] if !opts[:'detection_level'].nil?

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
        :return_type => 'SqlInjectionDetectionResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TextInputApi#text_input_check_sql_injection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Check and protect multiple text inputs for SQL Injection (SQLI) attacks in batch
    # Detects SQL Injection (SQLI) attacks from multiple text inputs.  Output preverses order of input items.
    # @param value User-facing text input.
    # @param [Hash] opts the optional parameters
    # @return [SqlInjectionCheckBatchResponse]
    def text_input_check_sql_injection_batch(value, opts = {})
      data, _status_code, _headers = text_input_check_sql_injection_batch_with_http_info(value, opts)
      data
    end

    # Check and protect multiple text inputs for SQL Injection (SQLI) attacks in batch
    # Detects SQL Injection (SQLI) attacks from multiple text inputs.  Output preverses order of input items.
    # @param value User-facing text input.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SqlInjectionCheckBatchResponse, Fixnum, Hash)>] SqlInjectionCheckBatchResponse data, response status code and response headers
    def text_input_check_sql_injection_batch_with_http_info(value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TextInputApi.text_input_check_sql_injection_batch ...'
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling TextInputApi.text_input_check_sql_injection_batch"
      end
      # resource path
      local_var_path = '/validate/text-input/check/sql-injection/batch'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json'])

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
        :return_type => 'SqlInjectionCheckBatchResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TextInputApi#text_input_check_sql_injection_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
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
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json'])

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
    # Check and protect multiple text inputs for Cross-Site-Scripting (XSS) attacks in batch
    # Detects XSS (Cross-Site-Scripting) attacks from multiple text inputs.  Output preverses order of input items.
    # @param value User-facing text input.
    # @param [Hash] opts the optional parameters
    # @return [XssProtectionBatchResponse]
    def text_input_check_xss_batch(value, opts = {})
      data, _status_code, _headers = text_input_check_xss_batch_with_http_info(value, opts)
      data
    end

    # Check and protect multiple text inputs for Cross-Site-Scripting (XSS) attacks in batch
    # Detects XSS (Cross-Site-Scripting) attacks from multiple text inputs.  Output preverses order of input items.
    # @param value User-facing text input.
    # @param [Hash] opts the optional parameters
    # @return [Array<(XssProtectionBatchResponse, Fixnum, Hash)>] XssProtectionBatchResponse data, response status code and response headers
    def text_input_check_xss_batch_with_http_info(value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TextInputApi.text_input_check_xss_batch ...'
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling TextInputApi.text_input_check_xss_batch"
      end
      # resource path
      local_var_path = '/validate/text-input/check-and-protect/xss/batch'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json'])

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
        :return_type => 'XssProtectionBatchResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TextInputApi#text_input_check_xss_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Protect text input from XML External Entity (XXE) attacks
    # Detects XXE (XML External Entity) attacks from text input.
    # @param value User-facing text input.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :allow_internet_urls Optional: Set to true to allow Internet-based dependency URLs for DTDs and other XML External Entitites, set to false to block.  Default is false.
    # @option opts [String] :known_safe_urls Optional: Comma separated list of fully-qualified URLs that will automatically be considered safe.
    # @option opts [String] :known_unsafe_urls Optional: Comma separated list of fully-qualified URLs that will automatically be considered unsafe.
    # @return [XxeDetectionResult]
    def text_input_check_xxe(value, opts = {})
      data, _status_code, _headers = text_input_check_xxe_with_http_info(value, opts)
      data
    end

    # Protect text input from XML External Entity (XXE) attacks
    # Detects XXE (XML External Entity) attacks from text input.
    # @param value User-facing text input.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :allow_internet_urls Optional: Set to true to allow Internet-based dependency URLs for DTDs and other XML External Entitites, set to false to block.  Default is false.
    # @option opts [String] :known_safe_urls Optional: Comma separated list of fully-qualified URLs that will automatically be considered safe.
    # @option opts [String] :known_unsafe_urls Optional: Comma separated list of fully-qualified URLs that will automatically be considered unsafe.
    # @return [Array<(XxeDetectionResult, Fixnum, Hash)>] XxeDetectionResult data, response status code and response headers
    def text_input_check_xxe_with_http_info(value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TextInputApi.text_input_check_xxe ...'
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling TextInputApi.text_input_check_xxe"
      end
      # resource path
      local_var_path = '/validate/text-input/check/xxe'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json'])
      header_params[:'allowInternetUrls'] = opts[:'allow_internet_urls'] if !opts[:'allow_internet_urls'].nil?
      header_params[:'knownSafeUrls'] = opts[:'known_safe_urls'] if !opts[:'known_safe_urls'].nil?
      header_params[:'knownUnsafeUrls'] = opts[:'known_unsafe_urls'] if !opts[:'known_unsafe_urls'].nil?

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
        :return_type => 'XxeDetectionResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TextInputApi#text_input_check_xxe\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Protect text input from XML External Entity (XXE) attacks
    # Detects XXE (XML External Entity) attacks from text input.
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [XxeDetectionBatchResponse]
    def text_input_check_xxe_batch(request, opts = {})
      data, _status_code, _headers = text_input_check_xxe_batch_with_http_info(request, opts)
      data
    end

    # Protect text input from XML External Entity (XXE) attacks
    # Detects XXE (XML External Entity) attacks from text input.
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(XxeDetectionBatchResponse, Fixnum, Hash)>] XxeDetectionBatchResponse data, response status code and response headers
    def text_input_check_xxe_batch_with_http_info(request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TextInputApi.text_input_check_xxe_batch ...'
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling TextInputApi.text_input_check_xxe_batch"
      end
      # resource path
      local_var_path = '/validate/text-input/check/xxe/batch'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json'])

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
        :return_type => 'XxeDetectionBatchResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TextInputApi#text_input_check_xxe_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json'])

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
