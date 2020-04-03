# Nodeum::TapeDrivesApi

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_tape_drive_by_tape_library**](TapeDrivesApi.md#create_tape_drive_by_tape_library) | **POST** /tape_libraries/{tape_library_id}/tape_drives | Creates a new tape drive.
[**destroy_tape_drive**](TapeDrivesApi.md#destroy_tape_drive) | **DELETE** /tape_drives/{tape_drive_id} | Destroys a specific tape drive.
[**destroy_tape_drive_by_tape_library**](TapeDrivesApi.md#destroy_tape_drive_by_tape_library) | **DELETE** /tape_libraries/{tape_library_id}/tape_drives/{tape_drive_id} | Destroys a specific tape drive.
[**index_tape_drive_devices**](TapeDrivesApi.md#index_tape_drive_devices) | **GET** /tape_libraries/{tape_library_id}/tape_drives/-/devices | Lists tape drives devices.
[**index_tape_drives**](TapeDrivesApi.md#index_tape_drives) | **GET** /tape_drives | Lists all tape drives.
[**index_tape_drives_by_tape_library**](TapeDrivesApi.md#index_tape_drives_by_tape_library) | **GET** /tape_libraries/{tape_library_id}/tape_drives | Lists all tape drives.
[**show_tape_drive**](TapeDrivesApi.md#show_tape_drive) | **GET** /tape_drives/{tape_drive_id} | Displays a specific tape drive.
[**show_tape_drive_by_tape_library**](TapeDrivesApi.md#show_tape_drive_by_tape_library) | **GET** /tape_libraries/{tape_library_id}/tape_drives/{tape_drive_id} | Displays a specific tape drive.
[**update_tape_drive**](TapeDrivesApi.md#update_tape_drive) | **PUT** /tape_drives/{tape_drive_id} | Updates a specific tape drive.
[**update_tape_drive_by_tape_library**](TapeDrivesApi.md#update_tape_drive_by_tape_library) | **PUT** /tape_libraries/{tape_library_id}/tape_drives/{tape_drive_id} | Updates a specific tape drive.



## create_tape_drive_by_tape_library

> TapeDrive create_tape_drive_by_tape_library(tape_library_id, tape_drive_body)

Creates a new tape drive.

**API Key Scope**: tape_drives / create

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

api_instance = Nodeum::TapeDrivesApi.new
tape_library_id = 'tape_library_id_example' # String | Numeric ID, serial, or name of tape library.
tape_drive_body = Nodeum::TapeDrive.new # TapeDrive | 

begin
  #Creates a new tape drive.
  result = api_instance.create_tape_drive_by_tape_library(tape_library_id, tape_drive_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TapeDrivesApi->create_tape_drive_by_tape_library: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_library_id** | **String**| Numeric ID, serial, or name of tape library. | 
 **tape_drive_body** | [**TapeDrive**](TapeDrive.md)|  | 

### Return type

[**TapeDrive**](TapeDrive.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy_tape_drive

> destroy_tape_drive(tape_drive_id)

Destroys a specific tape drive.

**API Key Scope**: tape_drives / destroy

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

api_instance = Nodeum::TapeDrivesApi.new
tape_drive_id = 'tape_drive_id_example' # String | Numeric ID, serial, or name of tape drive.

begin
  #Destroys a specific tape drive.
  api_instance.destroy_tape_drive(tape_drive_id)
rescue Nodeum::ApiError => e
  puts "Exception when calling TapeDrivesApi->destroy_tape_drive: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_drive_id** | **String**| Numeric ID, serial, or name of tape drive. | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## destroy_tape_drive_by_tape_library

> destroy_tape_drive_by_tape_library(tape_library_id, tape_drive_id)

Destroys a specific tape drive.

**API Key Scope**: tape_drives / destroy

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

api_instance = Nodeum::TapeDrivesApi.new
tape_library_id = 'tape_library_id_example' # String | Numeric ID, serial, or name of tape library.
tape_drive_id = 'tape_drive_id_example' # String | Numeric ID, serial, or name of tape drive.

begin
  #Destroys a specific tape drive.
  api_instance.destroy_tape_drive_by_tape_library(tape_library_id, tape_drive_id)
rescue Nodeum::ApiError => e
  puts "Exception when calling TapeDrivesApi->destroy_tape_drive_by_tape_library: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_library_id** | **String**| Numeric ID, serial, or name of tape library. | 
 **tape_drive_id** | **String**| Numeric ID, serial, or name of tape drive. | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## index_tape_drive_devices

> TapeDriveDeviceCollection index_tape_drive_devices(tape_library_id, job_id)

Lists tape drives devices.

**API Key Scope**: tape_drives / devices

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

api_instance = Nodeum::TapeDrivesApi.new
tape_library_id = 'tape_library_id_example' # String | Numeric ID, serial, or name of tape library.
job_id = 'job_id_example' # String | ID of active job

begin
  #Lists tape drives devices.
  result = api_instance.index_tape_drive_devices(tape_library_id, job_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TapeDrivesApi->index_tape_drive_devices: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_library_id** | **String**| Numeric ID, serial, or name of tape library. | 
 **job_id** | **String**| ID of active job | 

### Return type

[**TapeDriveDeviceCollection**](TapeDriveDeviceCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, queued, working, failed, 


## index_tape_drives

> TapeDriveCollection index_tape_drives(opts)

Lists all tape drives.

**API Key Scope**: tape_drives / index

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

api_instance = Nodeum::TapeDrivesApi.new
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  sort_by: ['sort_by_example'], # Array<String> | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
  id: 'id_example', # String | Filter on id
  tape_library_id: 'tape_library_id_example', # String | Filter on tape library id
  name: 'name_example', # String | Filter on name
  serial: 'serial_example', # String | Filter on serial
  comment: 'comment_example', # String | Filter on comment
  scsi_address: 'scsi_address_example', # String | Filter on scsi address
  vendor: 'vendor_example', # String | Filter on vendor
  product: 'product_example', # String | Filter on product
  firmware: 'firmware_example', # String | Filter on firmware
  device: 'device_example', # String | Filter on device
  sgdevice: 'sgdevice_example', # String | Filter on sgdevice
  libso: 'libso_example', # String | Filter on libso
  acs: 'acs_example', # String | Filter on acs
  lsm: 'lsm_example', # String | Filter on lsm
  panel: 'panel_example', # String | Filter on panel
  transport: 'transport_example', # String | Filter on transport
  status: 'status_example', # String | Filter on status
  full: 'full_example', # String | Filter on full
  mount_count: 'mount_count_example', # String | Filter on mount count
  use_to: 'use_to_example', # String | Filter on use to
  use_by: 'use_by_example', # String | Filter on use by
  barcode: 'barcode_example', # String | Filter on barcode
  task_id: 'task_id_example', # String | Filter on task id
  use_file_processed_size: 'use_file_processed_size_example', # String | Filter on use file processed size
  use_file_size_to_process: 'use_file_size_to_process_example', # String | Filter on use file size to process
  use_file_name_processed: 'use_file_name_processed_example', # String | Filter on use file name processed
  bandwidth: 'bandwidth_example' # String | Filter on bandwidth
}

begin
  #Lists all tape drives.
  result = api_instance.index_tape_drives(opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TapeDrivesApi->index_tape_drives: #{e}"
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
 **name** | **String**| Filter on name | [optional] 
 **serial** | **String**| Filter on serial | [optional] 
 **comment** | **String**| Filter on comment | [optional] 
 **scsi_address** | **String**| Filter on scsi address | [optional] 
 **vendor** | **String**| Filter on vendor | [optional] 
 **product** | **String**| Filter on product | [optional] 
 **firmware** | **String**| Filter on firmware | [optional] 
 **device** | **String**| Filter on device | [optional] 
 **sgdevice** | **String**| Filter on sgdevice | [optional] 
 **libso** | **String**| Filter on libso | [optional] 
 **acs** | **String**| Filter on acs | [optional] 
 **lsm** | **String**| Filter on lsm | [optional] 
 **panel** | **String**| Filter on panel | [optional] 
 **transport** | **String**| Filter on transport | [optional] 
 **status** | **String**| Filter on status | [optional] 
 **full** | **String**| Filter on full | [optional] 
 **mount_count** | **String**| Filter on mount count | [optional] 
 **use_to** | **String**| Filter on use to | [optional] 
 **use_by** | **String**| Filter on use by | [optional] 
 **barcode** | **String**| Filter on barcode | [optional] 
 **task_id** | **String**| Filter on task id | [optional] 
 **use_file_processed_size** | **String**| Filter on use file processed size | [optional] 
 **use_file_size_to_process** | **String**| Filter on use file size to process | [optional] 
 **use_file_name_processed** | **String**| Filter on use file name processed | [optional] 
 **bandwidth** | **String**| Filter on bandwidth | [optional] 

### Return type

[**TapeDriveCollection**](TapeDriveCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_tape_drives_by_tape_library

> TapeDriveCollection index_tape_drives_by_tape_library(tape_library_id, opts)

Lists all tape drives.

**API Key Scope**: tape_drives / index

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

api_instance = Nodeum::TapeDrivesApi.new
tape_library_id = 'tape_library_id_example' # String | Numeric ID, serial, or name of tape library.
opts = {
  limit: 56, # Integer | The number of items to display for pagination.
  offset: 56, # Integer | The number of items to skip for pagination.
  sort_by: ['sort_by_example'], # Array<String> | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
  id: 'id_example', # String | Filter on id
  name: 'name_example', # String | Filter on name
  serial: 'serial_example', # String | Filter on serial
  comment: 'comment_example', # String | Filter on comment
  scsi_address: 'scsi_address_example', # String | Filter on scsi address
  vendor: 'vendor_example', # String | Filter on vendor
  product: 'product_example', # String | Filter on product
  firmware: 'firmware_example', # String | Filter on firmware
  device: 'device_example', # String | Filter on device
  sgdevice: 'sgdevice_example', # String | Filter on sgdevice
  libso: 'libso_example', # String | Filter on libso
  acs: 'acs_example', # String | Filter on acs
  lsm: 'lsm_example', # String | Filter on lsm
  panel: 'panel_example', # String | Filter on panel
  transport: 'transport_example', # String | Filter on transport
  status: 'status_example', # String | Filter on status
  full: 'full_example', # String | Filter on full
  mount_count: 'mount_count_example', # String | Filter on mount count
  use_to: 'use_to_example', # String | Filter on use to
  use_by: 'use_by_example', # String | Filter on use by
  barcode: 'barcode_example', # String | Filter on barcode
  task_id: 'task_id_example', # String | Filter on task id
  use_file_processed_size: 'use_file_processed_size_example', # String | Filter on use file processed size
  use_file_size_to_process: 'use_file_size_to_process_example', # String | Filter on use file size to process
  use_file_name_processed: 'use_file_name_processed_example', # String | Filter on use file name processed
  bandwidth: 'bandwidth_example' # String | Filter on bandwidth
}

begin
  #Lists all tape drives.
  result = api_instance.index_tape_drives_by_tape_library(tape_library_id, opts)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TapeDrivesApi->index_tape_drives_by_tape_library: #{e}"
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
 **name** | **String**| Filter on name | [optional] 
 **serial** | **String**| Filter on serial | [optional] 
 **comment** | **String**| Filter on comment | [optional] 
 **scsi_address** | **String**| Filter on scsi address | [optional] 
 **vendor** | **String**| Filter on vendor | [optional] 
 **product** | **String**| Filter on product | [optional] 
 **firmware** | **String**| Filter on firmware | [optional] 
 **device** | **String**| Filter on device | [optional] 
 **sgdevice** | **String**| Filter on sgdevice | [optional] 
 **libso** | **String**| Filter on libso | [optional] 
 **acs** | **String**| Filter on acs | [optional] 
 **lsm** | **String**| Filter on lsm | [optional] 
 **panel** | **String**| Filter on panel | [optional] 
 **transport** | **String**| Filter on transport | [optional] 
 **status** | **String**| Filter on status | [optional] 
 **full** | **String**| Filter on full | [optional] 
 **mount_count** | **String**| Filter on mount count | [optional] 
 **use_to** | **String**| Filter on use to | [optional] 
 **use_by** | **String**| Filter on use by | [optional] 
 **barcode** | **String**| Filter on barcode | [optional] 
 **task_id** | **String**| Filter on task id | [optional] 
 **use_file_processed_size** | **String**| Filter on use file processed size | [optional] 
 **use_file_size_to_process** | **String**| Filter on use file size to process | [optional] 
 **use_file_name_processed** | **String**| Filter on use file name processed | [optional] 
 **bandwidth** | **String**| Filter on bandwidth | [optional] 

### Return type

[**TapeDriveCollection**](TapeDriveCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_tape_drive

> TapeDrive show_tape_drive(tape_drive_id)

Displays a specific tape drive.

**API Key Scope**: tape_drives / show

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

api_instance = Nodeum::TapeDrivesApi.new
tape_drive_id = 'tape_drive_id_example' # String | Numeric ID, serial, or name of tape drive.

begin
  #Displays a specific tape drive.
  result = api_instance.show_tape_drive(tape_drive_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TapeDrivesApi->show_tape_drive: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_drive_id** | **String**| Numeric ID, serial, or name of tape drive. | 

### Return type

[**TapeDrive**](TapeDrive.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_tape_drive_by_tape_library

> TapeDrive show_tape_drive_by_tape_library(tape_library_id, tape_drive_id)

Displays a specific tape drive.

**API Key Scope**: tape_drives / show

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

api_instance = Nodeum::TapeDrivesApi.new
tape_library_id = 'tape_library_id_example' # String | Numeric ID, serial, or name of tape library.
tape_drive_id = 'tape_drive_id_example' # String | Numeric ID, serial, or name of tape drive.

begin
  #Displays a specific tape drive.
  result = api_instance.show_tape_drive_by_tape_library(tape_library_id, tape_drive_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TapeDrivesApi->show_tape_drive_by_tape_library: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_library_id** | **String**| Numeric ID, serial, or name of tape library. | 
 **tape_drive_id** | **String**| Numeric ID, serial, or name of tape drive. | 

### Return type

[**TapeDrive**](TapeDrive.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_tape_drive

> TapeDrive update_tape_drive(tape_drive_id, tape_drive_body)

Updates a specific tape drive.

**API Key Scope**: tape_drives / update

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

api_instance = Nodeum::TapeDrivesApi.new
tape_drive_id = 'tape_drive_id_example' # String | Numeric ID, serial, or name of tape drive.
tape_drive_body = Nodeum::TapeDrive.new # TapeDrive | 

begin
  #Updates a specific tape drive.
  result = api_instance.update_tape_drive(tape_drive_id, tape_drive_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TapeDrivesApi->update_tape_drive: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_drive_id** | **String**| Numeric ID, serial, or name of tape drive. | 
 **tape_drive_body** | [**TapeDrive**](TapeDrive.md)|  | 

### Return type

[**TapeDrive**](TapeDrive.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_tape_drive_by_tape_library

> TapeDrive update_tape_drive_by_tape_library(tape_library_id, tape_drive_id, tape_drive_body)

Updates a specific tape drive.

**API Key Scope**: tape_drives / update

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

api_instance = Nodeum::TapeDrivesApi.new
tape_library_id = 'tape_library_id_example' # String | Numeric ID, serial, or name of tape library.
tape_drive_id = 'tape_drive_id_example' # String | Numeric ID, serial, or name of tape drive.
tape_drive_body = Nodeum::TapeDrive.new # TapeDrive | 

begin
  #Updates a specific tape drive.
  result = api_instance.update_tape_drive_by_tape_library(tape_library_id, tape_drive_id, tape_drive_body)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling TapeDrivesApi->update_tape_drive_by_tape_library: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_library_id** | **String**| Numeric ID, serial, or name of tape library. | 
 **tape_drive_id** | **String**| Numeric ID, serial, or name of tape drive. | 
 **tape_drive_body** | [**TapeDrive**](TapeDrive.md)|  | 

### Return type

[**TapeDrive**](TapeDrive.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

