# Nodeum::TaskExecutionsApi

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**index_task_executions**](TaskExecutionsApi.md#index_task_executions) | **GET** /task_executions | Lists all task executions.
[**index_task_executions_by_task**](TaskExecutionsApi.md#index_task_executions_by_task) | **GET** /tasks/{task_id}/task_executions | Lists all task executions.
[**show_task_execution**](TaskExecutionsApi.md#show_task_execution) | **GET** /task_executions/{task_execution_id} | Displays a specific task execution.
[**show_task_execution_by_task**](TaskExecutionsApi.md#show_task_execution_by_task) | **GET** /tasks/{task_id}/task_executions/{task_execution_id} | Displays a specific task execution.



## index_task_executions

> TaskExecutionCollection index_task_executions(opts)

Lists all task executions.

**API Key Scope**: task_executions / index

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

api_instance = Nodeum::TaskExecutionsApi.new
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  sort_by: ['sort_by_example'], # Array<String> | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
  complete_list: true, # Boolean | If `false`, only includes the last correct execution of a task.
  id: 'id_example', # String | Filter on id
  task_id: 'task_id_example', # String | Filter on task id
  name: 'name_example', # String | Filter on name
  workflow_type: 'workflow_type_example', # String | Filter on task workflow type
  workflow_action: 'workflow_action_example', # String | Filter on task workflow action
  source_type: 'source_type_example', # String | Filter on task source type
  destination_type: 'destination_type_example', # String | Filter on task destination type
  status: 'status_example', # String | Filter on status
  log_time: 'log_time_example', # String | Filter on log time
  job_started: 'job_started_example', # String | Filter on job started
  job_finished: 'job_finished_example', # String | Filter on job finished
  creation_date: 'creation_date_example', # String | Filter on creation date
  modification_date: 'modification_date_example', # String | Filter on modification date
  to_process_size: 'to_process_size_example', # String | Filter on to process size
  processed_size: 'processed_size_example', # String | Filter on processed size
  to_process_files: 'to_process_files_example', # String | Filter on to process files
  processed_files: 'processed_files_example', # String | Filter on processed files
  finalized_files: 'finalized_files_example', # String | Filter on finalized files
  estimation_time: 'estimation_time_example', # String | Filter on estimation time
  bandwidth: 'bandwidth_example' # String | Filter on bandwidth
}

begin
  #Lists all task executions.
  result = api_instance.index_task_executions(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskExecutionsApi->index_task_executions: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **sort_by** | [**Array&lt;String&gt;**](String.md)| Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. | [optional] 
 **complete_list** | **Boolean**| If &#x60;false&#x60;, only includes the last correct execution of a task. | [optional] [default to true]
 **id** | **String**| Filter on id | [optional] 
 **task_id** | **String**| Filter on task id | [optional] 
 **name** | **String**| Filter on name | [optional] 
 **workflow_type** | **String**| Filter on task workflow type | [optional] 
 **workflow_action** | **String**| Filter on task workflow action | [optional] 
 **source_type** | **String**| Filter on task source type | [optional] 
 **destination_type** | **String**| Filter on task destination type | [optional] 
 **status** | **String**| Filter on status | [optional] 
 **log_time** | **String**| Filter on log time | [optional] 
 **job_started** | **String**| Filter on job started | [optional] 
 **job_finished** | **String**| Filter on job finished | [optional] 
 **creation_date** | **String**| Filter on creation date | [optional] 
 **modification_date** | **String**| Filter on modification date | [optional] 
 **to_process_size** | **String**| Filter on to process size | [optional] 
 **processed_size** | **String**| Filter on processed size | [optional] 
 **to_process_files** | **String**| Filter on to process files | [optional] 
 **processed_files** | **String**| Filter on processed files | [optional] 
 **finalized_files** | **String**| Filter on finalized files | [optional] 
 **estimation_time** | **String**| Filter on estimation time | [optional] 
 **bandwidth** | **String**| Filter on bandwidth | [optional] 

### Return type

[**TaskExecutionCollection**](TaskExecutionCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_task_executions_by_task

> TaskExecutionCollection index_task_executions_by_task(opts)

Lists all task executions.

**API Key Scope**: task_executions / index

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

api_instance = Nodeum::TaskExecutionsApi.new
opts = {
  task_id: 'task_id_example', # String | Filter on task id
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  sort_by: ['sort_by_example'], # Array<String> | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
  id: 'id_example', # String | Filter on id
  name: 'name_example', # String | Filter on name
  workflow_type: 'workflow_type_example', # String | Filter on task workflow type
  workflow_action: 'workflow_action_example', # String | Filter on task workflow action
  source_type: 'source_type_example', # String | Filter on task source type
  destination_type: 'destination_type_example', # String | Filter on task destination type
  status: 'status_example', # String | Filter on status
  log_time: 'log_time_example', # String | Filter on log time
  job_started: 'job_started_example', # String | Filter on job started
  job_finished: 'job_finished_example', # String | Filter on job finished
  to_process_size: 'to_process_size_example', # String | Filter on to process size
  processed_size: 'processed_size_example', # String | Filter on processed size
  to_process_files: 'to_process_files_example', # String | Filter on to process files
  processed_files: 'processed_files_example', # String | Filter on processed files
  finalized_files: 'finalized_files_example', # String | Filter on finalized files
  estimation_time: 'estimation_time_example', # String | Filter on estimation time
  bandwidth: 'bandwidth_example' # String | Filter on bandwidth
}

begin
  #Lists all task executions.
  result = api_instance.index_task_executions_by_task(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskExecutionsApi->index_task_executions_by_task: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Filter on task id | [optional] 
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **sort_by** | [**Array&lt;String&gt;**](String.md)| Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. | [optional] 
 **id** | **String**| Filter on id | [optional] 
 **name** | **String**| Filter on name | [optional] 
 **workflow_type** | **String**| Filter on task workflow type | [optional] 
 **workflow_action** | **String**| Filter on task workflow action | [optional] 
 **source_type** | **String**| Filter on task source type | [optional] 
 **destination_type** | **String**| Filter on task destination type | [optional] 
 **status** | **String**| Filter on status | [optional] 
 **log_time** | **String**| Filter on log time | [optional] 
 **job_started** | **String**| Filter on job started | [optional] 
 **job_finished** | **String**| Filter on job finished | [optional] 
 **to_process_size** | **String**| Filter on to process size | [optional] 
 **processed_size** | **String**| Filter on processed size | [optional] 
 **to_process_files** | **String**| Filter on to process files | [optional] 
 **processed_files** | **String**| Filter on processed files | [optional] 
 **finalized_files** | **String**| Filter on finalized files | [optional] 
 **estimation_time** | **String**| Filter on estimation time | [optional] 
 **bandwidth** | **String**| Filter on bandwidth | [optional] 

### Return type

[**TaskExecutionCollection**](TaskExecutionCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_task_execution

> TaskExecution show_task_execution(task_execution_id)

Displays a specific task execution.

**API Key Scope**: task_executions / show

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

api_instance = Nodeum::TaskExecutionsApi.new
task_execution_id = 'task_execution_id_example' # String | Numeric ID of task execution.

begin
  #Displays a specific task execution.
  result = api_instance.show_task_execution(task_execution_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskExecutionsApi->show_task_execution: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_execution_id** | **String**| Numeric ID of task execution. | 

### Return type

[**TaskExecution**](TaskExecution.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_task_execution_by_task

> TaskExecution show_task_execution_by_task(task_id, task_execution_id)

Displays a specific task execution.

**API Key Scope**: task_executions / show

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

api_instance = Nodeum::TaskExecutionsApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_execution_id = 'task_execution_id_example' # String | Numeric ID of task execution.

begin
  #Displays a specific task execution.
  result = api_instance.show_task_execution_by_task(task_id, task_execution_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TaskExecutionsApi->show_task_execution_by_task: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_execution_id** | **String**| Numeric ID of task execution. | 

### Return type

[**TaskExecution**](TaskExecution.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

