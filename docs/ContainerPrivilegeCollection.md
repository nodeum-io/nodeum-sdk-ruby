# Nodeum::ContainerPrivilegeCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **Integer** |  | [optional] [readonly] 
**container_privileges** | [**Array&lt;ContainerPrivilege&gt;**](ContainerPrivilege.md) |  | [optional] [readonly] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::ContainerPrivilegeCollection.new(count: 1,
                                 container_privileges: null)
```


