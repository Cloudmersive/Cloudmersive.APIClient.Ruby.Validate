=begin
#validateapi

#The validation APIs help you validate data. Check if an E-mail address is real. Check if a domain is real. Check up on an IP address, and even where it is located. All this and much more is available in the validation API.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'date'

module CloudmersiveValidateApiClient
  # Result of a full name validation operation
  class FullNameValidationResponse
    # True if the validation operation was successful, false otherwise
    attr_accessor :successful

    # Possible values are: ValidFirstName, ValidUnknownFirstName, InvalidSpamInput, InvalidCharacters, InvalidEmpty
    attr_accessor :validation_result_first_name

    # Possible values are: ValidLastName, ValidUnknownLastName, InvalidSpamInput, InvalidCharacters, InvalidEmpty
    attr_accessor :validation_result_last_name

    # The person's title (if supplied), e.g. \"Mr.\" or \"Ms.\"
    attr_accessor :title

    # The first name (given name)
    attr_accessor :first_name

    # The middle name(s); if there are multiple names they will be separated by spaces
    attr_accessor :middle_name

    # The last name (surname)
    attr_accessor :last_name

    # Nickname (if supplied)
    attr_accessor :nick_name

    # Suffix to the name, e.g. \"Jr.\" or \"Sr.\"
    attr_accessor :suffix

    # The full display name of the name
    attr_accessor :display_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'successful' => :'Successful',
        :'validation_result_first_name' => :'ValidationResult_FirstName',
        :'validation_result_last_name' => :'ValidationResult_LastName',
        :'title' => :'Title',
        :'first_name' => :'FirstName',
        :'middle_name' => :'MiddleName',
        :'last_name' => :'LastName',
        :'nick_name' => :'NickName',
        :'suffix' => :'Suffix',
        :'display_name' => :'DisplayName'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'successful' => :'BOOLEAN',
        :'validation_result_first_name' => :'String',
        :'validation_result_last_name' => :'String',
        :'title' => :'String',
        :'first_name' => :'String',
        :'middle_name' => :'String',
        :'last_name' => :'String',
        :'nick_name' => :'String',
        :'suffix' => :'String',
        :'display_name' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'Successful')
        self.successful = attributes[:'Successful']
      end

      if attributes.has_key?(:'ValidationResult_FirstName')
        self.validation_result_first_name = attributes[:'ValidationResult_FirstName']
      end

      if attributes.has_key?(:'ValidationResult_LastName')
        self.validation_result_last_name = attributes[:'ValidationResult_LastName']
      end

      if attributes.has_key?(:'Title')
        self.title = attributes[:'Title']
      end

      if attributes.has_key?(:'FirstName')
        self.first_name = attributes[:'FirstName']
      end

      if attributes.has_key?(:'MiddleName')
        self.middle_name = attributes[:'MiddleName']
      end

      if attributes.has_key?(:'LastName')
        self.last_name = attributes[:'LastName']
      end

      if attributes.has_key?(:'NickName')
        self.nick_name = attributes[:'NickName']
      end

      if attributes.has_key?(:'Suffix')
        self.suffix = attributes[:'Suffix']
      end

      if attributes.has_key?(:'DisplayName')
        self.display_name = attributes[:'DisplayName']
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
          successful == o.successful &&
          validation_result_first_name == o.validation_result_first_name &&
          validation_result_last_name == o.validation_result_last_name &&
          title == o.title &&
          first_name == o.first_name &&
          middle_name == o.middle_name &&
          last_name == o.last_name &&
          nick_name == o.nick_name &&
          suffix == o.suffix &&
          display_name == o.display_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [successful, validation_result_first_name, validation_result_last_name, title, first_name, middle_name, last_name, nick_name, suffix, display_name].hash
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
