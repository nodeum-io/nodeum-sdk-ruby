# Nodeum::NasApi

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_nas**](NasApi.md#create_nas) | **POST** /nas | Creates a new NAS.
[**destroy_nas**](NasApi.md#destroy_nas) | **DELETE** /nas/{nas_id} | Destroys a specific NAS.
[**index_nas**](NasApi.md#index_nas) | **GET** /nas | Lists all NAS.
[**show_nas**](NasApi.md#show_nas) | **GET** /nas/{nas_id} | Displays a specific NAS.
[**update_nas**](NasApi.md#update_nas) | **PUT** /nas/{nas_id} | Updates a specific NAS.



## create_nas

> Nas create_nas(nas_body)

Creates a new NAS.

**API Key Scope**: nas / create

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

api_instance = Nodeum::NasApi.new
nas_body = Nodeum::Nas.new # Nas | 

begin
  #Creates a new NAS.
  result = api_instance.create_nas(nas_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling NasApi->create_nas: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_body** | [**Nas**](Nas.md)|  | 

### Return type

[**Nas**](Nas.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy_nas

> destroy_nas(nas_id)

Destroys a specific NAS.

**API Key Scope**: nas / destroy

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

api_instance = Nodeum::NasApi.new
nas_id = 'nas_id_example' # String | Numeric ID or name of NAS.

begin
  #Destroys a specific NAS.
  api_instance.destroy_nas(nas_id)
rescue Nodeum::ApiError => e
  puts "Exception when calling NasApi->destroy_nas: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_id** | **String**| Numeric ID or name of NAS. | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## index_nas

> NasCollection index_nas(opts)

Lists all NAS.

**API Key Scope**: nas / index

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

api_instance = Nodeum::NasApi.new
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  sort_by: ['sort_by_example'], # Array<String> | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
  id: 'id_example', # String | Filter on id
  name: 'name_example', # String | Filter on name
  comment: 'comment_example', # String | Filter on comment
  host: 'host_example', # String | Filter on host
  type: 'type_example', # String | Filter on type
  price: 'price_example' # String | Filter on price
}

begin
  #Lists all NAS.
  result = api_instance.index_nas(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling NasApi->index_nas: #{e}"
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
 **host** | **String**| Filter on host | [optional] 
 **type** | **String**| Filter on type | [optional] 
 **price** | **String**| Filter on price | [optional] 

### Return type

[**NasCollection**](NasCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_nas

> Nas show_nas(nas_id)

Displays a specific NAS.

**API Key Scope**: nas / show

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

api_instance = Nodeum::NasApi.new
nas_id = 'nas_id_example' # String | Numeric ID or name of NAS.

begin
  #Displays a specific NAS.
  result = api_instance.show_nas(nas_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling NasApi->show_nas: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_id** | **String**| Numeric ID or name of NAS. | 

### Return type

[**Nas**](Nas.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_nas

> Nas update_nas(nas_id, nas_body)

Updates a specific NAS.

**API Key Scope**: nas / update

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

api_instance = Nodeum::NasApi.new
nas_id = 'nas_id_example' # String | Numeric ID or name of NAS.
nas_body = Nodeum::Nas.new # Nas | 

begin
  #Updates a specific NAS.
  result = api_instance.update_nas(nas_id, nas_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling NasApi->update_nas: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_id** | **String**| Numeric ID or name of NAS. | 
 **nas_body** | [**Nas**](Nas.md)|  | 

### Return type

[**Nas**](Nas.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

