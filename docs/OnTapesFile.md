# Nodeum::OnTapesFile

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] [readonly] 
**name** | **String** |  | [optional] [readonly] 
**type** | **String** |  | [optional] [readonly] 
**size** | **Integer** |  | [optional] [readonly] 
**barcodes** | **Array&lt;String&gt;** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::OnTapesFile.new(id: 105,
                                 name: my-file.txt,
                                 type: file,
                                 size: 1063457,
                                 barcodes: [NOD407L5, NOD415L5])
```


