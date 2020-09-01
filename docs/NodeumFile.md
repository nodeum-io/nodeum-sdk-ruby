# Nodeum::NodeumFile

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] [readonly] 
**name** | **String** |  | [optional] [readonly] 
**parent** | **Integer** |  | [optional] [readonly] 
**primary_id** | **Integer** |  | [optional] [readonly] 
**type** | **String** |  | [optional] [readonly] 
**permission** | **Integer** |  | [optional] [readonly] 
**size** | **Integer** |  | [optional] [readonly] 
**change_date** | **String** |  | [optional] [readonly] 
**modification_date** | **String** |  | [optional] [readonly] 
**access_date** | **String** |  | [optional] [readonly] 
**uid** | **Integer** |  | [optional] [readonly] 
**gid** | **Integer** |  | [optional] [readonly] 
**in_cache** | **Integer** |  | [optional] [readonly] 
**offline** | **Integer** |  | [optional] [readonly] 
**extern** | **Integer** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::NodeumFile.new(id: 105,
                                 name: my-file.txt,
                                 parent: 100,
                                 primary_id: 100,
                                 type: file,
                                 permission: 100666,
                                 size: 1063457,
                                 change_date: 2018-12-10T08:33:47.000Z,
                                 modification_date: 2018-12-10T15:29:23.000Z,
                                 access_date: 2018-12-10T15:27:51.000Z,
                                 uid: 1000,
                                 gid: 1000,
                                 in_cache: 1,
                                 offline: 1,
                                 extern: 1)
```


