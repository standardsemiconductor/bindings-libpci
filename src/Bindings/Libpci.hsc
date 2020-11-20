#include <bindings.dsl.h>
#include <pci/pci.h>
#include <pci/types.h>
  
module Bindings.Libpci where
#strict_import

-- * Basic types
#integral_t u8
#integral_t u16
#integral_t u32
#integral_t pciaddr_t

-- PCI Access Structure
#opaque_t pci_methods
#opaque_t id_entry
#opaque_t id_bucket
#opaque_t udev
#opaque_t udev_hwdb

#integral_t enum pci_access_type
#num PCI_ACCESS_AUTO 
#num PCI_ACCESS_SYS_BUS_PCI
#num PCI_ACCESS_PROC_BUS_PCI
#num PCI_ACCESS_I386_TYPE1
#num PCI_ACCESS_I386_TYPE2
#num PCI_ACCESS_FBSD_DEVICE
#num PCI_ACCESS_AIX_DEVICE
#num PCI_ACCESS_NBSD_LIBPCI
#num PCI_ACCESS_OBSD_DEVICE
#num PCI_ACCESS_DUMP
#num PCI_ACCESS_DARWIN
#num PCI_ACCESS_SYLIXOS_DEVICE
#num PCI_ACCESS_HURD
#num PCI_ACCESS_MAX

#starttype struct pci_access
#field method , CUInt
#field writeable , CInt
#field buscentric , CInt
#field id_file_name , CString
#field free_id_name , CInt
#field numeric_ids , CInt
#field id_lookup_mode , CUInt
#field debugging , CInt

-- Functions you can override
#field error , FunPtr ( CString -> IO () )
#field warning , FunPtr ( CString -> IO () )
#field debug , FunPtr ( CString -> IO () )

#field devices , Ptr <pci_dev>

-- Fields used internally
#field methods , Ptr <pci_methods>
#field params , Ptr <pci_param>
#field id_hash , Ptr ( Ptr <id_entry> )
#field current_id_bucket , Ptr <id_bucket>
#field id_load_failed , CInt
#field id_cache_status , CInt
#field id_udev , Ptr <udev>
#field id_udev_hwdb , Ptr <udev_hwdb>
#field fd , CInt
#field fd_rw , CInt
#field fd_pos , CInt
#field fd_vpd , CInt
#field cached_dev , Ptr <pci_dev>
  
#stoptype

-- * Initialize PCI access
#ccall pci_alloc , IO (Ptr <pci_access>)
#ccall pci_init , Ptr <pci_access> -> IO ()
#ccall pci_cleanup , Ptr <pci_access> -> IO ()

-- * Scanning of devices
#ccall pci_scan_bus , Ptr <pci_access> -> IO ()
#ccall pci_get_dev , Ptr <pci_access> -> CInt -> CInt -> CInt -> CInt -> IO (Ptr <pci_dev>)
#ccall pci_free_dev , Ptr <pci_dev> -> IO ()

-- * Names of access methods
#ccall pci_lookup_method , CString -> IO CInt
#ccall pci_get_method_name , CInt -> IO CString

-- * Named parameters
#starttype struct pci_param
#field next , Ptr <pci_param>
#field param , CString
#field value , CString
#field value_malloced , CInt
#field help , CString
#stoptype

#ccall pci_get_param , Ptr <pci_access> -> CString -> IO CString
#ccall pci_set_param , Ptr <pci_access> -> CString -> CString -> IO CInt
#ccall pci_walk_params , Ptr <pci_access> -> Ptr <pci_param> -> IO (Ptr <pci_param>)

#opaque_t pci_property

-- * Devices
#starttype struct pci_dev
#field next , Ptr <pci_dev>
#field domain_16 , <u16>
#field bus , <u8>
#field dev , <u8>
#field func , <u8>
#field known_fields , CInt
#field vendor_id , <u16>
#field device_id , <u16>
#field device_class , <u16>
#field irq , CInt
#array_field base_addr , <pciaddr_t>
#array_field size , <pciaddr_t>
#field rom_base_addr , <pciaddr_t>
#field rom_size , <pciaddr_t>
#field first_cap , Ptr <pci_cap>
#field phy_slot , CString
#field module_alias , CString
#field label , CString
#field numa_node , CInt
#array_field flags , <pciaddr_t>
#field rom_flags , <pciaddr_t>
#field domain , CInt

-- Fields used internally
#field access , Ptr <pci_access>
#field methods , Ptr <pci_methods>
#field cache , Ptr <u8>
#field cache_len , CInt
#field hdrtype , CInt
#field aux , Ptr ()
#field properties , Ptr <pci_property>
#field last_cap , Ptr <pci_cap>

#stoptype

#num PCI_ADDR_IO_MASK
#num PCI_ADDR_MEM_MASK
#num PCI_ADDR_FLAG_MASK

#ccall pci_read_byte , Ptr <pci_dev> -> CInt -> IO <u8>
#ccall pci_read_word , Ptr <pci_dev> -> CInt -> IO <u16>
#ccall pci_read_long , Ptr <pci_dev> -> CInt -> IO <u32>
#ccall pci_read_block , Ptr <pci_dev> -> CInt -> Ptr <u8> -> CInt -> IO CInt
#ccall pci_read_vpd , Ptr <pci_dev> -> CInt -> Ptr <u8> -> CInt -> IO CInt
#ccall pci_write_byte , Ptr <pci_dev> -> CInt -> <u8> -> IO CInt
#ccall pci_write_word , Ptr <pci_dev> -> CInt -> <u16> -> IO CInt
#ccall pci_write_long , Ptr <pci_dev> -> CInt -> <u32> -> IO CInt
#ccall pci_write_block , Ptr <pci_dev> -> CInt -> Ptr <u8> -> CInt -> IO CInt

-- PCI Properties
#ccall pci_fill_info , Ptr <pci_dev> -> CInt -> IO CInt
#ccall pci_get_string_property , Ptr <pci_dev> -> <u32> -> IO CString

#num PCI_FILL_IDENT
#num PCI_FILL_IRQ
#num PCI_FILL_BASES
#num PCI_FILL_ROM_BASE
#num PCI_FILL_SIZES
#num PCI_FILL_CLASS
#num PCI_FILL_CAPS
#num PCI_FILL_EXT_CAPS
#num PCI_FILL_PHYS_SLOT
#num PCI_FILL_MODULE_ALIAS
#num PCI_FILL_LABEL
#num PCI_FILL_NUMA_NODE
#num PCI_FILL_IO_FLAGS
#num PCI_FILL_DT_NODE
-- #num PCI_FILL_IOMMU_GROUP
#num PCI_FILL_RESCAN

#ccall pci_setup_cache , Ptr <pci_dev> -> Ptr <u8> -> CInt -> IO ()

-- * Capabilities
#starttype struct pci_cap
#field next , Ptr <pci_cap>
#field id , <u16>
#field type , <u16>
#field addr , CUInt
#stoptype

#num PCI_CAP_NORMAL
#num PCI_CAP_EXTENDED

#ccall pci_find_cap , Ptr <pci_dev> -> CUInt -> CUInt -> IO (Ptr <pci_cap>)
#ccall pci_find_cap_nr , Ptr <pci_dev> -> CUInt -> CUInt -> Ptr CUInt -> IO (Ptr <pci_cap>)

-- * Filters
#starttype struct pci_filter
#field domain , CInt
#field bus , CInt
#field slot , CInt
#field func , CInt
#field vendor , CInt
#field device , CInt
#field device_class , CInt
#array_field rfu , CInt
#stoptype

#ccall pci_filter_init , Ptr <pci_access> -> Ptr <pci_filter> -> IO ()
#ccall pci_filter_parse_slot , Ptr <pci_filter> -> CString -> IO CString
#ccall pci_filter_parse_id , Ptr <pci_filter> -> CString -> IO CString
#ccall pci_filter_match , Ptr <pci_filter> -> Ptr <pci_dev> -> IO CInt

-- Name Lookup

-- IGNORING VARIADIC FUNCTION
-- #ccall pci_lookup_name , Ptr <pci_access> -> Ptr CChar -> CInt -> CInt -> IO (Ptr CChar)
#ccall pci_load_name_list , Ptr <pci_access> -> IO CInt
#ccall pci_free_name_list , Ptr <pci_access> -> IO ()
#ccall pci_set_name_list_path , Ptr <pci_access> -> CString -> CInt -> IO ()
#ccall pci_id_cache_flush , Ptr <pci_access> -> IO ()

#integral_t enum pci_lookup_mode
#num PCI_LOOKUP_VENDOR
#num PCI_LOOKUP_DEVICE
#num PCI_LOOKUP_CLASS
#num PCI_LOOKUP_SUBSYSTEM
#num PCI_LOOKUP_PROGIF
#num PCI_LOOKUP_NUMERIC
#num PCI_LOOKUP_NO_NUMBERS
#num PCI_LOOKUP_MIXED
#num PCI_LOOKUP_NETWORK
#num PCI_LOOKUP_SKIP_LOCAL
#num PCI_LOOKUP_CACHE
#num PCI_LOOKUP_REFRESH_CACHE
#num PCI_LOOKUP_NO_HWDB
