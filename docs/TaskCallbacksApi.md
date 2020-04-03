# Nodeum::TaskCallbacksApi

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_task_callback**](TaskCallbacksApi.md#create_task_callback) | **POST** /tasks/{task_id}/task_callbacks | Creates a new task callback.
[**destroy_task_callback**](TaskCallbacksApi.md#destroy_task_callback) | **DELETE** /tasks/{task_id}/task_callbacks/{task_callback_id} | Destroys a specific task callback.
[**index_task_callbacks**](TaskCallbacksApi.md#index_task_callbacks) | **GET** /tasks/{task_id}/task_callbacks | Lists all task callbacks.
[**show_task_callback**](TaskCallbacksApi.md#show_task_callback) | **GET** /tasks/{task_id}/task_callbacks/{task_callback_id} | Displays a specific task callback.
[**update_task_callback**](TaskCallbacksApi.md#update_task_callback) | **PUT** /tasks/{task_id}/task_callbacks/{task_callback_id} | Updates a specific task callback.



## create_task_callback

> TaskCallback create_task_callback(task_id, task_callback_body)

Creates a new task callback.

**API Key Scope**: task_callbacks / create

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

api_instance = Nodeum::TaskCallbacksApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_callback_body = Nodeum::TaskCallback.new # TaskCallback | 

begin
  #Creates a new task callback.
  result = api_instance.create_task_callback(task_id, task_callback_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskCallbacksApi->create_task_callback: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_callback_body** | [**TaskCallback**](TaskCallback.md)|  | 

### Return type

[**TaskCallback**](TaskCallback.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy_task_callback

> destroy_task_callback(task_id, task_callback_id)

Destroys a specific task callback.

**API Key Scope**: task_callbacks / destroy

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

api_instance = Nodeum::TaskCallbacksApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_callback_id = 56 # Integer | Numeric ID of task callback.

begin
  #Destroys a specific task callback.
  api_instance.destroy_task_callback(task_id, task_callback_id)
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskCallbacksApi->destroy_task_callback: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_callback_id** | **Integer**| Numeric ID of task callback. | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## index_task_callbacks

> TaskCallbackCollection index_task_callbacks(task_id, opts)

Lists all task callbacks.

**API Key Scope**: task_callbacks / index

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

api_instance = Nodeum::TaskCallbacksApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  sort_by: ['sort_by_example'], # Array<String> | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
  id: 'id_example', # String | Filter on id
  type: 'type_example', # String | Filter on type
  script: 'script_example' # String | Filter on task callback script
}

begin
  #Lists all task callbacks.
  result = api_instance.index_task_callbacks(task_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskCallbacksApi->index_task_callbacks: #{e}"
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
 **type** | **String**| Filter on type | [optional] 
 **script** | **String**| Filter on task callback script | [optional] 

### Return type

[**TaskCallbackCollection**](TaskCallbackCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_task_callback

> TaskCallback show_task_callback(task_id, task_callback_id)

Displays a specific task callback.

**API Key Scope**: task_callbacks / show

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

api_instance = Nodeum::TaskCallbacksApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_callback_id = 56 # Integer | Numeric ID of task callback.

begin
  #Displays a specific task callback.
  result = api_instance.show_task_callback(task_id, task_callback_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskCallbacksApi->show_task_callback: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_callback_id** | **Integer**| Numeric ID of task callback. | 

### Return type

[**TaskCallback**](TaskCallback.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_task_callback

> TaskCallback update_task_callback(task_id, task_callback_id, task_callback_body)

Updates a specific task callback.

**API Key Scope**: task_callbacks / update

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

api_instance = Nodeum::TaskCallbacksApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_callback_id = 56 # Integer | Numeric ID of task callback.
task_callback_body = Nodeum::TaskCallback.new # TaskCallback | 

begin
  #Updates a specific task callback.
  result = api_instance.update_task_callback(task_id, task_callback_id, task_callback_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskCallbacksApi->update_task_callback: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_callback_id** | **Integer**| Numeric ID of task callback. | 
 **task_callback_body** | [**TaskCallback**](TaskCallback.md)|  | 

### Return type

[**TaskCallback**](TaskCallback.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

