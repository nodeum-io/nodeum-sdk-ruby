# Nodeum::CloudBucket

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] [readonly] 
**cloud_connector_id** | **Integer** |  | [optional] [readonly] 
**pool_id** | **Integer** |  | [optional] [readonly] 
**name** | **String** |  | [optional] [readonly] 
**file_count** | **Integer** |  | [optional] [readonly] 
**file_size_sum** | **Integer** |  | [optional] [readonly] 
**location** | **String** |  | [optional] [readonly] 
**price** | **String** |  | [optional] 
**options** | **String** | S3FS mounting options, separated by comma | [optional] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::CloudBucket.new(id: null,
                                 cloud_connector_id: null,
                                 pool_id: null,
                                 name: null,
                                 file_count: null,
                                 file_size_sum: null,
                                 location: null,
                                 price: null,
                                 options: null)
```


