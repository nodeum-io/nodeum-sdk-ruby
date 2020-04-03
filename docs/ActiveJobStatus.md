# Nodeum::ActiveJobStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**job_id** | **String** |  | [optional] [readonly] 
**status** | **String** |  | [optional] [readonly] 
**progress** | **Integer** |  | [optional] [readonly] 
**total** | **Integer** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::ActiveJobStatus.new(job_id: 6f4d759d-48e9-43c8-ab24-640f5ea63922,
                                 status: working,
                                 progress: 2,
                                 total: 6)
```


