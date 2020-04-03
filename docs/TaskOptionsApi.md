# Nodeum::TaskOptionsApi

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_task_option**](TaskOptionsApi.md#create_task_option) | **POST** /tasks/{task_id}/task_options | Creates a new task option.
[**destroy_task_option**](TaskOptionsApi.md#destroy_task_option) | **DELETE** /tasks/{task_id}/task_options/{task_option_id} | Destroys a specific task option.
[**index_task_options**](TaskOptionsApi.md#index_task_options) | **GET** /tasks/{task_id}/task_options | Lists all task options.
[**show_task_option**](TaskOptionsApi.md#show_task_option) | **GET** /tasks/{task_id}/task_options/{task_option_id} | Displays a specific task option.
[**update_task_option**](TaskOptionsApi.md#update_task_option) | **PUT** /tasks/{task_id}/task_options/{task_option_id} | Updates a specific task option.



## create_task_option

> TaskOption create_task_option(task_id, task_option_body)

Creates a new task option.

**API Key Scope**: task_options / create

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

api_instance = Nodeum::TaskOptionsApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_option_body = Nodeum::TaskOption.new # TaskOption | 

begin
  #Creates a new task option.
  result = api_instance.create_task_option(task_id, task_option_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskOptionsApi->create_task_option: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_option_body** | [**TaskOption**](TaskOption.md)|  | 

### Return type

[**TaskOption**](TaskOption.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy_task_option

> destroy_task_option(task_id, task_option_id)

Destroys a specific task option.

**API Key Scope**: task_options / destroy

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

api_instance = Nodeum::TaskOptionsApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_option_id = 56 # Integer | Numeric ID of task option.

begin
  #Destroys a specific task option.
  api_instance.destroy_task_option(task_id, task_option_id)
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskOptionsApi->destroy_task_option: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_option_id** | **Integer**| Numeric ID of task option. | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## index_task_options

> TaskOptionCollection index_task_options(task_id, opts)

Lists all task options.

**API Key Scope**: task_options / index

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

api_instance = Nodeum::TaskOptionsApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  sort_by: ['sort_by_example'], # Array<String> | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
  id: 'id_example', # String | Filter on id
  type: 'type_example', # String | Filter on type
  value: 'value_example' # String | Filter on value
}

begin
  #Lists all task options.
  result = api_instance.index_task_options(task_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskOptionsApi->index_task_options: #{e}"
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
 **value** | **String**| Filter on value | [optional] 

### Return type

[**TaskOptionCollection**](TaskOptionCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_task_option

> TaskOption show_task_option(task_id, task_option_id)

Displays a specific task option.

**API Key Scope**: task_options / show

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

api_instance = Nodeum::TaskOptionsApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_option_id = 56 # Integer | Numeric ID of task option.

begin
  #Displays a specific task option.
  result = api_instance.show_task_option(task_id, task_option_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskOptionsApi->show_task_option: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_option_id** | **Integer**| Numeric ID of task option. | 

### Return type

[**TaskOption**](TaskOption.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_task_option

> TaskOption update_task_option(task_id, task_option_id, task_option_body)

Updates a specific task option.

**API Key Scope**: task_options / update

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

api_instance = Nodeum::TaskOptionsApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_option_id = 56 # Integer | Numeric ID of task option.
task_option_body = Nodeum::TaskOption.new # TaskOption | 

begin
  #Updates a specific task option.
  result = api_instance.update_task_option(task_id, task_option_id, task_option_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskOptionsApi->update_task_option: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_option_id** | **Integer**| Numeric ID of task option. | 
 **task_option_body** | [**TaskOption**](TaskOption.md)|  | 

### Return type

[**TaskOption**](TaskOption.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

