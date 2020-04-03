=begin
#Nodeum API

## About  This document describes the Nodeum API version 2:  If you are looking for any information about the product itself, reach the product website https://www.nodeum.io. You can also contact us at this email address : info@nodeum.io  # Filter parameters When browsing a list of items, multiple filter parameters may be applied. Some operators can be added to the value as a prefix:  - `=` value is equal. Default operator, may be omitted  - `!=` value is different  - `>` greater than  - `>=` greater than or equal  - `<` lower than  - `>=` lower than or equal  - `><` included in list, items should be separated by `|`  - `!><` not included in list, items should be separated by `|`  - `~` pattern matching, may include `%` (any characters) and `_` (one character)  - `!~` pattern not matching, may include `%` (any characters) and `_` (one character)  

The version of the OpenAPI document: 2.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Nodeum::TaskDestinationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TaskDestinationsApi' do
  before do
    # run before each test
    @api_instance = Nodeum::TaskDestinationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TaskDestinationsApi' do
    it 'should create an instance of TaskDestinationsApi' do
      expect(@api_instance).to be_instance_of(Nodeum::TaskDestinationsApi)
    end
  end

  # unit tests for create_task_destination
  # Creates a new task destination.
  # **API Key Scope**: task_destinations / create
  # @param task_id Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID.
  # @param task_destination_body 
  # @param [Hash] opts the optional parameters
  # @return [TaskDestinationDown]
  describe 'create_task_destination test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for destroy_task_destination
  # Destroys a specific task destination.
  # **API Key Scope**: task_destinations / destroy
  # @param task_id Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID.
  # @param task_destination_id Numeric ID of task destination.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'destroy_task_destination test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for index_task_destinations
  # Lists all task destinations.
  # **API Key Scope**: task_destinations / index
  # @param task_id Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of items to display for pagination.
  # @option opts [Integer] :offset The number of items to skip for pagination.
  # @option opts [Array<String>] :sort_by Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;.
  # @option opts [String] :id Filter on id
  # @option opts [String] :folder_id Filter on folder id
  # @option opts [String] :tape_id Filter on tape id
  # @option opts [String] :pool_id Filter on a pool id
  # @return [TaskDestinationCollection]
  describe 'index_task_destinations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_task_destination
  # Displays a specific task destination.
  # **API Key Scope**: task_destinations / show
  # @param task_id Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID.
  # @param task_destination_id Numeric ID of task destination.
  # @param [Hash] opts the optional parameters
  # @return [TaskDestinationDown]
  describe 'show_task_destination test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_task_destination
  # Updates a specific task destination.
  # **API Key Scope**: task_destinations / update
  # @param task_id Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID.
  # @param task_destination_id Numeric ID of task destination.
  # @param task_destination_body 
  # @param [Hash] opts the optional parameters
  # @return [TaskDestinationDown]
  describe 'update_task_destination test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end