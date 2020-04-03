=begin
#Nodeum API

## About  This document describes the Nodeum API version 2:  If you are looking for any information about the product itself, reach the product website https://www.nodeum.io. You can also contact us at this email address : info@nodeum.io  # Filter parameters When browsing a list of items, multiple filter parameters may be applied. Some operators can be added to the value as a prefix:  - `=` value is equal. Default operator, may be omitted  - `!=` value is different  - `>` greater than  - `>=` greater than or equal  - `<` lower than  - `>=` lower than or equal  - `><` included in list, items should be separated by `|`  - `!><` not included in list, items should be separated by `|`  - `~` pattern matching, may include `%` (any characters) and `_` (one character)  - `!~` pattern not matching, may include `%` (any characters) and `_` (one character)  

The version of the OpenAPI document: 2.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'cgi'

module Nodeum
  class StatisticsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # TODO
    # **API Key Scope**: statistics / by_file_extension
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q Solr query
    # @option opts [String] :date_attr Type of date to facet on
    # @return [ByFileExtensionFacet]
    def statistics_by_file_extension(opts = {})
      data, _status_code, _headers = statistics_by_file_extension_with_http_info(opts)
      data
    end

    # TODO
    # **API Key Scope**: statistics / by_file_extension
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q Solr query
    # @option opts [String] :date_attr Type of date to facet on
    # @return [Array<(ByFileExtensionFacet, Integer, Hash)>] ByFileExtensionFacet data, response status code and response headers
    def statistics_by_file_extension_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatisticsApi.statistics_by_file_extension ...'
      end
      allowable_values = ["file_change_date", "file_modification_date", "file_access_date"]
      if @api_client.config.client_side_validation && opts[:'date_attr'] && !allowable_values.include?(opts[:'date_attr'])
        fail ArgumentError, "invalid value for \"date_attr\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/statistics/by_file_extension'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'date_attr'] = opts[:'date_attr'] if !opts[:'date_attr'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ByFileExtensionFacet' 

      # auth_names
      auth_names = opts[:auth_names] || ['BasicAuth', 'BearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatisticsApi#statistics_by_file_extension\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # TODO
    # **API Key Scope**: statistics / by_group_owner
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q Solr query
    # @option opts [String] :date_attr Type of date to facet on
    # @return [ByGroupOwnerFacet]
    def statistics_by_group_owner(opts = {})
      data, _status_code, _headers = statistics_by_group_owner_with_http_info(opts)
      data
    end

    # TODO
    # **API Key Scope**: statistics / by_group_owner
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q Solr query
    # @option opts [String] :date_attr Type of date to facet on
    # @return [Array<(ByGroupOwnerFacet, Integer, Hash)>] ByGroupOwnerFacet data, response status code and response headers
    def statistics_by_group_owner_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatisticsApi.statistics_by_group_owner ...'
      end
      allowable_values = ["file_change_date", "file_modification_date", "file_access_date"]
      if @api_client.config.client_side_validation && opts[:'date_attr'] && !allowable_values.include?(opts[:'date_attr'])
        fail ArgumentError, "invalid value for \"date_attr\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/statistics/by_group_owner'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'date_attr'] = opts[:'date_attr'] if !opts[:'date_attr'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ByGroupOwnerFacet' 

      # auth_names
      auth_names = opts[:auth_names] || ['BasicAuth', 'BearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatisticsApi#statistics_by_group_owner\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # TODO
    # **API Key Scope**: statistics / by_primary_name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q Solr query
    # @option opts [String] :date_attr Type of date to facet on
    # @return [ByPrimaryFacet]
    def statistics_by_primary_name(opts = {})
      data, _status_code, _headers = statistics_by_primary_name_with_http_info(opts)
      data
    end

    # TODO
    # **API Key Scope**: statistics / by_primary_name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q Solr query
    # @option opts [String] :date_attr Type of date to facet on
    # @return [Array<(ByPrimaryFacet, Integer, Hash)>] ByPrimaryFacet data, response status code and response headers
    def statistics_by_primary_name_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatisticsApi.statistics_by_primary_name ...'
      end
      allowable_values = ["file_change_date", "file_modification_date", "file_access_date"]
      if @api_client.config.client_side_validation && opts[:'date_attr'] && !allowable_values.include?(opts[:'date_attr'])
        fail ArgumentError, "invalid value for \"date_attr\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/statistics/by_primary_name'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'date_attr'] = opts[:'date_attr'] if !opts[:'date_attr'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ByPrimaryFacet' 

      # auth_names
      auth_names = opts[:auth_names] || ['BasicAuth', 'BearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatisticsApi#statistics_by_primary_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # TODO
    # **API Key Scope**: statistics / by_secondary_storage
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q Solr query
    # @option opts [String] :date_attr Type of date to facet on
    # @return [BySecondaryFacet]
    def statistics_by_secondary_storage(opts = {})
      data, _status_code, _headers = statistics_by_secondary_storage_with_http_info(opts)
      data
    end

    # TODO
    # **API Key Scope**: statistics / by_secondary_storage
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q Solr query
    # @option opts [String] :date_attr Type of date to facet on
    # @return [Array<(BySecondaryFacet, Integer, Hash)>] BySecondaryFacet data, response status code and response headers
    def statistics_by_secondary_storage_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatisticsApi.statistics_by_secondary_storage ...'
      end
      allowable_values = ["file_change_date", "file_modification_date", "file_access_date"]
      if @api_client.config.client_side_validation && opts[:'date_attr'] && !allowable_values.include?(opts[:'date_attr'])
        fail ArgumentError, "invalid value for \"date_attr\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/statistics/by_secondary_storage'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'date_attr'] = opts[:'date_attr'] if !opts[:'date_attr'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'BySecondaryFacet' 

      # auth_names
      auth_names = opts[:auth_names] || ['BasicAuth', 'BearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatisticsApi#statistics_by_secondary_storage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # TODO
    # **API Key Scope**: statistics / by_size
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q Solr query
    # @option opts [String] :date_attr Type of date to facet on
    # @return [BySizeFacet]
    def statistics_by_size(opts = {})
      data, _status_code, _headers = statistics_by_size_with_http_info(opts)
      data
    end

    # TODO
    # **API Key Scope**: statistics / by_size
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q Solr query
    # @option opts [String] :date_attr Type of date to facet on
    # @return [Array<(BySizeFacet, Integer, Hash)>] BySizeFacet data, response status code and response headers
    def statistics_by_size_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatisticsApi.statistics_by_size ...'
      end
      allowable_values = ["file_change_date", "file_modification_date", "file_access_date"]
      if @api_client.config.client_side_validation && opts[:'date_attr'] && !allowable_values.include?(opts[:'date_attr'])
        fail ArgumentError, "invalid value for \"date_attr\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/statistics/by_size'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'date_attr'] = opts[:'date_attr'] if !opts[:'date_attr'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'BySizeFacet' 

      # auth_names
      auth_names = opts[:auth_names] || ['BasicAuth', 'BearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatisticsApi#statistics_by_size\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # TODO
    # **API Key Scope**: statistics / by_user_owner
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q Solr query
    # @option opts [String] :date_attr Type of date to facet on
    # @return [ByUserOwnerFacet]
    def statistics_by_user_owner(opts = {})
      data, _status_code, _headers = statistics_by_user_owner_with_http_info(opts)
      data
    end

    # TODO
    # **API Key Scope**: statistics / by_user_owner
    # @param [Hash] opts the optional parameters
    # @option opts [String] :q Solr query
    # @option opts [String] :date_attr Type of date to facet on
    # @return [Array<(ByUserOwnerFacet, Integer, Hash)>] ByUserOwnerFacet data, response status code and response headers
    def statistics_by_user_owner_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StatisticsApi.statistics_by_user_owner ...'
      end
      allowable_values = ["file_change_date", "file_modification_date", "file_access_date"]
      if @api_client.config.client_side_validation && opts[:'date_attr'] && !allowable_values.include?(opts[:'date_attr'])
        fail ArgumentError, "invalid value for \"date_attr\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/statistics/by_user_owner'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'q'] = opts[:'q'] if !opts[:'q'].nil?
      query_params[:'date_attr'] = opts[:'date_attr'] if !opts[:'date_attr'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ByUserOwnerFacet' 

      # auth_names
      auth_names = opts[:auth_names] || ['BasicAuth', 'BearerAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatisticsApi#statistics_by_user_owner\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
