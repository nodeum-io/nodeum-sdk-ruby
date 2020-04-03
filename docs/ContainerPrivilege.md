# Nodeum::ContainerPrivilege

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] [readonly] 
**name** | **String** |  | [optional] 
**privilege** | **String** |  | [optional] 
**type** | **String** |  | [optional] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::ContainerPrivilege.new(id: 1,
                                 name: admin,
                                 privilege: read_write,
                                 type: user)
```


