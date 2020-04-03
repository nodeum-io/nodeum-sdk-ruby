# Nodeum::MountInfo

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**major_minor** | **String** |  | [optional] 
**target** | **String** |  | [optional] 
**source** | **String** |  | [optional] 
**options** | **String** |  | [optional] 
**type** | **String** |  | [optional] 
**pool_id** | **Integer** |  | [optional] 
**pool_name** | **String** |  | [optional] 
**nas_id** | **Integer** |  | [optional] 
**nas_name** | **String** |  | [optional] 
**nas_share_id** | **Integer** |  | [optional] 
**nas_share_name** | **String** |  | [optional] 
**cloud_connector_id** | **Integer** |  | [optional] 
**cloud_connector_name** | **String** |  | [optional] 
**cloud_bucket_id** | **Integer** |  | [optional] 
**cloud_bucket_name** | **String** |  | [optional] 
**tape_id** | **Integer** |  | [optional] 
**tape_barcode** | **String** |  | [optional] 
**tape_library_id** | **Integer** |  | [optional] 
**tape_library_name** | **String** |  | [optional] 
**tape_library_serial** | **String** |  | [optional] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::MountInfo.new(id: 123,
                                 major_minor: 0:189,
                                 target: /mnt/MOUNT_POINTS/folder,
                                 source: //server.local/shared_folder,
                                 options: vers&#x3D;3.0,rsize&#x3D;1048576,wsize&#x3D;1048576,
                                 type: cifs,
                                 pool_id: null,
                                 pool_name: null,
                                 nas_id: null,
                                 nas_name: null,
                                 nas_share_id: null,
                                 nas_share_name: null,
                                 cloud_connector_id: null,
                                 cloud_connector_name: null,
                                 cloud_bucket_id: null,
                                 cloud_bucket_name: null,
                                 tape_id: null,
                                 tape_barcode: null,
                                 tape_library_id: null,
                                 tape_library_name: null,
                                 tape_library_serial: null)
```


