# Nodeum::TaskFacetBucket

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**val** | [**Object**](.md) |  | [optional] 
**count** | **Integer** |  | [optional] 
**to_process_size_sum** | **Integer** |  | [optional] 
**processed_size_sum** | **Integer** |  | [optional] 
**to_process_files_sum** | **Integer** |  | [optional] 
**processed_files_sum** | **Integer** |  | [optional] 
**finalized_files_sum** | **Integer** |  | [optional] 
**bandwidth_avg** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::TaskFacetBucket.new(val: null,
                                 count: null,
                                 to_process_size_sum: null,
                                 processed_size_sum: null,
                                 to_process_files_sum: null,
                                 processed_files_sum: null,
                                 finalized_files_sum: null,
                                 bandwidth_avg: null)
```


