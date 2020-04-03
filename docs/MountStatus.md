# Nodeum::MountStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mounted** | **Boolean** |  | [optional] [readonly] 
**message** | **String** |  | [optional] [readonly] 
**status** | [**MountInfo**](MountInfo.md) |  | [optional] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::MountStatus.new(mounted: true,
                                 message: null,
                                 status: null)
```


