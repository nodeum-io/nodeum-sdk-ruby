=begin
#Nodeum API

## About  This document describes the Nodeum API version 2:  If you are looking for any information about the product itself, reach the product website https://www.nodeum.io. You can also contact us at this email address : info@nodeum.io  # Filter parameters When browsing a list of items, multiple filter parameters may be applied. Some operators can be added to the value as a prefix:  - `=` value is equal. Default operator, may be omitted  - `!=` value is different  - `>` greater than  - `>=` greater than or equal  - `<` lower than  - `>=` lower than or equal  - `><` included in list, items should be separated by `|`  - `!><` not included in list, items should be separated by `|`  - `~` pattern matching, may include `%` (any characters) and `_` (one character)  - `!~` pattern not matching, may include `%` (any characters) and `_` (one character)  

The version of the OpenAPI document: 2.1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Nodeum::TapeLibraryDeviceCollection
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TapeLibraryDeviceCollection' do
  before do
    # run before each test
    @instance = Nodeum::TapeLibraryDeviceCollection.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TapeLibraryDeviceCollection' do
    it 'should create an instance of TapeLibraryDeviceCollection' do
      expect(@instance).to be_instance_of(Nodeum::TapeLibraryDeviceCollection)
    end
  end
  describe 'test attribute "tape_libraries"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
