# Nodeum::PrimaryScan

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] [readonly] 
**pool_id** | **Integer** |  | [optional] 
**enabled** | **Boolean** |  | [optional] 
**operand** | **Float** |  | [optional] 
**unit** | **String** |  | [optional] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::PrimaryScan.new(id: null,
                                 pool_id: 16,
                                 enabled: true,
                                 operand: 4.0,
                                 unit: null)
```


