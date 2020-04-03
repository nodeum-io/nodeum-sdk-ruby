# Nodeum::TaskSourceUp

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file_id** | **Integer** |  | [optional] 
**file_path** | **String** |  | [optional] 
**range** | **Array&lt;Integer&gt;** |  | [optional] 
**import_file_id** | **Integer** |  | [optional] 
**import_file_path** | **String** |  | [optional] 
**tape_id** | **Integer** |  | [optional] 
**tape_barcode** | **String** |  | [optional] 
**pool_id** | **Integer** |  | [optional] 
**pool_name** | **String** |  | [optional] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::TaskSourceUp.new(file_id: null,
                                 file_path: null,
                                 range: [150000, 290000],
                                 import_file_id: null,
                                 import_file_path: null,
                                 tape_id: null,
                                 tape_barcode: null,
                                 pool_id: null,
                                 pool_name: null)
```


