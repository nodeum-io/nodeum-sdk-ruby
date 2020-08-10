# Nodeum::MetadataApi

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**index_file_metadata_definitions**](MetadataApi.md#index_file_metadata_definitions) | **GET** /file_metadata_definitions | List file metadata definitions
[**index_task_metadata_definitions**](MetadataApi.md#index_task_metadata_definitions) | **GET** /task_metadata_definitions | List task metadata definitions
[**show_file_metadata_definition**](MetadataApi.md#show_file_metadata_definition) | **GET** /file_metadata_definitions/{metadata_definition_id} | Displays a specific task metadata definition.
[**show_task_metadata_definition**](MetadataApi.md#show_task_metadata_definition) | **GET** /task_metadata_definitions/{metadata_definition_id} | Displays a specific task metadata definition.



## index_file_metadata_definitions

> FileMetadataDefinitionCollection index_file_metadata_definitions(opts)

List file metadata definitions

**API Key Scope**: file_metadata_definitions / index

### Example

```ruby
# load the gem
require 'nodeum_sdk'
# setup authorization
Nodeum.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: BearerAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Nodeum::MetadataApi.new
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56 # Integer | The number of items to skip for pagination.
}

begin
  #List file metadata definitions
  result = api_instance.index_file_metadata_definitions(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling MetadataApi->index_file_metadata_definitions: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 

### Return type

[**FileMetadataDefinitionCollection**](FileMetadataDefinitionCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_task_metadata_definitions

> TaskMetadataDefinitionCollection index_task_metadata_definitions(opts)

List task metadata definitions

**API Key Scope**: task_metadata_definitions / index

### Example

```ruby
# load the gem
require 'nodeum_sdk'
# setup authorization
Nodeum.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: BearerAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Nodeum::MetadataApi.new
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56 # Integer | The number of items to skip for pagination.
}

begin
  #List task metadata definitions
  result = api_instance.index_task_metadata_definitions(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling MetadataApi->index_task_metadata_definitions: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 

### Return type

[**TaskMetadataDefinitionCollection**](TaskMetadataDefinitionCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_file_metadata_definition

> FileMetadataDefinition show_file_metadata_definition(metadata_definition_id)

Displays a specific task metadata definition.

**API Key Scope**: file_metadata_definitions / show

### Example

```ruby
# load the gem
require 'nodeum_sdk'
# setup authorization
Nodeum.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: BearerAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Nodeum::MetadataApi.new
metadata_definition_id = 'metadata_definition_id_example' # String | Numeric ID or key of a metadata definition

begin
  #Displays a specific task metadata definition.
  result = api_instance.show_file_metadata_definition(metadata_definition_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling MetadataApi->show_file_metadata_definition: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metadata_definition_id** | **String**| Numeric ID or key of a metadata definition | 

### Return type

[**FileMetadataDefinition**](FileMetadataDefinition.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_task_metadata_definition

> TaskMetadataDefinition show_task_metadata_definition(metadata_definition_id)

Displays a specific task metadata definition.

**API Key Scope**: task_metadata_definitions / show

### Example

```ruby
# load the gem
require 'nodeum_sdk'
# setup authorization
Nodeum.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: BearerAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Nodeum::MetadataApi.new
metadata_definition_id = 'metadata_definition_id_example' # String | Numeric ID or key of a metadata definition

begin
  #Displays a specific task metadata definition.
  result = api_instance.show_task_metadata_definition(metadata_definition_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling MetadataApi->show_task_metadata_definition: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metadata_definition_id** | **String**| Numeric ID or key of a metadata definition | 

### Return type

[**TaskMetadataDefinition**](TaskMetadataDefinition.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

