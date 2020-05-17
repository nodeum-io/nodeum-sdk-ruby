# Nodeum::Container

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] [readonly] 
**name** | **String** |  | [optional] 
**comment** | **String** |  | [optional] 
**quota_total_size** | **Integer** |  | [optional] 
**quota_on_cache** | **Integer** |  | [optional] 
**stat_total_files** | **Integer** |  | [optional] [readonly] 
**only_on_cache_file_count** | **Integer** |  | [optional] [readonly] 
**stat_total_size** | **Integer** |  | [optional] [readonly] 
**stat_size_on_cache** | **Integer** |  | [optional] [readonly] 
**only_on_cache_file_size_sum** | **Integer** |  | [optional] [readonly] 
**guest_right** | **String** |  | [optional] 
**last_update** | **String** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::Container.new(id: 100,
                                 name: my-container,
                                 comment: Read only container for random stuff,
                                 quota_total_size: null,
                                 quota_on_cache: null,
                                 stat_total_files: 99301,
                                 only_on_cache_file_count: 19123,
                                 stat_total_size: 6145076462,
                                 stat_size_on_cache: 6899417088,
                                 only_on_cache_file_size_sum: 3294517012,
                                 guest_right: read,
                                 last_update: 2019-08-05T14:24:15.000Z)
```


