# Nodeum::TapeLibrary

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] [readonly] 
**name** | **String** |  | [optional] 
**comment** | **String** |  | [optional] 
**libso** | **String** |  | [optional] 
**status** | **String** |  | [optional] [readonly] 
**price** | **String** |  | [optional] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::TapeLibrary.new(id: 2,
                                 name: my-library,
                                 comment: null,
                                 libso: ibm_3573-tl,
                                 status: online,
                                 price: 5.0)
```


