# Nodeum::MountsApi

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**index_mounts**](MountsApi.md#index_mounts) | **GET** /mounts | List all mounted storages.



## index_mounts

> MountCollection index_mounts

List all mounted storages.

**API Key Scope**: mounts / index

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

api_instance = Nodeum::MountsApi.new

begin
  #List all mounted storages.
  result = api_instance.index_mounts
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling MountsApi->index_mounts: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MountCollection**](MountCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

