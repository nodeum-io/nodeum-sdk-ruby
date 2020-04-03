# Nodeum::Task

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] [readonly] 
**name** | **String** |  | [optional] 
**comment** | **String** |  | [optional] 
**workflow_type** | **String** |  | [optional] 
**workflow_action** | **String** |  | [optional] 
**source_type** | **String** |  | [optional] 
**destination_type** | **String** |  | [optional] 
**priority** | **Integer** |  | [optional] 
**conflict_resolution** | **String** |  | [optional] 
**action** | **String** |  | [optional] [readonly] 
**activate** | **Boolean** |  | [optional] 
**creation_date** | **String** |  | [optional] [readonly] 
**modification_date** | **String** |  | [optional] [readonly] 
**creation_username** | **String** |  | [optional] [readonly] 
**modification_username** | **String** |  | [optional] [readonly] 
**status** | **String** |  | [optional] [readonly] 
**job_started** | **String** |  | [optional] [readonly] 
**job_finished** | **String** |  | [optional] [readonly] 
**processed_size** | **Integer** |  | [optional] [readonly] 
**to_process_size** | **Integer** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::Task.new(id: null,
                                 name: null,
                                 comment: null,
                                 workflow_type: null,
                                 workflow_action: null,
                                 source_type: null,
                                 destination_type: null,
                                 priority: null,
                                 conflict_resolution: null,
                                 action: null,
                                 activate: null,
                                 creation_date: null,
                                 modification_date: null,
                                 creation_username: null,
                                 modification_username: null,
                                 status: null,
                                 job_started: null,
                                 job_finished: null,
                                 processed_size: null,
                                 to_process_size: null)
```


