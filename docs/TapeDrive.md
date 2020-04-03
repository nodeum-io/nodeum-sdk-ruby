# Nodeum::TapeDrive

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] [readonly] 
**tape_library_id** | **Integer** |  | [optional] [readonly] 
**name** | **String** |  | [optional] 
**comment** | **String** |  | [optional] 
**libso** | **String** |  | [optional] 
**acs** | **Integer** |  | [optional] 
**lsm** | **Integer** |  | [optional] 
**panel** | **Integer** |  | [optional] 
**transport** | **Integer** |  | [optional] 
**status** | **String** |  | [optional] [readonly] 
**full** | **Integer** |  | [optional] [readonly] 
**mount_count** | **Integer** |  | [optional] [readonly] 
**use_to** | **String** |  | [optional] [readonly] 
**use_by** | **String** |  | [optional] [readonly] 
**barcode** | **String** |  | [optional] [readonly] 
**task_id** | **Integer** |  | [optional] [readonly] 
**use_file_processed_size** | **Integer** |  | [optional] [readonly] 
**use_file_size_to_process** | **Integer** |  | [optional] [readonly] 
**use_file_name_processed** | **String** |  | [optional] [readonly] 
**bandwidth** | **Integer** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::TapeDrive.new(id: 1,
                                 tape_library_id: 2,
                                 name: ,
                                 comment: ,
                                 libso: drive_lto,
                                 acs: null,
                                 lsm: null,
                                 panel: null,
                                 transport: null,
                                 status: online,
                                 full: null,
                                 mount_count: null,
                                 use_to: Idle,
                                 use_by: Idle,
                                 barcode: NOD407L5,
                                 task_id: 14,
                                 use_file_processed_size: null,
                                 use_file_size_to_process: null,
                                 use_file_name_processed: null,
                                 bandwidth: null)
```


