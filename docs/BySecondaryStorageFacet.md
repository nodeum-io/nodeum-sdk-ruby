# Nodeum::BySecondaryStorageFacet

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **Integer** |  | [optional] [readonly] 
**files_count** | **Integer** |  | [optional] [readonly] 
**file_size_sum** | **Integer** |  | [optional] [readonly] 
**cost** | **Float** |  | [optional] [readonly] 
**on_secondary_nas** | [**BySecondaryTypeFacet**](BySecondaryTypeFacet.md) |  | [optional] 
**on_secondary_public_cloud** | [**BySecondaryTypeFacet**](BySecondaryTypeFacet.md) |  | [optional] 
**on_secondary_object_cloud** | [**BySecondaryTypeFacet**](BySecondaryTypeFacet.md) |  | [optional] 
**on_secondary_tape** | [**BySecondaryTypeFacet**](BySecondaryTypeFacet.md) |  | [optional] 
**on_any_secondary** | [**BySecondaryTypeFacet**](BySecondaryTypeFacet.md) |  | [optional] 
**on_no_secondary** | [**BySecondaryTypeFacet**](BySecondaryTypeFacet.md) |  | [optional] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::BySecondaryStorageFacet.new(count: null,
                                 files_count: null,
                                 file_size_sum: null,
                                 cost: null,
                                 on_secondary_nas: null,
                                 on_secondary_public_cloud: null,
                                 on_secondary_object_cloud: null,
                                 on_secondary_tape: null,
                                 on_any_secondary: null,
                                 on_no_secondary: null)
```


