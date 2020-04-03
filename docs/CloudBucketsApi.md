# Nodeum::CloudBucketsApi

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**index_cloud_buckets**](CloudBucketsApi.md#index_cloud_buckets) | **GET** /cloud_buckets | Lists all cloud buckets.
[**index_cloud_buckets_by_cloud_connector**](CloudBucketsApi.md#index_cloud_buckets_by_cloud_connector) | **GET** /cloud_connectors/{cloud_connector_id}/cloud_buckets | Lists all cloud buckets.
[**index_cloud_buckets_by_pool**](CloudBucketsApi.md#index_cloud_buckets_by_pool) | **GET** /pools/{pool_id}/cloud_buckets | Lists all cloud buckets from pool.
[**mount_status_cloud_bucket**](CloudBucketsApi.md#mount_status_cloud_bucket) | **GET** /cloud_buckets/{cloud_bucket_id}/mount | Get mount status of Cloud bucket.
[**mount_status_cloud_bucket_by_cloud_connector**](CloudBucketsApi.md#mount_status_cloud_bucket_by_cloud_connector) | **GET** /cloud_connectors/{cloud_connector_id}/cloud_buckets/{cloud_bucket_id}/mount | Get mount status of Cloud bucket.
[**mount_status_cloud_bucket_by_pool**](CloudBucketsApi.md#mount_status_cloud_bucket_by_pool) | **GET** /pools/{pool_id}/cloud_buckets/{cloud_bucket_id}/mount | Get mount status of Cloud bucket.
[**show_cloud_bucket**](CloudBucketsApi.md#show_cloud_bucket) | **GET** /cloud_buckets/{cloud_bucket_id} | Displays a specific cloud bucket.
[**show_cloud_bucket_by_cloud_connector**](CloudBucketsApi.md#show_cloud_bucket_by_cloud_connector) | **GET** /cloud_connectors/{cloud_connector_id}/cloud_buckets/{cloud_bucket_id} | Displays a specific cloud bucket.
[**show_cloud_bucket_by_pool**](CloudBucketsApi.md#show_cloud_bucket_by_pool) | **GET** /pools/{pool_id}/cloud_buckets/{cloud_bucket_id} | Displays a specific cloud bucket.
[**sync_cloud_buckets**](CloudBucketsApi.md#sync_cloud_buckets) | **PUT** /cloud_connectors/{cloud_connector_id}/cloud_buckets/-/sync | Synchronize internal cloud buckets with their remote equivalent.
[**sync_result_cloud_buckets**](CloudBucketsApi.md#sync_result_cloud_buckets) | **GET** /cloud_connectors/{cloud_connector_id}/cloud_buckets/-/sync | Check result of cloud connector sync job.
[**update_cloud_bucket**](CloudBucketsApi.md#update_cloud_bucket) | **PUT** /cloud_buckets/{cloud_bucket_id} | Updates a specific cloud bucket.
[**update_cloud_bucket_by_cloud_connector**](CloudBucketsApi.md#update_cloud_bucket_by_cloud_connector) | **PUT** /cloud_connectors/{cloud_connector_id}/cloud_buckets/{cloud_bucket_id} | Updates a specific cloud bucket.
[**update_cloud_bucket_by_pool**](CloudBucketsApi.md#update_cloud_bucket_by_pool) | **PUT** /pools/{pool_id}/cloud_buckets/{cloud_bucket_id} | Updates a specific cloud bucket.



## index_cloud_buckets

> CloudBucketCollection index_cloud_buckets(opts)

Lists all cloud buckets.

**API Key Scope**: cloud_buckets / index

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

api_instance = Nodeum::CloudBucketsApi.new
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  sort_by: ['sort_by_example'], # Array<String> | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
  id: 'id_example', # String | Filter on id
  cloud_connector_id: 'cloud_connector_id_example', # String | Filter on cloud connector id
  pool_id: 'pool_id_example', # String | Filter on a pool id
  name: 'name_example', # String | Filter on name
  location: 'location_example', # String | Filter on location
  price: 'price_example' # String | Filter on price
}

begin
  #Lists all cloud buckets.
  result = api_instance.index_cloud_buckets(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling CloudBucketsApi->index_cloud_buckets: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **sort_by** | [**Array&lt;String&gt;**](String.md)| Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. | [optional] 
 **id** | **String**| Filter on id | [optional] 
 **cloud_connector_id** | **String**| Filter on cloud connector id | [optional] 
 **pool_id** | **String**| Filter on a pool id | [optional] 
 **name** | **String**| Filter on name | [optional] 
 **location** | **String**| Filter on location | [optional] 
 **price** | **String**| Filter on price | [optional] 

### Return type

[**CloudBucketCollection**](CloudBucketCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_cloud_buckets_by_cloud_connector

> CloudBucketCollection index_cloud_buckets_by_cloud_connector(cloud_connector_id, opts)

Lists all cloud buckets.

**API Key Scope**: cloud_buckets / index

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

api_instance = Nodeum::CloudBucketsApi.new
cloud_connector_id = 'cloud_connector_id_example' # String | Numeric ID or name of cloud connector.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  sort_by: ['sort_by_example'], # Array<String> | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
  id: 'id_example', # String | Filter on id
  pool_id: 'pool_id_example', # String | Filter on a pool id
  name: 'name_example', # String | Filter on name
  location: 'location_example', # String | Filter on location
  price: 'price_example' # String | Filter on price
}

begin
  #Lists all cloud buckets.
  result = api_instance.index_cloud_buckets_by_cloud_connector(cloud_connector_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling CloudBucketsApi->index_cloud_buckets_by_cloud_connector: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_connector_id** | **String**| Numeric ID or name of cloud connector. | 
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 
 **sort_by** | [**Array&lt;String&gt;**](String.md)| Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. | [optional] 
 **id** | **String**| Filter on id | [optional] 
 **pool_id** | **String**| Filter on a pool id | [optional] 
 **name** | **String**| Filter on name | [optional] 
 **location** | **String**| Filter on location | [optional] 
 **price** | **String**| Filter on price | [optional] 

### Return type

[**CloudBucketCollection**](CloudBucketCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_cloud_buckets_by_pool

> CloudBucketCollection index_cloud_buckets_by_pool(pool_id, opts)

Lists all cloud buckets from pool.

**API Key Scope**: cloud_buckets / index

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

api_instance = Nodeum::CloudBucketsApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  sort_by: ['sort_by_example'], # Array<String> | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
  id: 'id_example', # String | Filter on id
  cloud_connector_id: 'cloud_connector_id_example', # String | Filter on cloud connector id
  name: 'name_example', # String | Filter on name
  location: 'location_example', # String | Filter on location
  price: 'price_example' # String | Filter on price
}

begin
  #Lists all cloud buckets from pool.
  result = api_instance.index_cloud_buckets_by_pool(pool_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling CloudBucketsApi->index_cloud_buckets_by_pool: #{e}"
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
 **cloud_connector_id** | **String**| Filter on cloud connector id | [optional] 
 **name** | **String**| Filter on name | [optional] 
 **location** | **String**| Filter on location | [optional] 
 **price** | **String**| Filter on price | [optional] 

### Return type

[**CloudBucketCollection**](CloudBucketCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mount_status_cloud_bucket

> MountStatus mount_status_cloud_bucket(cloud_bucket_id)

Get mount status of Cloud bucket.

**API Key Scope**: cloud_buckets / mount_status

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

api_instance = Nodeum::CloudBucketsApi.new
cloud_bucket_id = 'cloud_bucket_id_example' # String | Numeric ID or name of cloud bucket.

begin
  #Get mount status of Cloud bucket.
  result = api_instance.mount_status_cloud_bucket(cloud_bucket_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling CloudBucketsApi->mount_status_cloud_bucket: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_bucket_id** | **String**| Numeric ID or name of cloud bucket. | 

### Return type

[**MountStatus**](MountStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mount_status_cloud_bucket_by_cloud_connector

> MountStatus mount_status_cloud_bucket_by_cloud_connector(cloud_connector_id, cloud_bucket_id)

Get mount status of Cloud bucket.

**API Key Scope**: cloud_buckets / mount_status

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

api_instance = Nodeum::CloudBucketsApi.new
cloud_connector_id = 'cloud_connector_id_example' # String | Numeric ID or name of cloud connector.
cloud_bucket_id = 'cloud_bucket_id_example' # String | Numeric ID or name of cloud bucket.

begin
  #Get mount status of Cloud bucket.
  result = api_instance.mount_status_cloud_bucket_by_cloud_connector(cloud_connector_id, cloud_bucket_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling CloudBucketsApi->mount_status_cloud_bucket_by_cloud_connector: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_connector_id** | **String**| Numeric ID or name of cloud connector. | 
 **cloud_bucket_id** | **String**| Numeric ID or name of cloud bucket. | 

### Return type

[**MountStatus**](MountStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mount_status_cloud_bucket_by_pool

> MountStatus mount_status_cloud_bucket_by_pool(pool_id, cloud_bucket_id)

Get mount status of Cloud bucket.

**API Key Scope**: cloud_buckets / mount_status

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

api_instance = Nodeum::CloudBucketsApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
cloud_bucket_id = 'cloud_bucket_id_example' # String | Numeric ID or name of cloud bucket.

begin
  #Get mount status of Cloud bucket.
  result = api_instance.mount_status_cloud_bucket_by_pool(pool_id, cloud_bucket_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling CloudBucketsApi->mount_status_cloud_bucket_by_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 
 **cloud_bucket_id** | **String**| Numeric ID or name of cloud bucket. | 

### Return type

[**MountStatus**](MountStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_cloud_bucket

> CloudBucket show_cloud_bucket(cloud_bucket_id)

Displays a specific cloud bucket.

**API Key Scope**: cloud_buckets / show

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

api_instance = Nodeum::CloudBucketsApi.new
cloud_bucket_id = 'cloud_bucket_id_example' # String | Numeric ID or name of cloud bucket.

begin
  #Displays a specific cloud bucket.
  result = api_instance.show_cloud_bucket(cloud_bucket_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling CloudBucketsApi->show_cloud_bucket: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_bucket_id** | **String**| Numeric ID or name of cloud bucket. | 

### Return type

[**CloudBucket**](CloudBucket.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_cloud_bucket_by_cloud_connector

> CloudBucket show_cloud_bucket_by_cloud_connector(cloud_connector_id, cloud_bucket_id)

Displays a specific cloud bucket.

**API Key Scope**: cloud_buckets / show

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

api_instance = Nodeum::CloudBucketsApi.new
cloud_connector_id = 'cloud_connector_id_example' # String | Numeric ID or name of cloud connector.
cloud_bucket_id = 'cloud_bucket_id_example' # String | Numeric ID or name of cloud bucket.

begin
  #Displays a specific cloud bucket.
  result = api_instance.show_cloud_bucket_by_cloud_connector(cloud_connector_id, cloud_bucket_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling CloudBucketsApi->show_cloud_bucket_by_cloud_connector: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_connector_id** | **String**| Numeric ID or name of cloud connector. | 
 **cloud_bucket_id** | **String**| Numeric ID or name of cloud bucket. | 

### Return type

[**CloudBucket**](CloudBucket.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_cloud_bucket_by_pool

> CloudBucket show_cloud_bucket_by_pool(pool_id, cloud_bucket_id)

Displays a specific cloud bucket.

**API Key Scope**: cloud_buckets / show

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

api_instance = Nodeum::CloudBucketsApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
cloud_bucket_id = 'cloud_bucket_id_example' # String | Numeric ID or name of cloud bucket.

begin
  #Displays a specific cloud bucket.
  result = api_instance.show_cloud_bucket_by_pool(pool_id, cloud_bucket_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling CloudBucketsApi->show_cloud_bucket_by_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 
 **cloud_bucket_id** | **String**| Numeric ID or name of cloud bucket. | 

### Return type

[**CloudBucket**](CloudBucket.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## sync_cloud_buckets

> ActiveJobStatus sync_cloud_buckets(cloud_connector_id)

Synchronize internal cloud buckets with their remote equivalent.

**API Key Scope**: cloud_buckets / sync

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

api_instance = Nodeum::CloudBucketsApi.new
cloud_connector_id = 'cloud_connector_id_example' # String | Numeric ID or name of cloud connector.

begin
  #Synchronize internal cloud buckets with their remote equivalent.
  result = api_instance.sync_cloud_buckets(cloud_connector_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling CloudBucketsApi->sync_cloud_buckets: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_connector_id** | **String**| Numeric ID or name of cloud connector. | 

### Return type

[**ActiveJobStatus**](ActiveJobStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, queued, working, failed


## sync_result_cloud_buckets

> CloudBucketSimpleCollection sync_result_cloud_buckets(cloud_connector_id, job_id)

Check result of cloud connector sync job.

**API Key Scope**: cloud_buckets / sync

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

api_instance = Nodeum::CloudBucketsApi.new
cloud_connector_id = 'cloud_connector_id_example' # String | Numeric ID or name of cloud connector.
job_id = 'job_id_example' # String | ID of active job

begin
  #Check result of cloud connector sync job.
  result = api_instance.sync_result_cloud_buckets(cloud_connector_id, job_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling CloudBucketsApi->sync_result_cloud_buckets: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_connector_id** | **String**| Numeric ID or name of cloud connector. | 
 **job_id** | **String**| ID of active job | 

### Return type

[**CloudBucketSimpleCollection**](CloudBucketSimpleCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, queued, working, failed, 


## update_cloud_bucket

> CloudBucket update_cloud_bucket(cloud_bucket_id, cloud_bucket_body)

Updates a specific cloud bucket.

**API Key Scope**: cloud_buckets / update

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

api_instance = Nodeum::CloudBucketsApi.new
cloud_bucket_id = 'cloud_bucket_id_example' # String | Numeric ID or name of cloud bucket.
cloud_bucket_body = Nodeum::CloudBucket.new # CloudBucket | 

begin
  #Updates a specific cloud bucket.
  result = api_instance.update_cloud_bucket(cloud_bucket_id, cloud_bucket_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling CloudBucketsApi->update_cloud_bucket: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_bucket_id** | **String**| Numeric ID or name of cloud bucket. | 
 **cloud_bucket_body** | [**CloudBucket**](CloudBucket.md)|  | 

### Return type

[**CloudBucket**](CloudBucket.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_cloud_bucket_by_cloud_connector

> CloudBucket update_cloud_bucket_by_cloud_connector(cloud_connector_id, cloud_bucket_id, cloud_bucket_body)

Updates a specific cloud bucket.

**API Key Scope**: cloud_buckets / update

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

api_instance = Nodeum::CloudBucketsApi.new
cloud_connector_id = 'cloud_connector_id_example' # String | Numeric ID or name of cloud connector.
cloud_bucket_id = 'cloud_bucket_id_example' # String | Numeric ID or name of cloud bucket.
cloud_bucket_body = Nodeum::CloudBucket.new # CloudBucket | 

begin
  #Updates a specific cloud bucket.
  result = api_instance.update_cloud_bucket_by_cloud_connector(cloud_connector_id, cloud_bucket_id, cloud_bucket_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling CloudBucketsApi->update_cloud_bucket_by_cloud_connector: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_connector_id** | **String**| Numeric ID or name of cloud connector. | 
 **cloud_bucket_id** | **String**| Numeric ID or name of cloud bucket. | 
 **cloud_bucket_body** | [**CloudBucket**](CloudBucket.md)|  | 

### Return type

[**CloudBucket**](CloudBucket.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_cloud_bucket_by_pool

> CloudBucket update_cloud_bucket_by_pool(pool_id, cloud_bucket_id, cloud_bucket_body)

Updates a specific cloud bucket.

**API Key Scope**: cloud_buckets / update

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

api_instance = Nodeum::CloudBucketsApi.new
pool_id = 'pool_id_example' # String | Numeric ID, or name of pool.
cloud_bucket_id = 'cloud_bucket_id_example' # String | Numeric ID or name of cloud bucket.
cloud_bucket_body = Nodeum::CloudBucket.new # CloudBucket | 

begin
  #Updates a specific cloud bucket.
  result = api_instance.update_cloud_bucket_by_pool(pool_id, cloud_bucket_id, cloud_bucket_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling CloudBucketsApi->update_cloud_bucket_by_pool: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **String**| Numeric ID, or name of pool. | 
 **cloud_bucket_id** | **String**| Numeric ID or name of cloud bucket. | 
 **cloud_bucket_body** | [**CloudBucket**](CloudBucket.md)|  | 

### Return type

[**CloudBucket**](CloudBucket.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

