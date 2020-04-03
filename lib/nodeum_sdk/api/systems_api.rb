=begin
#Nodeum API

## About  This document describes the Nodeum API version 2:  If you are looking for any information about the product itself, reach the product website https://www.nodeum.io. You can also contact us at this email address : info@nodeum.io  # Filter parameters When browsing a list of items, multiple filter parameters may be applied. Some operators can be added to the value as a prefix:  - `=` value is equal. Default operator, may be omitted  - `!=` value is different  - `>` greater than  - `>=` greater than or equal  - `<` lower than  - `>=` lower than or equal  - `><` included in list, items should be separated by `|`  - `!><` not included in list, items should be separated by `|`  - `~` pattern matching, may include `%` (any characters) and `_` (one character)  - `!~` pattern not matching, may include `%` (any characters) and `_` (one character)  

The version of the OpenAPI document: 2.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'cgi'

module Nodeum
  class SystemsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a YAML file with selected tables and downloads it
    # @param reset_form [Reset] 
    # @param [Hash] opts the optional parameters
    # @return [File]
    def download_reset_vars(reset_form, opts = {})
      data, _status_code, _headers = download_reset_vars_with_http_info(reset_form, opts)
      data
    end

    # Creates a YAML file with selected tables and downloads it
    # @param reset_form [Reset] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def download_reset_vars_with_http_info(reset_form, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemsApi.download_reset_vars ...'
      end
      # verify the required parameter 'reset_form' is set
      if @api_client.config.client_side_validation && reset_form.nil?
        fail ArgumentError, "Missing the required parameter 'reset_form' when calling SystemsApi.download_reset_vars"
      end
      # resource path
      local_var_path = '/systems/reset/generate_vars'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/x-yaml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(reset_form) 

      # return_type
      return_type = opts[:return_type] || 'File' 

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
        @api_client.config.logger.debug "API called: SystemsApi#download_reset_vars\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check result of a download traces job.
    # **API Key Scope**: systems / download_traces
    # @param job_id [String] ID of active job
    # @param [Hash] opts the optional parameters
    # @return [File]
    def result_download_traces(job_id, opts = {})
      data, _status_code, _headers = result_download_traces_with_http_info(job_id, opts)
      data
    end

    # Check result of a download traces job.
    # **API Key Scope**: systems / download_traces
    # @param job_id [String] ID of active job
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def result_download_traces_with_http_info(job_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemsApi.result_download_traces ...'
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling SystemsApi.result_download_traces"
      end
      # resource path
      local_var_path = '/systems/download_traces'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'job_id'] = job_id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/tar+gzip', 'queued', 'working', 'failed', ])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'File' 

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
        @api_client.config.logger.debug "API called: SystemsApi#result_download_traces\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Trigger a download traces request.
    # **API Key Scope**: systems / download_traces
    # @param type [String] Type of traces to download
    # @param [Hash] opts the optional parameters
    # @return [ActiveJobStatus]
    def trigger_download_traces(type, opts = {})
      data, _status_code, _headers = trigger_download_traces_with_http_info(type, opts)
      data
    end

    # Trigger a download traces request.
    # **API Key Scope**: systems / download_traces
    # @param type [String] Type of traces to download
    # @param [Hash] opts the optional parameters
    # @return [Array<(ActiveJobStatus, Integer, Hash)>] ActiveJobStatus data, response status code and response headers
    def trigger_download_traces_with_http_info(type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemsApi.trigger_download_traces ...'
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling SystemsApi.trigger_download_traces"
      end
      # verify enum value
      allowable_values = ["interface", "core", "data_mining", "fuse", "library_manager", "manager", "watchdog", "system", "all"]
      if @api_client.config.client_side_validation && !allowable_values.include?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/systems/download_traces'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'type'] = type

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'queued', 'working', 'failed'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ActiveJobStatus' 

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
        @api_client.config.logger.debug "API called: SystemsApi#trigger_download_traces\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
