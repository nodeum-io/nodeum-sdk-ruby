# Nodeum::FilesApi

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**files_children**](FilesApi.md#files_children) | **GET** /files/{file_parent_id}/children | Lists files under a specific folder.
[**files_children_by_container**](FilesApi.md#files_children_by_container) | **GET** /containers/{container_id}/files/{file_parent_id}/children | Lists files under a specific folder.
[**files_children_by_pool**](FilesApi.md#files_children_by_pool) | **GET** /pools/{pool_id}/files/{file_parent_id}/children | Lists files under a specific folder.
[**files_children_by_task**](FilesApi.md#files_children_by_task) | **GET** /tasks/{task_id}/files/{file_parent_id}/children | Lists files under a specific folder.
[**files_children_by_task_execution**](FilesApi.md#files_children_by_task_execution) | **GET** /task_executions/{task_execution_id}/files/{file_parent_id}/children | Lists files under a specific folder.
[**files_children_by_task_execution_by_task**](FilesApi.md#files_children_by_task_execution_by_task) | **GET** /tasks/{task_id}/task_executions/{task_execution_id}/files/{file_parent_id}/children | Lists files under a specific folder.
[**import_files_children_by_pool**](FilesApi.md#import_files_children_by_pool) | **GET** /pools/{pool_id}/import_files/{file_parent_id}/children | Lists files under a specific folder on tape of pools, specific for Data Exchange.
[**index_files**](FilesApi.md#index_files) | **GET** /files | Lists files on root.
[**index_files_by_container**](FilesApi.md#index_files_by_container) | **GET** /containers/{container_id}/files | Lists files on root.
[**index_files_by_pool**](FilesApi.md#index_files_by_pool) | **GET** /pools/{pool_id}/files | Lists files on root.
[**index_files_by_task**](FilesApi.md#index_files_by_task) | **GET** /tasks/{task_id}/files | Lists files on root.
[**index_files_by_task_execution**](FilesApi.md#index_files_by_task_execution) | **GET** /task_executions/{task_execution_id}/files | Lists files on root.
[**index_files_by_task_execution_by_task**](FilesApi.md#index_files_by_task_execution_by_task) | **GET** /tasks/{task_id}/task_executions/{task_execution_id}/files | Lists files on root.
[**index_import_files_by_pool**](FilesApi.md#index_import_files_by_pool) | **GET** /pools/{pool_id}/import_files | Lists files on root of tape of pools, specific for Data Exchange.
[**index_on_tapes_files_by_pool**](FilesApi.md#index_on_tapes_files_by_pool) | **GET** /pools/{pool_id}/on_tapes_files | Lists files on root of tape of pools, specific for Active and Offline.
[**index_tapes_by_file_by_pool**](FilesApi.md#index_tapes_by_file_by_pool) | **GET** /pools/{pool_id}/files/{file_id}/tapes | Displays tapes containing specific file, related to the specific pool.
[**index_tapes_by_file_by_task**](FilesApi.md#index_tapes_by_file_by_task) | **GET** /tasks/{task_id}/files/{file_id}/tapes | Displays tapes containing specific file, related to the specific task.
[**index_tapes_by_file_by_task_execution**](FilesApi.md#index_tapes_by_file_by_task_execution) | **GET** /task_executions/{task_execution_id}/files/{file_id}/tapes | Displays tapes containing specific file, related to the specific task.
[**index_tapes_by_file_by_task_execution_by_task**](FilesApi.md#index_tapes_by_file_by_task_execution_by_task) | **GET** /tasks/{task_id}/task_executions/{task_execution_id}/files/{file_id}/tapes | Displays tapes containing specific file, related to the specific task.
[**on_tapes_files_children_by_pool**](FilesApi.md#on_tapes_files_children_by_pool) | **GET** /pools/{pool_id}/on_tapes_files/{file_parent_id}/children | Lists files under a specific folder on tape of pools, specific for Active and Offline.
[**show_file**](FilesApi.md#show_file) | **GET** /files/{file_id} | Displays a specific file.
[**show_file_by_container**](FilesApi.md#show_file_by_container) | **GET** /containers/{container_id}/files/{file_id} | Displays a specific file.
[**show_file_by_pool**](FilesApi.md#show_file_by_pool) | **GET** /pools/{pool_id}/files/{file_id} | Displays a specific file.
[**show_file_by_task**](FilesApi.md#show_file_by_task) | **GET** /tasks/{task_id}/files/{file_id} | Displays a specific file.
[**show_file_by_task_execution**](FilesApi.md#show_file_by_task_execution) | **GET** /task_executions/{task_execution_id}/files/{file_id} | Displays a specific file.
[**show_file_by_task_execution_by_task**](FilesApi.md#show_file_by_task_execution_by_task) | **GET** /tasks/{task_id}/task_executions/{task_execution_id}/files/{file_id} | Displays a specific file.
[**show_import_file_by_pool**](FilesApi.md#show_import_file_by_pool) | **GET** /pools/{pool_id}/import_files/{file_id} | Displays a specific file on tape of pools, specific for Data Exchange.
[**show_on_tape_file_by_pool**](FilesApi.md#show_on_tape_file_by_pool) | **GET** /pools/{pool_id}/on_tapes_files/{file_id} | Displays a specific file on tape of pools, specific for Active and Offline.



## files_children

> NodeumFileCollection files_children(file_parent_id, opts)

Lists files under a specific folder.

**API Key Scope**: files / index

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

api_instance = Nodeum::FilesApi.new
file_parent_id = 56 # Integer | Numeric ID of parent folder.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  file_id: 'file_id_example', # String | Filter on file id
  name: 'name_example', # String | Filter on name
  type: 'type_example', # String | Filter on type
  permission: 'permission_example', # String | Filter on permission
  size: 'size_example', # String | Filter on size
  change_date: 'change_date_example', # String | Filter on change date
  modification_date: 'modification_date_example', # String | Filter on modification date
  access_date: 'access_date_example', # String | Filter on access date
  gid: 'gid_example', # String | Filter on gid
  uid: 'uid_example' # String | Filter on uid
}

begin
  #Lists files under a specific folder.
  result = api_instance.files_children(file_parent_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->files_children: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_parent_id** | **Integer**| Numeric ID of parent folder. | 
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **file_id** | **String**| Filter on file id | [optional] 
 **name** | **String**| Filter on name | [optional] 
 **type** | **String**| Filter on type | [optional] 
 **permission** | **String**| Filter on permission | [optional] 
 **size** | **String**| Filter on size | [optional] 
 **change_date** | **String**| Filter on change date | [optional] 
 **modification_date** | **String**| Filter on modification date | [optional] 
 **access_date** | **String**| Filter on access date | [optional] 
 **gid** | **String**| Filter on gid | [optional] 
 **uid** | **String**| Filter on uid | [optional] 

### Return type

[**NodeumFileCollection**](NodeumFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## files_children_by_container

> NodeumFileCollection files_children_by_container(container_id, file_parent_id, opts)

Lists files under a specific folder.

**API Key Scope**: files / index

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

api_instance = Nodeum::FilesApi.new
container_id = 'container_id_example' # String | Numeric ID or name of container.
file_parent_id = 56 # Integer | Numeric ID of parent folder.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  file_id: 'file_id_example', # String | Filter on file id
  name: 'name_example', # String | Filter on name
  type: 'type_example', # String | Filter on type
  permission: 'permission_example', # String | Filter on permission
  size: 'size_example', # String | Filter on size
  change_date: 'change_date_example', # String | Filter on change date
  modification_date: 'modification_date_example', # String | Filter on modification date
  access_date: 'access_date_example', # String | Filter on access date
  gid: 'gid_example', # String | Filter on gid
  uid: 'uid_example' # String | Filter on uid
}

begin
  #Lists files under a specific folder.
  result = api_instance.files_children_by_container(container_id, file_parent_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->files_children_by_container: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **container_id** | **String**| Numeric ID or name of container. | 
 **file_parent_id** | **Integer**| Numeric ID of parent folder. | 
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **file_id** | **String**| Filter on file id | [optional] 
 **name** | **String**| Filter on name | [optional] 
 **type** | **String**| Filter on type | [optional] 
 **permission** | **String**| Filter on permission | [optional] 
 **size** | **String**| Filter on size | [optional] 
 **change_date** | **String**| Filter on change date | [optional] 
 **modification_date** | **String**| Filter on modification date | [optional] 
 **access_date** | **String**| Filter on access date | [optional] 
 **gid** | **String**| Filter on gid | [optional] 
 **uid** | **String**| Filter on uid | [optional] 

### Return type

[**NodeumFileCollection**](NodeumFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## files_children_by_pool

> NodeumFileCollection files_children_by_pool(pool_id, file_parent_id, opts)

Lists files under a specific folder.

**API Key Scope**: files / index

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

api_instance = Nodeum::FilesApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
file_parent_id = 56 # Integer | Numeric ID of parent folder.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  file_id: 'file_id_example', # String | Filter on file id
  name: 'name_example', # String | Filter on name
  type: 'type_example', # String | Filter on type
  permission: 'permission_example', # String | Filter on permission
  size: 'size_example', # String | Filter on size
  change_date: 'change_date_example', # String | Filter on change date
  modification_date: 'modification_date_example', # String | Filter on modification date
  access_date: 'access_date_example', # String | Filter on access date
  gid: 'gid_example', # String | Filter on gid
  uid: 'uid_example' # String | Filter on uid
}

begin
  #Lists files under a specific folder.
  result = api_instance.files_children_by_pool(pool_id, file_parent_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->files_children_by_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 
 **file_parent_id** | **Integer**| Numeric ID of parent folder. | 
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **file_id** | **String**| Filter on file id | [optional] 
 **name** | **String**| Filter on name | [optional] 
 **type** | **String**| Filter on type | [optional] 
 **permission** | **String**| Filter on permission | [optional] 
 **size** | **String**| Filter on size | [optional] 
 **change_date** | **String**| Filter on change date | [optional] 
 **modification_date** | **String**| Filter on modification date | [optional] 
 **access_date** | **String**| Filter on access date | [optional] 
 **gid** | **String**| Filter on gid | [optional] 
 **uid** | **String**| Filter on uid | [optional] 

### Return type

[**NodeumFileCollection**](NodeumFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## files_children_by_task

> NodeumFileCollection files_children_by_task(task_id, file_parent_id, opts)

Lists files under a specific folder.

**API Key Scope**: files / index

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

api_instance = Nodeum::FilesApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
file_parent_id = 56 # Integer | Numeric ID of parent folder.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  file_id: 'file_id_example', # String | Filter on file id
  name: 'name_example', # String | Filter on name
  type: 'type_example', # String | Filter on type
  permission: 'permission_example', # String | Filter on permission
  size: 'size_example', # String | Filter on size
  change_date: 'change_date_example', # String | Filter on change date
  modification_date: 'modification_date_example', # String | Filter on modification date
  access_date: 'access_date_example', # String | Filter on access date
  gid: 'gid_example', # String | Filter on gid
  uid: 'uid_example' # String | Filter on uid
}

begin
  #Lists files under a specific folder.
  result = api_instance.files_children_by_task(task_id, file_parent_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->files_children_by_task: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **file_parent_id** | **Integer**| Numeric ID of parent folder. | 
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **file_id** | **String**| Filter on file id | [optional] 
 **name** | **String**| Filter on name | [optional] 
 **type** | **String**| Filter on type | [optional] 
 **permission** | **String**| Filter on permission | [optional] 
 **size** | **String**| Filter on size | [optional] 
 **change_date** | **String**| Filter on change date | [optional] 
 **modification_date** | **String**| Filter on modification date | [optional] 
 **access_date** | **String**| Filter on access date | [optional] 
 **gid** | **String**| Filter on gid | [optional] 
 **uid** | **String**| Filter on uid | [optional] 

### Return type

[**NodeumFileCollection**](NodeumFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## files_children_by_task_execution

> NodeumFileCollection files_children_by_task_execution(task_execution_id, file_parent_id, opts)

Lists files under a specific folder.

**API Key Scope**: files / index

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

api_instance = Nodeum::FilesApi.new
task_execution_id = 'task_execution_id_example' # String | Numeric ID of task execution.
file_parent_id = 56 # Integer | Numeric ID of parent folder.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  file_id: 'file_id_example', # String | Filter on file id
  name: 'name_example', # String | Filter on name
  type: 'type_example', # String | Filter on type
  permission: 'permission_example', # String | Filter on permission
  size: 'size_example', # String | Filter on size
  change_date: 'change_date_example', # String | Filter on change date
  modification_date: 'modification_date_example', # String | Filter on modification date
  access_date: 'access_date_example', # String | Filter on access date
  gid: 'gid_example', # String | Filter on gid
  uid: 'uid_example' # String | Filter on uid
}

begin
  #Lists files under a specific folder.
  result = api_instance.files_children_by_task_execution(task_execution_id, file_parent_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->files_children_by_task_execution: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_execution_id** | **String**| Numeric ID of task execution. | 
 **file_parent_id** | **Integer**| Numeric ID of parent folder. | 
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **file_id** | **String**| Filter on file id | [optional] 
 **name** | **String**| Filter on name | [optional] 
 **type** | **String**| Filter on type | [optional] 
 **permission** | **String**| Filter on permission | [optional] 
 **size** | **String**| Filter on size | [optional] 
 **change_date** | **String**| Filter on change date | [optional] 
 **modification_date** | **String**| Filter on modification date | [optional] 
 **access_date** | **String**| Filter on access date | [optional] 
 **gid** | **String**| Filter on gid | [optional] 
 **uid** | **String**| Filter on uid | [optional] 

### Return type

[**NodeumFileCollection**](NodeumFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## files_children_by_task_execution_by_task

> NodeumFileCollection files_children_by_task_execution_by_task(task_id, task_execution_id, file_parent_id, opts)

Lists files under a specific folder.

**API Key Scope**: files / index

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

api_instance = Nodeum::FilesApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_execution_id = 'task_execution_id_example' # String | Numeric ID of task execution.
file_parent_id = 56 # Integer | Numeric ID of parent folder.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  file_id: 'file_id_example', # String | Filter on file id
  name: 'name_example', # String | Filter on name
  type: 'type_example', # String | Filter on type
  permission: 'permission_example', # String | Filter on permission
  size: 'size_example', # String | Filter on size
  change_date: 'change_date_example', # String | Filter on change date
  modification_date: 'modification_date_example', # String | Filter on modification date
  access_date: 'access_date_example', # String | Filter on access date
  gid: 'gid_example', # String | Filter on gid
  uid: 'uid_example' # String | Filter on uid
}

begin
  #Lists files under a specific folder.
  result = api_instance.files_children_by_task_execution_by_task(task_id, task_execution_id, file_parent_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->files_children_by_task_execution_by_task: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_execution_id** | **String**| Numeric ID of task execution. | 
 **file_parent_id** | **Integer**| Numeric ID of parent folder. | 
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **file_id** | **String**| Filter on file id | [optional] 
 **name** | **String**| Filter on name | [optional] 
 **type** | **String**| Filter on type | [optional] 
 **permission** | **String**| Filter on permission | [optional] 
 **size** | **String**| Filter on size | [optional] 
 **change_date** | **String**| Filter on change date | [optional] 
 **modification_date** | **String**| Filter on modification date | [optional] 
 **access_date** | **String**| Filter on access date | [optional] 
 **gid** | **String**| Filter on gid | [optional] 
 **uid** | **String**| Filter on uid | [optional] 

### Return type

[**NodeumFileCollection**](NodeumFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## import_files_children_by_pool

> ImportFileCollection import_files_children_by_pool(pool_id, file_parent_id, opts)

Lists files under a specific folder on tape of pools, specific for Data Exchange.

**API Key Scope**: import_files / index

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

api_instance = Nodeum::FilesApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
file_parent_id = 56 # Integer | Numeric ID of parent folder.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  file_id: 'file_id_example', # String | Filter on file id
  name: 'name_example', # String | Filter on name
  type: 'type_example', # String | Filter on type
  permission: 'permission_example', # String | Filter on permission
  size: 'size_example', # String | Filter on size
  change_date: 'change_date_example', # String | Filter on change date
  modification_date: 'modification_date_example', # String | Filter on modification date
  access_date: 'access_date_example', # String | Filter on access date
  gid: 'gid_example', # String | Filter on gid
  uid: 'uid_example' # String | Filter on uid
}

begin
  #Lists files under a specific folder on tape of pools, specific for Data Exchange.
  result = api_instance.import_files_children_by_pool(pool_id, file_parent_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->import_files_children_by_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 
 **file_parent_id** | **Integer**| Numeric ID of parent folder. | 
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **file_id** | **String**| Filter on file id | [optional] 
 **name** | **String**| Filter on name | [optional] 
 **type** | **String**| Filter on type | [optional] 
 **permission** | **String**| Filter on permission | [optional] 
 **size** | **String**| Filter on size | [optional] 
 **change_date** | **String**| Filter on change date | [optional] 
 **modification_date** | **String**| Filter on modification date | [optional] 
 **access_date** | **String**| Filter on access date | [optional] 
 **gid** | **String**| Filter on gid | [optional] 
 **uid** | **String**| Filter on uid | [optional] 

### Return type

[**ImportFileCollection**](ImportFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_files

> NodeumFileCollection index_files(opts)

Lists files on root.

**API Key Scope**: files / index

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

api_instance = Nodeum::FilesApi.new
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  file_id: 'file_id_example', # String | Filter on file id
  name: 'name_example', # String | Filter on name
  type: 'type_example', # String | Filter on type
  permission: 'permission_example', # String | Filter on permission
  size: 'size_example', # String | Filter on size
  change_date: 'change_date_example', # String | Filter on change date
  modification_date: 'modification_date_example', # String | Filter on modification date
  access_date: 'access_date_example', # String | Filter on access date
  gid: 'gid_example', # String | Filter on gid
  uid: 'uid_example' # String | Filter on uid
}

begin
  #Lists files on root.
  result = api_instance.index_files(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->index_files: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **file_id** | **String**| Filter on file id | [optional] 
 **name** | **String**| Filter on name | [optional] 
 **type** | **String**| Filter on type | [optional] 
 **permission** | **String**| Filter on permission | [optional] 
 **size** | **String**| Filter on size | [optional] 
 **change_date** | **String**| Filter on change date | [optional] 
 **modification_date** | **String**| Filter on modification date | [optional] 
 **access_date** | **String**| Filter on access date | [optional] 
 **gid** | **String**| Filter on gid | [optional] 
 **uid** | **String**| Filter on uid | [optional] 

### Return type

[**NodeumFileCollection**](NodeumFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_files_by_container

> NodeumFileCollection index_files_by_container(container_id, opts)

Lists files on root.

**API Key Scope**: files / index

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

api_instance = Nodeum::FilesApi.new
container_id = 'container_id_example' # String | Numeric ID or name of container.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  file_id: 'file_id_example', # String | Filter on file id
  name: 'name_example', # String | Filter on name
  type: 'type_example', # String | Filter on type
  permission: 'permission_example', # String | Filter on permission
  size: 'size_example', # String | Filter on size
  change_date: 'change_date_example', # String | Filter on change date
  modification_date: 'modification_date_example', # String | Filter on modification date
  access_date: 'access_date_example', # String | Filter on access date
  gid: 'gid_example', # String | Filter on gid
  uid: 'uid_example' # String | Filter on uid
}

begin
  #Lists files on root.
  result = api_instance.index_files_by_container(container_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->index_files_by_container: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **container_id** | **String**| Numeric ID or name of container. | 
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **file_id** | **String**| Filter on file id | [optional] 
 **name** | **String**| Filter on name | [optional] 
 **type** | **String**| Filter on type | [optional] 
 **permission** | **String**| Filter on permission | [optional] 
 **size** | **String**| Filter on size | [optional] 
 **change_date** | **String**| Filter on change date | [optional] 
 **modification_date** | **String**| Filter on modification date | [optional] 
 **access_date** | **String**| Filter on access date | [optional] 
 **gid** | **String**| Filter on gid | [optional] 
 **uid** | **String**| Filter on uid | [optional] 

### Return type

[**NodeumFileCollection**](NodeumFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_files_by_pool

> NodeumFileCollection index_files_by_pool(pool_id, opts)

Lists files on root.

**API Key Scope**: files / index

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

api_instance = Nodeum::FilesApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  file_id: 'file_id_example', # String | Filter on file id
  name: 'name_example', # String | Filter on name
  type: 'type_example', # String | Filter on type
  permission: 'permission_example', # String | Filter on permission
  size: 'size_example', # String | Filter on size
  change_date: 'change_date_example', # String | Filter on change date
  modification_date: 'modification_date_example', # String | Filter on modification date
  access_date: 'access_date_example', # String | Filter on access date
  gid: 'gid_example', # String | Filter on gid
  uid: 'uid_example' # String | Filter on uid
}

begin
  #Lists files on root.
  result = api_instance.index_files_by_pool(pool_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->index_files_by_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **file_id** | **String**| Filter on file id | [optional] 
 **name** | **String**| Filter on name | [optional] 
 **type** | **String**| Filter on type | [optional] 
 **permission** | **String**| Filter on permission | [optional] 
 **size** | **String**| Filter on size | [optional] 
 **change_date** | **String**| Filter on change date | [optional] 
 **modification_date** | **String**| Filter on modification date | [optional] 
 **access_date** | **String**| Filter on access date | [optional] 
 **gid** | **String**| Filter on gid | [optional] 
 **uid** | **String**| Filter on uid | [optional] 

### Return type

[**NodeumFileCollection**](NodeumFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_files_by_task

> NodeumFileCollection index_files_by_task(task_id, opts)

Lists files on root.

**API Key Scope**: files / index

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

api_instance = Nodeum::FilesApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  file_id: 'file_id_example', # String | Filter on file id
  name: 'name_example', # String | Filter on name
  type: 'type_example', # String | Filter on type
  permission: 'permission_example', # String | Filter on permission
  size: 'size_example', # String | Filter on size
  change_date: 'change_date_example', # String | Filter on change date
  modification_date: 'modification_date_example', # String | Filter on modification date
  access_date: 'access_date_example', # String | Filter on access date
  gid: 'gid_example', # String | Filter on gid
  uid: 'uid_example' # String | Filter on uid
}

begin
  #Lists files on root.
  result = api_instance.index_files_by_task(task_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->index_files_by_task: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **file_id** | **String**| Filter on file id | [optional] 
 **name** | **String**| Filter on name | [optional] 
 **type** | **String**| Filter on type | [optional] 
 **permission** | **String**| Filter on permission | [optional] 
 **size** | **String**| Filter on size | [optional] 
 **change_date** | **String**| Filter on change date | [optional] 
 **modification_date** | **String**| Filter on modification date | [optional] 
 **access_date** | **String**| Filter on access date | [optional] 
 **gid** | **String**| Filter on gid | [optional] 
 **uid** | **String**| Filter on uid | [optional] 

### Return type

[**NodeumFileCollection**](NodeumFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_files_by_task_execution

> NodeumFileCollection index_files_by_task_execution(task_execution_id, opts)

Lists files on root.

**API Key Scope**: files / index

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

api_instance = Nodeum::FilesApi.new
task_execution_id = 'task_execution_id_example' # String | Numeric ID of task execution.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  file_id: 'file_id_example', # String | Filter on file id
  name: 'name_example', # String | Filter on name
  type: 'type_example', # String | Filter on type
  permission: 'permission_example', # String | Filter on permission
  size: 'size_example', # String | Filter on size
  change_date: 'change_date_example', # String | Filter on change date
  modification_date: 'modification_date_example', # String | Filter on modification date
  access_date: 'access_date_example', # String | Filter on access date
  gid: 'gid_example', # String | Filter on gid
  uid: 'uid_example' # String | Filter on uid
}

begin
  #Lists files on root.
  result = api_instance.index_files_by_task_execution(task_execution_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->index_files_by_task_execution: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_execution_id** | **String**| Numeric ID of task execution. | 
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **file_id** | **String**| Filter on file id | [optional] 
 **name** | **String**| Filter on name | [optional] 
 **type** | **String**| Filter on type | [optional] 
 **permission** | **String**| Filter on permission | [optional] 
 **size** | **String**| Filter on size | [optional] 
 **change_date** | **String**| Filter on change date | [optional] 
 **modification_date** | **String**| Filter on modification date | [optional] 
 **access_date** | **String**| Filter on access date | [optional] 
 **gid** | **String**| Filter on gid | [optional] 
 **uid** | **String**| Filter on uid | [optional] 

### Return type

[**NodeumFileCollection**](NodeumFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_files_by_task_execution_by_task

> NodeumFileCollection index_files_by_task_execution_by_task(task_id, task_execution_id, opts)

Lists files on root.

**API Key Scope**: files / index

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

api_instance = Nodeum::FilesApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_execution_id = 'task_execution_id_example' # String | Numeric ID of task execution.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  file_id: 'file_id_example', # String | Filter on file id
  name: 'name_example', # String | Filter on name
  type: 'type_example', # String | Filter on type
  permission: 'permission_example', # String | Filter on permission
  size: 'size_example', # String | Filter on size
  change_date: 'change_date_example', # String | Filter on change date
  modification_date: 'modification_date_example', # String | Filter on modification date
  access_date: 'access_date_example', # String | Filter on access date
  gid: 'gid_example', # String | Filter on gid
  uid: 'uid_example' # String | Filter on uid
}

begin
  #Lists files on root.
  result = api_instance.index_files_by_task_execution_by_task(task_id, task_execution_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->index_files_by_task_execution_by_task: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_execution_id** | **String**| Numeric ID of task execution. | 
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **file_id** | **String**| Filter on file id | [optional] 
 **name** | **String**| Filter on name | [optional] 
 **type** | **String**| Filter on type | [optional] 
 **permission** | **String**| Filter on permission | [optional] 
 **size** | **String**| Filter on size | [optional] 
 **change_date** | **String**| Filter on change date | [optional] 
 **modification_date** | **String**| Filter on modification date | [optional] 
 **access_date** | **String**| Filter on access date | [optional] 
 **gid** | **String**| Filter on gid | [optional] 
 **uid** | **String**| Filter on uid | [optional] 

### Return type

[**NodeumFileCollection**](NodeumFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_import_files_by_pool

> ImportFileCollection index_import_files_by_pool(pool_id, opts)

Lists files on root of tape of pools, specific for Data Exchange.

**API Key Scope**: import_files / index

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

api_instance = Nodeum::FilesApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  file_id: 'file_id_example', # String | Filter on file id
  name: 'name_example', # String | Filter on name
  type: 'type_example', # String | Filter on type
  permission: 'permission_example', # String | Filter on permission
  size: 'size_example', # String | Filter on size
  change_date: 'change_date_example', # String | Filter on change date
  modification_date: 'modification_date_example', # String | Filter on modification date
  access_date: 'access_date_example', # String | Filter on access date
  gid: 'gid_example', # String | Filter on gid
  uid: 'uid_example' # String | Filter on uid
}

begin
  #Lists files on root of tape of pools, specific for Data Exchange.
  result = api_instance.index_import_files_by_pool(pool_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->index_import_files_by_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **file_id** | **String**| Filter on file id | [optional] 
 **name** | **String**| Filter on name | [optional] 
 **type** | **String**| Filter on type | [optional] 
 **permission** | **String**| Filter on permission | [optional] 
 **size** | **String**| Filter on size | [optional] 
 **change_date** | **String**| Filter on change date | [optional] 
 **modification_date** | **String**| Filter on modification date | [optional] 
 **access_date** | **String**| Filter on access date | [optional] 
 **gid** | **String**| Filter on gid | [optional] 
 **uid** | **String**| Filter on uid | [optional] 

### Return type

[**ImportFileCollection**](ImportFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_on_tapes_files_by_pool

> OnTapesFileCollection index_on_tapes_files_by_pool(pool_id, opts)

Lists files on root of tape of pools, specific for Active and Offline.

**API Key Scope**: on_tapes_files / index

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

api_instance = Nodeum::FilesApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  name: 'name_example', # String | Filter on name
  type: 'type_example', # String | Filter on type
  size: 'size_example' # String | Filter on size
}

begin
  #Lists files on root of tape of pools, specific for Active and Offline.
  result = api_instance.index_on_tapes_files_by_pool(pool_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->index_on_tapes_files_by_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **name** | **String**| Filter on name | [optional] 
 **type** | **String**| Filter on type | [optional] 
 **size** | **String**| Filter on size | [optional] 

### Return type

[**OnTapesFileCollection**](OnTapesFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_tapes_by_file_by_pool

> TapeCollection index_tapes_by_file_by_pool(pool_id, file_id)

Displays tapes containing specific file, related to the specific pool.

**API Key Scope**: files / tapes

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

api_instance = Nodeum::FilesApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
file_id = 56 # Integer | Numeric ID of file.

begin
  #Displays tapes containing specific file, related to the specific pool.
  result = api_instance.index_tapes_by_file_by_pool(pool_id, file_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->index_tapes_by_file_by_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 
 **file_id** | **Integer**| Numeric ID of file. | 

### Return type

[**TapeCollection**](TapeCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_tapes_by_file_by_task

> TapeCollection index_tapes_by_file_by_task(task_id, file_id)

Displays tapes containing specific file, related to the specific task.

**API Key Scope**: files / tapes

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

api_instance = Nodeum::FilesApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
file_id = 56 # Integer | Numeric ID of file.

begin
  #Displays tapes containing specific file, related to the specific task.
  result = api_instance.index_tapes_by_file_by_task(task_id, file_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->index_tapes_by_file_by_task: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **file_id** | **Integer**| Numeric ID of file. | 

### Return type

[**TapeCollection**](TapeCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_tapes_by_file_by_task_execution

> TapeCollection index_tapes_by_file_by_task_execution(task_execution_id, file_id)

Displays tapes containing specific file, related to the specific task.

**API Key Scope**: files / tapes

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

api_instance = Nodeum::FilesApi.new
task_execution_id = 'task_execution_id_example' # String | Numeric ID of task execution.
file_id = 56 # Integer | Numeric ID of file.

begin
  #Displays tapes containing specific file, related to the specific task.
  result = api_instance.index_tapes_by_file_by_task_execution(task_execution_id, file_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->index_tapes_by_file_by_task_execution: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_execution_id** | **String**| Numeric ID of task execution. | 
 **file_id** | **Integer**| Numeric ID of file. | 

### Return type

[**TapeCollection**](TapeCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_tapes_by_file_by_task_execution_by_task

> TapeCollection index_tapes_by_file_by_task_execution_by_task(task_id, task_execution_id, file_id)

Displays tapes containing specific file, related to the specific task.

**API Key Scope**: files / tapes

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

api_instance = Nodeum::FilesApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_execution_id = 'task_execution_id_example' # String | Numeric ID of task execution.
file_id = 56 # Integer | Numeric ID of file.

begin
  #Displays tapes containing specific file, related to the specific task.
  result = api_instance.index_tapes_by_file_by_task_execution_by_task(task_id, task_execution_id, file_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->index_tapes_by_file_by_task_execution_by_task: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_execution_id** | **String**| Numeric ID of task execution. | 
 **file_id** | **Integer**| Numeric ID of file. | 

### Return type

[**TapeCollection**](TapeCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## on_tapes_files_children_by_pool

> OnTapesFileCollection on_tapes_files_children_by_pool(pool_id, file_parent_id, opts)

Lists files under a specific folder on tape of pools, specific for Active and Offline.

**API Key Scope**: on_tapes_files / index

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

api_instance = Nodeum::FilesApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
file_parent_id = 56 # Integer | Numeric ID of parent folder.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  name: 'name_example', # String | Filter on name
  type: 'type_example', # String | Filter on type
  size: 'size_example' # String | Filter on size
}

begin
  #Lists files under a specific folder on tape of pools, specific for Active and Offline.
  result = api_instance.on_tapes_files_children_by_pool(pool_id, file_parent_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->on_tapes_files_children_by_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 
 **file_parent_id** | **Integer**| Numeric ID of parent folder. | 
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **name** | **String**| Filter on name | [optional] 
 **type** | **String**| Filter on type | [optional] 
 **size** | **String**| Filter on size | [optional] 

### Return type

[**OnTapesFileCollection**](OnTapesFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_file

> NodeumFileWithPath show_file(file_id)

Displays a specific file.

**API Key Scope**: files / show

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

api_instance = Nodeum::FilesApi.new
file_id = 56 # Integer | Numeric ID of file.

begin
  #Displays a specific file.
  result = api_instance.show_file(file_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->show_file: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_id** | **Integer**| Numeric ID of file. | 

### Return type

[**NodeumFileWithPath**](NodeumFileWithPath.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_file_by_container

> NodeumFileWithPath show_file_by_container(container_id, file_id)

Displays a specific file.

**API Key Scope**: files / show

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

api_instance = Nodeum::FilesApi.new
container_id = 'container_id_example' # String | Numeric ID or name of container.
file_id = 56 # Integer | Numeric ID of file.

begin
  #Displays a specific file.
  result = api_instance.show_file_by_container(container_id, file_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->show_file_by_container: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **container_id** | **String**| Numeric ID or name of container. | 
 **file_id** | **Integer**| Numeric ID of file. | 

### Return type

[**NodeumFileWithPath**](NodeumFileWithPath.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_file_by_pool

> NodeumFileWithPath show_file_by_pool(pool_id, file_id)

Displays a specific file.

**API Key Scope**: files / show

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

api_instance = Nodeum::FilesApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
file_id = 56 # Integer | Numeric ID of file.

begin
  #Displays a specific file.
  result = api_instance.show_file_by_pool(pool_id, file_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->show_file_by_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 
 **file_id** | **Integer**| Numeric ID of file. | 

### Return type

[**NodeumFileWithPath**](NodeumFileWithPath.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_file_by_task

> NodeumFileWithPath show_file_by_task(task_id, file_id)

Displays a specific file.

**API Key Scope**: files / show

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

api_instance = Nodeum::FilesApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
file_id = 56 # Integer | Numeric ID of file.

begin
  #Displays a specific file.
  result = api_instance.show_file_by_task(task_id, file_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->show_file_by_task: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **file_id** | **Integer**| Numeric ID of file. | 

### Return type

[**NodeumFileWithPath**](NodeumFileWithPath.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_file_by_task_execution

> NodeumFileWithPath show_file_by_task_execution(task_execution_id, file_id)

Displays a specific file.

**API Key Scope**: files / show

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

api_instance = Nodeum::FilesApi.new
task_execution_id = 'task_execution_id_example' # String | Numeric ID of task execution.
file_id = 56 # Integer | Numeric ID of file.

begin
  #Displays a specific file.
  result = api_instance.show_file_by_task_execution(task_execution_id, file_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->show_file_by_task_execution: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_execution_id** | **String**| Numeric ID of task execution. | 
 **file_id** | **Integer**| Numeric ID of file. | 

### Return type

[**NodeumFileWithPath**](NodeumFileWithPath.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_file_by_task_execution_by_task

> NodeumFileWithPath show_file_by_task_execution_by_task(task_id, task_execution_id, file_id)

Displays a specific file.

**API Key Scope**: files / show

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

api_instance = Nodeum::FilesApi.new
task_id = 'task_id_example' # String | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
task_execution_id = 'task_execution_id_example' # String | Numeric ID of task execution.
file_id = 56 # Integer | Numeric ID of file.

begin
  #Displays a specific file.
  result = api_instance.show_file_by_task_execution_by_task(task_id, task_execution_id, file_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->show_file_by_task_execution_by_task: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **String**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_execution_id** | **String**| Numeric ID of task execution. | 
 **file_id** | **Integer**| Numeric ID of file. | 

### Return type

[**NodeumFileWithPath**](NodeumFileWithPath.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_import_file_by_pool

> ImportFileWithPath show_import_file_by_pool(pool_id, file_id)

Displays a specific file on tape of pools, specific for Data Exchange.

**API Key Scope**: import_files / show

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

api_instance = Nodeum::FilesApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
file_id = 56 # Integer | Numeric ID of file.

begin
  #Displays a specific file on tape of pools, specific for Data Exchange.
  result = api_instance.show_import_file_by_pool(pool_id, file_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->show_import_file_by_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 
 **file_id** | **Integer**| Numeric ID of file. | 

### Return type

[**ImportFileWithPath**](ImportFileWithPath.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_on_tape_file_by_pool

> OnTapesFile show_on_tape_file_by_pool(pool_id, file_id)

Displays a specific file on tape of pools, specific for Active and Offline.

**API Key Scope**: on_tapes_files / show

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

api_instance = Nodeum::FilesApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
file_id = 56 # Integer | Numeric ID of file.

begin
  #Displays a specific file on tape of pools, specific for Active and Offline.
  result = api_instance.show_on_tape_file_by_pool(pool_id, file_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling FilesApi->show_on_tape_file_by_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 
 **file_id** | **Integer**| Numeric ID of file. | 

### Return type

[**OnTapesFile**](OnTapesFile.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

