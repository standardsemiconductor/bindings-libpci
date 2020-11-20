#include <bindings.dsl.h>
#include <pci/pci.h>

module Bindings.Libpci where
#strict_import

-- PCI Access Structure

#starttype struct pci_methods --OPAQUE???
#stoptype

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
#field id_file_name , Ptr CChar
#field free_id_name , CInt
#field numeric_ids , CInt
#field id_lookup_mode , CUInt
#field debugging , CInt
-- IGNORING lines 64-67 Functions you can override
#field devices , Ptr <pci_dev>
#field methods , Ptr <pci_methods>
#field params , Ptr <pci_param>
#field id_entry , Ptr (Ptr <id_hash>)
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

#ccall pci_alloc , IO (Ptr <pci_access>)
#ccall pci_init , Ptr <pci_access> -> IO ()
#ccall pci_cleanup , Ptr <pci_access> -> IO ()

#ccall pci_scan_bus , Ptr <pci_access> -> IO ()
#ccall pci_get_dev , Ptr <pci_access> -> CInt -> CInt -> CInt -> CInt -> IO (Ptr <pci_dev>)
#ccall pci_free_dev , Ptr <pci_dev> -> IO ()

#ccall pci_lookup_method , Ptr CChar -> IO CInt
#ccall pci_get_method_name , CInt -> IO (Ptr CChar)

-- Named parameters
#starttype struct pci_param
#field next , Ptr <pci_param>
#field param , Ptr CChar
#field value , Ptr CChar
#field value_malloced , CInt
#field help , Ptr CChar
#stoptype

#ccall pci_get_param , Ptr <pci_access> -> Ptr CChar -> IO (Ptr CChar)
#ccall pci_set_param , Ptr <pci_access> -> Ptr CChar -> Ptr CChar -> IO CInt
#ccall pci_walk_params , Ptr <pci_access> -> Ptr <pci_param> -> IO (Ptr <pci_param>)

-- Devices
#starttype struct pci_dev
#field next , Ptr <pci_dev>
#field domain_16 , ???

#stoptype
