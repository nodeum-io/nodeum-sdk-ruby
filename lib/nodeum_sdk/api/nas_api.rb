=begin
#Nodeum API

## About  This document describes the Nodeum API version 2:  If you are looking for any information about the product itself, reach the product website https://www.nodeum.io. You can also contact us at this email address : info@nodeum.io  # Filter parameters When browsing a list of items, multiple filter parameters may be applied. Some operators can be added to the value as a prefix:  - `=` value is equal. Default operator, may be omitted  - `!=` value is different  - `>` greater than  - `>=` greater than or equal  - `<` lower than  - `>=` lower than or equal  - `><` included in list, items should be separated by `|`  - `!><` not included in list, items should be separated by `|`  - `~` pattern matching, may include `%` (any characters) and `_` (one character)  - `!~` pattern not matching, may include `%` (any characters) and `_` (one character)  

The version of the OpenAPI document: 2.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'cgi'

module Nodeum
  class NasApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a new NAS.
    # **API Key Scope**: nas / create
    # @param nas_body [Nas] 
    # @param [Hash] opts the optional parameters
    # @return [Nas]
    def create_nas(nas_body, opts = {})
      data, _status_code, _headers = create_nas_with_http_info(nas_body, opts)
      data
    end

    # Creates a new NAS.
    # **API Key Scope**: nas / create
    # @param nas_body [Nas] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Nas, Integer, Hash)>] Nas data, response status code and response headers
    def create_nas_with_http_info(nas_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NasApi.create_nas ...'
      end
      # verify the required parameter 'nas_body' is set
      if @api_client.config.client_side_validation && nas_body.nil?
        fail ArgumentError, "Missing the required parameter 'nas_body' when calling NasApi.create_nas"
      end
      # resource path
      local_var_path = '/nas'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(nas_body) 

      # return_type
      return_type = opts[:return_type] || 'Nas' 

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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NasApi#create_nas\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Destroys a specific NAS.
    # **API Key Scope**: nas / destroy
    # @param nas_id [String] Numeric ID or name of NAS.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def destroy_nas(nas_id, opts = {})
      destroy_nas_with_http_info(nas_id, opts)
      nil
    end

    # Destroys a specific NAS.
    # **API Key Scope**: nas / destroy
    # @param nas_id [String] Numeric ID or name of NAS.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def destroy_nas_with_http_info(nas_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NasApi.destroy_nas ...'
      end
      # verify the required parameter 'nas_id' is set
      if @api_client.config.client_side_validation && nas_id.nil?
        fail ArgumentError, "Missing the required parameter 'nas_id' when calling NasApi.destroy_nas"
      end
      # resource path
      local_var_path = '/nas/{nas_id}'.sub('{' + 'nas_id' + '}', CGI.escape(nas_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

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

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NasApi#destroy_nas\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lists all NAS.
    # **API Key Scope**: nas / index
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of items to display for pagination.
    # @option opts [Integer] :offset The number of items to skip for pagination.
    # @option opts [Array<String>] :sort_by Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;.
    # @option opts [String] :id Filter on id
    # @option opts [String] :name Filter on name
    # @option opts [String] :comment Filter on comment
    # @option opts [String] :host Filter on host
    # @option opts [String] :type Filter on type
    # @option opts [String] :price Filter on price
    # @return [NasCollection]
    def index_nas(opts = {})
      data, _status_code, _headers = index_nas_with_http_info(opts)
      data
    end

    # Lists all NAS.
    # **API Key Scope**: nas / index
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of items to display for pagination.
    # @option opts [Integer] :offset The number of items to skip for pagination.
    # @option opts [Array<String>] :sort_by Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;.
    # @option opts [String] :id Filter on id
    # @option opts [String] :name Filter on name
    # @option opts [String] :comment Filter on comment
    # @option opts [String] :host Filter on host
    # @option opts [String] :type Filter on type
    # @option opts [String] :price Filter on price
    # @return [Array<(NasCollection, Integer, Hash)>] NasCollection data, response status code and response headers
    def index_nas_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NasApi.index_nas ...'
      end
      # resource path
      local_var_path = '/nas'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'sort_by'] = @api_client.build_collection_param(opts[:'sort_by'], :pipe) if !opts[:'sort_by'].nil?
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'comment'] = opts[:'comment'] if !opts[:'comment'].nil?
      query_params[:'host'] = opts[:'host'] if !opts[:'host'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'price'] = opts[:'price'] if !opts[:'price'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'NasCollection' 

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
        @api_client.config.logger.debug "API called: NasApi#index_nas\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Displays a specific NAS.
    # **API Key Scope**: nas / show
    # @param nas_id [String] Numeric ID or name of NAS.
    # @param [Hash] opts the optional parameters
    # @return [Nas]
    def show_nas(nas_id, opts = {})
      data, _status_code, _headers = show_nas_with_http_info(nas_id, opts)
      data
    end

    # Displays a specific NAS.
    # **API Key Scope**: nas / show
    # @param nas_id [String] Numeric ID or name of NAS.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Nas, Integer, Hash)>] Nas data, response status code and response headers
    def show_nas_with_http_info(nas_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NasApi.show_nas ...'
      end
      # verify the required parameter 'nas_id' is set
      if @api_client.config.client_side_validation && nas_id.nil?
        fail ArgumentError, "Missing the required parameter 'nas_id' when calling NasApi.show_nas"
      end
      # resource path
      local_var_path = '/nas/{nas_id}'.sub('{' + 'nas_id' + '}', CGI.escape(nas_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Nas' 

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
        @api_client.config.logger.debug "API called: NasApi#show_nas\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a specific NAS.
    # **API Key Scope**: nas / update
    # @param nas_id [String] Numeric ID or name of NAS.
    # @param nas_body [Nas] 
    # @param [Hash] opts the optional parameters
    # @return [Nas]
    def update_nas(nas_id, nas_body, opts = {})
      data, _status_code, _headers = update_nas_with_http_info(nas_id, nas_body, opts)
      data
    end

    # Updates a specific NAS.
    # **API Key Scope**: nas / update
    # @param nas_id [String] Numeric ID or name of NAS.
    # @param nas_body [Nas] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Nas, Integer, Hash)>] Nas data, response status code and response headers
    def update_nas_with_http_info(nas_id, nas_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NasApi.update_nas ...'
      end
      # verify the required parameter 'nas_id' is set
      if @api_client.config.client_side_validation && nas_id.nil?
        fail ArgumentError, "Missing the required parameter 'nas_id' when calling NasApi.update_nas"
      end
      # verify the required parameter 'nas_body' is set
      if @api_client.config.client_side_validation && nas_body.nil?
        fail ArgumentError, "Missing the required parameter 'nas_body' when calling NasApi.update_nas"
      end
      # resource path
      local_var_path = '/nas/{nas_id}'.sub('{' + 'nas_id' + '}', CGI.escape(nas_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(nas_body) 

      # return_type
      return_type = opts[:return_type] || 'Nas' 

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

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NasApi#update_nas\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end