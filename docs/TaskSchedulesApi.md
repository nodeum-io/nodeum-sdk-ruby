# Nodeum::TaskSchedulesApi

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_task_schedule**](TaskSchedulesApi.md#create_task_schedule) | **POST** /tasks/{task_id}/task_schedule | Creates a new task schedule. Only one should be created.
[**destroy_task_schedule**](TaskSchedulesApi.md#destroy_task_schedule) | **DELETE** /tasks/{task_id}/task_schedule | Destroys the task schedule.
[**index_task_schedules**](TaskSchedulesApi.md#index_task_schedules) | **GET** /task_schedules | Lists all task schedules.
[**show_task_schedule**](TaskSchedulesApi.md#show_task_schedule) | **GET** /tasks/{task_id}/task_schedule | Displays the task schedule.
[**update_task_schedule**](TaskSchedulesApi.md#update_task_schedule) | **PUT** /tasks/{task_id}/task_schedule | Updates the existing task schedule.



## create_task_schedule

> TaskSchedule create_task_schedule(task_id, task_schedule_body)

Creates a new task schedule. Only one should be created.

**API Key Scope**: task_schedules / create

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

api_instance = Nodeum::TaskSchedulesApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_schedule_body = Nodeum::TaskSchedule.new # TaskSchedule | 

begin
  #Creates a new task schedule. Only one should be created.
  result = api_instance.create_task_schedule(task_id, task_schedule_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskSchedulesApi->create_task_schedule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_schedule_body** | [**TaskSchedule**](TaskSchedule.md)|  | 

### Return type

[**TaskSchedule**](TaskSchedule.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy_task_schedule

> destroy_task_schedule(task_id)

Destroys the task schedule.

**API Key Scope**: task_schedules / destroy

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

api_instance = Nodeum::TaskSchedulesApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.

begin
  #Destroys the task schedule.
  api_instance.destroy_task_schedule(task_id)
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskSchedulesApi->destroy_task_schedule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## index_task_schedules

> TaskScheduleCollection index_task_schedules(opts)

Lists all task schedules.

**API Key Scope**: task_schedules / index

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

api_instance = Nodeum::TaskSchedulesApi.new
opts = {
  with_next: true, # Boolean | Display the next scheduled date, and information about missing executions.
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  sort_by: ['sort_by_example'], # Array<String> | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
  id: 'id_example', # String | Filter on id
  rrule: 'rrule_example', # String | Filter on RRule of schedule
  done: 'done_example', # String | Filter on done schedule
  task_id: 'task_id_example' # String | Filter on task id
}

begin
  #Lists all task schedules.
  result = api_instance.index_task_schedules(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskSchedulesApi->index_task_schedules: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **with_next** | **Boolean**| Display the next scheduled date, and information about missing executions. | [optional] [default to true]
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **sort_by** | [**Array&lt;String&gt;**](String.md)| Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. | [optional] 
 **id** | **String**| Filter on id | [optional] 
 **rrule** | **String**| Filter on RRule of schedule | [optional] 
 **done** | **String**| Filter on done schedule | [optional] 
 **task_id** | **String**| Filter on task id | [optional] 

### Return type

[**TaskScheduleCollection**](TaskScheduleCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_task_schedule

> TaskSchedule show_task_schedule(task_id)

Displays the task schedule.

**API Key Scope**: task_schedules / show

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

api_instance = Nodeum::TaskSchedulesApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.

begin
  #Displays the task schedule.
  result = api_instance.show_task_schedule(task_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskSchedulesApi->show_task_schedule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 

### Return type

[**TaskSchedule**](TaskSchedule.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_task_schedule

> TaskSchedule update_task_schedule(task_id, task_schedule_body)

Updates the existing task schedule.

**API Key Scope**: task_schedules / update

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

api_instance = Nodeum::TaskSchedulesApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_schedule_body = Nodeum::TaskSchedule.new # TaskSchedule | 

begin
  #Updates the existing task schedule.
  result = api_instance.update_task_schedule(task_id, task_schedule_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskSchedulesApi->update_task_schedule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_schedule_body** | [**TaskSchedule**](TaskSchedule.md)|  | 

### Return type

[**TaskSchedule**](TaskSchedule.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

