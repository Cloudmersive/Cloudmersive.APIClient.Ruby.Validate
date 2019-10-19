=begin
#validateapi

#The validation APIs help you validate data. Check if an E-mail address is real. Check if a domain is real. Check up on an IP address, and even where it is located. All this and much more is available in the validation API.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module CloudmersiveValidateApiClient
  # Result from validating a phone number
  class PhoneNumberValidationResponse
    # True if the phone number is valid, false otherwise
    attr_accessor :is_valid

    # True if the operation was successful, false if there was an error during validation.  See IsValid for validation result.
    attr_accessor :successful

    # Type of phone number; possible values are: FixedLine, Mobile, FixedLineOrMobile, TollFree, PremiumRate,   SharedCost, Voip, PersonalNumber, Pager, Uan, Voicemail, Unknown
    attr_accessor :phone_number_type

    # E.164 format of the phone number
    attr_accessor :e164_format

    # Internaltional format of the phone number
    attr_accessor :international_format

    # National format of the phone number
    attr_accessor :national_format

    # Two digit country code of the phone number
    attr_accessor :country_code

    # User-friendly long name of the country for the phone number
    attr_accessor :country_name


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'is_valid' => :'IsValid',
        :'successful' => :'Successful',
        :'phone_number_type' => :'PhoneNumberType',
        :'e164_format' => :'E164Format',
        :'international_format' => :'InternationalFormat',
        :'national_format' => :'NationalFormat',
        :'country_code' => :'CountryCode',
        :'country_name' => :'CountryName'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'is_valid' => :'BOOLEAN',
        :'successful' => :'BOOLEAN',
        :'phone_number_type' => :'String',
        :'e164_format' => :'String',
        :'international_format' => :'String',
        :'national_format' => :'String',
        :'country_code' => :'String',
        :'country_name' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'IsValid')
        self.is_valid = attributes[:'IsValid']
      end

      if attributes.has_key?(:'Successful')
        self.successful = attributes[:'Successful']
      end

      if attributes.has_key?(:'PhoneNumberType')
        self.phone_number_type = attributes[:'PhoneNumberType']
      end

      if attributes.has_key?(:'E164Format')
        self.e164_format = attributes[:'E164Format']
      end

      if attributes.has_key?(:'InternationalFormat')
        self.international_format = attributes[:'InternationalFormat']
      end

      if attributes.has_key?(:'NationalFormat')
        self.national_format = attributes[:'NationalFormat']
      end

      if attributes.has_key?(:'CountryCode')
        self.country_code = attributes[:'CountryCode']
      end

      if attributes.has_key?(:'CountryName')
        self.country_name = attributes[:'CountryName']
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
          is_valid == o.is_valid &&
          successful == o.successful &&
          phone_number_type == o.phone_number_type &&
          e164_format == o.e164_format &&
          international_format == o.international_format &&
          national_format == o.national_format &&
          country_code == o.country_code &&
          country_name == o.country_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [is_valid, successful, phone_number_type, e164_format, international_format, national_format, country_code, country_name].hash
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
