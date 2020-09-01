# Nodeum::TapesApi

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**destroy_tape**](TapesApi.md#destroy_tape) | **DELETE** /tapes/{tape_id} | Destroys a specific tape. Only when it&#39;s an orphan.
[**index_tape_stats**](TapesApi.md#index_tape_stats) | **GET** /tape_stats | List all tape statistics.
[**index_tapes**](TapesApi.md#index_tapes) | **GET** /tapes | Lists all tapes.
[**index_tapes_by_pool**](TapesApi.md#index_tapes_by_pool) | **GET** /pools/{pool_id}/tapes | Lists all tapes.
[**index_tapes_by_tape_library**](TapesApi.md#index_tapes_by_tape_library) | **GET** /tape_libraries/{tape_library_id}/tapes | Lists all tapes.
[**mount_status_tape**](TapesApi.md#mount_status_tape) | **GET** /tapes/{tape_id}/mount | Get mount status of Tape.
[**mount_status_tape_by_pool**](TapesApi.md#mount_status_tape_by_pool) | **GET** /pools/{pool_id}/tapes/{tape_id}/mount | Get mount status of Tape.
[**mount_status_tape_by_tape_library**](TapesApi.md#mount_status_tape_by_tape_library) | **GET** /tape_libraries/{tape_library_id}/tapes/{tape_id}/mount | Get mount status of Tape.
[**show_tape**](TapesApi.md#show_tape) | **GET** /tapes/{tape_id} | Displays a specific tape.
[**show_tape_by_pool**](TapesApi.md#show_tape_by_pool) | **GET** /pools/{pool_id}/tapes/{tape_id} | Displays a specific tape.
[**show_tape_by_tape_library**](TapesApi.md#show_tape_by_tape_library) | **GET** /tape_libraries/{tape_library_id}/tapes/{tape_id} | Displays a specific tape.
[**show_tape_stat**](TapesApi.md#show_tape_stat) | **GET** /tapes/{tape_id}/tape_stat | Display statistic for a specific tape.
[**show_tape_stat_by_pool**](TapesApi.md#show_tape_stat_by_pool) | **GET** /pools/{pool_id}/tapes/{tape_id}/tape_stat | Display statistic for a specific tape.
[**show_tape_stat_by_tape_library**](TapesApi.md#show_tape_stat_by_tape_library) | **GET** /tape_libraries/{tape_library_id}/tapes/{tape_id}/tape_stat | Display statistic for a specific tape.



## destroy_tape

> destroy_tape(tape_id)

Destroys a specific tape. Only when it's an orphan.

**API Key Scope**: tapes / destroy

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

api_instance = Nodeum::TapesApi.new
tape_id = 'tape_id_example' # String | Numeric ID, or barcode of tape.

begin
  #Destroys a specific tape. Only when it's an orphan.
  api_instance.destroy_tape(tape_id)
rescue Nodeum::ApiError => e
  puts "Exception when calling TapesApi->destroy_tape: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_id** | **String**| Numeric ID, or barcode of tape. | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## index_tape_stats

> TapeStatCollection index_tape_stats(opts)

List all tape statistics.

**API Key Scope**: tape_stats / index

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

api_instance = Nodeum::TapesApi.new
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56 # Integer | The number of items to skip for pagination.
}

begin
  #List all tape statistics.
  result = api_instance.index_tape_stats(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TapesApi->index_tape_stats: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 

### Return type

[**TapeStatCollection**](TapeStatCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_tapes

> TapeCollection index_tapes(opts)

Lists all tapes.

**API Key Scope**: tapes / index

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

api_instance = Nodeum::TapesApi.new
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  sort_by: ['sort_by_example'], # Array<String> | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
  id: 'id_example', # String | Filter on id
  tape_library_id: 'tape_library_id_example', # String | Filter on tape library id
  pool_id: 'pool_id_example', # String | Filter on a pool id
  barcode: 'barcode_example', # String | Filter on barcode
  location: 'location_example', # String | Filter on location
  type: 'type_example', # String | Filter on type
  locked: 'locked_example', # String | Filter on locked
  scratch: 'scratch_example', # String | Filter on scratch
  cleaning: 'cleaning_example', # String | Filter on cleaning
  write_protect: 'write_protect_example', # String | Filter on write protect
  mounted: 'mounted_example', # String | Filter on mounted
  ejected: 'ejected_example', # String | Filter on ejected
  known: 'known_example', # String | Filter on known
  mount_count: 'mount_count_example', # String | Filter on mount count
  date_in: 'date_in_example', # String | Filter on date in
  date_move: 'date_move_example', # String | Filter on date move
  free: 'free_example', # String | Filter on free
  max: 'max_example', # String | Filter on max
  last_size_update: 'last_size_update_example', # String | Filter on last size update
  last_maintenance: 'last_maintenance_example', # String | Filter on last maintenance
  last_repack: 'last_repack_example', # String | Filter on last repack
  repack_status: 'repack_status_example', # String | Filter on repack status
  hash: 'hash_example', # String | Filter on hash
  force_import_type: 'force_import_type_example', # String | Filter on force import type
  need_to_check: 'need_to_check_example' # String | Filter on need to check
}

begin
  #Lists all tapes.
  result = api_instance.index_tapes(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TapesApi->index_tapes: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **sort_by** | [**Array&lt;String&gt;**](String.md)| Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. | [optional] 
 **id** | **String**| Filter on id | [optional] 
 **tape_library_id** | **String**| Filter on tape library id | [optional] 
 **pool_id** | **String**| Filter on a pool id | [optional] 
 **barcode** | **String**| Filter on barcode | [optional] 
 **location** | **String**| Filter on location | [optional] 
 **type** | **String**| Filter on type | [optional] 
 **locked** | **String**| Filter on locked | [optional] 
 **scratch** | **String**| Filter on scratch | [optional] 
 **cleaning** | **String**| Filter on cleaning | [optional] 
 **write_protect** | **String**| Filter on write protect | [optional] 
 **mounted** | **String**| Filter on mounted | [optional] 
 **ejected** | **String**| Filter on ejected | [optional] 
 **known** | **String**| Filter on known | [optional] 
 **mount_count** | **String**| Filter on mount count | [optional] 
 **date_in** | **String**| Filter on date in | [optional] 
 **date_move** | **String**| Filter on date move | [optional] 
 **free** | **String**| Filter on free | [optional] 
 **max** | **String**| Filter on max | [optional] 
 **last_size_update** | **String**| Filter on last size update | [optional] 
 **last_maintenance** | **String**| Filter on last maintenance | [optional] 
 **last_repack** | **String**| Filter on last repack | [optional] 
 **repack_status** | **String**| Filter on repack status | [optional] 
 **hash** | **String**| Filter on hash | [optional] 
 **force_import_type** | **String**| Filter on force import type | [optional] 
 **need_to_check** | **String**| Filter on need to check | [optional] 

### Return type

[**TapeCollection**](TapeCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_tapes_by_pool

> TapeCollection index_tapes_by_pool(pool_id, opts)

Lists all tapes.

**API Key Scope**: tapes / index

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

api_instance = Nodeum::TapesApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  sort_by: ['sort_by_example'], # Array<String> | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
  id: 'id_example', # String | Filter on id
  tape_library_id: 'tape_library_id_example', # String | Filter on tape library id
  barcode: 'barcode_example', # String | Filter on barcode
  location: 'location_example', # String | Filter on location
  type: 'type_example', # String | Filter on type
  locked: 'locked_example', # String | Filter on locked
  scratch: 'scratch_example', # String | Filter on scratch
  cleaning: 'cleaning_example', # String | Filter on cleaning
  write_protect: 'write_protect_example', # String | Filter on write protect
  mounted: 'mounted_example', # String | Filter on mounted
  ejected: 'ejected_example', # String | Filter on ejected
  known: 'known_example', # String | Filter on known
  mount_count: 'mount_count_example', # String | Filter on mount count
  date_in: 'date_in_example', # String | Filter on date in
  date_move: 'date_move_example', # String | Filter on date move
  free: 'free_example', # String | Filter on free
  max: 'max_example', # String | Filter on max
  last_size_update: 'last_size_update_example', # String | Filter on last size update
  last_maintenance: 'last_maintenance_example', # String | Filter on last maintenance
  last_repack: 'last_repack_example', # String | Filter on last repack
  repack_status: 'repack_status_example', # String | Filter on repack status
  hash: 'hash_example', # String | Filter on hash
  force_import_type: 'force_import_type_example', # String | Filter on force import type
  need_to_check: 'need_to_check_example' # String | Filter on need to check
}

begin
  #Lists all tapes.
  result = api_instance.index_tapes_by_pool(pool_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TapesApi->index_tapes_by_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **sort_by** | [**Array&lt;String&gt;**](String.md)| Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. | [optional] 
 **id** | **String**| Filter on id | [optional] 
 **tape_library_id** | **String**| Filter on tape library id | [optional] 
 **barcode** | **String**| Filter on barcode | [optional] 
 **location** | **String**| Filter on location | [optional] 
 **type** | **String**| Filter on type | [optional] 
 **locked** | **String**| Filter on locked | [optional] 
 **scratch** | **String**| Filter on scratch | [optional] 
 **cleaning** | **String**| Filter on cleaning | [optional] 
 **write_protect** | **String**| Filter on write protect | [optional] 
 **mounted** | **String**| Filter on mounted | [optional] 
 **ejected** | **String**| Filter on ejected | [optional] 
 **known** | **String**| Filter on known | [optional] 
 **mount_count** | **String**| Filter on mount count | [optional] 
 **date_in** | **String**| Filter on date in | [optional] 
 **date_move** | **String**| Filter on date move | [optional] 
 **free** | **String**| Filter on free | [optional] 
 **max** | **String**| Filter on max | [optional] 
 **last_size_update** | **String**| Filter on last size update | [optional] 
 **last_maintenance** | **String**| Filter on last maintenance | [optional] 
 **last_repack** | **String**| Filter on last repack | [optional] 
 **repack_status** | **String**| Filter on repack status | [optional] 
 **hash** | **String**| Filter on hash | [optional] 
 **force_import_type** | **String**| Filter on force import type | [optional] 
 **need_to_check** | **String**| Filter on need to check | [optional] 

### Return type

[**TapeCollection**](TapeCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_tapes_by_tape_library

> TapeCollection index_tapes_by_tape_library(tape_library_id, opts)

Lists all tapes.

**API Key Scope**: tapes / index

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

api_instance = Nodeum::TapesApi.new
tape_library_id = 'tape_library_id_example' # String | Numeric ID, serial, or name of tape library.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  sort_by: ['sort_by_example'], # Array<String> | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
  id: 'id_example', # String | Filter on id
  pool_id: 'pool_id_example', # String | Filter on a pool id
  barcode: 'barcode_example', # String | Filter on barcode
  location: 'location_example', # String | Filter on location
  type: 'type_example', # String | Filter on type
  locked: 'locked_example', # String | Filter on locked
  scratch: 'scratch_example', # String | Filter on scratch
  cleaning: 'cleaning_example', # String | Filter on cleaning
  write_protect: 'write_protect_example', # String | Filter on write protect
  mounted: 'mounted_example', # String | Filter on mounted
  ejected: 'ejected_example', # String | Filter on ejected
  known: 'known_example', # String | Filter on known
  mount_count: 'mount_count_example', # String | Filter on mount count
  date_in: 'date_in_example', # String | Filter on date in
  date_move: 'date_move_example', # String | Filter on date move
  free: 'free_example', # String | Filter on free
  max: 'max_example', # String | Filter on max
  last_size_update: 'last_size_update_example', # String | Filter on last size update
  last_maintenance: 'last_maintenance_example', # String | Filter on last maintenance
  last_repack: 'last_repack_example', # String | Filter on last repack
  repack_status: 'repack_status_example', # String | Filter on repack status
  hash: 'hash_example', # String | Filter on hash
  force_import_type: 'force_import_type_example', # String | Filter on force import type
  need_to_check: 'need_to_check_example' # String | Filter on need to check
}

begin
  #Lists all tapes.
  result = api_instance.index_tapes_by_tape_library(tape_library_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TapesApi->index_tapes_by_tape_library: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_library_id** | **String**| Numeric ID, serial, or name of tape library. | 
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **sort_by** | [**Array&lt;String&gt;**](String.md)| Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. | [optional] 
 **id** | **String**| Filter on id | [optional] 
 **pool_id** | **String**| Filter on a pool id | [optional] 
 **barcode** | **String**| Filter on barcode | [optional] 
 **location** | **String**| Filter on location | [optional] 
 **type** | **String**| Filter on type | [optional] 
 **locked** | **String**| Filter on locked | [optional] 
 **scratch** | **String**| Filter on scratch | [optional] 
 **cleaning** | **String**| Filter on cleaning | [optional] 
 **write_protect** | **String**| Filter on write protect | [optional] 
 **mounted** | **String**| Filter on mounted | [optional] 
 **ejected** | **String**| Filter on ejected | [optional] 
 **known** | **String**| Filter on known | [optional] 
 **mount_count** | **String**| Filter on mount count | [optional] 
 **date_in** | **String**| Filter on date in | [optional] 
 **date_move** | **String**| Filter on date move | [optional] 
 **free** | **String**| Filter on free | [optional] 
 **max** | **String**| Filter on max | [optional] 
 **last_size_update** | **String**| Filter on last size update | [optional] 
 **last_maintenance** | **String**| Filter on last maintenance | [optional] 
 **last_repack** | **String**| Filter on last repack | [optional] 
 **repack_status** | **String**| Filter on repack status | [optional] 
 **hash** | **String**| Filter on hash | [optional] 
 **force_import_type** | **String**| Filter on force import type | [optional] 
 **need_to_check** | **String**| Filter on need to check | [optional] 

### Return type

[**TapeCollection**](TapeCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mount_status_tape

> MountStatus mount_status_tape(tape_id)

Get mount status of Tape.

**API Key Scope**: tapes / mount_status

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

api_instance = Nodeum::TapesApi.new
tape_id = 'tape_id_example' # String | Numeric ID, or barcode of tape.

begin
  #Get mount status of Tape.
  result = api_instance.mount_status_tape(tape_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TapesApi->mount_status_tape: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_id** | **String**| Numeric ID, or barcode of tape. | 

### Return type

[**MountStatus**](MountStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mount_status_tape_by_pool

> MountStatus mount_status_tape_by_pool(pool_id, tape_id)

Get mount status of Tape.

**API Key Scope**: tapes / mount_status

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

api_instance = Nodeum::TapesApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
tape_id = 'tape_id_example' # String | Numeric ID, or barcode of tape.

begin
  #Get mount status of Tape.
  result = api_instance.mount_status_tape_by_pool(pool_id, tape_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TapesApi->mount_status_tape_by_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 
 **tape_id** | **String**| Numeric ID, or barcode of tape. | 

### Return type

[**MountStatus**](MountStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mount_status_tape_by_tape_library

> MountStatus mount_status_tape_by_tape_library(tape_library_id, tape_id)

Get mount status of Tape.

**API Key Scope**: tapes / mount_status

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

api_instance = Nodeum::TapesApi.new
tape_library_id = 'tape_library_id_example' # String | Numeric ID, serial, or name of tape library.
tape_id = 'tape_id_example' # String | Numeric ID, or barcode of tape.

begin
  #Get mount status of Tape.
  result = api_instance.mount_status_tape_by_tape_library(tape_library_id, tape_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TapesApi->mount_status_tape_by_tape_library: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_library_id** | **String**| Numeric ID, serial, or name of tape library. | 
 **tape_id** | **String**| Numeric ID, or barcode of tape. | 

### Return type

[**MountStatus**](MountStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_tape

> Tape show_tape(tape_id)

Displays a specific tape.

**API Key Scope**: tapes / show

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

api_instance = Nodeum::TapesApi.new
tape_id = 'tape_id_example' # String | Numeric ID, or barcode of tape.

begin
  #Displays a specific tape.
  result = api_instance.show_tape(tape_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TapesApi->show_tape: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_id** | **String**| Numeric ID, or barcode of tape. | 

### Return type

[**Tape**](Tape.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_tape_by_pool

> Tape show_tape_by_pool(pool_id, tape_id)

Displays a specific tape.

**API Key Scope**: tapes / show

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

api_instance = Nodeum::TapesApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
tape_id = 'tape_id_example' # String | Numeric ID, or barcode of tape.

begin
  #Displays a specific tape.
  result = api_instance.show_tape_by_pool(pool_id, tape_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TapesApi->show_tape_by_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 
 **tape_id** | **String**| Numeric ID, or barcode of tape. | 

### Return type

[**Tape**](Tape.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_tape_by_tape_library

> Tape show_tape_by_tape_library(tape_library_id, tape_id)

Displays a specific tape.

**API Key Scope**: tapes / show

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

api_instance = Nodeum::TapesApi.new
tape_library_id = 'tape_library_id_example' # String | Numeric ID, serial, or name of tape library.
tape_id = 'tape_id_example' # String | Numeric ID, or barcode of tape.

begin
  #Displays a specific tape.
  result = api_instance.show_tape_by_tape_library(tape_library_id, tape_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TapesApi->show_tape_by_tape_library: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_library_id** | **String**| Numeric ID, serial, or name of tape library. | 
 **tape_id** | **String**| Numeric ID, or barcode of tape. | 

### Return type

[**Tape**](Tape.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_tape_stat

> TapeStat show_tape_stat(tape_id)

Display statistic for a specific tape.

**API Key Scope**: tape_stats / show

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

api_instance = Nodeum::TapesApi.new
tape_id = 'tape_id_example' # String | Numeric ID, or barcode of tape.

begin
  #Display statistic for a specific tape.
  result = api_instance.show_tape_stat(tape_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TapesApi->show_tape_stat: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_id** | **String**| Numeric ID, or barcode of tape. | 

### Return type

[**TapeStat**](TapeStat.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_tape_stat_by_pool

> TapeStat show_tape_stat_by_pool(pool_id, tape_id)

Display statistic for a specific tape.

**API Key Scope**: tape_stats / show

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

api_instance = Nodeum::TapesApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
tape_id = 'tape_id_example' # String | Numeric ID, or barcode of tape.

begin
  #Display statistic for a specific tape.
  result = api_instance.show_tape_stat_by_pool(pool_id, tape_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TapesApi->show_tape_stat_by_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 
 **tape_id** | **String**| Numeric ID, or barcode of tape. | 

### Return type

[**TapeStat**](TapeStat.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_tape_stat_by_tape_library

> TapeStat show_tape_stat_by_tape_library(tape_library_id, tape_id)

Display statistic for a specific tape.

**API Key Scope**: tape_stats / show

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

api_instance = Nodeum::TapesApi.new
tape_library_id = 'tape_library_id_example' # String | Numeric ID, serial, or name of tape library.
tape_id = 'tape_id_example' # String | Numeric ID, or barcode of tape.

begin
  #Display statistic for a specific tape.
  result = api_instance.show_tape_stat_by_tape_library(tape_library_id, tape_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TapesApi->show_tape_stat_by_tape_library: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_library_id** | **String**| Numeric ID, serial, or name of tape library. | 
 **tape_id** | **String**| Numeric ID, or barcode of tape. | 

### Return type

[**TapeStat**](TapeStat.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

