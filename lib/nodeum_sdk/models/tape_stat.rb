=begin
#Nodeum API

## About  This document describes the Nodeum API version 2:  If you are looking for any information about the product itself, reach the product website https://www.nodeum.io. You can also contact us at this email address : info@nodeum.io  # Filter parameters When browsing a list of items, multiple filter parameters may be applied. Some operators can be added to the value as a prefix:  - `=` value is equal. Default operator, may be omitted  - `!=` value is different  - `>` greater than  - `>=` greater than or equal  - `<` lower than  - `>=` lower than or equal  - `><` included in list, items should be separated by `|`  - `!><` not included in list, items should be separated by `|`  - `~` pattern matching, may include `%` (any characters) and `_` (one character)  - `!~` pattern not matching, may include `%` (any characters) and `_` (one character)  

The version of the OpenAPI document: 2.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'date'

module Nodeum
  class TapeStat
    attr_accessor :log_time

    attr_accessor :barcode

    attr_accessor :mounts

    attr_accessor :datasets_written

    attr_accessor :datasets_read

    attr_accessor :recovered_write_data_errors

    attr_accessor :unrecovered_write_data_errors

    attr_accessor :write_servo_errors

    attr_accessor :unrecovered_write_servo_errors

    attr_accessor :recovered_read_errors

    attr_accessor :unrecovered_read_errors

    attr_accessor :last_mount_unrecovered_write_errors

    attr_accessor :last_mount_unrecovered_read_errors

    attr_accessor :last_mount_mbytes_written

    attr_accessor :last_mount_mbytes_read

    attr_accessor :lifetime_mbytes_written

    attr_accessor :lifetime_mbytes_read

    attr_accessor :last_load_write_compression_ratio

    attr_accessor :last_load_read_compression_ratio

    attr_accessor :medium_mount_time

    attr_accessor :medium_ready_time

    attr_accessor :total_native_capacity

    attr_accessor :total_used_native_capacity

    attr_accessor :write_protect

    attr_accessor :worm

    attr_accessor :beginning_of_medium_passes

    attr_accessor :middle_of_tape_passes

    attr_accessor :read_compression_ratio

    attr_accessor :write_compression_ratio

    attr_accessor :mbytes_transferred_to_app_client

    attr_accessor :bytes_transferred_to_app_client

    attr_accessor :mbytes_read_from_medium

    attr_accessor :bytes_read_from_medium

    attr_accessor :mbytes_transferred_from_app_client

    attr_accessor :bytes_transferred_from_app_client

    attr_accessor :mbytes_written_to_medium

    attr_accessor :bytes_written_to_medium

    attr_accessor :data_compression_enabled

    attr_accessor :write_retries

    attr_accessor :write_perms

    attr_accessor :suspended_writes

    attr_accessor :fatal_suspended_writes

    attr_accessor :read_retries

    attr_accessor :read_perms

    attr_accessor :suspended_reads

    attr_accessor :fatal_suspended_reads

    attr_accessor :partition_0_remaining_capacity

    attr_accessor :partition_1_remaining_capacity

    attr_accessor :partition_0_maximum_capacity

    attr_accessor :partition_1_maximum_capacity

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'log_time' => :'log_time',
        :'barcode' => :'barcode',
        :'mounts' => :'mounts',
        :'datasets_written' => :'datasets_written',
        :'datasets_read' => :'datasets_read',
        :'recovered_write_data_errors' => :'recovered_write_data_errors',
        :'unrecovered_write_data_errors' => :'unrecovered_write_data_errors',
        :'write_servo_errors' => :'write_servo_errors',
        :'unrecovered_write_servo_errors' => :'unrecovered_write_servo_errors',
        :'recovered_read_errors' => :'recovered_read_errors',
        :'unrecovered_read_errors' => :'unrecovered_read_errors',
        :'last_mount_unrecovered_write_errors' => :'last_mount_unrecovered_write_errors',
        :'last_mount_unrecovered_read_errors' => :'last_mount_unrecovered_read_errors',
        :'last_mount_mbytes_written' => :'last_mount_mbytes_written',
        :'last_mount_mbytes_read' => :'last_mount_mbytes_read',
        :'lifetime_mbytes_written' => :'lifetime_mbytes_written',
        :'lifetime_mbytes_read' => :'lifetime_mbytes_read',
        :'last_load_write_compression_ratio' => :'last_load_write_compression_ratio',
        :'last_load_read_compression_ratio' => :'last_load_read_compression_ratio',
        :'medium_mount_time' => :'medium_mount_time',
        :'medium_ready_time' => :'medium_ready_time',
        :'total_native_capacity' => :'total_native_capacity',
        :'total_used_native_capacity' => :'total_used_native_capacity',
        :'write_protect' => :'write_protect',
        :'worm' => :'worm',
        :'beginning_of_medium_passes' => :'beginning_of_medium_passes',
        :'middle_of_tape_passes' => :'middle_of_tape_passes',
        :'read_compression_ratio' => :'read_compression_ratio',
        :'write_compression_ratio' => :'write_compression_ratio',
        :'mbytes_transferred_to_app_client' => :'mbytes_transferred_to_app_client',
        :'bytes_transferred_to_app_client' => :'bytes_transferred_to_app_client',
        :'mbytes_read_from_medium' => :'mbytes_read_from_medium',
        :'bytes_read_from_medium' => :'bytes_read_from_medium',
        :'mbytes_transferred_from_app_client' => :'mbytes_transferred_from_app_client',
        :'bytes_transferred_from_app_client' => :'bytes_transferred_from_app_client',
        :'mbytes_written_to_medium' => :'mbytes_written_to_medium',
        :'bytes_written_to_medium' => :'bytes_written_to_medium',
        :'data_compression_enabled' => :'data_compression_enabled',
        :'write_retries' => :'write_retries',
        :'write_perms' => :'write_perms',
        :'suspended_writes' => :'suspended_writes',
        :'fatal_suspended_writes' => :'fatal_suspended_writes',
        :'read_retries' => :'read_retries',
        :'read_perms' => :'read_perms',
        :'suspended_reads' => :'suspended_reads',
        :'fatal_suspended_reads' => :'fatal_suspended_reads',
        :'partition_0_remaining_capacity' => :'partition_0_remaining_capacity',
        :'partition_1_remaining_capacity' => :'partition_1_remaining_capacity',
        :'partition_0_maximum_capacity' => :'partition_0_maximum_capacity',
        :'partition_1_maximum_capacity' => :'partition_1_maximum_capacity'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'log_time' => :'String',
        :'barcode' => :'String',
        :'mounts' => :'Integer',
        :'datasets_written' => :'Integer',
        :'datasets_read' => :'Integer',
        :'recovered_write_data_errors' => :'Integer',
        :'unrecovered_write_data_errors' => :'Integer',
        :'write_servo_errors' => :'Integer',
        :'unrecovered_write_servo_errors' => :'Integer',
        :'recovered_read_errors' => :'Integer',
        :'unrecovered_read_errors' => :'Integer',
        :'last_mount_unrecovered_write_errors' => :'Integer',
        :'last_mount_unrecovered_read_errors' => :'Integer',
        :'last_mount_mbytes_written' => :'Integer',
        :'last_mount_mbytes_read' => :'Integer',
        :'lifetime_mbytes_written' => :'Integer',
        :'lifetime_mbytes_read' => :'Integer',
        :'last_load_write_compression_ratio' => :'Integer',
        :'last_load_read_compression_ratio' => :'Integer',
        :'medium_mount_time' => :'Integer',
        :'medium_ready_time' => :'Integer',
        :'total_native_capacity' => :'Integer',
        :'total_used_native_capacity' => :'Integer',
        :'write_protect' => :'Integer',
        :'worm' => :'Integer',
        :'beginning_of_medium_passes' => :'Integer',
        :'middle_of_tape_passes' => :'Integer',
        :'read_compression_ratio' => :'Integer',
        :'write_compression_ratio' => :'Integer',
        :'mbytes_transferred_to_app_client' => :'Integer',
        :'bytes_transferred_to_app_client' => :'Integer',
        :'mbytes_read_from_medium' => :'Integer',
        :'bytes_read_from_medium' => :'Integer',
        :'mbytes_transferred_from_app_client' => :'Integer',
        :'bytes_transferred_from_app_client' => :'Integer',
        :'mbytes_written_to_medium' => :'Integer',
        :'bytes_written_to_medium' => :'Integer',
        :'data_compression_enabled' => :'Integer',
        :'write_retries' => :'Integer',
        :'write_perms' => :'Integer',
        :'suspended_writes' => :'Integer',
        :'fatal_suspended_writes' => :'Integer',
        :'read_retries' => :'Integer',
        :'read_perms' => :'Integer',
        :'suspended_reads' => :'Integer',
        :'fatal_suspended_reads' => :'Integer',
        :'partition_0_remaining_capacity' => :'Integer',
        :'partition_1_remaining_capacity' => :'Integer',
        :'partition_0_maximum_capacity' => :'Integer',
        :'partition_1_maximum_capacity' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Nodeum::TapeStat` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Nodeum::TapeStat`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'log_time')
        self.log_time = attributes[:'log_time']
      end

      if attributes.key?(:'barcode')
        self.barcode = attributes[:'barcode']
      end

      if attributes.key?(:'mounts')
        self.mounts = attributes[:'mounts']
      end

      if attributes.key?(:'datasets_written')
        self.datasets_written = attributes[:'datasets_written']
      end

      if attributes.key?(:'datasets_read')
        self.datasets_read = attributes[:'datasets_read']
      end

      if attributes.key?(:'recovered_write_data_errors')
        self.recovered_write_data_errors = attributes[:'recovered_write_data_errors']
      end

      if attributes.key?(:'unrecovered_write_data_errors')
        self.unrecovered_write_data_errors = attributes[:'unrecovered_write_data_errors']
      end

      if attributes.key?(:'write_servo_errors')
        self.write_servo_errors = attributes[:'write_servo_errors']
      end

      if attributes.key?(:'unrecovered_write_servo_errors')
        self.unrecovered_write_servo_errors = attributes[:'unrecovered_write_servo_errors']
      end

      if attributes.key?(:'recovered_read_errors')
        self.recovered_read_errors = attributes[:'recovered_read_errors']
      end

      if attributes.key?(:'unrecovered_read_errors')
        self.unrecovered_read_errors = attributes[:'unrecovered_read_errors']
      end

      if attributes.key?(:'last_mount_unrecovered_write_errors')
        self.last_mount_unrecovered_write_errors = attributes[:'last_mount_unrecovered_write_errors']
      end

      if attributes.key?(:'last_mount_unrecovered_read_errors')
        self.last_mount_unrecovered_read_errors = attributes[:'last_mount_unrecovered_read_errors']
      end

      if attributes.key?(:'last_mount_mbytes_written')
        self.last_mount_mbytes_written = attributes[:'last_mount_mbytes_written']
      end

      if attributes.key?(:'last_mount_mbytes_read')
        self.last_mount_mbytes_read = attributes[:'last_mount_mbytes_read']
      end

      if attributes.key?(:'lifetime_mbytes_written')
        self.lifetime_mbytes_written = attributes[:'lifetime_mbytes_written']
      end

      if attributes.key?(:'lifetime_mbytes_read')
        self.lifetime_mbytes_read = attributes[:'lifetime_mbytes_read']
      end

      if attributes.key?(:'last_load_write_compression_ratio')
        self.last_load_write_compression_ratio = attributes[:'last_load_write_compression_ratio']
      end

      if attributes.key?(:'last_load_read_compression_ratio')
        self.last_load_read_compression_ratio = attributes[:'last_load_read_compression_ratio']
      end

      if attributes.key?(:'medium_mount_time')
        self.medium_mount_time = attributes[:'medium_mount_time']
      end

      if attributes.key?(:'medium_ready_time')
        self.medium_ready_time = attributes[:'medium_ready_time']
      end

      if attributes.key?(:'total_native_capacity')
        self.total_native_capacity = attributes[:'total_native_capacity']
      end

      if attributes.key?(:'total_used_native_capacity')
        self.total_used_native_capacity = attributes[:'total_used_native_capacity']
      end

      if attributes.key?(:'write_protect')
        self.write_protect = attributes[:'write_protect']
      end

      if attributes.key?(:'worm')
        self.worm = attributes[:'worm']
      end

      if attributes.key?(:'beginning_of_medium_passes')
        self.beginning_of_medium_passes = attributes[:'beginning_of_medium_passes']
      end

      if attributes.key?(:'middle_of_tape_passes')
        self.middle_of_tape_passes = attributes[:'middle_of_tape_passes']
      end

      if attributes.key?(:'read_compression_ratio')
        self.read_compression_ratio = attributes[:'read_compression_ratio']
      end

      if attributes.key?(:'write_compression_ratio')
        self.write_compression_ratio = attributes[:'write_compression_ratio']
      end

      if attributes.key?(:'mbytes_transferred_to_app_client')
        self.mbytes_transferred_to_app_client = attributes[:'mbytes_transferred_to_app_client']
      end

      if attributes.key?(:'bytes_transferred_to_app_client')
        self.bytes_transferred_to_app_client = attributes[:'bytes_transferred_to_app_client']
      end

      if attributes.key?(:'mbytes_read_from_medium')
        self.mbytes_read_from_medium = attributes[:'mbytes_read_from_medium']
      end

      if attributes.key?(:'bytes_read_from_medium')
        self.bytes_read_from_medium = attributes[:'bytes_read_from_medium']
      end

      if attributes.key?(:'mbytes_transferred_from_app_client')
        self.mbytes_transferred_from_app_client = attributes[:'mbytes_transferred_from_app_client']
      end

      if attributes.key?(:'bytes_transferred_from_app_client')
        self.bytes_transferred_from_app_client = attributes[:'bytes_transferred_from_app_client']
      end

      if attributes.key?(:'mbytes_written_to_medium')
        self.mbytes_written_to_medium = attributes[:'mbytes_written_to_medium']
      end

      if attributes.key?(:'bytes_written_to_medium')
        self.bytes_written_to_medium = attributes[:'bytes_written_to_medium']
      end

      if attributes.key?(:'data_compression_enabled')
        self.data_compression_enabled = attributes[:'data_compression_enabled']
      end

      if attributes.key?(:'write_retries')
        self.write_retries = attributes[:'write_retries']
      end

      if attributes.key?(:'write_perms')
        self.write_perms = attributes[:'write_perms']
      end

      if attributes.key?(:'suspended_writes')
        self.suspended_writes = attributes[:'suspended_writes']
      end

      if attributes.key?(:'fatal_suspended_writes')
        self.fatal_suspended_writes = attributes[:'fatal_suspended_writes']
      end

      if attributes.key?(:'read_retries')
        self.read_retries = attributes[:'read_retries']
      end

      if attributes.key?(:'read_perms')
        self.read_perms = attributes[:'read_perms']
      end

      if attributes.key?(:'suspended_reads')
        self.suspended_reads = attributes[:'suspended_reads']
      end

      if attributes.key?(:'fatal_suspended_reads')
        self.fatal_suspended_reads = attributes[:'fatal_suspended_reads']
      end

      if attributes.key?(:'partition_0_remaining_capacity')
        self.partition_0_remaining_capacity = attributes[:'partition_0_remaining_capacity']
      end

      if attributes.key?(:'partition_1_remaining_capacity')
        self.partition_1_remaining_capacity = attributes[:'partition_1_remaining_capacity']
      end

      if attributes.key?(:'partition_0_maximum_capacity')
        self.partition_0_maximum_capacity = attributes[:'partition_0_maximum_capacity']
      end

      if attributes.key?(:'partition_1_maximum_capacity')
        self.partition_1_maximum_capacity = attributes[:'partition_1_maximum_capacity']
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
          log_time == o.log_time &&
          barcode == o.barcode &&
          mounts == o.mounts &&
          datasets_written == o.datasets_written &&
          datasets_read == o.datasets_read &&
          recovered_write_data_errors == o.recovered_write_data_errors &&
          unrecovered_write_data_errors == o.unrecovered_write_data_errors &&
          write_servo_errors == o.write_servo_errors &&
          unrecovered_write_servo_errors == o.unrecovered_write_servo_errors &&
          recovered_read_errors == o.recovered_read_errors &&
          unrecovered_read_errors == o.unrecovered_read_errors &&
          last_mount_unrecovered_write_errors == o.last_mount_unrecovered_write_errors &&
          last_mount_unrecovered_read_errors == o.last_mount_unrecovered_read_errors &&
          last_mount_mbytes_written == o.last_mount_mbytes_written &&
          last_mount_mbytes_read == o.last_mount_mbytes_read &&
          lifetime_mbytes_written == o.lifetime_mbytes_written &&
          lifetime_mbytes_read == o.lifetime_mbytes_read &&
          last_load_write_compression_ratio == o.last_load_write_compression_ratio &&
          last_load_read_compression_ratio == o.last_load_read_compression_ratio &&
          medium_mount_time == o.medium_mount_time &&
          medium_ready_time == o.medium_ready_time &&
          total_native_capacity == o.total_native_capacity &&
          total_used_native_capacity == o.total_used_native_capacity &&
          write_protect == o.write_protect &&
          worm == o.worm &&
          beginning_of_medium_passes == o.beginning_of_medium_passes &&
          middle_of_tape_passes == o.middle_of_tape_passes &&
          read_compression_ratio == o.read_compression_ratio &&
          write_compression_ratio == o.write_compression_ratio &&
          mbytes_transferred_to_app_client == o.mbytes_transferred_to_app_client &&
          bytes_transferred_to_app_client == o.bytes_transferred_to_app_client &&
          mbytes_read_from_medium == o.mbytes_read_from_medium &&
          bytes_read_from_medium == o.bytes_read_from_medium &&
          mbytes_transferred_from_app_client == o.mbytes_transferred_from_app_client &&
          bytes_transferred_from_app_client == o.bytes_transferred_from_app_client &&
          mbytes_written_to_medium == o.mbytes_written_to_medium &&
          bytes_written_to_medium == o.bytes_written_to_medium &&
          data_compression_enabled == o.data_compression_enabled &&
          write_retries == o.write_retries &&
          write_perms == o.write_perms &&
          suspended_writes == o.suspended_writes &&
          fatal_suspended_writes == o.fatal_suspended_writes &&
          read_retries == o.read_retries &&
          read_perms == o.read_perms &&
          suspended_reads == o.suspended_reads &&
          fatal_suspended_reads == o.fatal_suspended_reads &&
          partition_0_remaining_capacity == o.partition_0_remaining_capacity &&
          partition_1_remaining_capacity == o.partition_1_remaining_capacity &&
          partition_0_maximum_capacity == o.partition_0_maximum_capacity &&
          partition_1_maximum_capacity == o.partition_1_maximum_capacity
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [log_time, barcode, mounts, datasets_written, datasets_read, recovered_write_data_errors, unrecovered_write_data_errors, write_servo_errors, unrecovered_write_servo_errors, recovered_read_errors, unrecovered_read_errors, last_mount_unrecovered_write_errors, last_mount_unrecovered_read_errors, last_mount_mbytes_written, last_mount_mbytes_read, lifetime_mbytes_written, lifetime_mbytes_read, last_load_write_compression_ratio, last_load_read_compression_ratio, medium_mount_time, medium_ready_time, total_native_capacity, total_used_native_capacity, write_protect, worm, beginning_of_medium_passes, middle_of_tape_passes, read_compression_ratio, write_compression_ratio, mbytes_transferred_to_app_client, bytes_transferred_to_app_client, mbytes_read_from_medium, bytes_read_from_medium, mbytes_transferred_from_app_client, bytes_transferred_from_app_client, mbytes_written_to_medium, bytes_written_to_medium, data_compression_enabled, write_retries, write_perms, suspended_writes, fatal_suspended_writes, read_retries, read_perms, suspended_reads, fatal_suspended_reads, partition_0_remaining_capacity, partition_1_remaining_capacity, partition_0_maximum_capacity, partition_1_maximum_capacity].hash
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
