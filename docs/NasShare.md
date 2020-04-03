# Nodeum::NasShare

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] [readonly] 
**nas_id** | **Integer** |  | [optional] [readonly] 
**pool_id** | **Integer** |  | [optional] [readonly] 
**name** | **String** |  | [optional] 
**path** | **String** |  | [optional] 
**options** | **String** |  | [optional] 
**username** | **String** |  | [optional] 
**password** | **String** |  | [optional] 
**file_count** | **Integer** |  | [optional] [readonly] 
**file_size_sum** | **Integer** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::NasShare.new(id: 10,
                                 nas_id: 2,
                                 pool_id: 6,
                                 name: archives_general,
                                 path: archives/general,
                                 options: rsize&#x3D;1048576,wsize&#x3D;1048576,
                                 username: admin,
                                 password: [censored],
                                 file_count: null,
                                 file_size_sum: null)
```


