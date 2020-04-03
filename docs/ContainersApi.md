# Nodeum::ContainersApi

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_container**](ContainersApi.md#create_container) | **POST** /containers | Creates a new container.
[**create_container_privilege**](ContainersApi.md#create_container_privilege) | **POST** /containers/{container_id}/container_privileges | Creates a new privilege on the container.
[**destroy_container**](ContainersApi.md#destroy_container) | **DELETE** /containers/{container_id} | Destroys a specific container.
[**destroy_container_privilege**](ContainersApi.md#destroy_container_privilege) | **DELETE** /containers/{container_id}/container_privileges/{container_privilege_id} | Destroys a specific privilege.
[**index_container_privileges**](ContainersApi.md#index_container_privileges) | **GET** /containers/{container_id}/container_privileges | Lists all privilege on the container.
[**index_containers**](ContainersApi.md#index_containers) | **GET** /containers | Lists all containers.
[**show_container**](ContainersApi.md#show_container) | **GET** /containers/{container_id} | Displays a specific container.
[**show_container_privilege**](ContainersApi.md#show_container_privilege) | **GET** /containers/{container_id}/container_privileges/{container_privilege_id} | Displays a specific privilege.
[**update_container**](ContainersApi.md#update_container) | **PUT** /containers/{container_id} | Updates a specific container.
[**update_container_privilege**](ContainersApi.md#update_container_privilege) | **PUT** /containers/{container_id}/container_privileges/{container_privilege_id} | Updates a specific privilege.



## create_container

> Container create_container(container_body)

Creates a new container.

It **does not** yet create the file structure and configure the samba connection. Use API v1 instead.  **API Key Scope**: containers / create

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

api_instance = Nodeum::ContainersApi.new
container_body = Nodeum::Container.new # Container | 

begin
  #Creates a new container.
  result = api_instance.create_container(container_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling ContainersApi->create_container: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **container_body** | [**Container**](Container.md)|  | 

### Return type

[**Container**](Container.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_container_privilege

> ContainerPrivilege create_container_privilege(container_id, container_privilege_body)

Creates a new privilege on the container.

**API Key Scope**: container_privileges / create

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

api_instance = Nodeum::ContainersApi.new
container_id = 'container_id_example' # String | Numeric ID or name of container.
container_privilege_body = Nodeum::ContainerPrivilege.new # ContainerPrivilege | 

begin
  #Creates a new privilege on the container.
  result = api_instance.create_container_privilege(container_id, container_privilege_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling ContainersApi->create_container_privilege: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **container_id** | **String**| Numeric ID or name of container. | 
 **container_privilege_body** | [**ContainerPrivilege**](ContainerPrivilege.md)|  | 

### Return type

[**ContainerPrivilege**](ContainerPrivilege.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy_container

> destroy_container(container_id)

Destroys a specific container.

**API Key Scope**: containers / destroy

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

api_instance = Nodeum::ContainersApi.new
container_id = 'container_id_example' # String | Numeric ID or name of container.

begin
  #Destroys a specific container.
  api_instance.destroy_container(container_id)
rescue Nodeum::ApiError => e
  puts "Exception when calling ContainersApi->destroy_container: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **container_id** | **String**| Numeric ID or name of container. | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## destroy_container_privilege

> destroy_container_privilege(container_id, container_privilege_id)

Destroys a specific privilege.

**API Key Scope**: container_privileges / destroy

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

api_instance = Nodeum::ContainersApi.new
container_id = 'container_id_example' # String | Numeric ID or name of container.
container_privilege_id = 56 # Integer | Numeric ID of container privilege.

begin
  #Destroys a specific privilege.
  api_instance.destroy_container_privilege(container_id, container_privilege_id)
rescue Nodeum::ApiError => e
  puts "Exception when calling ContainersApi->destroy_container_privilege: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **container_id** | **String**| Numeric ID or name of container. | 
 **container_privilege_id** | **Integer**| Numeric ID of container privilege. | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## index_container_privileges

> ContainerPrivilegeCollection index_container_privileges(container_id, opts)

Lists all privilege on the container.

**API Key Scope**: container_privileges / index

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

api_instance = Nodeum::ContainersApi.new
container_id = 'container_id_example' # String | Numeric ID or name of container.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  sort_by: ['sort_by_example'], # Array<String> | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
  id: 'id_example', # String | Filter on id
  name: 'name_example', # String | Filter on name
  privilege: 'privilege_example', # String | Filter on privilege
  type: 'type_example' # String | Filter on type
}

begin
  #Lists all privilege on the container.
  result = api_instance.index_container_privileges(container_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling ContainersApi->index_container_privileges: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **container_id** | **String**| Numeric ID or name of container. | 
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **sort_by** | [**Array&lt;String&gt;**](String.md)| Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. | [optional] 
 **id** | **String**| Filter on id | [optional] 
 **name** | **String**| Filter on name | [optional] 
 **privilege** | **String**| Filter on privilege | [optional] 
 **type** | **String**| Filter on type | [optional] 

### Return type

[**ContainerPrivilegeCollection**](ContainerPrivilegeCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_containers

> ContainerCollection index_containers(opts)

Lists all containers.

**API Key Scope**: containers / index

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

api_instance = Nodeum::ContainersApi.new
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  sort_by: ['sort_by_example'], # Array<String> | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
  id: 'id_example', # String | Filter on id
  name: 'name_example', # String | Filter on name
  comment: 'comment_example', # String | Filter on comment
  quota_total_size: 'quota_total_size_example', # String | Filter on quota total size
  quota_on_cache: 'quota_on_cache_example', # String | Filter on quota on cache
  stat_total_files: 'stat_total_files_example', # String | Filter on stat total files
  stat_total_size: 'stat_total_size_example', # String | Filter on stat total size
  stat_size_on_cache: 'stat_size_on_cache_example', # String | Filter on stat size on cache
  guest_right: 'guest_right_example', # String | Filter on guest right
  last_update: 'last_update_example' # String | Filter on last update
}

begin
  #Lists all containers.
  result = api_instance.index_containers(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling ContainersApi->index_containers: #{e}"
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
 **quota_total_size** | **String**| Filter on quota total size | [optional] 
 **quota_on_cache** | **String**| Filter on quota on cache | [optional] 
 **stat_total_files** | **String**| Filter on stat total files | [optional] 
 **stat_total_size** | **String**| Filter on stat total size | [optional] 
 **stat_size_on_cache** | **String**| Filter on stat size on cache | [optional] 
 **guest_right** | **String**| Filter on guest right | [optional] 
 **last_update** | **String**| Filter on last update | [optional] 

### Return type

[**ContainerCollection**](ContainerCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_container

> Container show_container(container_id)

Displays a specific container.

**API Key Scope**: containers / show

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

api_instance = Nodeum::ContainersApi.new
container_id = 'container_id_example' # String | Numeric ID or name of container.

begin
  #Displays a specific container.
  result = api_instance.show_container(container_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling ContainersApi->show_container: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **container_id** | **String**| Numeric ID or name of container. | 

### Return type

[**Container**](Container.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_container_privilege

> ContainerPrivilege show_container_privilege(container_id, container_privilege_id)

Displays a specific privilege.

**API Key Scope**: container_privileges / show

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

api_instance = Nodeum::ContainersApi.new
container_id = 'container_id_example' # String | Numeric ID or name of container.
container_privilege_id = 56 # Integer | Numeric ID of container privilege.

begin
  #Displays a specific privilege.
  result = api_instance.show_container_privilege(container_id, container_privilege_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling ContainersApi->show_container_privilege: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **container_id** | **String**| Numeric ID or name of container. | 
 **container_privilege_id** | **Integer**| Numeric ID of container privilege. | 

### Return type

[**ContainerPrivilege**](ContainerPrivilege.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_container

> Container update_container(container_id, container_body)

Updates a specific container.

It **does not** yet create the file structure and configure the samba connection. Use API v1 instead.  **API Key Scope**: containers / update

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

api_instance = Nodeum::ContainersApi.new
container_id = 'container_id_example' # String | Numeric ID or name of container.
container_body = Nodeum::Container.new # Container | 

begin
  #Updates a specific container.
  result = api_instance.update_container(container_id, container_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling ContainersApi->update_container: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **container_id** | **String**| Numeric ID or name of container. | 
 **container_body** | [**Container**](Container.md)|  | 

### Return type

[**Container**](Container.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_container_privilege

> ContainerPrivilege update_container_privilege(container_id, container_privilege_id, container_privilege_body)

Updates a specific privilege.

**API Key Scope**: container_privileges / update

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

api_instance = Nodeum::ContainersApi.new
container_id = 'container_id_example' # String | Numeric ID or name of container.
container_privilege_id = 56 # Integer | Numeric ID of container privilege.
container_privilege_body = Nodeum::ContainerPrivilege.new # ContainerPrivilege | 

begin
  #Updates a specific privilege.
  result = api_instance.update_container_privilege(container_id, container_privilege_id, container_privilege_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling ContainersApi->update_container_privilege: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **container_id** | **String**| Numeric ID or name of container. | 
 **container_privilege_id** | **Integer**| Numeric ID of container privilege. | 
 **container_privilege_body** | [**ContainerPrivilege**](ContainerPrivilege.md)|  | 

### Return type

[**ContainerPrivilege**](ContainerPrivilege.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

