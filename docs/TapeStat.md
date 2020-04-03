# Nodeum::TapeStat

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**log_time** | **String** |  | [optional] [readonly] 
**barcode** | **String** |  | [optional] [readonly] 
**mounts** | **Integer** |  | [optional] [readonly] 
**datasets_written** | **Integer** |  | [optional] [readonly] 
**datasets_read** | **Integer** |  | [optional] [readonly] 
**recovered_write_data_errors** | **Integer** |  | [optional] [readonly] 
**unrecovered_write_data_errors** | **Integer** |  | [optional] [readonly] 
**write_servo_errors** | **Integer** |  | [optional] [readonly] 
**unrecovered_write_servo_errors** | **Integer** |  | [optional] [readonly] 
**recovered_read_errors** | **Integer** |  | [optional] [readonly] 
**unrecovered_read_errors** | **Integer** |  | [optional] [readonly] 
**last_mount_unrecovered_write_errors** | **Integer** |  | [optional] [readonly] 
**last_mount_unrecovered_read_errors** | **Integer** |  | [optional] [readonly] 
**last_mount_mbytes_written** | **Integer** |  | [optional] [readonly] 
**last_mount_mbytes_read** | **Integer** |  | [optional] [readonly] 
**lifetime_mbytes_written** | **Integer** |  | [optional] [readonly] 
**lifetime_mbytes_read** | **Integer** |  | [optional] [readonly] 
**last_load_write_compression_ratio** | **Integer** |  | [optional] [readonly] 
**last_load_read_compression_ratio** | **Integer** |  | [optional] [readonly] 
**medium_mount_time** | **Integer** |  | [optional] [readonly] 
**medium_ready_time** | **Integer** |  | [optional] [readonly] 
**total_native_capacity** | **Integer** |  | [optional] [readonly] 
**total_used_native_capacity** | **Integer** |  | [optional] [readonly] 
**write_protect** | **Integer** |  | [optional] [readonly] 
**worm** | **Integer** |  | [optional] [readonly] 
**beginning_of_medium_passes** | **Integer** |  | [optional] [readonly] 
**middle_of_tape_passes** | **Integer** |  | [optional] [readonly] 
**read_compression_ratio** | **Integer** |  | [optional] [readonly] 
**write_compression_ratio** | **Integer** |  | [optional] [readonly] 
**mbytes_transferred_to_app_client** | **Integer** |  | [optional] [readonly] 
**bytes_transferred_to_app_client** | **Integer** |  | [optional] [readonly] 
**mbytes_read_from_medium** | **Integer** |  | [optional] [readonly] 
**bytes_read_from_medium** | **Integer** |  | [optional] [readonly] 
**mbytes_transferred_from_app_client** | **Integer** |  | [optional] [readonly] 
**bytes_transferred_from_app_client** | **Integer** |  | [optional] [readonly] 
**mbytes_written_to_medium** | **Integer** |  | [optional] [readonly] 
**bytes_written_to_medium** | **Integer** |  | [optional] [readonly] 
**data_compression_enabled** | **Integer** |  | [optional] [readonly] 
**write_retries** | **Integer** |  | [optional] [readonly] 
**write_perms** | **Integer** |  | [optional] [readonly] 
**suspended_writes** | **Integer** |  | [optional] [readonly] 
**fatal_suspended_writes** | **Integer** |  | [optional] [readonly] 
**read_retries** | **Integer** |  | [optional] [readonly] 
**read_perms** | **Integer** |  | [optional] [readonly] 
**suspended_reads** | **Integer** |  | [optional] [readonly] 
**fatal_suspended_reads** | **Integer** |  | [optional] [readonly] 
**partition_0_remaining_capacity** | **Integer** |  | [optional] [readonly] 
**partition_1_remaining_capacity** | **Integer** |  | [optional] [readonly] 
**partition_0_maximum_capacity** | **Integer** |  | [optional] [readonly] 
**partition_1_maximum_capacity** | **Integer** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::TapeStat.new(log_time: null,
                                 barcode: null,
                                 mounts: null,
                                 datasets_written: null,
                                 datasets_read: null,
                                 recovered_write_data_errors: null,
                                 unrecovered_write_data_errors: null,
                                 write_servo_errors: null,
                                 unrecovered_write_servo_errors: null,
                                 recovered_read_errors: null,
                                 unrecovered_read_errors: null,
                                 last_mount_unrecovered_write_errors: null,
                                 last_mount_unrecovered_read_errors: null,
                                 last_mount_mbytes_written: null,
                                 last_mount_mbytes_read: null,
                                 lifetime_mbytes_written: null,
                                 lifetime_mbytes_read: null,
                                 last_load_write_compression_ratio: null,
                                 last_load_read_compression_ratio: null,
                                 medium_mount_time: null,
                                 medium_ready_time: null,
                                 total_native_capacity: null,
                                 total_used_native_capacity: null,
                                 write_protect: null,
                                 worm: null,
                                 beginning_of_medium_passes: null,
                                 middle_of_tape_passes: null,
                                 read_compression_ratio: null,
                                 write_compression_ratio: null,
                                 mbytes_transferred_to_app_client: null,
                                 bytes_transferred_to_app_client: null,
                                 mbytes_read_from_medium: null,
                                 bytes_read_from_medium: null,
                                 mbytes_transferred_from_app_client: null,
                                 bytes_transferred_from_app_client: null,
                                 mbytes_written_to_medium: null,
                                 bytes_written_to_medium: null,
                                 data_compression_enabled: null,
                                 write_retries: null,
                                 write_perms: null,
                                 suspended_writes: null,
                                 fatal_suspended_writes: null,
                                 read_retries: null,
                                 read_perms: null,
                                 suspended_reads: null,
                                 fatal_suspended_reads: null,
                                 partition_0_remaining_capacity: null,
                                 partition_1_remaining_capacity: null,
                                 partition_0_maximum_capacity: null,
                                 partition_1_maximum_capacity: null)
```


