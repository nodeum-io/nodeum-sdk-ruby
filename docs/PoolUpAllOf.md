# Nodeum::PoolUpAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tape_ids** | **Array&lt;Integer&gt;** |  | [optional] 
**nas_share_ids** | **Array&lt;Integer&gt;** |  | [optional] 
**cloud_bucket_ids** | **Array&lt;Integer&gt;** |  | [optional] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::PoolUpAllOf.new(tape_ids: [10, 11, 12],
                                 nas_share_ids: [15],
                                 cloud_bucket_ids: [15])
```


