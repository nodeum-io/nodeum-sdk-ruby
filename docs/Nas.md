# Nodeum::Nas

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] [readonly] 
**name** | **String** |  | [optional] 
**host** | **String** |  | [optional] 
**type** | **String** |  | [optional] 
**comment** | **String** |  | [optional] 
**price** | **String** |  | [optional] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::Nas.new(id: 2,
                                 name: samba,
                                 host: samba.local,
                                 type: smb_v3,
                                 comment: Local NAS,
                                 price: 120.0)
```


