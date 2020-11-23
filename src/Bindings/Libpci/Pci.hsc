{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include <pci/pci.h>
module Bindings.Libpci.Pci where
import Foreign.Ptr
#strict_import

import Bindings.Libpci.Types
{- struct pci_methods; -}
#opaque_t struct pci_methods
{- struct id_entry; -}
#opaque_t struct id_entry
{- struct id_bucket; -}
#opaque_t struct id_bucket
{- struct udev; -}
#opaque_t struct udev
{- struct udev_hwdb; -}
#opaque_t struct udev_hwdb
{- struct pci_property; -}
#opaque_t struct pci_property
{- enum pci_access_type {
    PCI_ACCESS_AUTO,
    PCI_ACCESS_SYS_BUS_PCI,
    PCI_ACCESS_PROC_BUS_PCI,
    PCI_ACCESS_I386_TYPE1,
    PCI_ACCESS_I386_TYPE2,
    PCI_ACCESS_FBSD_DEVICE,
    PCI_ACCESS_AIX_DEVICE,
    PCI_ACCESS_NBSD_LIBPCI,
    PCI_ACCESS_OBSD_DEVICE,
    PCI_ACCESS_DUMP,
    PCI_ACCESS_DARWIN,
    PCI_ACCESS_SYLIXOS_DEVICE,
    PCI_ACCESS_HURD,
    PCI_ACCESS_MAX
}; -}
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
{- struct pci_access {
    unsigned int method;
    int writeable;
    int buscentric;
    char * id_file_name;
    int free_id_name;
    int numeric_ids;
    unsigned int id_lookup_mode;
    int debugging;
    void (* error)(char * msg, ...) __attribute__((format(printf, 1, 2)));
    void (* warning)(char * msg, ...) __attribute__((format(printf, 1, 2)));
    void (* debug)(char * msg, ...) __attribute__((format(printf, 1, 2)));
    struct pci_dev * devices;
    struct pci_methods * methods;
    struct pci_param * params;
    struct id_entry * * id_hash;
    struct id_bucket * current_id_bucket;
    int id_load_failed;
    int id_cache_status;
    struct udev * id_udev;
    struct udev_hwdb * id_udev_hwdb;
    int fd;
    int fd_rw;
    int fd_pos;
    int fd_vpd;
    struct pci_dev * cached_dev;
}; -}
#starttype struct pci_access
#field method , CUInt
#field writeable , CInt
#field buscentric , CInt
#field id_file_name , CString
#field free_id_name , CInt
#field numeric_ids , CInt
#field id_lookup_mode , CUInt
#field debugging , CInt
#field error , FunPtr (CString -> IO ())
#field warning , FunPtr (CString -> IO ())
#field debug , FunPtr (CString -> IO ())
#field devices , Ptr <struct pci_dev>
#field methods , Ptr <struct pci_methods>
#field params , Ptr <struct pci_param>
#field id_hash , Ptr (Ptr <struct id_entry>)
#field current_id_bucket , Ptr <struct id_bucket>
#field id_load_failed , CInt
#field id_cache_status , CInt
#field id_udev , Ptr <struct udev>
#field id_udev_hwdb , Ptr <struct udev_hwdb>
#field fd , CInt
#field fd_rw , CInt
#field fd_pos , CInt
#field fd_vpd , CInt
#field cached_dev , Ptr <struct pci_dev>
#stoptype
#ccall pci_alloc , IO (Ptr <struct pci_access>)
#ccall pci_init , Ptr <struct pci_access> -> IO ()
#ccall pci_cleanup , Ptr <struct pci_access> -> IO ()
#ccall pci_scan_bus , Ptr <struct pci_access> -> IO ()
#ccall pci_get_dev , Ptr <struct pci_access> -> CInt -> CInt -> CInt -> CInt -> IO (Ptr <struct pci_dev>)
#ccall pci_free_dev , Ptr <struct pci_dev> -> IO ()
#ccall pci_lookup_method , CString -> IO CInt
#ccall pci_get_method_name , CInt -> IO CString
{- struct pci_param {
    struct pci_param * next;
    char * param;
    char * value;
    int value_malloced;
    char * help;
}; -}
#starttype struct pci_param
#field next , Ptr <struct pci_param>
#field param , CString
#field value , CString
#field value_malloced , CInt
#field help , CString
#stoptype
#ccall pci_get_param , Ptr <struct pci_access> -> CString -> IO CString
#ccall pci_set_param , Ptr <struct pci_access> -> CString -> CString -> IO CInt
#ccall pci_walk_params , Ptr <struct pci_access> -> Ptr <struct pci_param> -> IO (Ptr <struct pci_param>)
{- struct pci_dev {
    struct pci_dev * next;
    u16 domain_16;
    u8 bus, dev, func;
    int known_fields;
    u16 vendor_id, device_id;
    u16 device_class;
    int irq;
    pciaddr_t base_addr[6];
    pciaddr_t size[6];
    pciaddr_t rom_base_addr;
    pciaddr_t rom_size;
    struct pci_cap * first_cap;
    char * phy_slot;
    char * module_alias;
    char * label;
    int numa_node;
    pciaddr_t flags[6];
    pciaddr_t rom_flags;
    int domain;
    struct pci_access * access;
    struct pci_methods * methods;
    u8 * cache;
    int cache_len;
    int hdrtype;
    void * aux;
    struct pci_property * properties;
    struct pci_cap * last_cap;
}; -}
#starttype struct pci_dev
#field next , Ptr <struct pci_dev>
#field domain_16 , CUShort
#field bus , CUChar
#field dev , CUChar
#field func , CUChar
#field known_fields , CInt
#field vendor_id , CUShort
#field device_id , CUShort
#field device_class , CUShort
#field irq , CInt
#array_field base_addr , CULong
#array_field size , CULong
#field rom_base_addr , CULong
#field rom_size , CULong
#field first_cap , Ptr <struct pci_cap>
#field phy_slot , CString
#field module_alias , CString
#field label , CString
#field numa_node , CInt
#array_field flags , CULong
#field rom_flags , CULong
#field domain , CInt
#field access , Ptr <struct pci_access>
#field methods , Ptr <struct pci_methods>
#field cache , Ptr CUChar
#field cache_len , CInt
#field hdrtype , CInt
#field aux , Ptr ()
#field properties , Ptr <struct pci_property>
#field last_cap , Ptr <struct pci_cap>
#stoptype
#ccall pci_read_byte , Ptr <struct pci_dev> -> CInt -> IO CUChar
#ccall pci_read_word , Ptr <struct pci_dev> -> CInt -> IO CUShort
#ccall pci_read_long , Ptr <struct pci_dev> -> CInt -> IO CUInt
#ccall pci_read_block , Ptr <struct pci_dev> -> CInt -> Ptr CUChar -> CInt -> IO CInt
#ccall pci_read_vpd , Ptr <struct pci_dev> -> CInt -> Ptr CUChar -> CInt -> IO CInt
#ccall pci_write_byte , Ptr <struct pci_dev> -> CInt -> CUChar -> IO CInt
#ccall pci_write_word , Ptr <struct pci_dev> -> CInt -> CUShort -> IO CInt
#ccall pci_write_long , Ptr <struct pci_dev> -> CInt -> CUInt -> IO CInt
#ccall pci_write_block , Ptr <struct pci_dev> -> CInt -> Ptr CUChar -> CInt -> IO CInt
#ccall pci_fill_info , Ptr <struct pci_dev> -> CInt -> IO CInt
#ccall pci_get_string_property , Ptr <struct pci_dev> -> CUInt -> IO CString

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

#ccall pci_setup_cache , Ptr <struct pci_dev> -> Ptr CUChar -> CInt -> IO ()
{- struct pci_cap {
    struct pci_cap * next; u16 id; u16 type; unsigned int addr;
}; -}
#starttype struct pci_cap
#field next , Ptr <struct pci_cap>
#field id , CUShort
#field type , CUShort
#field addr , CUInt
#stoptype
#ccall pci_find_cap , Ptr <struct pci_dev> -> CUInt -> CUInt -> IO (Ptr <struct pci_cap>)
#ccall pci_find_cap_nr , Ptr <struct pci_dev> -> CUInt -> CUInt -> Ptr CUInt -> IO (Ptr <struct pci_cap>)
{- struct pci_filter {
    int domain, bus, slot, func;
    int vendor, device, device_class;
    int rfu[3];
}; -}
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
#ccall pci_filter_init , Ptr <struct pci_access> -> Ptr <struct pci_filter> -> IO ()
#ccall pci_filter_parse_slot , Ptr <struct pci_filter> -> CString -> IO CString
#ccall pci_filter_parse_id , Ptr <struct pci_filter> -> CString -> IO CString
#ccall pci_filter_match , Ptr <struct pci_filter> -> Ptr <struct pci_dev> -> IO CInt

#ccall pci_lookup_name , Ptr <struct pci_access> -> CString -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> IO CString

#ccall pci_load_name_list , Ptr <struct pci_access> -> IO CInt
#ccall pci_free_name_list , Ptr <struct pci_access> -> IO ()
#ccall pci_set_name_list_path , Ptr <struct pci_access> -> CString -> CInt -> IO ()
#ccall pci_id_cache_flush , Ptr <struct pci_access> -> IO ()
{- enum pci_lookup_mode {
    PCI_LOOKUP_VENDOR = 1,
    PCI_LOOKUP_DEVICE = 2,
    PCI_LOOKUP_CLASS = 4,
    PCI_LOOKUP_SUBSYSTEM = 8,
    PCI_LOOKUP_PROGIF = 16,
    PCI_LOOKUP_NUMERIC = 0x10000,
    PCI_LOOKUP_NO_NUMBERS = 0x20000,
    PCI_LOOKUP_MIXED = 0x40000,
    PCI_LOOKUP_NETWORK = 0x80000,
    PCI_LOOKUP_SKIP_LOCAL = 0x100000,
    PCI_LOOKUP_CACHE = 0x200000,
    PCI_LOOKUP_REFRESH_CACHE = 0x400000,
    PCI_LOOKUP_NO_HWDB = 0x800000
}; -}
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
