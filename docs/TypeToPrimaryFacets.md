# Nodeum::TypeToPrimaryFacets

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**on_primary_container** | [**ByPrimaryTypeFacet**](ByPrimaryTypeFacet.md) |  | [optional] 
**on_primary_nas** | [**ByPrimaryTypeFacet**](ByPrimaryTypeFacet.md) |  | [optional] 
**on_primary_public_cloud** | [**ByPrimaryTypeFacet**](ByPrimaryTypeFacet.md) |  | [optional] 
**on_primary_object_cloud** | [**ByPrimaryTypeFacet**](ByPrimaryTypeFacet.md) |  | [optional] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::TypeToPrimaryFacets.new(on_primary_container: null,
                                 on_primary_nas: null,
                                 on_primary_public_cloud: null,
                                 on_primary_object_cloud: null)
```


