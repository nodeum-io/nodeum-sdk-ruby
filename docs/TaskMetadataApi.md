# Nodeum::TaskMetadataApi

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_task_metadatum**](TaskMetadataApi.md#create_task_metadatum) | **POST** /tasks/{task_id}/task_metadata | Creates a new task metadatum.
[**destroy_task_metadatum**](TaskMetadataApi.md#destroy_task_metadatum) | **DELETE** /tasks/{task_id}/task_metadata/{task_metadatum_id} | Destroys a specific task metadatum.
[**index_task_metadata**](TaskMetadataApi.md#index_task_metadata) | **GET** /tasks/{task_id}/task_metadata | Lists all task metadata.
[**show_task_metadatum**](TaskMetadataApi.md#show_task_metadatum) | **GET** /tasks/{task_id}/task_metadata/{task_metadatum_id} | Displays a specific task metadatum.
[**update_task_metadatum**](TaskMetadataApi.md#update_task_metadatum) | **PUT** /tasks/{task_id}/task_metadata/{task_metadatum_id} | Updates a specific task metadatum.



## create_task_metadatum

> TaskMetadatum create_task_metadatum(task_id, task_metadatum_body)

Creates a new task metadatum.

**API Key Scope**: task_metadata / create

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

api_instance = Nodeum::TaskMetadataApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_metadatum_body = Nodeum::TaskMetadatum.new # TaskMetadatum | 

begin
  #Creates a new task metadatum.
  result = api_instance.create_task_metadatum(task_id, task_metadatum_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskMetadataApi->create_task_metadatum: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_metadatum_body** | [**TaskMetadatum**](TaskMetadatum.md)|  | 

### Return type

[**TaskMetadatum**](TaskMetadatum.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy_task_metadatum

> destroy_task_metadatum(task_id, task_metadatum_id)

Destroys a specific task metadatum.

**API Key Scope**: task_metadata / destroy

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

api_instance = Nodeum::TaskMetadataApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_metadatum_id = 56 # Integer | Numeric ID of task metadatum.

begin
  #Destroys a specific task metadatum.
  api_instance.destroy_task_metadatum(task_id, task_metadatum_id)
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskMetadataApi->destroy_task_metadatum: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_metadatum_id** | **Integer**| Numeric ID of task metadatum. | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## index_task_metadata

> TaskMetadatumCollection index_task_metadata(task_id, opts)

Lists all task metadata.

**API Key Scope**: task_metadata / index

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

api_instance = Nodeum::TaskMetadataApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  sort_by: ['sort_by_example'], # Array<String> | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
  id: 'id_example', # String | Filter on id
  key: 'key_example', # String | Filter on key
  value: 'value_example' # String | Filter on value
}

begin
  #Lists all task metadata.
  result = api_instance.index_task_metadata(task_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskMetadataApi->index_task_metadata: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **sort_by** | [**Array&lt;String&gt;**](String.md)| Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. | [optional] 
 **id** | **String**| Filter on id | [optional] 
 **key** | **String**| Filter on key | [optional] 
 **value** | **String**| Filter on value | [optional] 

### Return type

[**TaskMetadatumCollection**](TaskMetadatumCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_task_metadatum

> TaskMetadatum show_task_metadatum(task_id, task_metadatum_id)

Displays a specific task metadatum.

**API Key Scope**: task_metadata / show

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

api_instance = Nodeum::TaskMetadataApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_metadatum_id = 56 # Integer | Numeric ID of task metadatum.

begin
  #Displays a specific task metadatum.
  result = api_instance.show_task_metadatum(task_id, task_metadatum_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskMetadataApi->show_task_metadatum: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_metadatum_id** | **Integer**| Numeric ID of task metadatum. | 

### Return type

[**TaskMetadatum**](TaskMetadatum.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_task_metadatum

> TaskMetadatum update_task_metadatum(task_id, task_metadatum_id, task_metadatum_body)

Updates a specific task metadatum.

**API Key Scope**: task_metadata / update

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

api_instance = Nodeum::TaskMetadataApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_metadatum_id = 56 # Integer | Numeric ID of task metadatum.
task_metadatum_body = Nodeum::TaskMetadatum.new # TaskMetadatum | 

begin
  #Updates a specific task metadatum.
  result = api_instance.update_task_metadatum(task_id, task_metadatum_id, task_metadatum_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskMetadataApi->update_task_metadatum: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_metadatum_id** | **Integer**| Numeric ID of task metadatum. | 
 **task_metadatum_body** | [**TaskMetadatum**](TaskMetadatum.md)|  | 

### Return type

[**TaskMetadatum**](TaskMetadatum.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

