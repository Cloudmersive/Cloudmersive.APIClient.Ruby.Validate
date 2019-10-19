=begin
#validateapi

#The validation APIs help you validate data. Check if an E-mail address is real. Check if a domain is real. Check up on an IP address, and even where it is located. All this and much more is available in the validation API.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module CloudmersiveValidateApiClient
  # Full email addresss validation result
  class FullEmailValidationResponse
    # True if the email address is valid overall, false otherwise
    attr_accessor :valid_address

    # Email server connected to for verification
    attr_accessor :mail_server_used_for_validation

    # True if the syntax of the email address is valid, false otherwise.  This is one component of ValidAddress, but not the only one.
    attr_accessor :valid_syntax

    # True if the domain name of the email address is valid, false otherwise.  This is one component of ValidAddress, but not the only one.
    attr_accessor :valid_domain

    # True if the email address was verified by the remote server, false otherwise.  This is one component of ValidAddress, but not the only one.
    attr_accessor :valid_smtp

    # True if the domain is a catch-all domain name, false otherwise.  Catch-all domain names, while rare, always accept inbound email to ensure they do not lose any potentially useful emails.  Catch-all domain names can occassionally be configured to first accept and store all inbound email, but then later send a bounce email back to the sender after a delayed period of time.
    attr_accessor :is_catchall_domain

    # Domain name of the email address
    attr_accessor :domain

    # True if the email domain name is a free provider (typically a free to sign up web email provider for consumers / personal use), false otherwise.
    attr_accessor :is_free_email_provider

    # True if the email address is a disposable email address, false otherwise; these disposable providers are not typically used to receive email and so will have a low likelihood of opening mail sent there.
    attr_accessor :is_disposable


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'valid_address' => :'ValidAddress',
        :'mail_server_used_for_validation' => :'MailServerUsedForValidation',
        :'valid_syntax' => :'Valid_Syntax',
        :'valid_domain' => :'Valid_Domain',
        :'valid_smtp' => :'Valid_SMTP',
        :'is_catchall_domain' => :'IsCatchallDomain',
        :'domain' => :'Domain',
        :'is_free_email_provider' => :'IsFreeEmailProvider',
        :'is_disposable' => :'IsDisposable'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'valid_address' => :'BOOLEAN',
        :'mail_server_used_for_validation' => :'String',
        :'valid_syntax' => :'BOOLEAN',
        :'valid_domain' => :'BOOLEAN',
        :'valid_smtp' => :'BOOLEAN',
        :'is_catchall_domain' => :'BOOLEAN',
        :'domain' => :'String',
        :'is_free_email_provider' => :'BOOLEAN',
        :'is_disposable' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'ValidAddress')
        self.valid_address = attributes[:'ValidAddress']
      end

      if attributes.has_key?(:'MailServerUsedForValidation')
        self.mail_server_used_for_validation = attributes[:'MailServerUsedForValidation']
      end

      if attributes.has_key?(:'Valid_Syntax')
        self.valid_syntax = attributes[:'Valid_Syntax']
      end

      if attributes.has_key?(:'Valid_Domain')
        self.valid_domain = attributes[:'Valid_Domain']
      end

      if attributes.has_key?(:'Valid_SMTP')
        self.valid_smtp = attributes[:'Valid_SMTP']
      end

      if attributes.has_key?(:'IsCatchallDomain')
        self.is_catchall_domain = attributes[:'IsCatchallDomain']
      end

      if attributes.has_key?(:'Domain')
        self.domain = attributes[:'Domain']
      end

      if attributes.has_key?(:'IsFreeEmailProvider')
        self.is_free_email_provider = attributes[:'IsFreeEmailProvider']
      end

      if attributes.has_key?(:'IsDisposable')
        self.is_disposable = attributes[:'IsDisposable']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          valid_address == o.valid_address &&
          mail_server_used_for_validation == o.mail_server_used_for_validation &&
          valid_syntax == o.valid_syntax &&
          valid_domain == o.valid_domain &&
          valid_smtp == o.valid_smtp &&
          is_catchall_domain == o.is_catchall_domain &&
          domain == o.domain &&
          is_free_email_provider == o.is_free_email_provider &&
          is_disposable == o.is_disposable
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [valid_address, mail_server_used_for_validation, valid_syntax, valid_domain, valid_smtp, is_catchall_domain, domain, is_free_email_provider, is_disposable].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = CloudmersiveValidateApiClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
