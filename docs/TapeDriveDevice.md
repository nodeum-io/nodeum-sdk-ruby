# Nodeum::TapeDriveDevice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serial** | **String** |  | [optional] [readonly] 
**scsi_address** | **Integer** |  | [optional] [readonly] 
**vendor** | **String** |  | [optional] [readonly] 
**product** | **String** |  | [optional] [readonly] 
**firmware** | **String** |  | [optional] [readonly] 
**device** | **String** | When saved, device may be prefixed by *n* (eg. &#x60;/dev/nst5&#x60;) | [optional] [readonly] 
**sgdevice** | **String** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::TapeDriveDevice.new(serial: C0F9000A01,
                                 scsi_address: 256,
                                 vendor: IBM,
                                 product: ULT3580-TD5,
                                 firmware: D711,
                                 device: /dev/st5,
                                 sgdevice: /dev/sg8)
```


