# Nodeum::SystemsApi

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**download_reset_vars**](SystemsApi.md#download_reset_vars) | **POST** /systems/reset/generate_vars | Creates a YAML file with selected tables and downloads it
[**result_download_traces**](SystemsApi.md#result_download_traces) | **GET** /systems/download_traces | Check result of a download traces job.
[**trigger_download_traces**](SystemsApi.md#trigger_download_traces) | **PUT** /systems/download_traces | Trigger a download traces request.



## download_reset_vars

> File download_reset_vars(reset_form)

Creates a YAML file with selected tables and downloads it

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

api_instance = Nodeum::SystemsApi.new
reset_form = Nodeum::Reset.new # Reset | 

begin
  #Creates a YAML file with selected tables and downloads it
  result = api_instance.download_reset_vars(reset_form)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling SystemsApi->download_reset_vars: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reset_form** | [**Reset**](Reset.md)|  | 

### Return type

**File**

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/x-yaml


## result_download_traces

> File result_download_traces(job_id)

Check result of a download traces job.

**API Key Scope**: systems / download_traces

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

api_instance = Nodeum::SystemsApi.new
job_id = 'job_id_example' # String | ID of active job

begin
  #Check result of a download traces job.
  result = api_instance.result_download_traces(job_id)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling SystemsApi->result_download_traces: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **String**| ID of active job | 

### Return type

**File**

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/tar+gzip, queued, working, failed, 


## trigger_download_traces

> ActiveJobStatus trigger_download_traces(type)

Trigger a download traces request.

**API Key Scope**: systems / download_traces

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

api_instance = Nodeum::SystemsApi.new
type = 'type_example' # String | Type of traces to download

begin
  #Trigger a download traces request.
  result = api_instance.trigger_download_traces(type)
  p result
rescue Nodeum::ApiError => e
  puts "Exception when calling SystemsApi->trigger_download_traces: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Type of traces to download | 

### Return type

[**ActiveJobStatus**](ActiveJobStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, queued, working, failed

