# Nodeum::TasksApi

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_task**](TasksApi.md#create_task) | **POST** /tasks | Creates a new task.
[**destroy_task**](TasksApi.md#destroy_task) | **DELETE** /tasks/{task_id} | Destroys a specific task.
[**index_tasks**](TasksApi.md#index_tasks) | **GET** /tasks | Lists all tasks.
[**pause_task**](TasksApi.md#pause_task) | **PUT** /tasks/{task_id}/action/pause | Pause a task.
[**pause_task_result**](TasksApi.md#pause_task_result) | **GET** /tasks/{task_id}/action/pause | Check result of a task pause request.
[**resume_task**](TasksApi.md#resume_task) | **PUT** /tasks/{task_id}/action/resume | Resume a task.
[**resume_task_result**](TasksApi.md#resume_task_result) | **GET** /tasks/{task_id}/action/resume | Check result of a task resume request.
[**run_task**](TasksApi.md#run_task) | **PUT** /tasks/{task_id}/action/run | Run a task.
[**run_task_result**](TasksApi.md#run_task_result) | **GET** /tasks/{task_id}/action/run | Check result of a task run request.
[**show_task**](TasksApi.md#show_task) | **GET** /tasks/{task_id} | Displays a specific task.
[**stop_task**](TasksApi.md#stop_task) | **PUT** /tasks/{task_id}/action/stop | Stop a task.
[**stop_task_result**](TasksApi.md#stop_task_result) | **GET** /tasks/{task_id}/action/stop | Check result of a task stop request.
[**update_task**](TasksApi.md#update_task) | **PUT** /tasks/{task_id} | Updates a specific task.



## create_task

> Task create_task(task_body)

Creates a new task.

**API Key Scope**: tasks / create 

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

api_instance = Nodeum::TasksApi.new
task_body = Nodeum::Task.new # Task | 

begin
  #Creates a new task.
  result = api_instance.create_task(task_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TasksApi->create_task: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_body** | [**Task**](Task.md)|  | 

### Return type

[**Task**](Task.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy_task

> destroy_task(task_id)

Destroys a specific task.

**API Key Scope**: tasks / destroy

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

api_instance = Nodeum::TasksApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.

begin
  #Destroys a specific task.
  api_instance.destroy_task(task_id)
rescue Nodeum::ApiError => e
  puts "Exception when calling TasksApi->destroy_task: #{e}"
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


## index_tasks

> TaskCollection index_tasks(opts)

Lists all tasks.

**API Key Scope**: tasks / index

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

api_instance = Nodeum::TasksApi.new
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  sort_by: ['sort_by_example'], # Array<String> | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
  id: 'id_example', # String | Filter on id
  name: 'name_example', # String | Filter on name
  comment: 'comment_example', # String | Filter on comment
  workflow_type: 'workflow_type_example', # String | Filter on task workflow type
  workflow_action: 'workflow_action_example', # String | Filter on task workflow action
  source_type: 'source_type_example', # String | Filter on task source type
  destination_type: 'destination_type_example', # String | Filter on task destination type
  priority: 'priority_example', # String | Filter on priority
  conflict_resolution: 'conflict_resolution_example', # String | Filter on conflict resolution
  action: 'action_example', # String | Filter on action
  activate: 'activate_example', # String | Filter on activate
  creation_date: 'creation_date_example', # String | Filter on creation date
  creation_username: 'creation_username_example', # String | Filter on creation username
  modification_date: 'modification_date_example', # String | Filter on modification date
  modification_username: 'modification_username_example', # String | Filter on modification username
  job_started: 'job_started_example', # String | Filter on job started
  job_finished: 'job_finished_example', # String | Filter on job finished
  status: 'status_example', # String | Filter on status
  processed_size: 'processed_size_example', # String | Filter on processed size
  to_process_size: 'to_process_size_example', # String | Filter on to process size
  source_pool_id: 'source_pool_id_example', # String | Filter on task source pool id
  source_pool_name: 'source_pool_name_example', # String | Filter on task source pool name
  source_tape_id: 'source_tape_id_example', # String | Filter on task source tape id
  source_tape_barcode: 'source_tape_barcode_example', # String | Filter on task source tape barcode
  destination_pool_id: 'destination_pool_id_example', # String | Filter on task destination pool id
  destination_pool_name: 'destination_pool_name_example', # String | Filter on task destination pool name
  destination_tape_id: 'destination_tape_id_example', # String | Filter on task destination tape id
  destination_tape_barcode: 'destination_tape_barcode_example' # String | Filter on task destination tape barcode
}

begin
  #Lists all tasks.
  result = api_instance.index_tasks(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TasksApi->index_tasks: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **sort_by** | [**Array&lt;String&gt;**](String.md)| Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. | [optional] 
 **id** | **String**| Filter on id | [optional] 
 **name** | **String**| Filter on name | [optional] 
 **comment** | **String**| Filter on comment | [optional] 
 **workflow_type** | **String**| Filter on task workflow type | [optional] 
 **workflow_action** | **String**| Filter on task workflow action | [optional] 
 **source_type** | **String**| Filter on task source type | [optional] 
 **destination_type** | **String**| Filter on task destination type | [optional] 
 **priority** | **String**| Filter on priority | [optional] 
 **conflict_resolution** | **String**| Filter on conflict resolution | [optional] 
 **action** | **String**| Filter on action | [optional] 
 **activate** | **String**| Filter on activate | [optional] 
 **creation_date** | **String**| Filter on creation date | [optional] 
 **creation_username** | **String**| Filter on creation username | [optional] 
 **modification_date** | **String**| Filter on modification date | [optional] 
 **modification_username** | **String**| Filter on modification username | [optional] 
 **job_started** | **String**| Filter on job started | [optional] 
 **job_finished** | **String**| Filter on job finished | [optional] 
 **status** | **String**| Filter on status | [optional] 
 **processed_size** | **String**| Filter on processed size | [optional] 
 **to_process_size** | **String**| Filter on to process size | [optional] 
 **source_pool_id** | **String**| Filter on task source pool id | [optional] 
 **source_pool_name** | **String**| Filter on task source pool name | [optional] 
 **source_tape_id** | **String**| Filter on task source tape id | [optional] 
 **source_tape_barcode** | **String**| Filter on task source tape barcode | [optional] 
 **destination_pool_id** | **String**| Filter on task destination pool id | [optional] 
 **destination_pool_name** | **String**| Filter on task destination pool name | [optional] 
 **destination_tape_id** | **String**| Filter on task destination tape id | [optional] 
 **destination_tape_barcode** | **String**| Filter on task destination tape barcode | [optional] 

### Return type

[**TaskCollection**](TaskCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pause_task

> ActiveJobStatus pause_task(task_id)

Pause a task.

**API Key Scope**: tasks / action

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

api_instance = Nodeum::TasksApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.

begin
  #Pause a task.
  result = api_instance.pause_task(task_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TasksApi->pause_task: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 

### Return type

[**ActiveJobStatus**](ActiveJobStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, queued, working, failed


## pause_task_result

> ActiveJobStatus pause_task_result(task_id, job_id)

Check result of a task pause request.

**API Key Scope**: tasks / action

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

api_instance = Nodeum::TasksApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
job_id = 'job_id_example' # String | ID of active job

begin
  #Check result of a task pause request.
  result = api_instance.pause_task_result(task_id, job_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TasksApi->pause_task_result: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **job_id** | **String**| ID of active job | 

### Return type

[**ActiveJobStatus**](ActiveJobStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, queued, working, failed


## resume_task

> ActiveJobStatus resume_task(task_id)

Resume a task.

**API Key Scope**: tasks / action

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

api_instance = Nodeum::TasksApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.

begin
  #Resume a task.
  result = api_instance.resume_task(task_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TasksApi->resume_task: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 

### Return type

[**ActiveJobStatus**](ActiveJobStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, queued, working, failed


## resume_task_result

> ActiveJobStatus resume_task_result(task_id, job_id)

Check result of a task resume request.

**API Key Scope**: tasks / action

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

api_instance = Nodeum::TasksApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
job_id = 'job_id_example' # String | ID of active job

begin
  #Check result of a task resume request.
  result = api_instance.resume_task_result(task_id, job_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TasksApi->resume_task_result: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **job_id** | **String**| ID of active job | 

### Return type

[**ActiveJobStatus**](ActiveJobStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, queued, working, failed


## run_task

> ActiveJobStatus run_task(task_id)

Run a task.

**API Key Scope**: tasks / action

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

api_instance = Nodeum::TasksApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.

begin
  #Run a task.
  result = api_instance.run_task(task_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TasksApi->run_task: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 

### Return type

[**ActiveJobStatus**](ActiveJobStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, queued, working, failed


## run_task_result

> ActiveJobStatus run_task_result(task_id, job_id)

Check result of a task run request.

**API Key Scope**: tasks / action

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

api_instance = Nodeum::TasksApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
job_id = 'job_id_example' # String | ID of active job

begin
  #Check result of a task run request.
  result = api_instance.run_task_result(task_id, job_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TasksApi->run_task_result: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **job_id** | **String**| ID of active job | 

### Return type

[**ActiveJobStatus**](ActiveJobStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, queued, working, failed


## show_task

> Task show_task(task_id)

Displays a specific task.

**API Key Scope**: tasks / show

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

api_instance = Nodeum::TasksApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.

begin
  #Displays a specific task.
  result = api_instance.show_task(task_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TasksApi->show_task: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 

### Return type

[**Task**](Task.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## stop_task

> ActiveJobStatus stop_task(task_id)

Stop a task.

**API Key Scope**: tasks / action

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

api_instance = Nodeum::TasksApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.

begin
  #Stop a task.
  result = api_instance.stop_task(task_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TasksApi->stop_task: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 

### Return type

[**ActiveJobStatus**](ActiveJobStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, queued, working, failed


## stop_task_result

> ActiveJobStatus stop_task_result(task_id, job_id)

Check result of a task stop request.

**API Key Scope**: tasks / action

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

api_instance = Nodeum::TasksApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
job_id = 'job_id_example' # String | ID of active job

begin
  #Check result of a task stop request.
  result = api_instance.stop_task_result(task_id, job_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TasksApi->stop_task_result: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **job_id** | **String**| ID of active job | 

### Return type

[**ActiveJobStatus**](ActiveJobStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, queued, working, failed


## update_task

> Task update_task(task_id, task_body)

Updates a specific task.

**API Key Scope**: tasks / update

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

api_instance = Nodeum::TasksApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_body = Nodeum::Task.new # Task | 

begin
  #Updates a specific task.
  result = api_instance.update_task(task_id, task_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TasksApi->update_task: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_body** | [**Task**](Task.md)|  | 

### Return type

[**Task**](Task.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

