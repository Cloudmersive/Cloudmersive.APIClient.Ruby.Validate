=begin
#validateapi

#The validation APIs help you validate data. Check if an E-mail address is real. Check if a domain is real. Check up on an IP address, and even where it is located. All this and much more is available in the validation API.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'uri'

module CloudmersiveValidateApiClient
  class IPAddressApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Geolocate an IP address to a street address
    # Identify an IP address's street address.  Useful for security and UX applications.
    # @param value IP address to geolocate, e.g. \&quot;55.55.55.55\&quot;.  The input is a string so be sure to enclose it in double-quotes.
    # @param [Hash] opts the optional parameters
    # @return [GeolocateStreetAddressResponse]
    def i_p_address_geolocate_street_address(value, opts = {})
      data, _status_code, _headers = i_p_address_geolocate_street_address_with_http_info(value, opts)
      data
    end

    # Geolocate an IP address to a street address
    # Identify an IP address&#39;s street address.  Useful for security and UX applications.
    # @param value IP address to geolocate, e.g. \&quot;55.55.55.55\&quot;.  The input is a string so be sure to enclose it in double-quotes.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GeolocateStreetAddressResponse, Fixnum, Hash)>] GeolocateStreetAddressResponse data, response status code and response headers
    def i_p_address_geolocate_street_address_with_http_info(value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IPAddressApi.i_p_address_geolocate_street_address ...'
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling IPAddressApi.i_p_address_geolocate_street_address"
      end
      # resource path
      local_var_path = '/validate/ip/geolocate/street-address'

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
        :return_type => 'GeolocateStreetAddressResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IPAddressApi#i_p_address_geolocate_street_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Check if IP address is a known threat
    # Check if the input IP address is a known threat IP address.  Checks against known bad IPs, botnets, compromised servers, and other lists of threats.
    # @param value IP address to check, e.g. \&quot;55.55.55.55\&quot;.  The input is a string so be sure to enclose it in double-quotes.
    # @param [Hash] opts the optional parameters
    # @return [IPThreatResponse]
    def i_p_address_is_threat(value, opts = {})
      data, _status_code, _headers = i_p_address_is_threat_with_http_info(value, opts)
      data
    end

    # Check if IP address is a known threat
    # Check if the input IP address is a known threat IP address.  Checks against known bad IPs, botnets, compromised servers, and other lists of threats.
    # @param value IP address to check, e.g. \&quot;55.55.55.55\&quot;.  The input is a string so be sure to enclose it in double-quotes.
    # @param [Hash] opts the optional parameters
    # @return [Array<(IPThreatResponse, Fixnum, Hash)>] IPThreatResponse data, response status code and response headers
    def i_p_address_is_threat_with_http_info(value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IPAddressApi.i_p_address_is_threat ...'
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling IPAddressApi.i_p_address_is_threat"
      end
      # resource path
      local_var_path = '/validate/ip/is-threat'

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
        :return_type => 'IPThreatResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IPAddressApi#i_p_address_is_threat\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Check if IP address is a Tor node server
    # Check if the input IP address is a Tor exit node server.  Tor servers are a type of privacy-preserving technology that can hide the original IP address who makes a request.
    # @param value IP address to check, e.g. \&quot;55.55.55.55\&quot;.  The input is a string so be sure to enclose it in double-quotes.
    # @param [Hash] opts the optional parameters
    # @return [TorNodeResponse]
    def i_p_address_is_tor_node(value, opts = {})
      data, _status_code, _headers = i_p_address_is_tor_node_with_http_info(value, opts)
      data
    end

    # Check if IP address is a Tor node server
    # Check if the input IP address is a Tor exit node server.  Tor servers are a type of privacy-preserving technology that can hide the original IP address who makes a request.
    # @param value IP address to check, e.g. \&quot;55.55.55.55\&quot;.  The input is a string so be sure to enclose it in double-quotes.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TorNodeResponse, Fixnum, Hash)>] TorNodeResponse data, response status code and response headers
    def i_p_address_is_tor_node_with_http_info(value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IPAddressApi.i_p_address_is_tor_node ...'
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling IPAddressApi.i_p_address_is_tor_node"
      end
      # resource path
      local_var_path = '/validate/ip/is-tor-node'

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
        :return_type => 'TorNodeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IPAddressApi#i_p_address_is_tor_node\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Geolocate an IP address
    # Identify an IP address Country, State/Provence, City, Zip/Postal Code, etc.  Useful for security and UX applications.
    # @param value IP address to geolocate, e.g. \&quot;55.55.55.55\&quot;.  The input is a string so be sure to enclose it in double-quotes.
    # @param [Hash] opts the optional parameters
    # @return [GeolocateResponse]
    def i_p_address_post(value, opts = {})
      data, _status_code, _headers = i_p_address_post_with_http_info(value, opts)
      data
    end

    # Geolocate an IP address
    # Identify an IP address Country, State/Provence, City, Zip/Postal Code, etc.  Useful for security and UX applications.
    # @param value IP address to geolocate, e.g. \&quot;55.55.55.55\&quot;.  The input is a string so be sure to enclose it in double-quotes.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GeolocateResponse, Fixnum, Hash)>] GeolocateResponse data, response status code and response headers
    def i_p_address_post_with_http_info(value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IPAddressApi.i_p_address_post ...'
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling IPAddressApi.i_p_address_post"
      end
      # resource path
      local_var_path = '/validate/ip/geolocate'

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
        :return_type => 'GeolocateResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IPAddressApi#i_p_address_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Perform a reverse domain name (DNS) lookup on an IP address
    # Gets the domain name, if any, associated with the IP address.
    # @param value IP address to check, e.g. \&quot;55.55.55.55\&quot;.  The input is a string so be sure to enclose it in double-quotes.
    # @param [Hash] opts the optional parameters
    # @return [IPReverseDNSLookupResponse]
    def i_p_address_reverse_domain_lookup(value, opts = {})
      data, _status_code, _headers = i_p_address_reverse_domain_lookup_with_http_info(value, opts)
      data
    end

    # Perform a reverse domain name (DNS) lookup on an IP address
    # Gets the domain name, if any, associated with the IP address.
    # @param value IP address to check, e.g. \&quot;55.55.55.55\&quot;.  The input is a string so be sure to enclose it in double-quotes.
    # @param [Hash] opts the optional parameters
    # @return [Array<(IPReverseDNSLookupResponse, Fixnum, Hash)>] IPReverseDNSLookupResponse data, response status code and response headers
    def i_p_address_reverse_domain_lookup_with_http_info(value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IPAddressApi.i_p_address_reverse_domain_lookup ...'
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling IPAddressApi.i_p_address_reverse_domain_lookup"
      end
      # resource path
      local_var_path = '/validate/ip/reverse-domain-lookup'

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
        :return_type => 'IPReverseDNSLookupResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IPAddressApi#i_p_address_reverse_domain_lookup\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
