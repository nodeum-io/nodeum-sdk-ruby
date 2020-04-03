# Nodeum::Error

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**details** | **Hash&lt;String, Array&lt;AttributeError&gt;&gt;** | Parsable objects describing the errors. The key is the invalid attribute name. | [optional] 
**messages** | **Array&lt;String&gt;** | English description of the errors. | [optional] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::Error.new(details: null,
                                 messages: null)
```


