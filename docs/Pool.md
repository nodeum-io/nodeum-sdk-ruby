# Nodeum::Pool

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] [readonly] 
**name** | **String** |  | [optional] 
**comment** | **String** |  | [optional] 
**type** | **String** |  | [optional] 
**content** | **String** |  | [optional] 
**primary_id** | **Integer** |  | [optional] [readonly] 
**storage_id** | **Integer** | For pool of tapes, used to link to a tape library id | [optional] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::Pool.new(id: 6,
                                 name: offline-tapes,
                                 comment: ,
                                 type: offline_archive,
                                 content: null,
                                 primary_id: 100,
                                 storage_id: 2)
```


