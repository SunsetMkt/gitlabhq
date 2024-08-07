=begin
#OpenBao API

#HTTP API that gives you full access to OpenBao. All API routes are prefixed with `/v1/`.

The version of the OpenAPI document: 2.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'date'
require 'time'

module OpenbaoClient
  class JwtWriteRoleRequest
    # Comma-separated list of allowed values for redirect_uri
    attr_accessor :allowed_redirect_uris

    # Comma-separated list of 'aud' claims that are valid for login; any match is sufficient
    attr_accessor :bound_audiences

    # Use \"token_bound_cidrs\" instead. If this and \"token_bound_cidrs\" are both specified, only \"token_bound_cidrs\" will be used.
    attr_accessor :bound_cidrs

    # Map of claims/values which must match for login
    attr_accessor :bound_claims

    # How to interpret values in the map of claims/values (which must match for login): allowed values are 'string' or 'glob'
    attr_accessor :bound_claims_type

    # The 'sub' claim that is valid for login. Optional.
    attr_accessor :bound_subject

    # Mappings of claims (key) that will be copied to a metadata field (value)
    attr_accessor :claim_mappings

    # Duration in seconds of leeway when validating all claims to account for clock skew. Defaults to 60 (1 minute) if set to 0 and can be disabled if set to -1.
    attr_accessor :clock_skew_leeway

    # Duration in seconds of leeway when validating expiration of a token to account for clock skew. Defaults to 150 (2.5 minutes) if set to 0 and can be disabled if set to -1.
    attr_accessor :expiration_leeway

    # The claim to use for the Identity group alias names
    attr_accessor :groups_claim

    # Specifies the allowable elapsed time in seconds since the last time the user was actively authenticated.
    attr_accessor :max_age

    # Use \"token_max_ttl\" instead. If this and \"token_max_ttl\" are both specified, only \"token_max_ttl\" will be used.
    attr_accessor :max_ttl

    # Duration in seconds of leeway when validating not before values of a token to account for clock skew. Defaults to 150 (2.5 minutes) if set to 0 and can be disabled if set to -1.
    attr_accessor :not_before_leeway

    # Use \"token_num_uses\" instead. If this and \"token_num_uses\" are both specified, only \"token_num_uses\" will be used.
    attr_accessor :num_uses

    # Comma-separated list of OIDC scopes
    attr_accessor :oidc_scopes

    # Use \"token_period\" instead. If this and \"token_period\" are both specified, only \"token_period\" will be used.
    attr_accessor :period

    # Use \"token_policies\" instead. If this and \"token_policies\" are both specified, only \"token_policies\" will be used.
    attr_accessor :policies

    # Type of the role, either 'jwt' or 'oidc'.
    attr_accessor :role_type

    # Comma separated string or JSON list of CIDR blocks. If set, specifies the blocks of IP addresses which are allowed to use the generated token.
    attr_accessor :token_bound_cidrs

    # If set, tokens created via this role carry an explicit maximum TTL. During renewal, the current maximum TTL values of the role and the mount are not checked for changes, and any updates to these values will have no effect on the token being renewed.
    attr_accessor :token_explicit_max_ttl

    # The maximum lifetime of the generated token
    attr_accessor :token_max_ttl

    # If true, the 'default' policy will not automatically be added to generated tokens
    attr_accessor :token_no_default_policy

    # The maximum number of times a token may be used, a value of zero means unlimited
    attr_accessor :token_num_uses

    # If set, tokens created via this role will have no max lifetime; instead, their renewal period will be fixed to this value. This takes an integer number of seconds, or a string duration (e.g. \"24h\").
    attr_accessor :token_period

    # Comma-separated list of policies
    attr_accessor :token_policies

    # If true, CIDRs for the token will be strictly bound to the source IP address of the login request
    attr_accessor :token_strictly_bind_ip

    # The initial ttl of the token to generate
    attr_accessor :token_ttl

    # The type of token to generate, service or batch
    attr_accessor :token_type

    # Use \"token_ttl\" instead. If this and \"token_ttl\" are both specified, only \"token_ttl\" will be used.
    attr_accessor :ttl

    # The claim to use for the Identity entity alias name
    attr_accessor :user_claim

    # If true, the user_claim value will use JSON pointer syntax for referencing claims.
    attr_accessor :user_claim_json_pointer

    # Log received OIDC tokens and claims when debug-level logging is active. Not recommended in production since sensitive information may be present in OIDC responses.
    attr_accessor :verbose_oidc_logging

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'allowed_redirect_uris' => :'allowed_redirect_uris',
        :'bound_audiences' => :'bound_audiences',
        :'bound_cidrs' => :'bound_cidrs',
        :'bound_claims' => :'bound_claims',
        :'bound_claims_type' => :'bound_claims_type',
        :'bound_subject' => :'bound_subject',
        :'claim_mappings' => :'claim_mappings',
        :'clock_skew_leeway' => :'clock_skew_leeway',
        :'expiration_leeway' => :'expiration_leeway',
        :'groups_claim' => :'groups_claim',
        :'max_age' => :'max_age',
        :'max_ttl' => :'max_ttl',
        :'not_before_leeway' => :'not_before_leeway',
        :'num_uses' => :'num_uses',
        :'oidc_scopes' => :'oidc_scopes',
        :'period' => :'period',
        :'policies' => :'policies',
        :'role_type' => :'role_type',
        :'token_bound_cidrs' => :'token_bound_cidrs',
        :'token_explicit_max_ttl' => :'token_explicit_max_ttl',
        :'token_max_ttl' => :'token_max_ttl',
        :'token_no_default_policy' => :'token_no_default_policy',
        :'token_num_uses' => :'token_num_uses',
        :'token_period' => :'token_period',
        :'token_policies' => :'token_policies',
        :'token_strictly_bind_ip' => :'token_strictly_bind_ip',
        :'token_ttl' => :'token_ttl',
        :'token_type' => :'token_type',
        :'ttl' => :'ttl',
        :'user_claim' => :'user_claim',
        :'user_claim_json_pointer' => :'user_claim_json_pointer',
        :'verbose_oidc_logging' => :'verbose_oidc_logging'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'allowed_redirect_uris' => :'Array<String>',
        :'bound_audiences' => :'Array<String>',
        :'bound_cidrs' => :'Array<String>',
        :'bound_claims' => :'Object',
        :'bound_claims_type' => :'String',
        :'bound_subject' => :'String',
        :'claim_mappings' => :'Object',
        :'clock_skew_leeway' => :'Integer',
        :'expiration_leeway' => :'Integer',
        :'groups_claim' => :'String',
        :'max_age' => :'Integer',
        :'max_ttl' => :'Integer',
        :'not_before_leeway' => :'Integer',
        :'num_uses' => :'Integer',
        :'oidc_scopes' => :'Array<String>',
        :'period' => :'Integer',
        :'policies' => :'Array<String>',
        :'role_type' => :'String',
        :'token_bound_cidrs' => :'Array<String>',
        :'token_explicit_max_ttl' => :'Integer',
        :'token_max_ttl' => :'Integer',
        :'token_no_default_policy' => :'Boolean',
        :'token_num_uses' => :'Integer',
        :'token_period' => :'Integer',
        :'token_policies' => :'Array<String>',
        :'token_strictly_bind_ip' => :'Boolean',
        :'token_ttl' => :'Integer',
        :'token_type' => :'String',
        :'ttl' => :'Integer',
        :'user_claim' => :'String',
        :'user_claim_json_pointer' => :'Boolean',
        :'verbose_oidc_logging' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenbaoClient::JwtWriteRoleRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenbaoClient::JwtWriteRoleRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'allowed_redirect_uris')
        if (value = attributes[:'allowed_redirect_uris']).is_a?(Array)
          self.allowed_redirect_uris = value
        end
      end

      if attributes.key?(:'bound_audiences')
        if (value = attributes[:'bound_audiences']).is_a?(Array)
          self.bound_audiences = value
        end
      end

      if attributes.key?(:'bound_cidrs')
        if (value = attributes[:'bound_cidrs']).is_a?(Array)
          self.bound_cidrs = value
        end
      end

      if attributes.key?(:'bound_claims')
        self.bound_claims = attributes[:'bound_claims']
      end

      if attributes.key?(:'bound_claims_type')
        self.bound_claims_type = attributes[:'bound_claims_type']
      else
        self.bound_claims_type = 'string'
      end

      if attributes.key?(:'bound_subject')
        self.bound_subject = attributes[:'bound_subject']
      end

      if attributes.key?(:'claim_mappings')
        self.claim_mappings = attributes[:'claim_mappings']
      end

      if attributes.key?(:'clock_skew_leeway')
        self.clock_skew_leeway = attributes[:'clock_skew_leeway']
      end

      if attributes.key?(:'expiration_leeway')
        self.expiration_leeway = attributes[:'expiration_leeway']
      else
        self.expiration_leeway = 150
      end

      if attributes.key?(:'groups_claim')
        self.groups_claim = attributes[:'groups_claim']
      end

      if attributes.key?(:'max_age')
        self.max_age = attributes[:'max_age']
      end

      if attributes.key?(:'max_ttl')
        self.max_ttl = attributes[:'max_ttl']
      end

      if attributes.key?(:'not_before_leeway')
        self.not_before_leeway = attributes[:'not_before_leeway']
      else
        self.not_before_leeway = 150
      end

      if attributes.key?(:'num_uses')
        self.num_uses = attributes[:'num_uses']
      end

      if attributes.key?(:'oidc_scopes')
        if (value = attributes[:'oidc_scopes']).is_a?(Array)
          self.oidc_scopes = value
        end
      end

      if attributes.key?(:'period')
        self.period = attributes[:'period']
      end

      if attributes.key?(:'policies')
        if (value = attributes[:'policies']).is_a?(Array)
          self.policies = value
        end
      end

      if attributes.key?(:'role_type')
        self.role_type = attributes[:'role_type']
      end

      if attributes.key?(:'token_bound_cidrs')
        if (value = attributes[:'token_bound_cidrs']).is_a?(Array)
          self.token_bound_cidrs = value
        end
      end

      if attributes.key?(:'token_explicit_max_ttl')
        self.token_explicit_max_ttl = attributes[:'token_explicit_max_ttl']
      end

      if attributes.key?(:'token_max_ttl')
        self.token_max_ttl = attributes[:'token_max_ttl']
      end

      if attributes.key?(:'token_no_default_policy')
        self.token_no_default_policy = attributes[:'token_no_default_policy']
      end

      if attributes.key?(:'token_num_uses')
        self.token_num_uses = attributes[:'token_num_uses']
      end

      if attributes.key?(:'token_period')
        self.token_period = attributes[:'token_period']
      end

      if attributes.key?(:'token_policies')
        if (value = attributes[:'token_policies']).is_a?(Array)
          self.token_policies = value
        end
      end

      if attributes.key?(:'token_strictly_bind_ip')
        self.token_strictly_bind_ip = attributes[:'token_strictly_bind_ip']
      end

      if attributes.key?(:'token_ttl')
        self.token_ttl = attributes[:'token_ttl']
      end

      if attributes.key?(:'token_type')
        self.token_type = attributes[:'token_type']
      else
        self.token_type = 'default-service'
      end

      if attributes.key?(:'ttl')
        self.ttl = attributes[:'ttl']
      end

      if attributes.key?(:'user_claim')
        self.user_claim = attributes[:'user_claim']
      end

      if attributes.key?(:'user_claim_json_pointer')
        self.user_claim_json_pointer = attributes[:'user_claim_json_pointer']
      end

      if attributes.key?(:'verbose_oidc_logging')
        self.verbose_oidc_logging = attributes[:'verbose_oidc_logging']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          allowed_redirect_uris == o.allowed_redirect_uris &&
          bound_audiences == o.bound_audiences &&
          bound_cidrs == o.bound_cidrs &&
          bound_claims == o.bound_claims &&
          bound_claims_type == o.bound_claims_type &&
          bound_subject == o.bound_subject &&
          claim_mappings == o.claim_mappings &&
          clock_skew_leeway == o.clock_skew_leeway &&
          expiration_leeway == o.expiration_leeway &&
          groups_claim == o.groups_claim &&
          max_age == o.max_age &&
          max_ttl == o.max_ttl &&
          not_before_leeway == o.not_before_leeway &&
          num_uses == o.num_uses &&
          oidc_scopes == o.oidc_scopes &&
          period == o.period &&
          policies == o.policies &&
          role_type == o.role_type &&
          token_bound_cidrs == o.token_bound_cidrs &&
          token_explicit_max_ttl == o.token_explicit_max_ttl &&
          token_max_ttl == o.token_max_ttl &&
          token_no_default_policy == o.token_no_default_policy &&
          token_num_uses == o.token_num_uses &&
          token_period == o.token_period &&
          token_policies == o.token_policies &&
          token_strictly_bind_ip == o.token_strictly_bind_ip &&
          token_ttl == o.token_ttl &&
          token_type == o.token_type &&
          ttl == o.ttl &&
          user_claim == o.user_claim &&
          user_claim_json_pointer == o.user_claim_json_pointer &&
          verbose_oidc_logging == o.verbose_oidc_logging
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [allowed_redirect_uris, bound_audiences, bound_cidrs, bound_claims, bound_claims_type, bound_subject, claim_mappings, clock_skew_leeway, expiration_leeway, groups_claim, max_age, max_ttl, not_before_leeway, num_uses, oidc_scopes, period, policies, role_type, token_bound_cidrs, token_explicit_max_ttl, token_max_ttl, token_no_default_policy, token_num_uses, token_period, token_policies, token_strictly_bind_ip, token_ttl, token_type, ttl, user_claim, user_claim_json_pointer, verbose_oidc_logging].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
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
        # models (e.g. Pet) or oneOf
        klass = OpenbaoClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
