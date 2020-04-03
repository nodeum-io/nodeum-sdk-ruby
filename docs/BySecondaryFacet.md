# Nodeum::BySecondaryFacet

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **Integer** |  | [optional] 
**file_size_sum** | **Integer** |  | [optional] 
**on_secondary_nas** | [**BySecondaryTypeFacet**](BySecondaryTypeFacet.md) |  | [optional] 
**on_secondary_public_cloud** | [**BySecondaryTypeFacet**](BySecondaryTypeFacet.md) |  | [optional] 
**on_secondary_object_cloud** | [**BySecondaryTypeFacet**](BySecondaryTypeFacet.md) |  | [optional] 
**on_secondary_tape** | [**BySecondaryTypeFacet**](BySecondaryTypeFacet.md) |  | [optional] 
**on_no_secondary** | [**BySecondaryTypeFacet**](BySecondaryTypeFacet.md) |  | [optional] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::BySecondaryFacet.new(count: null,
                                 file_size_sum: null,
                                 on_secondary_nas: null,
                                 on_secondary_public_cloud: null,
                                 on_secondary_object_cloud: null,
                                 on_secondary_tape: null,
                                 on_no_secondary: null)
```


