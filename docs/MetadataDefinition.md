# Nodeum::MetadataDefinition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] [readonly] 
**key** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**mandatory** | **Boolean** |  | [optional] 
**type** | **String** |  | [optional] 
**comment** | **String** |  | [optional] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::MetadataDefinition.new(id: 1,
                                 key: my_metadata,
                                 name: My Metadata,
                                 mandatory: null,
                                 type: null,
                                 comment: null)
```


