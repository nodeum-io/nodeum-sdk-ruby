# Nodeum::TaskSourceDown

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] [readonly] 
**file** | [**NodeumFile**](NodeumFile.md) |  | [optional] 
**range** | **Array&lt;Integer&gt;** |  | [optional] 
**container** | [**Container**](Container.md) |  | [optional] 
**import_file** | [**ImportFile**](ImportFile.md) |  | [optional] 
**tape** | [**Tape**](Tape.md) |  | [optional] 
**pool** | [**Pool**](Pool.md) |  | [optional] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::TaskSourceDown.new(id: null,
                                 file: null,
                                 range: [150000, 290000],
                                 container: null,
                                 import_file: null,
                                 tape: null,
                                 pool: null)
```


