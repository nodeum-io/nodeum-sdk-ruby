# Nodeum::ByDateFacet

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **Integer** |  | [optional] [readonly] 
**files_count** | **Integer** |  | [optional] [readonly] 
**file_size_sum** | **Integer** |  | [optional] [readonly] 
**cost** | **Float** |  | [optional] [readonly] 
**in_cache** | [**FileFacet**](FileFacet.md) |  | [optional] 
**less_1_week** | [**FileFacet**](FileFacet.md) |  | [optional] 
**less_1_month** | [**FileFacet**](FileFacet.md) |  | [optional] 
**less_3_months** | [**FileFacet**](FileFacet.md) |  | [optional] 
**less_6_months** | [**FileFacet**](FileFacet.md) |  | [optional] 
**less_1_year** | [**FileFacet**](FileFacet.md) |  | [optional] 
**less_2_years** | [**FileFacet**](FileFacet.md) |  | [optional] 
**more_2_years** | [**FileFacet**](FileFacet.md) |  | [optional] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::ByDateFacet.new(count: null,
                                 files_count: null,
                                 file_size_sum: null,
                                 cost: null,
                                 in_cache: null,
                                 less_1_week: null,
                                 less_1_month: null,
                                 less_3_months: null,
                                 less_6_months: null,
                                 less_1_year: null,
                                 less_2_years: null,
                                 more_2_years: null)
```


