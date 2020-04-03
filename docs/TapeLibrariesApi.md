# Nodeum::TapeLibrariesApi

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_tape_library**](TapeLibrariesApi.md#create_tape_library) | **POST** /tape_libraries | Creates a new tape library.
[**destroy_tape_library**](TapeLibrariesApi.md#destroy_tape_library) | **DELETE** /tape_libraries/{tape_library_id} | Destroys a specific tape library.
[**index_tape_libraries**](TapeLibrariesApi.md#index_tape_libraries) | **GET** /tape_libraries | Lists all tape libraries.
[**index_tape_library_devices**](TapeLibrariesApi.md#index_tape_library_devices) | **GET** /tape_libraries/-/devices | Lists tape libraries devices.
[**show_tape_library**](TapeLibrariesApi.md#show_tape_library) | **GET** /tape_libraries/{tape_library_id} | Displays a specific tape library.
[**update_tape_library**](TapeLibrariesApi.md#update_tape_library) | **PUT** /tape_libraries/{tape_library_id} | Updates a specific tape library.



## create_tape_library

> TapeLibrary create_tape_library(tape_library_body)

Creates a new tape library.

**API Key Scope**: tape_libraries / create

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

api_instance = Nodeum::TapeLibrariesApi.new
tape_library_body = Nodeum::TapeLibrary.new # TapeLibrary | 

begin
  #Creates a new tape library.
  result = api_instance.create_tape_library(tape_library_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TapeLibrariesApi->create_tape_library: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_library_body** | [**TapeLibrary**](TapeLibrary.md)|  | 

### Return type

[**TapeLibrary**](TapeLibrary.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy_tape_library

> destroy_tape_library(tape_library_id)

Destroys a specific tape library.

**API Key Scope**: tape_libraries / destroy

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

api_instance = Nodeum::TapeLibrariesApi.new
tape_library_id = 'tape_library_id_example' # String | Numeric ID, serial, or name of tape library.

begin
  #Destroys a specific tape library.
  api_instance.destroy_tape_library(tape_library_id)
rescue Nodeum::ApiError => e
  puts "Exception when calling TapeLibrariesApi->destroy_tape_library: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_library_id** | **String**| Numeric ID, serial, or name of tape library. | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## index_tape_libraries

> TapeLibraryCollection index_tape_libraries(opts)

Lists all tape libraries.

**API Key Scope**: tape_libraries / index

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

api_instance = Nodeum::TapeLibrariesApi.new
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  sort_by: ['sort_by_example'], # Array<String> | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
  id: 'id_example', # String | Filter on id
  name: 'name_example', # String | Filter on name
  serial: 'serial_example', # String | Filter on serial
  comment: 'comment_example', # String | Filter on comment
  protocol: 'protocol_example', # String | Filter on protocol
  vendor: 'vendor_example', # String | Filter on vendor
  product: 'product_example', # String | Filter on product
  firmware: 'firmware_example', # String | Filter on firmware
  device: 'device_example', # String | Filter on device
  libso: 'libso_example', # String | Filter on libso
  acs: 'acs_example', # String | Filter on acs
  status: 'status_example', # String | Filter on status
  storage_slots: 'storage_slots_example', # String | Filter on storage slots
  storage_slots_address: 'storage_slots_address_example', # String | Filter on storage slots address
  io_slots: 'io_slots_example', # String | Filter on io slots
  io_slots_address: 'io_slots_address_example', # String | Filter on io slots address
  price: 'price_example' # String | Filter on price
}

begin
  #Lists all tape libraries.
  result = api_instance.index_tape_libraries(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TapeLibrariesApi->index_tape_libraries: #{e}"
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
 **serial** | **String**| Filter on serial | [optional] 
 **comment** | **String**| Filter on comment | [optional] 
 **protocol** | **String**| Filter on protocol | [optional] 
 **vendor** | **String**| Filter on vendor | [optional] 
 **product** | **String**| Filter on product | [optional] 
 **firmware** | **String**| Filter on firmware | [optional] 
 **device** | **String**| Filter on device | [optional] 
 **libso** | **String**| Filter on libso | [optional] 
 **acs** | **String**| Filter on acs | [optional] 
 **status** | **String**| Filter on status | [optional] 
 **storage_slots** | **String**| Filter on storage slots | [optional] 
 **storage_slots_address** | **String**| Filter on storage slots address | [optional] 
 **io_slots** | **String**| Filter on io slots | [optional] 
 **io_slots_address** | **String**| Filter on io slots address | [optional] 
 **price** | **String**| Filter on price | [optional] 

### Return type

[**TapeLibraryCollection**](TapeLibraryCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_tape_library_devices

> TapeLibraryDeviceCollection index_tape_library_devices(job_id)

Lists tape libraries devices.

**API Key Scope**: tape_libraries / devices

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

api_instance = Nodeum::TapeLibrariesApi.new
job_id = 'job_id_example' # String | ID of active job

begin
  #Lists tape libraries devices.
  result = api_instance.index_tape_library_devices(job_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TapeLibrariesApi->index_tape_library_devices: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **String**| ID of active job | 

### Return type

[**TapeLibraryDeviceCollection**](TapeLibraryDeviceCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, queued, working, failed, 


## show_tape_library

> TapeLibrary show_tape_library(tape_library_id)

Displays a specific tape library.

**API Key Scope**: tape_libraries / show

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

api_instance = Nodeum::TapeLibrariesApi.new
tape_library_id = 'tape_library_id_example' # String | Numeric ID, serial, or name of tape library.

begin
  #Displays a specific tape library.
  result = api_instance.show_tape_library(tape_library_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TapeLibrariesApi->show_tape_library: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_library_id** | **String**| Numeric ID, serial, or name of tape library. | 

### Return type

[**TapeLibrary**](TapeLibrary.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_tape_library

> TapeLibrary update_tape_library(tape_library_id, tape_library_body)

Updates a specific tape library.

**API Key Scope**: tape_libraries / update

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

api_instance = Nodeum::TapeLibrariesApi.new
tape_library_id = 'tape_library_id_example' # String | Numeric ID, serial, or name of tape library.
tape_library_body = Nodeum::TapeLibrary.new # TapeLibrary | 

begin
  #Updates a specific tape library.
  result = api_instance.update_tape_library(tape_library_id, tape_library_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TapeLibrariesApi->update_tape_library: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_library_id** | **String**| Numeric ID, serial, or name of tape library. | 
 **tape_library_body** | [**TapeLibrary**](TapeLibrary.md)|  | 

### Return type

[**TapeLibrary**](TapeLibrary.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

