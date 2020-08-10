# Nodeum::TaskFacetMetadataBucket

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**val** | **String** |  | [optional] 
**count** | **Integer** |  | [optional] [readonly] 
**to_process_size_sum** | **Integer** |  | [optional] [readonly] 
**processed_size_sum** | **Integer** |  | [optional] [readonly] 
**to_process_files_sum** | **Integer** |  | [optional] [readonly] 
**processed_files_sum** | **Integer** |  | [optional] [readonly] 
**finalized_files_sum** | **Integer** |  | [optional] [readonly] 
**bandwidth_avg** | **Integer** |  | [optional] [readonly] 
**bandwidth_count** | **Integer** |  | [optional] [readonly] 
**tasks_count** | **Integer** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::TaskFacetMetadataBucket.new(val: null,
                                 count: null,
                                 to_process_size_sum: null,
                                 processed_size_sum: null,
                                 to_process_files_sum: null,
                                 processed_files_sum: null,
                                 finalized_files_sum: null,
                                 bandwidth_avg: null,
                                 bandwidth_count: null,
                                 tasks_count: null)
```


