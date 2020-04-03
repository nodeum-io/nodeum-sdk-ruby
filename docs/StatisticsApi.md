# Nodeum::StatisticsApi

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**statistics_by_file_extension**](StatisticsApi.md#statistics_by_file_extension) | **GET** /statistics/by_file_extension | TODO
[**statistics_by_group_owner**](StatisticsApi.md#statistics_by_group_owner) | **GET** /statistics/by_group_owner | TODO
[**statistics_by_primary_name**](StatisticsApi.md#statistics_by_primary_name) | **GET** /statistics/by_primary_name | TODO
[**statistics_by_secondary_storage**](StatisticsApi.md#statistics_by_secondary_storage) | **GET** /statistics/by_secondary_storage | TODO
[**statistics_by_size**](StatisticsApi.md#statistics_by_size) | **GET** /statistics/by_size | TODO
[**statistics_by_user_owner**](StatisticsApi.md#statistics_by_user_owner) | **GET** /statistics/by_user_owner | TODO



## statistics_by_file_extension

> ByFileExtensionFacet statistics_by_file_extension(opts)

TODO

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
  date_attr: 'date_attr_example' # String | Type of date to facet on
}

begin
  #TODO
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
 **date_attr** | **String**| Type of date to facet on | [optional] 

### Return type

[**ByFileExtensionFacet**](ByFileExtensionFacet.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statistics_by_group_owner

> ByGroupOwnerFacet statistics_by_group_owner(opts)

TODO

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
  date_attr: 'date_attr_example' # String | Type of date to facet on
}

begin
  #TODO
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
 **date_attr** | **String**| Type of date to facet on | [optional] 

### Return type

[**ByGroupOwnerFacet**](ByGroupOwnerFacet.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statistics_by_primary_name

> ByPrimaryFacet statistics_by_primary_name(opts)

TODO

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
  date_attr: 'date_attr_example' # String | Type of date to facet on
}

begin
  #TODO
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
 **date_attr** | **String**| Type of date to facet on | [optional] 

### Return type

[**ByPrimaryFacet**](ByPrimaryFacet.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statistics_by_secondary_storage

> BySecondaryFacet statistics_by_secondary_storage(opts)

TODO

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
  date_attr: 'date_attr_example' # String | Type of date to facet on
}

begin
  #TODO
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
 **date_attr** | **String**| Type of date to facet on | [optional] 

### Return type

[**BySecondaryFacet**](BySecondaryFacet.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statistics_by_size

> BySizeFacet statistics_by_size(opts)

TODO

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
  date_attr: 'date_attr_example' # String | Type of date to facet on
}

begin
  #TODO
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

TODO

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
  date_attr: 'date_attr_example' # String | Type of date to facet on
}

begin
  #TODO
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
 **date_attr** | **String**| Type of date to facet on | [optional] 

### Return type

[**ByUserOwnerFacet**](ByUserOwnerFacet.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

