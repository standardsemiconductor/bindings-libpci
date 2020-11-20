{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include <pci/types.h>
module Bindings.Libpci.Types where
import Foreign.Ptr
#strict_import

{- typedef uint8_t u8; -}
#synonym_t u8 , CUChar
{- typedef uint16_t u16; -}
#synonym_t u16 , CUShort
{- typedef uint32_t u32; -}
#synonym_t u32 , CUInt
{- typedef uint64_t u64; -}
#synonym_t u64 , CULong
{- typedef u32 pciaddr_t; -}
#synonym_t pciaddr_t , CUInt
