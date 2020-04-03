# Nodeum::CloudConnectorsApi

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_cloud_connector**](CloudConnectorsApi.md#create_cloud_connector) | **POST** /cloud_connectors | Creates a new cloud connector.
[**destroy_cloud_connector**](CloudConnectorsApi.md#destroy_cloud_connector) | **DELETE** /cloud_connectors/{cloud_connector_id} | Destroys a specific cloud connector.
[**index_cloud_connectors**](CloudConnectorsApi.md#index_cloud_connectors) | **GET** /cloud_connectors | Lists all cloud connectors.
[**show_cloud_connector**](CloudConnectorsApi.md#show_cloud_connector) | **GET** /cloud_connectors/{cloud_connector_id} | Displays a specific cloud connector.
[**test_cloud_connector**](CloudConnectorsApi.md#test_cloud_connector) | **PUT** /cloud_connectors/-/test | Test an unsaved cloud connector.
[**test_result_cloud_connector**](CloudConnectorsApi.md#test_result_cloud_connector) | **GET** /cloud_connectors/-/test | Check result of cloud connector test job.
[**update_cloud_connector**](CloudConnectorsApi.md#update_cloud_connector) | **PUT** /cloud_connectors/{cloud_connector_id} | Updates a specific cloud connector.



## create_cloud_connector

> CloudConnector create_cloud_connector(cloud_connector_body)

Creates a new cloud connector.

**API Key Scope**: cloud_connectors / create

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

api_instance = Nodeum::CloudConnectorsApi.new
cloud_connector_body = Nodeum::CloudConnector.new # CloudConnector | 

begin
  #Creates a new cloud connector.
  result = api_instance.create_cloud_connector(cloud_connector_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling CloudConnectorsApi->create_cloud_connector: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_connector_body** | [**CloudConnector**](CloudConnector.md)|  | 

### Return type

[**CloudConnector**](CloudConnector.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy_cloud_connector

> destroy_cloud_connector(cloud_connector_id)

Destroys a specific cloud connector.

**API Key Scope**: cloud_connectors / destroy

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

api_instance = Nodeum::CloudConnectorsApi.new
cloud_connector_id = 'cloud_connector_id_example' # String | Numeric ID or name of cloud connector.

begin
  #Destroys a specific cloud connector.
  api_instance.destroy_cloud_connector(cloud_connector_id)
rescue Nodeum::ApiError => e
  puts "Exception when calling CloudConnectorsApi->destroy_cloud_connector: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_connector_id** | **String**| Numeric ID or name of cloud connector. | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## index_cloud_connectors

> CloudConnectorCollection index_cloud_connectors(opts)

Lists all cloud connectors.

**API Key Scope**: cloud_connectors / index   Optional API Key Explicit Scope: cloud_connectors / get_secret_key

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

api_instance = Nodeum::CloudConnectorsApi.new
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  sort_by: ['sort_by_example'], # Array<String> | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
  id: 'id_example', # String | Filter on id
  name: 'name_example', # String | Filter on name
  url: 'url_example', # String | Filter on url
  url_proxy: 'url_proxy_example', # String | Filter on url proxy
  provider: 'provider_example', # String | Filter on provider
  region: 'region_example', # String | Filter on region
  access_key: 'access_key_example' # String | Filter on access key
}

begin
  #Lists all cloud connectors.
  result = api_instance.index_cloud_connectors(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling CloudConnectorsApi->index_cloud_connectors: #{e}"
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
 **url** | **String**| Filter on url | [optional] 
 **url_proxy** | **String**| Filter on url proxy | [optional] 
 **provider** | **String**| Filter on provider | [optional] 
 **region** | **String**| Filter on region | [optional] 
 **access_key** | **String**| Filter on access key | [optional] 

### Return type

[**CloudConnectorCollection**](CloudConnectorCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_cloud_connector

> CloudConnector show_cloud_connector(cloud_connector_id)

Displays a specific cloud connector.

**API Key Scope**: cloud_connectors / show   Optional API Key Explicit Scope: cloud_connectors / get_secret_key

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

api_instance = Nodeum::CloudConnectorsApi.new
cloud_connector_id = 'cloud_connector_id_example' # String | Numeric ID or name of cloud connector.

begin
  #Displays a specific cloud connector.
  result = api_instance.show_cloud_connector(cloud_connector_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling CloudConnectorsApi->show_cloud_connector: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_connector_id** | **String**| Numeric ID or name of cloud connector. | 

### Return type

[**CloudConnector**](CloudConnector.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## test_cloud_connector

> ActiveJobStatus test_cloud_connector(cloud_connector_body)

Test an unsaved cloud connector.

**API Key Scope**: cloud_connectors / test

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

api_instance = Nodeum::CloudConnectorsApi.new
cloud_connector_body = Nodeum::CloudConnector.new # CloudConnector | 

begin
  #Test an unsaved cloud connector.
  result = api_instance.test_cloud_connector(cloud_connector_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling CloudConnectorsApi->test_cloud_connector: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_connector_body** | [**CloudConnector**](CloudConnector.md)|  | 

### Return type

[**ActiveJobStatus**](ActiveJobStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, queued, working, failed


## test_result_cloud_connector

> CloudBucketSimpleCollection test_result_cloud_connector(job_id)

Check result of cloud connector test job.

**API Key Scope**: cloud_connectors / test

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

api_instance = Nodeum::CloudConnectorsApi.new
job_id = 'job_id_example' # String | ID of active job

begin
  #Check result of cloud connector test job.
  result = api_instance.test_result_cloud_connector(job_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling CloudConnectorsApi->test_result_cloud_connector: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **String**| ID of active job | 

### Return type

[**CloudBucketSimpleCollection**](CloudBucketSimpleCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, queued, working, failed, 


## update_cloud_connector

> CloudConnector update_cloud_connector(cloud_connector_id, cloud_connector_body)

Updates a specific cloud connector.

**API Key Scope**: cloud_connectors / update

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

api_instance = Nodeum::CloudConnectorsApi.new
cloud_connector_id = 'cloud_connector_id_example' # String | Numeric ID or name of cloud connector.
cloud_connector_body = Nodeum::CloudConnector.new # CloudConnector | 

begin
  #Updates a specific cloud connector.
  result = api_instance.update_cloud_connector(cloud_connector_id, cloud_connector_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling CloudConnectorsApi->update_cloud_connector: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_connector_id** | **String**| Numeric ID or name of cloud connector. | 
 **cloud_connector_body** | [**CloudConnector**](CloudConnector.md)|  | 

### Return type

[**CloudConnector**](CloudConnector.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

