=begin
#Nodeum API

## About  This document describes the Nodeum API version 2:  If you are looking for any information about the product itself, reach the product website https://www.nodeum.io. You can also contact us at this email address : info@nodeum.io  # Filter parameters When browsing a list of items, multiple filter parameters may be applied. Some operators can be added to the value as a prefix:  - `=` value is equal. Default operator, may be omitted  - `!=` value is different  - `>` greater than  - `>=` greater than or equal  - `<` lower than  - `>=` lower than or equal  - `><` included in list, items should be separated by `|`  - `!><` not included in list, items should be separated by `|`  - `~` pattern matching, may include `%` (any characters) and `_` (one character)  - `!~` pattern not matching, may include `%` (any characters) and `_` (one character)  

The version of the OpenAPI document: 2.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Nodeum::TaskSchedulesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TaskSchedulesApi' do
  before do
    # run before each test
    @api_instance = Nodeum::TaskSchedulesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TaskSchedulesApi' do
    it 'should create an instance of TaskSchedulesApi' do
      expect(@api_instance).to be_instance_of(Nodeum::TaskSchedulesApi)
    end
  end

  # unit tests for create_task_schedule
  # Creates a new task schedule. Only one should be created.
  # **API Key Scope**: task_schedules / create
  # @param task_id Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID.
  # @param task_schedule_body 
  # @param [Hash] opts the optional parameters
  # @return [TaskSchedule]
  describe 'create_task_schedule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for destroy_task_schedule
  # Destroys the task schedule.
  # **API Key Scope**: task_schedules / destroy
  # @param task_id Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'destroy_task_schedule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for index_task_schedules
  # Lists all task schedules.
  # **API Key Scope**: task_schedules / index
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :with_next Display the next scheduled date, and information about missing executions.
  # @option opts [Integer] :limit The number of items to display for pagination.
  # @option opts [Integer] :offset The number of items to skip for pagination.
  # @option opts [Array<String>] :sort_by Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;.
  # @option opts [String] :id Filter on id
  # @option opts [String] :rrule Filter on RRule of schedule
  # @option opts [String] :done Filter on done schedule
  # @option opts [String] :task_id Filter on task id
  # @return [TaskScheduleCollection]
  describe 'index_task_schedules test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_task_schedule
  # Displays the task schedule.
  # **API Key Scope**: task_schedules / show
  # @param task_id Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID.
  # @param [Hash] opts the optional parameters
  # @return [TaskSchedule]
  describe 'show_task_schedule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_task_schedule
  # Updates the existing task schedule.
  # **API Key Scope**: task_schedules / update
  # @param task_id Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID.
  # @param task_schedule_body 
  # @param [Hash] opts the optional parameters
  # @return [TaskSchedule]
  describe 'update_task_schedule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
