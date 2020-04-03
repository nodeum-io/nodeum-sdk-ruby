# Nodeum::TapeLibraryDevice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**serial** | **String** |  | [optional] [readonly] 
**protocol** | **String** |  | [optional] [readonly] 
**vendor** | **String** |  | [optional] [readonly] 
**product** | **String** |  | [optional] [readonly] 
**firmware** | **String** |  | [optional] [readonly] 
**device** | **String** |  | [optional] [readonly] 
**acs** | **Integer** |  | [optional] [readonly] 
**storage_slots** | **Integer** |  | [optional] [readonly] 
**storage_slots_address** | **Integer** |  | [optional] [readonly] 
**io_slots** | **Integer** |  | [optional] [readonly] 
**io_slots_address** | **Integer** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'Nodeum'

instance = Nodeum::TapeLibraryDevice.new(serial: C0F905D800A0_LL3,
                                 protocol: scsi,
                                 vendor: IBM,
                                 product: 3573-TL,
                                 firmware: 6.24,
                                 device: /dev/sg9,
                                 acs: null,
                                 storage_slots: 20,
                                 storage_slots_address: 1024,
                                 io_slots: 4,
                                 io_slots_address: 768)
```


