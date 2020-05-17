# Nodeum::ByPrimaryStorageFacet

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **Integer** |  | [optional] 
**files_count** | **Integer** |  | [optional] 
**file_size_sum** | **Integer** |  | [optional] 
**cost** | **Float** |  | [optional] 
**on_primary_container** | [**ByPrimaryTypeFacet**](ByPrimaryTypeFacet.md) |  | [optional] 
**on_primary_nas** | [**ByPrimaryTypeFacet**](ByPrimaryTypeFacet.md) |  | [optional] 
**on_primary_public_cloud** | [**ByPrimaryTypeFacet**](ByPrimaryTypeFacet.md) |  | [optional] 
**on_primary_object_cloud** | [**ByPrimaryTypeFacet**](ByPrimaryTypeFacet.md) |  | [optional] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::ByPrimaryStorageFacet.new(count: null,
                                 files_count: null,
                                 file_size_sum: null,
                                 cost: null,
                                 on_primary_container: null,
                                 on_primary_nas: null,
                                 on_primary_public_cloud: null,
                                 on_primary_object_cloud: null)
```


