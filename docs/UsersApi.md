# Nodeum::UsersApi

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_api_key**](UsersApi.md#create_api_key) | **POST** /users/me/api_keys | Creates a new API Key for current user.
[**create_configuration**](UsersApi.md#create_configuration) | **POST** /users/me/configurations | Creates a new configuration value for current user.
[**destroy_api_key**](UsersApi.md#destroy_api_key) | **DELETE** /users/me/api_keys/{api_key_id} | Destroys a specific API Key.
[**destroy_configuration**](UsersApi.md#destroy_configuration) | **DELETE** /users/me/configurations/{configuration_id} | Destroys a specific configuration value.
[**index_api_keys**](UsersApi.md#index_api_keys) | **GET** /users/me/api_keys | Lists all API keys of current user.
[**index_configurations**](UsersApi.md#index_configurations) | **GET** /users/me/configurations | Lists all configurations of current user.
[**index_system_groups**](UsersApi.md#index_system_groups) | **GET** /groups/-/systems | List all system groups.
[**index_system_users**](UsersApi.md#index_system_users) | **GET** /users/-/systems | List all system users.
[**show_api_key**](UsersApi.md#show_api_key) | **GET** /users/me/api_keys/{api_key_id} | Displays a specific API Key with its scopes.
[**show_configuration**](UsersApi.md#show_configuration) | **GET** /users/me/configurations/{configuration_id} | Displays a specific configuration value.
[**update_api_key**](UsersApi.md#update_api_key) | **PUT** /users/me/api_keys/{api_key_id} | Updates a specific API Key.
[**update_configuration**](UsersApi.md#update_configuration) | **PUT** /users/me/configurations/{configuration_id} | Updates a specific configuration value.



## create_api_key

> ApiKeyFull create_api_key(api_key_body)

Creates a new API Key for current user.

**API Key Scope**: api_keys / create

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

api_instance = Nodeum::UsersApi.new
api_key_body = Nodeum::ApiKeyFull.new # ApiKeyFull | 

begin
  #Creates a new API Key for current user.
  result = api_instance.create_api_key(api_key_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling UsersApi->create_api_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key_body** | [**ApiKeyFull**](ApiKeyFull.md)|  | 

### Return type

[**ApiKeyFull**](ApiKeyFull.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_configuration

> UserConfiguration create_configuration(configuration_body)

Creates a new configuration value for current user.

**API Key Scope**: configurations / create

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

api_instance = Nodeum::UsersApi.new
configuration_body = Nodeum::UserConfiguration.new # UserConfiguration | 

begin
  #Creates a new configuration value for current user.
  result = api_instance.create_configuration(configuration_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling UsersApi->create_configuration: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configuration_body** | [**UserConfiguration**](UserConfiguration.md)|  | 

### Return type

[**UserConfiguration**](UserConfiguration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy_api_key

> destroy_api_key(api_key_id)

Destroys a specific API Key.

**API Key Scope**: api_keys / destroy

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

api_instance = Nodeum::UsersApi.new
api_key_id = 56 # Integer | Numeric ID of API Key.

begin
  #Destroys a specific API Key.
  api_instance.destroy_api_key(api_key_id)
rescue Nodeum::ApiError => e
  puts "Exception when calling UsersApi->destroy_api_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key_id** | **Integer**| Numeric ID of API Key. | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## destroy_configuration

> destroy_configuration(configuration_id)

Destroys a specific configuration value.

**API Key Scope**: configurations / destroy

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

api_instance = Nodeum::UsersApi.new
configuration_id = 'configuration_id_example' # String | Numeric ID, or key of configuration.

begin
  #Destroys a specific configuration value.
  api_instance.destroy_configuration(configuration_id)
rescue Nodeum::ApiError => e
  puts "Exception when calling UsersApi->destroy_configuration: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configuration_id** | **String**| Numeric ID, or key of configuration. | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## index_api_keys

> ApiKeyCollection index_api_keys(opts)

Lists all API keys of current user.

**API Key Scope**: api_keys / index

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

api_instance = Nodeum::UsersApi.new
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56 # Integer | The number of items to skip for pagination.
}

begin
  #Lists all API keys of current user.
  result = api_instance.index_api_keys(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling UsersApi->index_api_keys: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 

### Return type

[**ApiKeyCollection**](ApiKeyCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_configurations

> UserConfigurationCollection index_configurations(opts)

Lists all configurations of current user.

**API Key Scope**: configurations / index

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

api_instance = Nodeum::UsersApi.new
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56 # Integer | The number of items to skip for pagination.
}

begin
  #Lists all configurations of current user.
  result = api_instance.index_configurations(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling UsersApi->index_configurations: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| The number of items to display for pagination. | [optional] 
 **offset** | **Integer**| The number of items to skip for pagination. | [optional] 

### Return type

[**UserConfigurationCollection**](UserConfigurationCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_system_groups

> SystemGroupCollection index_system_groups

List all system groups.

**API Key Scope**: groups / systems

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

api_instance = Nodeum::UsersApi.new

begin
  #List all system groups.
  result = api_instance.index_system_groups
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling UsersApi->index_system_groups: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SystemGroupCollection**](SystemGroupCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_system_users

> SystemUserCollection index_system_users

List all system users.

**API Key Scope**: users / systems

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

api_instance = Nodeum::UsersApi.new

begin
  #List all system users.
  result = api_instance.index_system_users
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling UsersApi->index_system_users: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SystemUserCollection**](SystemUserCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_api_key

> ApiKeyFull show_api_key(api_key_id)

Displays a specific API Key with its scopes.

**API Key Scope**: api_keys / show

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

api_instance = Nodeum::UsersApi.new
api_key_id = 56 # Integer | Numeric ID of API Key.

begin
  #Displays a specific API Key with its scopes.
  result = api_instance.show_api_key(api_key_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling UsersApi->show_api_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key_id** | **Integer**| Numeric ID of API Key. | 

### Return type

[**ApiKeyFull**](ApiKeyFull.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_configuration

> UserConfiguration show_configuration(configuration_id)

Displays a specific configuration value.

**API Key Scope**: configurations / show

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

api_instance = Nodeum::UsersApi.new
configuration_id = 'configuration_id_example' # String | Numeric ID, or key of configuration.

begin
  #Displays a specific configuration value.
  result = api_instance.show_configuration(configuration_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling UsersApi->show_configuration: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configuration_id** | **String**| Numeric ID, or key of configuration. | 

### Return type

[**UserConfiguration**](UserConfiguration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_api_key

> ApiKeyFull update_api_key(api_key_id, api_key_body)

Updates a specific API Key.

**API Key Scope**: api_keys / update

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

api_instance = Nodeum::UsersApi.new
api_key_id = 56 # Integer | Numeric ID of API Key.
api_key_body = Nodeum::ApiKeyFull.new # ApiKeyFull | 

begin
  #Updates a specific API Key.
  result = api_instance.update_api_key(api_key_id, api_key_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling UsersApi->update_api_key: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key_id** | **Integer**| Numeric ID of API Key. | 
 **api_key_body** | [**ApiKeyFull**](ApiKeyFull.md)|  | 

### Return type

[**ApiKeyFull**](ApiKeyFull.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_configuration

> UserConfiguration update_configuration(configuration_id, configuration_body)

Updates a specific configuration value.

**API Key Scope**: configurations / update

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

api_instance = Nodeum::UsersApi.new
configuration_id = 'configuration_id_example' # String | Numeric ID, or key of configuration.
configuration_body = Nodeum::UserConfiguration.new # UserConfiguration | 

begin
  #Updates a specific configuration value.
  result = api_instance.update_configuration(configuration_id, configuration_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling UsersApi->update_configuration: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configuration_id** | **String**| Numeric ID, or key of configuration. | 
 **configuration_body** | [**UserConfiguration**](UserConfiguration.md)|  | 

### Return type

[**UserConfiguration**](UserConfiguration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

