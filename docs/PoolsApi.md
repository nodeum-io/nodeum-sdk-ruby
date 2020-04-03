# Nodeum::PoolsApi

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_pool**](PoolsApi.md#create_pool) | **POST** /pools | Creates a new pool.
[**create_primary_scan**](PoolsApi.md#create_primary_scan) | **POST** /pools/{pool_id}/primary_scan | Set a new primary pool scan option.
[**destroy_pool**](PoolsApi.md#destroy_pool) | **DELETE** /pools/{pool_id} | Destroys a specific tape pool.
[**destroy_primary_scan**](PoolsApi.md#destroy_primary_scan) | **DELETE** /pools/{pool_id}/primary_scan | Disable the primary pool scan.
[**index_pools**](PoolsApi.md#index_pools) | **GET** /pools | Lists all pools.
[**mount_pool**](PoolsApi.md#mount_pool) | **PUT** /pools/{pool_id}/mount | Mount Pool.
[**mount_status_pool**](PoolsApi.md#mount_status_pool) | **GET** /pools/{pool_id}/mount | Get mount status of Pool.
[**show_pool**](PoolsApi.md#show_pool) | **GET** /pools/{pool_id} | Displays a specific pool.
[**show_primary_scan**](PoolsApi.md#show_primary_scan) | **GET** /pools/{pool_id}/primary_scan | Displays the primary pool scan status.
[**sync_primary_pool**](PoolsApi.md#sync_primary_pool) | **POST** /pools/{pool_id}/sync | Synchronize a primary after a scan (for internal use only).
[**unmount_pool**](PoolsApi.md#unmount_pool) | **DELETE** /pools/{pool_id}/mount | Unmount Pool.
[**update_pool**](PoolsApi.md#update_pool) | **PUT** /pools/{pool_id} | Updates a specific pool.
[**update_primary_scan**](PoolsApi.md#update_primary_scan) | **PUT** /pools/{pool_id}/primary_scan | Updates the existing primary pool scan option.



## create_pool

> Pool create_pool(pool_body)

Creates a new pool.

**API Key Scope**: pools / create

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

api_instance = Nodeum::PoolsApi.new
pool_body = Nodeum::PoolUp.new # PoolUp | 

begin
  #Creates a new pool.
  result = api_instance.create_pool(pool_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling PoolsApi->create_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_body** | [**PoolUp**](PoolUp.md)|  | 

### Return type

[**Pool**](Pool.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_primary_scan

> PrimaryScan create_primary_scan(pool_id, primary_scan_body)

Set a new primary pool scan option.

**API Key Scope**: primary_scans / create

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

api_instance = Nodeum::PoolsApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
primary_scan_body = Nodeum::PrimaryScan.new # PrimaryScan | 

begin
  #Set a new primary pool scan option.
  result = api_instance.create_primary_scan(pool_id, primary_scan_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling PoolsApi->create_primary_scan: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 
 **primary_scan_body** | [**PrimaryScan**](PrimaryScan.md)|  | 

### Return type

[**PrimaryScan**](PrimaryScan.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy_pool

> destroy_pool(pool_id)

Destroys a specific tape pool.

**API Key Scope**: pools / destroy

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

api_instance = Nodeum::PoolsApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.

begin
  #Destroys a specific tape pool.
  api_instance.destroy_pool(pool_id)
rescue Nodeum::ApiError => e
  puts "Exception when calling PoolsApi->destroy_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## destroy_primary_scan

> destroy_primary_scan(pool_id)

Disable the primary pool scan.

**API Key Scope**: primary_scans / destroy

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

api_instance = Nodeum::PoolsApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.

begin
  #Disable the primary pool scan.
  api_instance.destroy_primary_scan(pool_id)
rescue Nodeum::ApiError => e
  puts "Exception when calling PoolsApi->destroy_primary_scan: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## index_pools

> PoolCollection index_pools(opts)

Lists all pools.

**API Key Scope**: pools / index

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

api_instance = Nodeum::PoolsApi.new
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  sort_by: ['sort_by_example'], # Array<String> | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
  id: 'id_example', # String | Filter on id
  name: 'name_example', # String | Filter on name
  comment: 'comment_example', # String | Filter on comment
  type: 'type_example', # String | Filter on type
  content: 'content_example', # String | Filter on content
  primary_id: 'primary_id_example' # String | Filter on primary id
}

begin
  #Lists all pools.
  result = api_instance.index_pools(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling PoolsApi->index_pools: #{e}"
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
 **type** | **String**| Filter on type | [optional] 
 **content** | **String**| Filter on content | [optional] 
 **primary_id** | **String**| Filter on primary id | [optional] 

### Return type

[**PoolCollection**](PoolCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mount_pool

> MountStatus mount_pool(pool_id)

Mount Pool.

**API Key Scope**: pools / mount

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

api_instance = Nodeum::PoolsApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.

begin
  #Mount Pool.
  result = api_instance.mount_pool(pool_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling PoolsApi->mount_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 

### Return type

[**MountStatus**](MountStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mount_status_pool

> MountStatus mount_status_pool(pool_id)

Get mount status of Pool.

**API Key Scope**: pools / mount_status

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

api_instance = Nodeum::PoolsApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.

begin
  #Get mount status of Pool.
  result = api_instance.mount_status_pool(pool_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling PoolsApi->mount_status_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 

### Return type

[**MountStatus**](MountStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_pool

> Pool show_pool(pool_id)

Displays a specific pool.

**API Key Scope**: pools / show

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

api_instance = Nodeum::PoolsApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.

begin
  #Displays a specific pool.
  result = api_instance.show_pool(pool_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling PoolsApi->show_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 

### Return type

[**Pool**](Pool.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_primary_scan

> PrimaryScan show_primary_scan(pool_id)

Displays the primary pool scan status.

**API Key Scope**: primary_scans / show

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

api_instance = Nodeum::PoolsApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.

begin
  #Displays the primary pool scan status.
  result = api_instance.show_primary_scan(pool_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling PoolsApi->show_primary_scan: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 

### Return type

[**PrimaryScan**](PrimaryScan.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## sync_primary_pool

> sync_primary_pool(pool_id, tx)

Synchronize a primary after a scan (for internal use only).

**API Key Scope**: pools / sync_primary

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

api_instance = Nodeum::PoolsApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
tx = 56 # Integer | New transaction number.

begin
  #Synchronize a primary after a scan (for internal use only).
  api_instance.sync_primary_pool(pool_id, tx)
rescue Nodeum::ApiError => e
  puts "Exception when calling PoolsApi->sync_primary_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 
 **tx** | **Integer**| New transaction number. | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## unmount_pool

> MountStatus unmount_pool(pool_id)

Unmount Pool.

**API Key Scope**: pools / unmount

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

api_instance = Nodeum::PoolsApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.

begin
  #Unmount Pool.
  result = api_instance.unmount_pool(pool_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling PoolsApi->unmount_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 

### Return type

[**MountStatus**](MountStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_pool

> Pool update_pool(pool_id, pool_body)

Updates a specific pool.

**API Key Scope**: pools / update

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

api_instance = Nodeum::PoolsApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
pool_body = Nodeum::PoolUp.new # PoolUp | 

begin
  #Updates a specific pool.
  result = api_instance.update_pool(pool_id, pool_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling PoolsApi->update_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 
 **pool_body** | [**PoolUp**](PoolUp.md)|  | 

### Return type

[**Pool**](Pool.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_primary_scan

> PrimaryScan update_primary_scan(pool_id, primary_scan_body)

Updates the existing primary pool scan option.

**API Key Scope**: primary_scans / update

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

api_instance = Nodeum::PoolsApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
primary_scan_body = Nodeum::PrimaryScan.new # PrimaryScan | 

begin
  #Updates the existing primary pool scan option.
  result = api_instance.update_primary_scan(pool_id, primary_scan_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling PoolsApi->update_primary_scan: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 
 **primary_scan_body** | [**PrimaryScan**](PrimaryScan.md)|  | 

### Return type

[**PrimaryScan**](PrimaryScan.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

