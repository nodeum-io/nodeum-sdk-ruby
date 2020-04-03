=begin
#Nodeum API

## About  This document describes the Nodeum API version 2:  If you are looking for any information about the product itself, reach the product website https://www.nodeum.io. You can also contact us at this email address : info@nodeum.io  # Filter parameters When browsing a list of items, multiple filter parameters may be applied. Some operators can be added to the value as a prefix:  - `=` value is equal. Default operator, may be omitted  - `!=` value is different  - `>` greater than  - `>=` greater than or equal  - `<` lower than  - `>=` lower than or equal  - `><` included in list, items should be separated by `|`  - `!><` not included in list, items should be separated by `|`  - `~` pattern matching, may include `%` (any characters) and `_` (one character)  - `!~` pattern not matching, may include `%` (any characters) and `_` (one character)  

The version of the OpenAPI document: 2.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'date'

module Nodeum
  class Tape
    attr_accessor :id

    attr_accessor :tape_library_id

    attr_accessor :pool_id

    attr_accessor :barcode

    attr_accessor :location

    attr_accessor :type

    attr_accessor :locked

    attr_accessor :scratch

    attr_accessor :cleaning

    attr_accessor :write_protect

    attr_accessor :mounted

    attr_accessor :ejected

    attr_accessor :known

    attr_accessor :mount_count

    attr_accessor :date_in

    attr_accessor :date_move

    attr_accessor :free

    attr_accessor :max

    attr_accessor :last_size_update

    attr_accessor :last_maintenance

    attr_accessor :last_repack

    attr_accessor :repack_status

    attr_accessor :hash

    attr_accessor :force_import_type

    attr_accessor :need_to_check

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'tape_library_id' => :'tape_library_id',
        :'pool_id' => :'pool_id',
        :'barcode' => :'barcode',
        :'location' => :'location',
        :'type' => :'type',
        :'locked' => :'locked',
        :'scratch' => :'scratch',
        :'cleaning' => :'cleaning',
        :'write_protect' => :'write_protect',
        :'mounted' => :'mounted',
        :'ejected' => :'ejected',
        :'known' => :'known',
        :'mount_count' => :'mount_count',
        :'date_in' => :'date_in',
        :'date_move' => :'date_move',
        :'free' => :'free',
        :'max' => :'max',
        :'last_size_update' => :'last_size_update',
        :'last_maintenance' => :'last_maintenance',
        :'last_repack' => :'last_repack',
        :'repack_status' => :'repack_status',
        :'hash' => :'hash',
        :'force_import_type' => :'force_import_type',
        :'need_to_check' => :'need_to_check'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Integer',
        :'tape_library_id' => :'Integer',
        :'pool_id' => :'Integer',
        :'barcode' => :'String',
        :'location' => :'String',
        :'type' => :'String',
        :'locked' => :'Boolean',
        :'scratch' => :'Boolean',
        :'cleaning' => :'Boolean',
        :'write_protect' => :'Boolean',
        :'mounted' => :'Boolean',
        :'ejected' => :'Boolean',
        :'known' => :'Boolean',
        :'mount_count' => :'Integer',
        :'date_in' => :'String',
        :'date_move' => :'String',
        :'free' => :'Integer',
        :'max' => :'Integer',
        :'last_size_update' => :'String',
        :'last_maintenance' => :'String',
        :'last_repack' => :'String',
        :'repack_status' => :'Boolean',
        :'hash' => :'String',
        :'force_import_type' => :'Boolean',
        :'need_to_check' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Nodeum::Tape` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Nodeum::Tape`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'tape_library_id')
        self.tape_library_id = attributes[:'tape_library_id']
      end

      if attributes.key?(:'pool_id')
        self.pool_id = attributes[:'pool_id']
      end

      if attributes.key?(:'barcode')
        self.barcode = attributes[:'barcode']
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'locked')
        self.locked = attributes[:'locked']
      end

      if attributes.key?(:'scratch')
        self.scratch = attributes[:'scratch']
      end

      if attributes.key?(:'cleaning')
        self.cleaning = attributes[:'cleaning']
      end

      if attributes.key?(:'write_protect')
        self.write_protect = attributes[:'write_protect']
      end

      if attributes.key?(:'mounted')
        self.mounted = attributes[:'mounted']
      end

      if attributes.key?(:'ejected')
        self.ejected = attributes[:'ejected']
      end

      if attributes.key?(:'known')
        self.known = attributes[:'known']
      end

      if attributes.key?(:'mount_count')
        self.mount_count = attributes[:'mount_count']
      end

      if attributes.key?(:'date_in')
        self.date_in = attributes[:'date_in']
      end

      if attributes.key?(:'date_move')
        self.date_move = attributes[:'date_move']
      end

      if attributes.key?(:'free')
        self.free = attributes[:'free']
      end

      if attributes.key?(:'max')
        self.max = attributes[:'max']
      end

      if attributes.key?(:'last_size_update')
        self.last_size_update = attributes[:'last_size_update']
      end

      if attributes.key?(:'last_maintenance')
        self.last_maintenance = attributes[:'last_maintenance']
      end

      if attributes.key?(:'last_repack')
        self.last_repack = attributes[:'last_repack']
      end

      if attributes.key?(:'repack_status')
        self.repack_status = attributes[:'repack_status']
      end

      if attributes.key?(:'hash')
        self.hash = attributes[:'hash']
      end

      if attributes.key?(:'force_import_type')
        self.force_import_type = attributes[:'force_import_type']
      end

      if attributes.key?(:'need_to_check')
        self.need_to_check = attributes[:'need_to_check']
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
      type_validator = EnumAttributeValidator.new('String', ["unknown", "data", "cleaning", "diagnostic", "data_lto1", "data_lto2", "data_lto3", "data_lto4", "data_lto5", "data_lto6", "data_lto7", "data_lto8", "data_lto9", "data_lto10", "data_lto11", "data_lto12"])
      return false unless type_validator.valid?(@type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["unknown", "data", "cleaning", "diagnostic", "data_lto1", "data_lto2", "data_lto3", "data_lto4", "data_lto5", "data_lto6", "data_lto7", "data_lto8", "data_lto9", "data_lto10", "data_lto11", "data_lto12"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          tape_library_id == o.tape_library_id &&
          pool_id == o.pool_id &&
          barcode == o.barcode &&
          location == o.location &&
          type == o.type &&
          locked == o.locked &&
          scratch == o.scratch &&
          cleaning == o.cleaning &&
          write_protect == o.write_protect &&
          mounted == o.mounted &&
          ejected == o.ejected &&
          known == o.known &&
          mount_count == o.mount_count &&
          date_in == o.date_in &&
          date_move == o.date_move &&
          free == o.free &&
          max == o.max &&
          last_size_update == o.last_size_update &&
          last_maintenance == o.last_maintenance &&
          last_repack == o.last_repack &&
          repack_status == o.repack_status &&
          hash == o.hash &&
          force_import_type == o.force_import_type &&
          need_to_check == o.need_to_check
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, tape_library_id, pool_id, barcode, location, type, locked, scratch, cleaning, write_protect, mounted, ejected, known, mount_count, date_in, date_move, free, max, last_size_update, last_maintenance, last_repack, repack_status, hash, force_import_type, need_to_check].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
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
      when :Boolean
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
        Nodeum.const_get(type).build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end
        
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