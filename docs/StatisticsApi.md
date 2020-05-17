# Nodeum::StatisticsApi

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**statistics_by_date**](StatisticsApi.md#statistics_by_date) | **GET** /statistics/by_date | Get statistics about files, grouped by date
[**statistics_by_file_extension**](StatisticsApi.md#statistics_by_file_extension) | **GET** /statistics/by_file_extension | Get statistics about files, grouped by file extension
[**statistics_by_group_owner**](StatisticsApi.md#statistics_by_group_owner) | **GET** /statistics/by_group_owner | Get statistics about files, grouped by owner (group)
[**statistics_by_primary_cloud**](StatisticsApi.md#statistics_by_primary_cloud) | **GET** /statistics/by_primary_cloud | Get statistics about files, grouped by primary Cloud
[**statistics_by_primary_name**](StatisticsApi.md#statistics_by_primary_name) | **GET** /statistics/by_primary_name | Get statistics about files, grouped by primary storages
[**statistics_by_primary_nas**](StatisticsApi.md#statistics_by_primary_nas) | **GET** /statistics/by_primary_nas | Get statistics about files, grouped by primary NAS
[**statistics_by_primary_storage**](StatisticsApi.md#statistics_by_primary_storage) | **GET** /statistics/by_primary_storage | Get statistics about files, grouped by primary storage
[**statistics_by_secondary_cloud**](StatisticsApi.md#statistics_by_secondary_cloud) | **GET** /statistics/by_secondary_cloud | Get statistics about files, grouped by secondary Cloud
[**statistics_by_secondary_nas**](StatisticsApi.md#statistics_by_secondary_nas) | **GET** /statistics/by_secondary_nas | Get statistics about files, grouped by secondary NAS
[**statistics_by_secondary_storage**](StatisticsApi.md#statistics_by_secondary_storage) | **GET** /statistics/by_secondary_storage | Get statistics about files, grouped by secondary storage
[**statistics_by_secondary_tape**](StatisticsApi.md#statistics_by_secondary_tape) | **GET** /statistics/by_secondary_tape | Get statistics about files, grouped by secondary Tape
[**statistics_by_size**](StatisticsApi.md#statistics_by_size) | **GET** /statistics/by_size | Get statistics about files, grouped by size
[**statistics_by_user_owner**](StatisticsApi.md#statistics_by_user_owner) | **GET** /statistics/by_user_owner | Get statistics about files, grouped by owner (user)
[**statistics_storage**](StatisticsApi.md#statistics_storage) | **GET** /statistics/storage | Get statistics about storages, grouped by types
[**statistics_task_by_status**](StatisticsApi.md#statistics_task_by_status) | **GET** /statistics/task_by_status | Get statistics about tasks executions, grouped by status
[**statistics_task_by_storage**](StatisticsApi.md#statistics_task_by_storage) | **GET** /statistics/task_by_storage | Get statistics about tasks executions, grouped by source and destination
[**statistics_task_by_workflow**](StatisticsApi.md#statistics_task_by_workflow) | **GET** /statistics/task_by_workflow | Get statistics about tasks executions, grouped by workflow



## statistics_by_date

> ByDateFacet statistics_by_date(opts)

Get statistics about files, grouped by date

**API Key Scope**: statistics / by_date

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

api_instance = Nodeum::StatisticsApi.new
opts = {
  q: 'q_example', # String | Solr query
  fq: ['fq_example'], # Array<String> | Solr filter query  Multiple query can be separated by `|`.
  date_attr: 'date_attr_example' # String | Type of date to facet on
}

begin
  #Get statistics about files, grouped by date
  result = api_instance.statistics_by_date(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling StatisticsApi->statistics_by_date: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Solr query | [optional] 
 **fq** | [**Array&lt;String&gt;**](String.md)| Solr filter query  Multiple query can be separated by &#x60;|&#x60;. | [optional] 
 **date_attr** | **String**| Type of date to facet on | [optional] 

### Return type

[**ByDateFacet**](ByDateFacet.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statistics_by_file_extension

> ByFileExtensionFacet statistics_by_file_extension(opts)

Get statistics about files, grouped by file extension

**API Key Scope**: statistics / by_file_extension

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

api_instance = Nodeum::StatisticsApi.new
opts = {
  q: 'q_example', # String | Solr query
  fq: ['fq_example'], # Array<String> | Solr filter query  Multiple query can be separated by `|`.
  date_attr: 'date_attr_example', # String | Type of date to facet on
  sort: 'count', # String | Sort results of facet
  limit: 10 # Integer | Limit results of facet
}

begin
  #Get statistics about files, grouped by file extension
  result = api_instance.statistics_by_file_extension(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling StatisticsApi->statistics_by_file_extension: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Solr query | [optional] 
 **fq** | [**Array&lt;String&gt;**](String.md)| Solr filter query  Multiple query can be separated by &#x60;|&#x60;. | [optional] 
 **date_attr** | **String**| Type of date to facet on | [optional] 
 **sort** | **String**| Sort results of facet | [optional] [default to &#39;count&#39;]
 **limit** | **Integer**| Limit results of facet | [optional] [default to 10]

### Return type

[**ByFileExtensionFacet**](ByFileExtensionFacet.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statistics_by_group_owner

> ByGroupOwnerFacet statistics_by_group_owner(opts)

Get statistics about files, grouped by owner (group)

**API Key Scope**: statistics / by_group_owner

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

api_instance = Nodeum::StatisticsApi.new
opts = {
  q: 'q_example', # String | Solr query
  fq: ['fq_example'], # Array<String> | Solr filter query  Multiple query can be separated by `|`.
  date_attr: 'date_attr_example', # String | Type of date to facet on
  sort: 'count', # String | Sort results of facet
  limit: 10 # Integer | Limit results of facet
}

begin
  #Get statistics about files, grouped by owner (group)
  result = api_instance.statistics_by_group_owner(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling StatisticsApi->statistics_by_group_owner: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Solr query | [optional] 
 **fq** | [**Array&lt;String&gt;**](String.md)| Solr filter query  Multiple query can be separated by &#x60;|&#x60;. | [optional] 
 **date_attr** | **String**| Type of date to facet on | [optional] 
 **sort** | **String**| Sort results of facet | [optional] [default to &#39;count&#39;]
 **limit** | **Integer**| Limit results of facet | [optional] [default to 10]

### Return type

[**ByGroupOwnerFacet**](ByGroupOwnerFacet.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statistics_by_primary_cloud

> ByPrimaryCloudFacet statistics_by_primary_cloud(opts)

Get statistics about files, grouped by primary Cloud

**API Key Scope**: statistics / by_primary_cloud

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

api_instance = Nodeum::StatisticsApi.new
opts = {
  q: 'q_example', # String | Solr query
  fq: ['fq_example'], # Array<String> | Solr filter query  Multiple query can be separated by `|`.
  date_attr: 'date_attr_example', # String | Type of date to facet on
  sort: 'count', # String | Sort results of facet
  limit: 10 # Integer | Limit results of facet
}

begin
  #Get statistics about files, grouped by primary Cloud
  result = api_instance.statistics_by_primary_cloud(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling StatisticsApi->statistics_by_primary_cloud: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Solr query | [optional] 
 **fq** | [**Array&lt;String&gt;**](String.md)| Solr filter query  Multiple query can be separated by &#x60;|&#x60;. | [optional] 
 **date_attr** | **String**| Type of date to facet on | [optional] 
 **sort** | **String**| Sort results of facet | [optional] [default to &#39;count&#39;]
 **limit** | **Integer**| Limit results of facet | [optional] [default to 10]

### Return type

[**ByPrimaryCloudFacet**](ByPrimaryCloudFacet.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statistics_by_primary_name

> ByPrimaryFacet statistics_by_primary_name(opts)

Get statistics about files, grouped by primary storages

**API Key Scope**: statistics / by_primary_name

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

api_instance = Nodeum::StatisticsApi.new
opts = {
  q: 'q_example', # String | Solr query
  fq: ['fq_example'], # Array<String> | Solr filter query  Multiple query can be separated by `|`.
  date_attr: 'date_attr_example', # String | Type of date to facet on
  sort: 'count', # String | Sort results of facet
  limit: 10 # Integer | Limit results of facet
}

begin
  #Get statistics about files, grouped by primary storages
  result = api_instance.statistics_by_primary_name(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling StatisticsApi->statistics_by_primary_name: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Solr query | [optional] 
 **fq** | [**Array&lt;String&gt;**](String.md)| Solr filter query  Multiple query can be separated by &#x60;|&#x60;. | [optional] 
 **date_attr** | **String**| Type of date to facet on | [optional] 
 **sort** | **String**| Sort results of facet | [optional] [default to &#39;count&#39;]
 **limit** | **Integer**| Limit results of facet | [optional] [default to 10]

### Return type

[**ByPrimaryFacet**](ByPrimaryFacet.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statistics_by_primary_nas

> ByPrimaryNasFacet statistics_by_primary_nas(opts)

Get statistics about files, grouped by primary NAS

**API Key Scope**: statistics / by_primary_nas

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

api_instance = Nodeum::StatisticsApi.new
opts = {
  q: 'q_example', # String | Solr query
  fq: ['fq_example'], # Array<String> | Solr filter query  Multiple query can be separated by `|`.
  date_attr: 'date_attr_example', # String | Type of date to facet on
  sort: 'count', # String | Sort results of facet
  limit: 10 # Integer | Limit results of facet
}

begin
  #Get statistics about files, grouped by primary NAS
  result = api_instance.statistics_by_primary_nas(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling StatisticsApi->statistics_by_primary_nas: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Solr query | [optional] 
 **fq** | [**Array&lt;String&gt;**](String.md)| Solr filter query  Multiple query can be separated by &#x60;|&#x60;. | [optional] 
 **date_attr** | **String**| Type of date to facet on | [optional] 
 **sort** | **String**| Sort results of facet | [optional] [default to &#39;count&#39;]
 **limit** | **Integer**| Limit results of facet | [optional] [default to 10]

### Return type

[**ByPrimaryNasFacet**](ByPrimaryNasFacet.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statistics_by_primary_storage

> ByPrimaryStorageFacet statistics_by_primary_storage(opts)

Get statistics about files, grouped by primary storage

**API Key Scope**: statistics / by_primary_storage

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

api_instance = Nodeum::StatisticsApi.new
opts = {
  q: 'q_example', # String | Solr query
  fq: ['fq_example'], # Array<String> | Solr filter query  Multiple query can be separated by `|`.
  date_attr: 'date_attr_example', # String | Type of date to facet on
  sort: 'count', # String | Sort results of facet
  limit: 10 # Integer | Limit results of facet
}

begin
  #Get statistics about files, grouped by primary storage
  result = api_instance.statistics_by_primary_storage(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling StatisticsApi->statistics_by_primary_storage: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Solr query | [optional] 
 **fq** | [**Array&lt;String&gt;**](String.md)| Solr filter query  Multiple query can be separated by &#x60;|&#x60;. | [optional] 
 **date_attr** | **String**| Type of date to facet on | [optional] 
 **sort** | **String**| Sort results of facet | [optional] [default to &#39;count&#39;]
 **limit** | **Integer**| Limit results of facet | [optional] [default to 10]

### Return type

[**ByPrimaryStorageFacet**](ByPrimaryStorageFacet.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statistics_by_secondary_cloud

> BySecondaryCloudFacet statistics_by_secondary_cloud(opts)

Get statistics about files, grouped by secondary Cloud

**API Key Scope**: statistics / by_secondary_cloud

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

api_instance = Nodeum::StatisticsApi.new
opts = {
  q: 'q_example', # String | Solr query
  fq: ['fq_example'], # Array<String> | Solr filter query  Multiple query can be separated by `|`.
  date_attr: 'date_attr_example', # String | Type of date to facet on
  sort: 'count', # String | Sort results of facet
  limit: 10 # Integer | Limit results of facet
}

begin
  #Get statistics about files, grouped by secondary Cloud
  result = api_instance.statistics_by_secondary_cloud(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling StatisticsApi->statistics_by_secondary_cloud: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Solr query | [optional] 
 **fq** | [**Array&lt;String&gt;**](String.md)| Solr filter query  Multiple query can be separated by &#x60;|&#x60;. | [optional] 
 **date_attr** | **String**| Type of date to facet on | [optional] 
 **sort** | **String**| Sort results of facet | [optional] [default to &#39;count&#39;]
 **limit** | **Integer**| Limit results of facet | [optional] [default to 10]

### Return type

[**BySecondaryCloudFacet**](BySecondaryCloudFacet.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statistics_by_secondary_nas

> BySecondaryNasFacet statistics_by_secondary_nas(opts)

Get statistics about files, grouped by secondary NAS

**API Key Scope**: statistics / by_secondary_nas

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

api_instance = Nodeum::StatisticsApi.new
opts = {
  q: 'q_example', # String | Solr query
  fq: ['fq_example'], # Array<String> | Solr filter query  Multiple query can be separated by `|`.
  date_attr: 'date_attr_example', # String | Type of date to facet on
  sort: 'count', # String | Sort results of facet
  limit: 10 # Integer | Limit results of facet
}

begin
  #Get statistics about files, grouped by secondary NAS
  result = api_instance.statistics_by_secondary_nas(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling StatisticsApi->statistics_by_secondary_nas: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Solr query | [optional] 
 **fq** | [**Array&lt;String&gt;**](String.md)| Solr filter query  Multiple query can be separated by &#x60;|&#x60;. | [optional] 
 **date_attr** | **String**| Type of date to facet on | [optional] 
 **sort** | **String**| Sort results of facet | [optional] [default to &#39;count&#39;]
 **limit** | **Integer**| Limit results of facet | [optional] [default to 10]

### Return type

[**BySecondaryNasFacet**](BySecondaryNasFacet.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statistics_by_secondary_storage

> BySecondaryStorageFacet statistics_by_secondary_storage(opts)

Get statistics about files, grouped by secondary storage

**API Key Scope**: statistics / by_secondary_storage

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

api_instance = Nodeum::StatisticsApi.new
opts = {
  q: 'q_example', # String | Solr query
  fq: ['fq_example'], # Array<String> | Solr filter query  Multiple query can be separated by `|`.
  date_attr: 'date_attr_example', # String | Type of date to facet on
  sort: 'count', # String | Sort results of facet
  limit: 10 # Integer | Limit results of facet
}

begin
  #Get statistics about files, grouped by secondary storage
  result = api_instance.statistics_by_secondary_storage(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling StatisticsApi->statistics_by_secondary_storage: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Solr query | [optional] 
 **fq** | [**Array&lt;String&gt;**](String.md)| Solr filter query  Multiple query can be separated by &#x60;|&#x60;. | [optional] 
 **date_attr** | **String**| Type of date to facet on | [optional] 
 **sort** | **String**| Sort results of facet | [optional] [default to &#39;count&#39;]
 **limit** | **Integer**| Limit results of facet | [optional] [default to 10]

### Return type

[**BySecondaryStorageFacet**](BySecondaryStorageFacet.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statistics_by_secondary_tape

> BySecondaryTapeFacet statistics_by_secondary_tape(opts)

Get statistics about files, grouped by secondary Tape

**API Key Scope**: statistics / by_secondary_tape

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

api_instance = Nodeum::StatisticsApi.new
opts = {
  q: 'q_example', # String | Solr query
  fq: ['fq_example'], # Array<String> | Solr filter query  Multiple query can be separated by `|`.
  date_attr: 'date_attr_example', # String | Type of date to facet on
  sort: 'count', # String | Sort results of facet
  limit: 10 # Integer | Limit results of facet
}

begin
  #Get statistics about files, grouped by secondary Tape
  result = api_instance.statistics_by_secondary_tape(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling StatisticsApi->statistics_by_secondary_tape: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Solr query | [optional] 
 **fq** | [**Array&lt;String&gt;**](String.md)| Solr filter query  Multiple query can be separated by &#x60;|&#x60;. | [optional] 
 **date_attr** | **String**| Type of date to facet on | [optional] 
 **sort** | **String**| Sort results of facet | [optional] [default to &#39;count&#39;]
 **limit** | **Integer**| Limit results of facet | [optional] [default to 10]

### Return type

[**BySecondaryTapeFacet**](BySecondaryTapeFacet.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statistics_by_size

> BySizeFacet statistics_by_size(opts)

Get statistics about files, grouped by size

**API Key Scope**: statistics / by_size

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

api_instance = Nodeum::StatisticsApi.new
opts = {
  q: 'q_example', # String | Solr query
  fq: ['fq_example'], # Array<String> | Solr filter query  Multiple query can be separated by `|`.
  date_attr: 'date_attr_example' # String | Type of date to facet on
}

begin
  #Get statistics about files, grouped by size
  result = api_instance.statistics_by_size(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling StatisticsApi->statistics_by_size: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Solr query | [optional] 
 **fq** | [**Array&lt;String&gt;**](String.md)| Solr filter query  Multiple query can be separated by &#x60;|&#x60;. | [optional] 
 **date_attr** | **String**| Type of date to facet on | [optional] 

### Return type

[**BySizeFacet**](BySizeFacet.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statistics_by_user_owner

> ByUserOwnerFacet statistics_by_user_owner(opts)

Get statistics about files, grouped by owner (user)

**API Key Scope**: statistics / by_user_owner

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

api_instance = Nodeum::StatisticsApi.new
opts = {
  q: 'q_example', # String | Solr query
  fq: ['fq_example'], # Array<String> | Solr filter query  Multiple query can be separated by `|`.
  date_attr: 'date_attr_example', # String | Type of date to facet on
  sort: 'count', # String | Sort results of facet
  limit: 10 # Integer | Limit results of facet
}

begin
  #Get statistics about files, grouped by owner (user)
  result = api_instance.statistics_by_user_owner(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling StatisticsApi->statistics_by_user_owner: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Solr query | [optional] 
 **fq** | [**Array&lt;String&gt;**](String.md)| Solr filter query  Multiple query can be separated by &#x60;|&#x60;. | [optional] 
 **date_attr** | **String**| Type of date to facet on | [optional] 
 **sort** | **String**| Sort results of facet | [optional] [default to &#39;count&#39;]
 **limit** | **Integer**| Limit results of facet | [optional] [default to 10]

### Return type

[**ByUserOwnerFacet**](ByUserOwnerFacet.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statistics_storage

> StorageFacet statistics_storage(opts)

Get statistics about storages, grouped by types

**API Key Scope**: statistics / storages

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

api_instance = Nodeum::StatisticsApi.new
opts = {
  q: 'q_example', # String | Solr query
  fq: ['fq_example'] # Array<String> | Solr filter query  Multiple query can be separated by `|`.
}

begin
  #Get statistics about storages, grouped by types
  result = api_instance.statistics_storage(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling StatisticsApi->statistics_storage: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Solr query | [optional] 
 **fq** | [**Array&lt;String&gt;**](String.md)| Solr filter query  Multiple query can be separated by &#x60;|&#x60;. | [optional] 

### Return type

[**StorageFacet**](StorageFacet.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statistics_task_by_status

> ByTaskStatusFacet statistics_task_by_status(opts)

Get statistics about tasks executions, grouped by status

**API Key Scope**: statistics / task_by_status

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

api_instance = Nodeum::StatisticsApi.new
opts = {
  q: 'q_example', # String | Solr query
  fq: ['fq_example'] # Array<String> | Solr filter query  Multiple query can be separated by `|`.
}

begin
  #Get statistics about tasks executions, grouped by status
  result = api_instance.statistics_task_by_status(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling StatisticsApi->statistics_task_by_status: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Solr query | [optional] 
 **fq** | [**Array&lt;String&gt;**](String.md)| Solr filter query  Multiple query can be separated by &#x60;|&#x60;. | [optional] 

### Return type

[**ByTaskStatusFacet**](ByTaskStatusFacet.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statistics_task_by_storage

> ByTaskStorageFacet statistics_task_by_storage(opts)

Get statistics about tasks executions, grouped by source and destination

**API Key Scope**: statistics / task_by_storage

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

api_instance = Nodeum::StatisticsApi.new
opts = {
  q: 'q_example', # String | Solr query
  fq: ['fq_example'] # Array<String> | Solr filter query  Multiple query can be separated by `|`.
}

begin
  #Get statistics about tasks executions, grouped by source and destination
  result = api_instance.statistics_task_by_storage(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling StatisticsApi->statistics_task_by_storage: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Solr query | [optional] 
 **fq** | [**Array&lt;String&gt;**](String.md)| Solr filter query  Multiple query can be separated by &#x60;|&#x60;. | [optional] 

### Return type

[**ByTaskStorageFacet**](ByTaskStorageFacet.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statistics_task_by_workflow

> ByTaskWorkflowFacet statistics_task_by_workflow(opts)

Get statistics about tasks executions, grouped by workflow

**API Key Scope**: statistics / task_by_workflow

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

api_instance = Nodeum::StatisticsApi.new
opts = {
  q: 'q_example', # String | Solr query
  fq: ['fq_example'] # Array<String> | Solr filter query  Multiple query can be separated by `|`.
}

begin
  #Get statistics about tasks executions, grouped by workflow
  result = api_instance.statistics_task_by_workflow(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling StatisticsApi->statistics_task_by_workflow: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Solr query | [optional] 
 **fq** | [**Array&lt;String&gt;**](String.md)| Solr filter query  Multiple query can be separated by &#x60;|&#x60;. | [optional] 

### Return type

[**ByTaskWorkflowFacet**](ByTaskWorkflowFacet.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

