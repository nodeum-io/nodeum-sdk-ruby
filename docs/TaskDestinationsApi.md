# Nodeum::TaskDestinationsApi

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_task_destination**](TaskDestinationsApi.md#create_task_destination) | **POST** /tasks/{task_id}/task_destinations | Creates a new task destination.
[**destroy_task_destination**](TaskDestinationsApi.md#destroy_task_destination) | **DELETE** /tasks/{task_id}/task_destinations/{task_destination_id} | Destroys a specific task destination.
[**index_task_destinations**](TaskDestinationsApi.md#index_task_destinations) | **GET** /tasks/{task_id}/task_destinations | Lists all task destinations.
[**show_task_destination**](TaskDestinationsApi.md#show_task_destination) | **GET** /tasks/{task_id}/task_destinations/{task_destination_id} | Displays a specific task destination.
[**update_task_destination**](TaskDestinationsApi.md#update_task_destination) | **PUT** /tasks/{task_id}/task_destinations/{task_destination_id} | Updates a specific task destination.



## create_task_destination

> TaskDestinationDown create_task_destination(task_id, task_destination_body)

Creates a new task destination.

**API Key Scope**: task_destinations / create

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

api_instance = Nodeum::TaskDestinationsApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_destination_body = Nodeum::TaskDestinationUp.new # TaskDestinationUp | 

begin
  #Creates a new task destination.
  result = api_instance.create_task_destination(task_id, task_destination_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskDestinationsApi->create_task_destination: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_destination_body** | [**TaskDestinationUp**](TaskDestinationUp.md)|  | 

### Return type

[**TaskDestinationDown**](TaskDestinationDown.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy_task_destination

> destroy_task_destination(task_id, task_destination_id)

Destroys a specific task destination.

**API Key Scope**: task_destinations / destroy

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

api_instance = Nodeum::TaskDestinationsApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_destination_id = 56 # Integer | Numeric ID of task destination.

begin
  #Destroys a specific task destination.
  api_instance.destroy_task_destination(task_id, task_destination_id)
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskDestinationsApi->destroy_task_destination: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_destination_id** | **Integer**| Numeric ID of task destination. | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## index_task_destinations

> TaskDestinationCollection index_task_destinations(task_id, opts)

Lists all task destinations.

**API Key Scope**: task_destinations / index

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

api_instance = Nodeum::TaskDestinationsApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  sort_by: ['sort_by_example'], # Array<String> | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
  id: 'id_example', # String | Filter on id
  folder_id: 'folder_id_example', # String | Filter on folder id
  tape_id: 'tape_id_example', # String | Filter on tape id
  pool_id: 'pool_id_example' # String | Filter on a pool id
}

begin
  #Lists all task destinations.
  result = api_instance.index_task_destinations(task_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskDestinationsApi->index_task_destinations: #{e}"
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
 **folder_id** | **String**| Filter on folder id | [optional] 
 **tape_id** | **String**| Filter on tape id | [optional] 
 **pool_id** | **String**| Filter on a pool id | [optional] 

### Return type

[**TaskDestinationCollection**](TaskDestinationCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_task_destination

> TaskDestinationDown show_task_destination(task_id, task_destination_id)

Displays a specific task destination.

**API Key Scope**: task_destinations / show

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

api_instance = Nodeum::TaskDestinationsApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_destination_id = 56 # Integer | Numeric ID of task destination.

begin
  #Displays a specific task destination.
  result = api_instance.show_task_destination(task_id, task_destination_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskDestinationsApi->show_task_destination: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_destination_id** | **Integer**| Numeric ID of task destination. | 

### Return type

[**TaskDestinationDown**](TaskDestinationDown.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_task_destination

> TaskDestinationDown update_task_destination(task_id, task_destination_id, task_destination_body)

Updates a specific task destination.

**API Key Scope**: task_destinations / update

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

api_instance = Nodeum::TaskDestinationsApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_destination_id = 56 # Integer | Numeric ID of task destination.
task_destination_body = Nodeum::TaskDestinationUp.new # TaskDestinationUp | 

begin
  #Updates a specific task destination.
  result = api_instance.update_task_destination(task_id, task_destination_id, task_destination_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskDestinationsApi->update_task_destination: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_destination_id** | **Integer**| Numeric ID of task destination. | 
 **task_destination_body** | [**TaskDestinationUp**](TaskDestinationUp.md)|  | 

### Return type

[**TaskDestinationDown**](TaskDestinationDown.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

