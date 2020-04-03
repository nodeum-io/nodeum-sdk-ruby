=begin
#Nodeum API

## About  This document describes the Nodeum API version 2:  If you are looking for any information about the product itself, reach the product website https://www.nodeum.io. You can also contact us at this email address : info@nodeum.io  # Filter parameters When browsing a list of items, multiple filter parameters may be applied. Some operators can be added to the value as a prefix:  - `=` value is equal. Default operator, may be omitted  - `!=` value is different  - `>` greater than  - `>=` greater than or equal  - `<` lower than  - `>=` lower than or equal  - `><` included in list, items should be separated by `|`  - `!><` not included in list, items should be separated by `|`  - `~` pattern matching, may include `%` (any characters) and `_` (one character)  - `!~` pattern not matching, may include `%` (any characters) and `_` (one character)  

The version of the OpenAPI document: 2.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'cgi'

module Nodeum
  class TaskSourcesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a new task source.
    # **API Key Scope**: task_sources / create
    # @param task_id [String] Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID.
    # @param task_source_body [TaskSourceUp] 
    # @param [Hash] opts the optional parameters
    # @return [TaskSourceDown]
    def create_task_source(task_id, task_source_body, opts = {})
      data, _status_code, _headers = create_task_source_with_http_info(task_id, task_source_body, opts)
      data
    end

    # Creates a new task source.
    # **API Key Scope**: task_sources / create
    # @param task_id [String] Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID.
    # @param task_source_body [TaskSourceUp] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TaskSourceDown, Integer, Hash)>] TaskSourceDown data, response status code and response headers
    def create_task_source_with_http_info(task_id, task_source_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaskSourcesApi.create_task_source ...'
      end
      # verify the required parameter 'task_id' is set
      if @api_client.config.client_side_validation && task_id.nil?
        fail ArgumentError, "Missing the required parameter 'task_id' when calling TaskSourcesApi.create_task_source"
      end
      # verify the required parameter 'task_source_body' is set
      if @api_client.config.client_side_validation && task_source_body.nil?
        fail ArgumentError, "Missing the required parameter 'task_source_body' when calling TaskSourcesApi.create_task_source"
      end
      # resource path
      local_var_path = '/tasks/{task_id}/task_sources'.sub('{' + 'task_id' + '}', CGI.escape(task_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(task_source_body) 

      # return_type
      return_type = opts[:return_type] || 'TaskSourceDown' 

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
        @api_client.config.logger.debug "API called: TaskSourcesApi#create_task_source\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Destroys a specific task source.
    # **API Key Scope**: task_sources / destroy
    # @param task_id [String] Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID.
    # @param task_source_id [Integer] Numeric ID of task source.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def destroy_task_source(task_id, task_source_id, opts = {})
      destroy_task_source_with_http_info(task_id, task_source_id, opts)
      nil
    end

    # Destroys a specific task source.
    # **API Key Scope**: task_sources / destroy
    # @param task_id [String] Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID.
    # @param task_source_id [Integer] Numeric ID of task source.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def destroy_task_source_with_http_info(task_id, task_source_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaskSourcesApi.destroy_task_source ...'
      end
      # verify the required parameter 'task_id' is set
      if @api_client.config.client_side_validation && task_id.nil?
        fail ArgumentError, "Missing the required parameter 'task_id' when calling TaskSourcesApi.destroy_task_source"
      end
      # verify the required parameter 'task_source_id' is set
      if @api_client.config.client_side_validation && task_source_id.nil?
        fail ArgumentError, "Missing the required parameter 'task_source_id' when calling TaskSourcesApi.destroy_task_source"
      end
      # resource path
      local_var_path = '/tasks/{task_id}/task_sources/{task_source_id}'.sub('{' + 'task_id' + '}', CGI.escape(task_id.to_s)).sub('{' + 'task_source_id' + '}', CGI.escape(task_source_id.to_s))

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
        @api_client.config.logger.debug "API called: TaskSourcesApi#destroy_task_source\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lists all task sources.
    # **API Key Scope**: task_sources / index
    # @param task_id [String] Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of items to display for pagination.
    # @option opts [Integer] :offset The number of items to skip for pagination.
    # @option opts [Array<String>] :sort_by Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;.
    # @option opts [String] :id Filter on id
    # @option opts [String] :file_id Filter on file id
    # @option opts [String] :import_file_id Filter on import file id
    # @option opts [String] :tape_id Filter on tape id
    # @option opts [String] :pool_id Filter on a pool id
    # @return [TaskSourceCollection]
    def index_task_sources(task_id, opts = {})
      data, _status_code, _headers = index_task_sources_with_http_info(task_id, opts)
      data
    end

    # Lists all task sources.
    # **API Key Scope**: task_sources / index
    # @param task_id [String] Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of items to display for pagination.
    # @option opts [Integer] :offset The number of items to skip for pagination.
    # @option opts [Array<String>] :sort_by Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;.
    # @option opts [String] :id Filter on id
    # @option opts [String] :file_id Filter on file id
    # @option opts [String] :import_file_id Filter on import file id
    # @option opts [String] :tape_id Filter on tape id
    # @option opts [String] :pool_id Filter on a pool id
    # @return [Array<(TaskSourceCollection, Integer, Hash)>] TaskSourceCollection data, response status code and response headers
    def index_task_sources_with_http_info(task_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaskSourcesApi.index_task_sources ...'
      end
      # verify the required parameter 'task_id' is set
      if @api_client.config.client_side_validation && task_id.nil?
        fail ArgumentError, "Missing the required parameter 'task_id' when calling TaskSourcesApi.index_task_sources"
      end
      # resource path
      local_var_path = '/tasks/{task_id}/task_sources'.sub('{' + 'task_id' + '}', CGI.escape(task_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'sort_by'] = @api_client.build_collection_param(opts[:'sort_by'], :pipe) if !opts[:'sort_by'].nil?
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'file_id'] = opts[:'file_id'] if !opts[:'file_id'].nil?
      query_params[:'import_file_id'] = opts[:'import_file_id'] if !opts[:'import_file_id'].nil?
      query_params[:'tape_id'] = opts[:'tape_id'] if !opts[:'tape_id'].nil?
      query_params[:'pool_id'] = opts[:'pool_id'] if !opts[:'pool_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'TaskSourceCollection' 

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
        @api_client.config.logger.debug "API called: TaskSourcesApi#index_task_sources\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Displays a specific task source.
    # **API Key Scope**: task_sources / show
    # @param task_id [String] Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID.
    # @param task_source_id [Integer] Numeric ID of task source.
    # @param [Hash] opts the optional parameters
    # @return [TaskSourceDown]
    def show_task_source(task_id, task_source_id, opts = {})
      data, _status_code, _headers = show_task_source_with_http_info(task_id, task_source_id, opts)
      data
    end

    # Displays a specific task source.
    # **API Key Scope**: task_sources / show
    # @param task_id [String] Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID.
    # @param task_source_id [Integer] Numeric ID of task source.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TaskSourceDown, Integer, Hash)>] TaskSourceDown data, response status code and response headers
    def show_task_source_with_http_info(task_id, task_source_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaskSourcesApi.show_task_source ...'
      end
      # verify the required parameter 'task_id' is set
      if @api_client.config.client_side_validation && task_id.nil?
        fail ArgumentError, "Missing the required parameter 'task_id' when calling TaskSourcesApi.show_task_source"
      end
      # verify the required parameter 'task_source_id' is set
      if @api_client.config.client_side_validation && task_source_id.nil?
        fail ArgumentError, "Missing the required parameter 'task_source_id' when calling TaskSourcesApi.show_task_source"
      end
      # resource path
      local_var_path = '/tasks/{task_id}/task_sources/{task_source_id}'.sub('{' + 'task_id' + '}', CGI.escape(task_id.to_s)).sub('{' + 'task_source_id' + '}', CGI.escape(task_source_id.to_s))

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
      return_type = opts[:return_type] || 'TaskSourceDown' 

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
        @api_client.config.logger.debug "API called: TaskSourcesApi#show_task_source\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a specific task source.
    # **API Key Scope**: task_sources / update
    # @param task_id [String] Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID.
    # @param task_source_id [Integer] Numeric ID of task source.
    # @param task_source_body [TaskSourceUp] 
    # @param [Hash] opts the optional parameters
    # @return [TaskSourceDown]
    def update_task_source(task_id, task_source_id, task_source_body, opts = {})
      data, _status_code, _headers = update_task_source_with_http_info(task_id, task_source_id, task_source_body, opts)
      data
    end

    # Updates a specific task source.
    # **API Key Scope**: task_sources / update
    # @param task_id [String] Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID.
    # @param task_source_id [Integer] Numeric ID of task source.
    # @param task_source_body [TaskSourceUp] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TaskSourceDown, Integer, Hash)>] TaskSourceDown data, response status code and response headers
    def update_task_source_with_http_info(task_id, task_source_id, task_source_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TaskSourcesApi.update_task_source ...'
      end
      # verify the required parameter 'task_id' is set
      if @api_client.config.client_side_validation && task_id.nil?
        fail ArgumentError, "Missing the required parameter 'task_id' when calling TaskSourcesApi.update_task_source"
      end
      # verify the required parameter 'task_source_id' is set
      if @api_client.config.client_side_validation && task_source_id.nil?
        fail ArgumentError, "Missing the required parameter 'task_source_id' when calling TaskSourcesApi.update_task_source"
      end
      # verify the required parameter 'task_source_body' is set
      if @api_client.config.client_side_validation && task_source_body.nil?
        fail ArgumentError, "Missing the required parameter 'task_source_body' when calling TaskSourcesApi.update_task_source"
      end
      # resource path
      local_var_path = '/tasks/{task_id}/task_sources/{task_source_id}'.sub('{' + 'task_id' + '}', CGI.escape(task_id.to_s)).sub('{' + 'task_source_id' + '}', CGI.escape(task_source_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(task_source_body) 

      # return_type
      return_type = opts[:return_type] || 'TaskSourceDown' 

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
        @api_client.config.logger.debug "API called: TaskSourcesApi#update_task_source\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
