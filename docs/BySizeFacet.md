# Nodeum::BySizeFacet

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **Integer** |  | [optional] 
**file_size_sum** | **Integer** |  | [optional] 
**less_100_kb** | [**ByDateFacet**](ByDateFacet.md) |  | [optional] 
**less_1_mb** | [**ByDateFacet**](ByDateFacet.md) |  | [optional] 
**less_10_mb** | [**ByDateFacet**](ByDateFacet.md) |  | [optional] 
**less_100_mb** | [**ByDateFacet**](ByDateFacet.md) |  | [optional] 
**less_1_gb** | [**ByDateFacet**](ByDateFacet.md) |  | [optional] 
**less_10_gb** | [**ByDateFacet**](ByDateFacet.md) |  | [optional] 
**less_100_gb** | [**ByDateFacet**](ByDateFacet.md) |  | [optional] 
**more_100_gb** | [**ByDateFacet**](ByDateFacet.md) |  | [optional] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::BySizeFacet.new(count: null,
                                 file_size_sum: null,
                                 less_100_kb: null,
                                 less_1_mb: null,
                                 less_10_mb: null,
                                 less_100_mb: null,
                                 less_1_gb: null,
                                 less_10_gb: null,
                                 less_100_gb: null,
                                 more_100_gb: null)
```


