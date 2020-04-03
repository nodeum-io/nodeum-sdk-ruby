# Nodeum::TaskExecution

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**task_id** | **Integer** |  | [optional] 
**name** | **String** |  | [optional] 
**workflow_type** | **String** |  | [optional] 
**workflow_action** | **String** |  | [optional] 
**source_type** | **String** |  | [optional] 
**destination_type** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**log_time** | **String** |  | [optional] 
**job_started** | **String** |  | [optional] 
**job_finished** | **String** |  | [optional] 
**to_process_size** | **Integer** |  | [optional] 
**processed_size** | **Integer** |  | [optional] 
**to_process_files** | **Integer** |  | [optional] 
**processed_files** | **Integer** |  | [optional] 
**finalized_files** | **Integer** |  | [optional] 
**estimation_time** | **Integer** |  | [optional] 
**bandwidth** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::TaskExecution.new(id: 1542797273225418555,
                                 task_id: null,
                                 name: null,
                                 workflow_type: null,
                                 workflow_action: null,
                                 source_type: null,
                                 destination_type: null,
                                 status: finished_with_warnings,
                                 log_time: 2018-11-21T09:48:09.000Z,
                                 job_started: 2018-11-21T10:47:53.000Z,
                                 job_finished: 2018-11-21T10:48:08.000Z,
                                 to_process_size: 16515610,
                                 processed_size: 12115125,
                                 to_process_files: 126,
                                 processed_files: 113,
                                 finalized_files: 126,
                                 estimation_time: null,
                                 bandwidth: null)
```


