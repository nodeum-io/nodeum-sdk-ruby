# Nodeum::Tape

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] [readonly] 
**tape_library_id** | **Integer** |  | [optional] [readonly] 
**pool_id** | **Integer** |  | [optional] [readonly] 
**barcode** | **String** |  | [optional] [readonly] 
**location** | **String** |  | [optional] [readonly] 
**type** | **String** |  | [optional] [readonly] 
**locked** | **Boolean** |  | [optional] [readonly] 
**scratch** | **Boolean** |  | [optional] [readonly] 
**cleaning** | **Boolean** |  | [optional] [readonly] 
**write_protect** | **Boolean** |  | [optional] [readonly] 
**mounted** | **Boolean** |  | [optional] [readonly] 
**ejected** | **Boolean** |  | [optional] [readonly] 
**known** | **Boolean** |  | [optional] [readonly] 
**mount_count** | **Integer** |  | [optional] [readonly] 
**date_in** | **String** |  | [optional] [readonly] 
**date_move** | **String** |  | [optional] [readonly] 
**free** | **Integer** |  | [optional] [readonly] 
**max** | **Integer** |  | [optional] [readonly] 
**last_size_update** | **String** |  | [optional] [readonly] 
**last_maintenance** | **String** |  | [optional] [readonly] 
**last_repack** | **String** |  | [optional] [readonly] 
**repack_status** | **Boolean** |  | [optional] [readonly] 
**hash** | **String** |  | [optional] [readonly] 
**force_import_type** | **Boolean** |  | [optional] [readonly] 
**need_to_check** | **Boolean** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::Tape.new(id: 10,
                                 tape_library_id: 2,
                                 pool_id: 6,
                                 barcode: NOD407L5,
                                 location: Slot 2,
                                 type: data_lto5,
                                 locked: null,
                                 scratch: null,
                                 cleaning: null,
                                 write_protect: null,
                                 mounted: null,
                                 ejected: null,
                                 known: null,
                                 mount_count: null,
                                 date_in: null,
                                 date_move: null,
                                 free: null,
                                 max: null,
                                 last_size_update: null,
                                 last_maintenance: null,
                                 last_repack: null,
                                 repack_status: null,
                                 hash: null,
                                 force_import_type: null,
                                 need_to_check: null)
```


