=begin
#Nodeum API

## About  This document describes the Nodeum API version 2:  If you are looking for any information about the product itself, reach the product website https://www.nodeum.io. You can also contact us at this email address : info@nodeum.io  # Filter parameters When browsing a list of items, multiple filter parameters may be applied. Some operators can be added to the value as a prefix:  - `=` value is equal. Default operator, may be omitted  - `!=` value is different  - `>` greater than  - `>=` greater than or equal  - `<` lower than  - `>=` lower than or equal  - `><` included in list, items should be separated by `|`  - `!><` not included in list, items should be separated by `|`  - `~` pattern matching, may include `%` (any characters) and `_` (one character)  - `!~` pattern not matching, may include `%` (any characters) and `_` (one character)  

The version of the OpenAPI document: 2.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Nodeum::SystemsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SystemsApi' do
  before do
    # run before each test
    @api_instance = Nodeum::SystemsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SystemsApi' do
    it 'should create an instance of SystemsApi' do
      expect(@api_instance).to be_instance_of(Nodeum::SystemsApi)
    end
  end

  # unit tests for download_reset_vars
  # Creates a YAML file with selected tables and downloads it
  # @param reset_form 
  # @param [Hash] opts the optional parameters
  # @return [File]
  describe 'download_reset_vars test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for result_download_traces
  # Check result of a download traces job.
  # **API Key Scope**: systems / download_traces
  # @param job_id ID of active job
  # @param [Hash] opts the optional parameters
  # @return [File]
  describe 'result_download_traces test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for trigger_download_traces
  # Trigger a download traces request.
  # **API Key Scope**: systems / download_traces
  # @param type Type of traces to download
  # @param [Hash] opts the optional parameters
  # @return [ActiveJobStatus]
  describe 'trigger_download_traces test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
