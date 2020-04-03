# Nodeum::NasSharesApi

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_nas_share_by_nas**](NasSharesApi.md#create_nas_share_by_nas) | **POST** /nas/{nas_id}/nas_shares | Creates a new NAS share.
[**destroy_nas_share**](NasSharesApi.md#destroy_nas_share) | **DELETE** /nas_shares/{nas_share_id} | Destroys a specific NAS share.
[**destroy_nas_share_by_nas**](NasSharesApi.md#destroy_nas_share_by_nas) | **DELETE** /nas/{nas_id}/nas_shares/{nas_share_id} | Destroys a specific NAS share.
[**destroy_nas_share_by_pool**](NasSharesApi.md#destroy_nas_share_by_pool) | **DELETE** /pools/{pool_id}/nas_shares/{nas_share_id} | Destroys a specific NAS share.
[**index_nas_shares**](NasSharesApi.md#index_nas_shares) | **GET** /nas_shares | Lists all NAS shares.
[**index_nas_shares_by_nas**](NasSharesApi.md#index_nas_shares_by_nas) | **GET** /nas/{nas_id}/nas_shares | Lists all NAS shares.
[**index_nas_shares_by_pool**](NasSharesApi.md#index_nas_shares_by_pool) | **GET** /pools/{pool_id}/nas_shares | Lists all NAS shares from pool.
[**mount_status_nas_share**](NasSharesApi.md#mount_status_nas_share) | **GET** /nas_shares/{nas_share_id}/mount | Get mount status of NAS Share.
[**mount_status_nas_share_by_nas**](NasSharesApi.md#mount_status_nas_share_by_nas) | **GET** /nas/{nas_id}/nas_shares/{nas_share_id}/mount | Get mount status of NAS Share.
[**mount_status_nas_share_by_pool**](NasSharesApi.md#mount_status_nas_share_by_pool) | **GET** /pools/{pool_id}/nas_shares/{nas_share_id}/mount | Get mount status of NAS Share.
[**show_nas_share**](NasSharesApi.md#show_nas_share) | **GET** /nas_shares/{nas_share_id} | Displays a specific NAS share.
[**show_nas_share_by_nas**](NasSharesApi.md#show_nas_share_by_nas) | **GET** /nas/{nas_id}/nas_shares/{nas_share_id} | Displays a specific NAS share.
[**show_nas_share_by_pool**](NasSharesApi.md#show_nas_share_by_pool) | **GET** /pools/{pool_id}/nas_shares/{nas_share_id} | Displays a specific NAS share.
[**test_nas_share**](NasSharesApi.md#test_nas_share) | **PUT** /nas/{nas_id}/nas_shares/-/test | Test an unsaved NAS Share.
[**test_result_nas_share**](NasSharesApi.md#test_result_nas_share) | **GET** /nas/{nas_id}/nas_shares/-/test | Check result of a NAS Share test job.
[**update_nas_share**](NasSharesApi.md#update_nas_share) | **PUT** /nas_shares/{nas_share_id} | Updates a specific NAS share.
[**update_nas_share_by_nas**](NasSharesApi.md#update_nas_share_by_nas) | **PUT** /nas/{nas_id}/nas_shares/{nas_share_id} | Updates a specific NAS share.
[**update_nas_share_by_pool**](NasSharesApi.md#update_nas_share_by_pool) | **PUT** /pools/{pool_id}/nas_shares/{nas_share_id} | Updates a specific NAS share.



## create_nas_share_by_nas

> NasShare create_nas_share_by_nas(nas_id, nas_share_body)

Creates a new NAS share.

**API Key Scope**: nas_shares / create

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

api_instance = Nodeum::NasSharesApi.new
nas_id = 'nas_id_example' # String | Numeric ID or name of NAS.
nas_share_body = Nodeum::NasShare.new # NasShare | 

begin
  #Creates a new NAS share.
  result = api_instance.create_nas_share_by_nas(nas_id, nas_share_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling NasSharesApi->create_nas_share_by_nas: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_id** | **String**| Numeric ID or name of NAS. | 
 **nas_share_body** | [**NasShare**](NasShare.md)|  | 

### Return type

[**NasShare**](NasShare.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy_nas_share

> destroy_nas_share(nas_share_id)

Destroys a specific NAS share.

**API Key Scope**: nas_shares / destroy

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

api_instance = Nodeum::NasSharesApi.new
nas_share_id = 'nas_share_id_example' # String | Numeric ID or name of NAS share.

begin
  #Destroys a specific NAS share.
  api_instance.destroy_nas_share(nas_share_id)
rescue Nodeum::ApiError => e
  puts "Exception when calling NasSharesApi->destroy_nas_share: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_share_id** | **String**| Numeric ID or name of NAS share. | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## destroy_nas_share_by_nas

> destroy_nas_share_by_nas(nas_id, nas_share_id)

Destroys a specific NAS share.

**API Key Scope**: nas_shares / destroy

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

api_instance = Nodeum::NasSharesApi.new
nas_id = 'nas_id_example' # String | Numeric ID or name of NAS.
nas_share_id = 'nas_share_id_example' # String | Numeric ID or name of NAS share.

begin
  #Destroys a specific NAS share.
  api_instance.destroy_nas_share_by_nas(nas_id, nas_share_id)
rescue Nodeum::ApiError => e
  puts "Exception when calling NasSharesApi->destroy_nas_share_by_nas: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_id** | **String**| Numeric ID or name of NAS. | 
 **nas_share_id** | **String**| Numeric ID or name of NAS share. | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## destroy_nas_share_by_pool

> destroy_nas_share_by_pool(pool_id, nas_share_id)

Destroys a specific NAS share.

**API Key Scope**: nas_shares / destroy

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

api_instance = Nodeum::NasSharesApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
nas_share_id = 'nas_share_id_example' # String | Numeric ID or name of NAS share.

begin
  #Destroys a specific NAS share.
  api_instance.destroy_nas_share_by_pool(pool_id, nas_share_id)
rescue Nodeum::ApiError => e
  puts "Exception when calling NasSharesApi->destroy_nas_share_by_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 
 **nas_share_id** | **String**| Numeric ID or name of NAS share. | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## index_nas_shares

> NasShareCollection index_nas_shares(opts)

Lists all NAS shares.

**API Key Scope**: nas_shares / index   Optional API Key Explicit Scope: nas_shares / get_password

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

api_instance = Nodeum::NasSharesApi.new
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  sort_by: ['sort_by_example'], # Array<String> | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
  id: 'id_example', # String | Filter on id
  name: 'name_example', # String | Filter on name
  path: 'path_example', # String | Filter on path
  options: 'options_example', # String | Filter on options
  username: 'username_example', # String | Filter on username
  nas_id: 'nas_id_example', # String | Filter on NAS id
  pool_id: 'pool_id_example' # String | Filter on a pool id
}

begin
  #Lists all NAS shares.
  result = api_instance.index_nas_shares(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling NasSharesApi->index_nas_shares: #{e}"
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
 **path** | **String**| Filter on path | [optional] 
 **options** | **String**| Filter on options | [optional] 
 **username** | **String**| Filter on username | [optional] 
 **nas_id** | **String**| Filter on NAS id | [optional] 
 **pool_id** | **String**| Filter on a pool id | [optional] 

### Return type

[**NasShareCollection**](NasShareCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_nas_shares_by_nas

> NasShareCollection index_nas_shares_by_nas(nas_id, opts)

Lists all NAS shares.

**API Key Scope**: nas_shares / index   Optional API Key Explicit Scope: nas_shares / get_password

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

api_instance = Nodeum::NasSharesApi.new
nas_id = 'nas_id_example' # String | Numeric ID or name of NAS.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  sort_by: ['sort_by_example'], # Array<String> | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
  id: 'id_example', # String | Filter on id
  name: 'name_example', # String | Filter on name
  path: 'path_example', # String | Filter on path
  options: 'options_example', # String | Filter on options
  username: 'username_example', # String | Filter on username
  pool_id: 'pool_id_example' # String | Filter on a pool id
}

begin
  #Lists all NAS shares.
  result = api_instance.index_nas_shares_by_nas(nas_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling NasSharesApi->index_nas_shares_by_nas: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_id** | **String**| Numeric ID or name of NAS. | 
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **sort_by** | [**Array&lt;String&gt;**](String.md)| Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. | [optional] 
 **id** | **String**| Filter on id | [optional] 
 **name** | **String**| Filter on name | [optional] 
 **path** | **String**| Filter on path | [optional] 
 **options** | **String**| Filter on options | [optional] 
 **username** | **String**| Filter on username | [optional] 
 **pool_id** | **String**| Filter on a pool id | [optional] 

### Return type

[**NasShareCollection**](NasShareCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_nas_shares_by_pool

> NasShareCollection index_nas_shares_by_pool(pool_id, opts)

Lists all NAS shares from pool.

**API Key Scope**: nas_shares / index   Optional API Key Explicit Scope: nas_shares / get_password

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

api_instance = Nodeum::NasSharesApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  sort_by: ['sort_by_example'], # Array<String> | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
  id: 'id_example', # String | Filter on id
  name: 'name_example', # String | Filter on name
  path: 'path_example', # String | Filter on path
  options: 'options_example', # String | Filter on options
  username: 'username_example', # String | Filter on username
  nas_id: 'nas_id_example' # String | Filter on NAS id
}

begin
  #Lists all NAS shares from pool.
  result = api_instance.index_nas_shares_by_pool(pool_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling NasSharesApi->index_nas_shares_by_pool: #{e}"
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
 **name** | **String**| Filter on name | [optional] 
 **path** | **String**| Filter on path | [optional] 
 **options** | **String**| Filter on options | [optional] 
 **username** | **String**| Filter on username | [optional] 
 **nas_id** | **String**| Filter on NAS id | [optional] 

### Return type

[**NasShareCollection**](NasShareCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mount_status_nas_share

> MountStatus mount_status_nas_share(nas_share_id)

Get mount status of NAS Share.

**API Key Scope**: nas_shares / mount_status

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

api_instance = Nodeum::NasSharesApi.new
nas_share_id = 'nas_share_id_example' # String | Numeric ID or name of NAS share.

begin
  #Get mount status of NAS Share.
  result = api_instance.mount_status_nas_share(nas_share_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling NasSharesApi->mount_status_nas_share: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_share_id** | **String**| Numeric ID or name of NAS share. | 

### Return type

[**MountStatus**](MountStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mount_status_nas_share_by_nas

> MountStatus mount_status_nas_share_by_nas(nas_id, nas_share_id)

Get mount status of NAS Share.

**API Key Scope**: nas_shares / mount_status

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

api_instance = Nodeum::NasSharesApi.new
nas_id = 'nas_id_example' # String | Numeric ID or name of NAS.
nas_share_id = 'nas_share_id_example' # String | Numeric ID or name of NAS share.

begin
  #Get mount status of NAS Share.
  result = api_instance.mount_status_nas_share_by_nas(nas_id, nas_share_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling NasSharesApi->mount_status_nas_share_by_nas: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_id** | **String**| Numeric ID or name of NAS. | 
 **nas_share_id** | **String**| Numeric ID or name of NAS share. | 

### Return type

[**MountStatus**](MountStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mount_status_nas_share_by_pool

> MountStatus mount_status_nas_share_by_pool(pool_id, nas_share_id)

Get mount status of NAS Share.

**API Key Scope**: nas_shares / mount_status

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

api_instance = Nodeum::NasSharesApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
nas_share_id = 'nas_share_id_example' # String | Numeric ID or name of NAS share.

begin
  #Get mount status of NAS Share.
  result = api_instance.mount_status_nas_share_by_pool(pool_id, nas_share_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling NasSharesApi->mount_status_nas_share_by_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 
 **nas_share_id** | **String**| Numeric ID or name of NAS share. | 

### Return type

[**MountStatus**](MountStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_nas_share

> NasShare show_nas_share(nas_share_id)

Displays a specific NAS share.

**API Key Scope**: nas_shares / show   Optional API Key Explicit Scope: nas_shares / get_password

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

api_instance = Nodeum::NasSharesApi.new
nas_share_id = 'nas_share_id_example' # String | Numeric ID or name of NAS share.

begin
  #Displays a specific NAS share.
  result = api_instance.show_nas_share(nas_share_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling NasSharesApi->show_nas_share: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_share_id** | **String**| Numeric ID or name of NAS share. | 

### Return type

[**NasShare**](NasShare.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_nas_share_by_nas

> NasShare show_nas_share_by_nas(nas_id, nas_share_id)

Displays a specific NAS share.

**API Key Scope**: nas_shares / show   Optional API Key Explicit Scope: nas_shares / get_password

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

api_instance = Nodeum::NasSharesApi.new
nas_id = 'nas_id_example' # String | Numeric ID or name of NAS.
nas_share_id = 'nas_share_id_example' # String | Numeric ID or name of NAS share.

begin
  #Displays a specific NAS share.
  result = api_instance.show_nas_share_by_nas(nas_id, nas_share_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling NasSharesApi->show_nas_share_by_nas: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_id** | **String**| Numeric ID or name of NAS. | 
 **nas_share_id** | **String**| Numeric ID or name of NAS share. | 

### Return type

[**NasShare**](NasShare.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_nas_share_by_pool

> NasShare show_nas_share_by_pool(pool_id, nas_share_id)

Displays a specific NAS share.

**API Key Scope**: nas_shares / show   Optional API Key Explicit Scope: nas_shares / get_password

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

api_instance = Nodeum::NasSharesApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
nas_share_id = 'nas_share_id_example' # String | Numeric ID or name of NAS share.

begin
  #Displays a specific NAS share.
  result = api_instance.show_nas_share_by_pool(pool_id, nas_share_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling NasSharesApi->show_nas_share_by_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 
 **nas_share_id** | **String**| Numeric ID or name of NAS share. | 

### Return type

[**NasShare**](NasShare.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## test_nas_share

> ActiveJobStatus test_nas_share(nas_id, nas_share_body)

Test an unsaved NAS Share.

**API Key Scope**: nas_shares / test

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

api_instance = Nodeum::NasSharesApi.new
nas_id = 'nas_id_example' # String | Numeric ID or name of NAS.
nas_share_body = Nodeum::NasShare.new # NasShare | 

begin
  #Test an unsaved NAS Share.
  result = api_instance.test_nas_share(nas_id, nas_share_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling NasSharesApi->test_nas_share: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_id** | **String**| Numeric ID or name of NAS. | 
 **nas_share_body** | [**NasShare**](NasShare.md)|  | 

### Return type

[**ActiveJobStatus**](ActiveJobStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, queued, working, failed


## test_result_nas_share

> ActiveJobStatus test_result_nas_share(nas_id, job_id)

Check result of a NAS Share test job.

**API Key Scope**: nas_shares / test

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

api_instance = Nodeum::NasSharesApi.new
nas_id = 'nas_id_example' # String | Numeric ID or name of NAS.
job_id = 'job_id_example' # String | ID of active job

begin
  #Check result of a NAS Share test job.
  result = api_instance.test_result_nas_share(nas_id, job_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling NasSharesApi->test_result_nas_share: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_id** | **String**| Numeric ID or name of NAS. | 
 **job_id** | **String**| ID of active job | 

### Return type

[**ActiveJobStatus**](ActiveJobStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, queued, working, failed


## update_nas_share

> NasShare update_nas_share(nas_share_id, nas_share_body)

Updates a specific NAS share.

**API Key Scope**: nas_shares / update

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

api_instance = Nodeum::NasSharesApi.new
nas_share_id = 'nas_share_id_example' # String | Numeric ID or name of NAS share.
nas_share_body = Nodeum::NasShare.new # NasShare | 

begin
  #Updates a specific NAS share.
  result = api_instance.update_nas_share(nas_share_id, nas_share_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling NasSharesApi->update_nas_share: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_share_id** | **String**| Numeric ID or name of NAS share. | 
 **nas_share_body** | [**NasShare**](NasShare.md)|  | 

### Return type

[**NasShare**](NasShare.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_nas_share_by_nas

> NasShare update_nas_share_by_nas(nas_id, nas_share_id, nas_share_body)

Updates a specific NAS share.

**API Key Scope**: nas_shares / update

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

api_instance = Nodeum::NasSharesApi.new
nas_id = 'nas_id_example' # String | Numeric ID or name of NAS.
nas_share_id = 'nas_share_id_example' # String | Numeric ID or name of NAS share.
nas_share_body = Nodeum::NasShare.new # NasShare | 

begin
  #Updates a specific NAS share.
  result = api_instance.update_nas_share_by_nas(nas_id, nas_share_id, nas_share_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling NasSharesApi->update_nas_share_by_nas: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_id** | **String**| Numeric ID or name of NAS. | 
 **nas_share_id** | **String**| Numeric ID or name of NAS share. | 
 **nas_share_body** | [**NasShare**](NasShare.md)|  | 

### Return type

[**NasShare**](NasShare.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_nas_share_by_pool

> NasShare update_nas_share_by_pool(pool_id, nas_share_id, nas_share_body)

Updates a specific NAS share.

**API Key Scope**: nas_shares / update

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

api_instance = Nodeum::NasSharesApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
nas_share_id = 'nas_share_id_example' # String | Numeric ID or name of NAS share.
nas_share_body = Nodeum::NasShare.new # NasShare | 

begin
  #Updates a specific NAS share.
  result = api_instance.update_nas_share_by_pool(pool_id, nas_share_id, nas_share_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling NasSharesApi->update_nas_share_by_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 
 **nas_share_id** | **String**| Numeric ID or name of NAS share. | 
 **nas_share_body** | [**NasShare**](NasShare.md)|  | 

### Return type

[**NasShare**](NasShare.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

