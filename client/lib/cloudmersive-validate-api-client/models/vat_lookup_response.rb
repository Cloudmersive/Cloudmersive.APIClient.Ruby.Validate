=begin
#validateapi

#The validation APIs help you validate data. Check if an E-mail address is real. Check if a domain is real. Check up on an IP address, and even where it is located. All this and much more is available in the validation API.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'date'

module CloudmersiveValidateApiClient
  class VatLookupResponse
    # Two-letter country code
    attr_accessor :country_code

    # VAT number
    attr_accessor :vat_number

    # True if the VAT code is valid, false otherwise
    attr_accessor :is_valid

    # Name of the business
    attr_accessor :business_name

    # Business address as a single string
    attr_accessor :business_address

    # For the business address, the name of the building, house or structure if applicable, such as \"Cloudmersive Building 2\".  This will often by null.
    attr_accessor :business_building

    # For the business address, the street number or house number of the address.  For example, in the address \"1600 Pennsylvania Avenue NW\" the street number would be \"1600\".  This value will typically be populated for most addresses.
    attr_accessor :business_street_number

    # For the business address, the name of the street or road of the address.  For example, in the address \"1600 Pennsylvania Avenue NW\" the street number would be \"Pennsylvania Avenue NW\".
    attr_accessor :business_street

    # For the business address, the city of the address.
    attr_accessor :business_city

    # For the business address, the state or province of the address.
    attr_accessor :business_state_or_province

    # For the business address, the postal code or zip code of the address.
    attr_accessor :business_postal_code

    # For the business address, country of the address, if present in the address.  If not included in the address it will be null.
    attr_accessor :business_country

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'country_code' => :'CountryCode',
        :'vat_number' => :'VatNumber',
        :'is_valid' => :'IsValid',
        :'business_name' => :'BusinessName',
        :'business_address' => :'BusinessAddress',
        :'business_building' => :'BusinessBuilding',
        :'business_street_number' => :'BusinessStreetNumber',
        :'business_street' => :'BusinessStreet',
        :'business_city' => :'BusinessCity',
        :'business_state_or_province' => :'BusinessStateOrProvince',
        :'business_postal_code' => :'BusinessPostalCode',
        :'business_country' => :'BusinessCountry'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'country_code' => :'String',
        :'vat_number' => :'String',
        :'is_valid' => :'BOOLEAN',
        :'business_name' => :'String',
        :'business_address' => :'String',
        :'business_building' => :'String',
        :'business_street_number' => :'String',
        :'business_street' => :'String',
        :'business_city' => :'String',
        :'business_state_or_province' => :'String',
        :'business_postal_code' => :'String',
        :'business_country' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'CountryCode')
        self.country_code = attributes[:'CountryCode']
      end

      if attributes.has_key?(:'VatNumber')
        self.vat_number = attributes[:'VatNumber']
      end

      if attributes.has_key?(:'IsValid')
        self.is_valid = attributes[:'IsValid']
      end

      if attributes.has_key?(:'BusinessName')
        self.business_name = attributes[:'BusinessName']
      end

      if attributes.has_key?(:'BusinessAddress')
        self.business_address = attributes[:'BusinessAddress']
      end

      if attributes.has_key?(:'BusinessBuilding')
        self.business_building = attributes[:'BusinessBuilding']
      end

      if attributes.has_key?(:'BusinessStreetNumber')
        self.business_street_number = attributes[:'BusinessStreetNumber']
      end

      if attributes.has_key?(:'BusinessStreet')
        self.business_street = attributes[:'BusinessStreet']
      end

      if attributes.has_key?(:'BusinessCity')
        self.business_city = attributes[:'BusinessCity']
      end

      if attributes.has_key?(:'BusinessStateOrProvince')
        self.business_state_or_province = attributes[:'BusinessStateOrProvince']
      end

      if attributes.has_key?(:'BusinessPostalCode')
        self.business_postal_code = attributes[:'BusinessPostalCode']
      end

      if attributes.has_key?(:'BusinessCountry')
        self.business_country = attributes[:'BusinessCountry']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          country_code == o.country_code &&
          vat_number == o.vat_number &&
          is_valid == o.is_valid &&
          business_name == o.business_name &&
          business_address == o.business_address &&
          business_building == o.business_building &&
          business_street_number == o.business_street_number &&
          business_street == o.business_street &&
          business_city == o.business_city &&
          business_state_or_province == o.business_state_or_province &&
          business_postal_code == o.business_postal_code &&
          business_country == o.business_country
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [country_code, vat_number, is_valid, business_name, business_address, business_building, business_street_number, business_street, business_city, business_state_or_province, business_postal_code, business_country].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
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
        value.compact.map { |v| _to_hash(v) }
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
