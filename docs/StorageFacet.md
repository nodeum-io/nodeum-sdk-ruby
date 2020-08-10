# Nodeum::StorageFacet

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **Integer** |  | [optional] [readonly] 
**container** | [**DefaultFacet**](DefaultFacet.md) |  | [optional] 
**nas_share** | [**StorageNasShareFacets**](StorageNasShareFacets.md) |  | [optional] 
**cloud_bucket** | [**StorageCloudBucketFacets**](StorageCloudBucketFacets.md) |  | [optional] 
**tape** | [**StorageTapeFacets**](StorageTapeFacets.md) |  | [optional] 
**pool** | [**StoragePoolFacets**](StoragePoolFacets.md) |  | [optional] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::StorageFacet.new(count: null,
                                 container: null,
                                 nas_share: null,
                                 cloud_bucket: null,
                                 tape: null,
                                 pool: null)
```


