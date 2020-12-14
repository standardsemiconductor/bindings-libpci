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

-- | Autodetection
#num PCI_ACCESS_AUTO

-- | Linux /sys/bus/pci
#num PCI_ACCESS_SYS_BUS_PCI

-- | Linux /proc/bus/pci
#num PCI_ACCESS_PROC_BUS_PCI

-- | i386 ports, type 1
#num PCI_ACCESS_I386_TYPE1

-- | i386 ports, type 2
#num PCI_ACCESS_I386_TYPE2

-- | FreeBSD /dev/pci
#num PCI_ACCESS_FBSD_DEVICE

-- | /dev/pci0, /dev/bus0, etc.
#num PCI_ACCESS_AIX_DEVICE

-- | NetBSD libpci
#num PCI_ACCESS_NBSD_LIBPCI

-- | OpenBSD /dev/pci
#num PCI_ACCESS_OBSD_DEVICE

-- | Dump file
#num PCI_ACCESS_DUMP

-- | Darwin
#num PCI_ACCESS_DARWIN

#ifdef MIN_VERSION_LIBPCI_3_6_0
-- | SylixOS pci
#num PCI_ACCESS_SYLIXOS_DEVICE
#endif

#ifdef MIN_VERSION_LIBPCI_3_6_4
-- | GNU/Hurd
#num PCI_ACCESS_HURD
#endif

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
-- | PCI Access Structure
#starttype struct pci_access

-- | Access method
#field method , CUInt 

#field writeable , CInt
-- ^ Open in read/write mode

-- | Bus-centric view of the world
#field buscentric , CInt

-- | Name of ID list file (use pci_set_name_list_path())
#field id_file_name , CString

-- | Set if id_file_name is malloced
#field free_id_name , CInt

-- | Enforce PCI_LOOKUP_NUMERIC (>1 => PCI_LOOKUP_MIXED)
#field numeric_ids , CInt

-- | pci_lookup_mode flags which are set automatically
-- Default: PCI_LOOKUP_CACHE
#field id_lookup_mode , CUInt

-- | Turn on debugging messages
#field debugging , CInt

-- | Write error message and quit
#field error , FunPtr (CString -> IO ())

-- | Write a warning message
#field warning , FunPtr (CString -> IO ())

-- | Write a debugging message
#field debug , FunPtr (CString -> IO ())

-- | Devices found on this bus
#field devices , Ptr <struct pci_dev>

#field methods , Ptr <struct pci_methods>
#field params , Ptr <struct pci_param>

-- | names.c
#field id_hash , Ptr (Ptr <struct id_entry>)
#field current_id_bucket , Ptr <struct id_bucket>
#field id_load_failed , CInt

-- | 0=not read, 1=read, 2=dirty
#field id_cache_status , CInt

-- | names-hwdb.c
#field id_udev , Ptr <struct udev>
#field id_udev_hwdb , Ptr <struct udev_hwdb>

-- | proc/sys: fd for config space
#field fd , CInt

-- | proc/sys: fd opened read-write
#field fd_rw , CInt

-- | proc/sys: current position
#field fd_pos , CInt

-- | sys: fd for VPD
#field fd_vpd , CInt

-- | proc/sys: device the fds are for
#field cached_dev , Ptr <struct pci_dev>
#stoptype

-- | Initialize PCI access
#ccall pci_alloc , IO (Ptr <struct pci_access>)
#ccall pci_init , Ptr <struct pci_access> -> IO ()
#ccall pci_cleanup , Ptr <struct pci_access> -> IO ()

-- | Scanning of devices
#ccall pci_scan_bus , Ptr <struct pci_access> -> IO ()

-- | Raw access to specified device
#ccall pci_get_dev , Ptr <struct pci_access> -> CInt -> CInt -> CInt -> CInt -> IO (Ptr <struct pci_dev>)
#ccall pci_free_dev , Ptr <struct pci_dev> -> IO ()

-- | Names of access methods
-- | Returns -1 if not found
#ccall pci_lookup_method , CString -> IO CInt

-- | Returns "" if unavailable, NULL if index out of range
#ccall pci_get_method_name , CInt -> IO CString

{- struct pci_param {
    struct pci_param * next;
    char * param;
    char * value;
    int value_malloced;
    char * help;
}; -}
-- | Named parameters
#starttype struct pci_param

-- | Please use pci_walk_params() for traversing the list
#field next , Ptr <struct pci_param>

-- | Name of the parameter
#field param , CString

-- | Value of the parameter
#field value , CString

-- | used internally
#field value_malloced , CInt

-- | Explanation of the parameter
#field help , CString
#stoptype

#ccall pci_get_param , Ptr <struct pci_access> -> CString -> IO CString

-- | 0 on success, -1 if no such parameter
#ccall pci_set_param , Ptr <struct pci_access> -> CString -> CString -> IO CInt

-- | To traverse the list, call pci_walk_params repeatedly, first with prev=NULL, and do not modify the parameters during traversal
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
-- | Devices
#starttype struct pci_dev

-- | Next device in the chain
#field next , Ptr <struct pci_dev>

-- | 16-bit version of the PCI domain for backward compatibility
#field domain_16 , CUShort

-- | Bus inside domain, device and function
#field bus , CUChar
#field dev , CUChar
#field func , CUChar

-- | These fields are set by pci_fill_info()
-- | Set of info fields already known (see pci_fill_info())
#field known_fields , CInt

-- | Identity of the device
#field vendor_id , CUShort

-- | Identity of the device
#field device_id , CUShort

-- | PCI device class
#field device_class , CUShort

-- | IRQ number
#field irq , CInt

-- | Base addresses including flags in lower bits
#array_field base_addr , CULong

-- | Region sizes
#array_field size , CULong

-- | Expansion ROM base address
#field rom_base_addr , CULong

-- | Expansion ROM size
#field rom_size , CULong

-- | List of capabilities
#field first_cap , Ptr <struct pci_cap>

-- | Physical slot
#field phy_slot , CString

-- | Linux kernel module alias
#field module_alias , CString

-- | Device name as exported by BIOS
#field label , CString

-- | NUMA node
#field numa_node , CInt

-- | PCI_IORESOURCE_* flags for regions
#array_field flags , CULong

-- | PCI_IORESOURCE_* flags for expansion ROM
#field rom_flags , CULong

-- | PCI domain (host bridge)
#field domain , CInt
#field access , Ptr <struct pci_access>
#field methods , Ptr <struct pci_methods>

-- | Cached config registers
#field cache , Ptr CUChar
#field cache_len , CInt

-- | Cached low 7 bits of header type, -1 if unknown
#field hdrtype , CInt

-- | Auxiliary data for use by the back-end
#field aux , Ptr ()

#ifdef MIN_VERSION_LIBPCI_3_6_0
-- | A linked list of extra properties
#field properties , Ptr <struct pci_property>
#endif

#ifdef MIN_VERSION_LIBPCI_3_6_3
-- | Last capability in the list
#field last_cap , Ptr <struct pci_cap>
#endif  
#stoptype

-- | Access to configuration space
#ccall pci_read_byte , Ptr <struct pci_dev> -> CInt -> IO CUChar
#ccall pci_read_word , Ptr <struct pci_dev> -> CInt -> IO CUShort
#ccall pci_read_long , Ptr <struct pci_dev> -> CInt -> IO CUInt
#ccall pci_read_block , Ptr <struct pci_dev> -> CInt -> Ptr CUChar -> CInt -> IO CInt
#ccall pci_read_vpd , Ptr <struct pci_dev> -> CInt -> Ptr CUChar -> CInt -> IO CInt
#ccall pci_write_byte , Ptr <struct pci_dev> -> CInt -> CUChar -> IO CInt
#ccall pci_write_word , Ptr <struct pci_dev> -> CInt -> CUShort -> IO CInt
#ccall pci_write_long , Ptr <struct pci_dev> -> CInt -> CUInt -> IO CInt
#ccall pci_write_block , Ptr <struct pci_dev> -> CInt -> Ptr CUChar -> CInt -> IO CInt

-- | Most device properties take some effort to obtain, so libpci does not
-- initialize them during default bus scan. Instead, you have to call
-- pci_fill_info() with the proper PCI_FILL_xxx constants OR'ed together.
-- 
-- Some properties are stored directly in the pci_dev structure.
-- The remaining ones can be accessed through pci_get_string_property().
--
-- pci_fill_info() returns the current value of pci_dev->known_fields.
-- This is a bit mask of all fields, which were already obtained during
-- the lifetime of the device. This includes fields which are not supported
-- by the particular device -- in that case, the field is left at its default
-- value, which is 0 for integer fields and NULL for pointers. On the other
-- hand, we never consider known fields unsupported by the current back-end;
-- such fields always contain the default value.
--
-- XXX: flags and the result should be unsigned, but we do not want to break the ABI.
#ccall pci_fill_info , Ptr <struct pci_dev> -> CInt -> IO CInt

#ifdef MIN_VERSION_LIBPCI_3_6_0
#ccall pci_get_string_property , Ptr <struct pci_dev> -> CUInt -> IO CString
#endif

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

#ifdef MIN_VERSION_LIBPCI_3_6_0
-- | Device tree node
#num PCI_FILL_DT_NODE
#endif

#ifdef MIN_VERSION_LIBPCI_3_7_0
#num PCI_FILL_IOMMU_GROUP
#endif

#num PCI_FILL_RESCAN

#ccall pci_setup_cache , Ptr <struct pci_dev> -> Ptr CUChar -> CInt -> IO ()
{- struct pci_cap {
    struct pci_cap * next; u16 id; u16 type; unsigned int addr;
}; -}
-- | Capabilities
#starttype struct pci_cap
#field next , Ptr <struct pci_cap>

-- | PCI_CAP_ID_xxx
#field id , CUShort

-- | PCI_CAP_xxx
#field type , CUShort

-- | Position in the config space
#field addr , CUInt
#stoptype

-- | Traditional PCI capabilities
#num PCI_CAP_NORMAL

-- | PCIe extended capabilities
#num PCI_CAP_EXTENDED

#ccall pci_find_cap , Ptr <struct pci_dev> -> CUInt -> CUInt -> IO (Ptr <struct pci_cap>)

#ifdef MIN_VERSION_LIBPCI_3_6_3
#ccall pci_find_cap_nr , Ptr <struct pci_dev> -> CUInt -> CUInt -> Ptr CUInt -> IO (Ptr <struct pci_cap>)
#endif
{- struct pci_filter {
    int domain, bus, slot, func;
    int vendor, device, device_class;
    int rfu[3];
}; -}
-- | Filters
#starttype struct pci_filter

-- | -1 = ANY
#field domain , CInt

-- | -1 = ANY
#field bus , CInt

-- | -1 = ANY
#field slot , CInt

-- | -1 = ANY
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

-- | Conversion of PCI ID's to names (according to the pci.ids file)
-- Call pci_lookup_name() to identify different types of ID's:
-- VENDOR(vendorID) -> vendor
-- DEVICE(vendorID, deviceID) -> device
-- VENDOR | DEVICE(vendorID, deviceID) -> combined vendor and device
-- SUBSYSTEM | VENDOR(subvendorID) -> subsystem vendor
-- SUBSYSTEM | DEVICE(vendorID, deviceID, subvendorID, subdevID) -> subsystem device
-- SUBSYSTEM | VENDOR | DEVICE(vendorID, deviceID, subvendorID, subdevID) -> combined subsystem v+d
-- SUBSYSTEM | ...(-1, -1, subvendorID, subdevID) -> generic subsystem
-- CLASS(classID) -> class
-- PROGIF(classID, progif) -> programming interface
#ccall pci_lookup_name , Ptr <struct pci_access> -> CString -> CInt -> CUInt -> CInt -> CInt -> CInt -> CInt -> IO CString

-- | Called automatically by pci_lookup_*() when needed; returns success
#ccall pci_load_name_list , Ptr <struct pci_access> -> IO CInt

-- | Called automatically by pci_cleanup
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

-- | 1 Vendor name (args: vendorID)
#num PCI_LOOKUP_VENDOR

-- | 2 Device name (args: vendorID, deviceID)
#num PCI_LOOKUP_DEVICE

-- | 4 Device class (args: classID)
#num PCI_LOOKUP_CLASS

-- | 8
#num PCI_LOOKUP_SUBSYSTEM

-- | 16 Programming interface (args: classID, prog_if)
#num PCI_LOOKUP_PROGIF

-- | 0x10000 Want only formatted numbers; default if access->numeric_id is set
#num PCI_LOOKUP_NUMERIC

-- | 0x20000 Return NULL if not found in the database; default is to print numerically
#num PCI_LOOKUP_NO_NUMBERS

-- | 0x40000 Include both numbers and names
#num PCI_LOOKUP_MIXED

-- | 0x80000 Try to resolve unknown ID's by DNS
#num PCI_LOOKUP_NETWORK

-- | 0x100000 Do not consult local database
#num PCI_LOOKUP_SKIP_LOCAL

-- | 0x200000 Consult the local cache before using DNS
#num PCI_LOOKUP_CACHE

-- | 0x400000 Forget all previously cached entries, but still allow updating the cache
#num PCI_LOOKUP_REFRESH_CACHE

-- | 0x800000 Do not ask udev's hwdb
#num PCI_LOOKUP_NO_HWDB
