# Nodeum::TaskSourcesApi

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_task_source**](TaskSourcesApi.md#create_task_source) | **POST** /tasks/{task_id}/task_sources | Creates a new task source.
[**destroy_task_source**](TaskSourcesApi.md#destroy_task_source) | **DELETE** /tasks/{task_id}/task_sources/{task_source_id} | Destroys a specific task source.
[**index_task_sources**](TaskSourcesApi.md#index_task_sources) | **GET** /tasks/{task_id}/task_sources | Lists all task sources.
[**show_task_source**](TaskSourcesApi.md#show_task_source) | **GET** /tasks/{task_id}/task_sources/{task_source_id} | Displays a specific task source.
[**update_task_source**](TaskSourcesApi.md#update_task_source) | **PUT** /tasks/{task_id}/task_sources/{task_source_id} | Updates a specific task source.



## create_task_source

> TaskSourceDown create_task_source(task_id, task_source_body)

Creates a new task source.

**API Key Scope**: task_sources / create

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

api_instance = Nodeum::TaskSourcesApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_source_body = Nodeum::TaskSourceUp.new # TaskSourceUp | 

begin
  #Creates a new task source.
  result = api_instance.create_task_source(task_id, task_source_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskSourcesApi->create_task_source: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_source_body** | [**TaskSourceUp**](TaskSourceUp.md)|  | 

### Return type

[**TaskSourceDown**](TaskSourceDown.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy_task_source

> destroy_task_source(task_id, task_source_id)

Destroys a specific task source.

**API Key Scope**: task_sources / destroy

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

api_instance = Nodeum::TaskSourcesApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_source_id = 56 # Integer | Numeric ID of task source.

begin
  #Destroys a specific task source.
  api_instance.destroy_task_source(task_id, task_source_id)
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskSourcesApi->destroy_task_source: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_source_id** | **Integer**| Numeric ID of task source. | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## index_task_sources

> TaskSourceCollection index_task_sources(task_id, opts)

Lists all task sources.

**API Key Scope**: task_sources / index

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

api_instance = Nodeum::TaskSourcesApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  sort_by: ['sort_by_example'], # Array<String> | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
  id: 'id_example', # String | Filter on id
  file_id: 'file_id_example', # String | Filter on file id
  import_file_id: 'import_file_id_example', # String | Filter on import file id
  tape_id: 'tape_id_example', # String | Filter on tape id
  pool_id: 'pool_id_example' # String | Filter on a pool id
}

begin
  #Lists all task sources.
  result = api_instance.index_task_sources(task_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskSourcesApi->index_task_sources: #{e}"
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
 **file_id** | **String**| Filter on file id | [optional] 
 **import_file_id** | **String**| Filter on import file id | [optional] 
 **tape_id** | **String**| Filter on tape id | [optional] 
 **pool_id** | **String**| Filter on a pool id | [optional] 

### Return type

[**TaskSourceCollection**](TaskSourceCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_task_source

> TaskSourceDown show_task_source(task_id, task_source_id)

Displays a specific task source.

**API Key Scope**: task_sources / show

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

api_instance = Nodeum::TaskSourcesApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_source_id = 56 # Integer | Numeric ID of task source.

begin
  #Displays a specific task source.
  result = api_instance.show_task_source(task_id, task_source_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskSourcesApi->show_task_source: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_source_id** | **Integer**| Numeric ID of task source. | 

### Return type

[**TaskSourceDown**](TaskSourceDown.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_task_source

> TaskSourceDown update_task_source(task_id, task_source_id, task_source_body)

Updates a specific task source.

**API Key Scope**: task_sources / update

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

api_instance = Nodeum::TaskSourcesApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_source_id = 56 # Integer | Numeric ID of task source.
task_source_body = Nodeum::TaskSourceUp.new # TaskSourceUp | 

begin
  #Updates a specific task source.
  result = api_instance.update_task_source(task_id, task_source_id, task_source_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskSourcesApi->update_task_source: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_source_id** | **Integer**| Numeric ID of task source. | 
 **task_source_body** | [**TaskSourceUp**](TaskSourceUp.md)|  | 

### Return type

[**TaskSourceDown**](TaskSourceDown.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

