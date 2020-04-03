# Nodeum::TaskSchedule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] [readonly] 
**task_id** | **Integer** |  | [optional] 
**rrule** | **String** |  | [optional] 
**done** | **Boolean** |  | [optional] 
**_next** | **String** |  | [optional] [readonly] 
**missed_count** | **Integer** |  | [optional] [readonly] 
**skipped_count** | **Integer** |  | [optional] [readonly] 
**missed_last** | **String** |  | [optional] [readonly] 
**missed_first** | **String** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::TaskSchedule.new(id: null,
                                 task_id: 16,
                                 rrule: DTSTART;TZID&#x3D;Europe/Paris:20190705T085000
RRULE:FREQ&#x3D;WEEKLY,
                                 done: false,
                                 _next: 2019-10-11T15:00:00Z,
                                 missed_count: 2,
                                 skipped_count: 0,
                                 missed_last: 2019-10-11T13:00:00Z,
                                 missed_first: 2019-10-11T11:00:00Z)
```


