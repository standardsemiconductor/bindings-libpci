{-# OPTIONS_GHC -fno-warn-unused-imports #-}
#include <bindings.dsl.h>
#include <pci/header.h>
#include <pci/types.h>
module Bindings.Libpci.Header where
import Foreign.Ptr
#strict_import



#num PCI_VENDOR_ID
#num PCI_DEVICE_ID
#num PCI_COMMAND
#num PCI_COMMAND_IO
#num PCI_COMMAND_MEMORY
#num PCI_COMMAND_MASTER
#num PCI_COMMAND_SPECIAL
#num PCI_COMMAND_INVALIDATE
#num PCI_COMMAND_VGA_PALETTE
#num PCI_COMMAND_PARITY
#num PCI_COMMAND_WAIT
#num PCI_COMMAND_SERR
#num PCI_COMMAND_FAST_BACK
#num PCI_COMMAND_DISABLE_INTx

#num PCI_STATUS
#num PCI_STATUS_INTx
#num PCI_STATUS_CAP_LIST
#num PCI_STATUS_66MHZ
#num PCI_STATUS_UDF
#num PCI_STATUS_FAST_BACK
#num PCI_STATUS_PARITY
#num PCI_STATUS_DEVSEL_MASK
#num PCI_STATUS_DEVSEL_FAST
#num PCI_STATUS_DEVSEL_MEDIUM
#num PCI_STATUS_DEVSEL_SLOW
#num PCI_STATUS_SIG_TARGET_ABORT
#num PCI_STATUS_REC_TARGET_ABORT
#num PCI_STATUS_REC_MASTER_ABORT
#num PCI_STATUS_SIG_SYSTEM_ERROR
#num PCI_STATUS_DETECTED_PARITY

#num PCI_CLASS_REVISION

#num PCI_REVISION_ID
#num PCI_CLASS_PROG
#num PCI_CLASS_DEVICE

#num PCI_CACHE_LINE_SIZE
#num PCI_LATENCY_TIMER
#num PCI_HEADER_TYPE
#num PCI_HEADER_TYPE_NORMAL
#num PCI_HEADER_TYPE_BRIDGE
#num PCI_HEADER_TYPE_CARDBUS

#num PCI_BIST
#num PCI_BIST_CODE_MASK
#num PCI_BIST_START
#num PCI_BIST_CAPABLE

#num PCI_BASE_ADDRESS_0
#num PCI_BASE_ADDRESS_1
#num PCI_BASE_ADDRESS_2
#num PCI_BASE_ADDRESS_3
#num PCI_BASE_ADDRESS_4
#num PCI_BASE_ADDRESS_5
#num PCI_BASE_ADDRESS_SPACE
#num PCI_BASE_ADDRESS_SPACE_IO
#num PCI_BASE_ADDRESS_SPACE_MEMORY
#num PCI_BASE_ADDRESS_MEM_TYPE_MASK
#num PCI_BASE_ADDRESS_MEM_TYPE_32
#num PCI_BASE_ADDRESS_MEM_TYPE_1M
#num PCI_BASE_ADDRESS_MEM_TYPE_64
#num PCI_BASE_ADDRESS_MEM_PREFETCH
#num PCI_BASE_ADDRESS_MEM_MASK
#num PCI_BASE_ADDRESS_IO_MASK

#num PCI_CARDBUS_CIS
#num PCI_SUBSYSTEM_VENDOR_ID
#num PCI_SUBSYSTEM_ID
#num PCI_ROM_ADDRESS
#num PCI_ROM_ADDRESS_ENABLE
#num PCI_ROM_ADDRESS_MASK

#num PCI_CAPABILITY_LIST

#num PCI_INTERRUPT_LINE
#num PCI_INTERRUPT_PIN
#num PCI_MIN_GNT
#num PCI_MAX_LAT

#num PCI_PRIMARY_BUS
#num PCI_SECONDARY_BUS
#num PCI_SUBORDINATE_BUS
#num PCI_SEC_LATENCY_TIMER
#num PCI_IO_BASE
#num PCI_IO_LIMIT
#num PCI_IO_RANGE_TYPE_MASK
#num PCI_IO_RANGE_TYPE_16
#num PCI_IO_RANGE_TYPE_32
#num PCI_IO_RANGE_MASK
#num PCI_SEC_STATUS
#num PCI_MEMORY_BASE
#num PCI_MEMORY_LIMIT
#num PCI_MEMORY_RANGE_TYPE_MASK
#num PCI_MEMORY_RANGE_MASK
#num PCI_PREF_MEMORY_BASE
#num PCI_PREF_MEMORY_LIMIT
#num PCI_PREF_RANGE_TYPE_MASK
#num PCI_PREF_RANGE_TYPE_32
#num PCI_PREF_RANGE_TYPE_64
#num PCI_PREF_RANGE_MASK
#num PCI_PREF_BASE_UPPER32
#num PCI_PREF_LIMIT_UPPER32
#num PCI_IO_BASE_UPPER16
#num PCI_IO_LIMIT_UPPER16
#num PCI_ROM_ADDRESS1
#num PCI_BRIDGE_CONTROL
#num PCI_BRIDGE_CTL_PARITY
#num PCI_BRIDGE_CTL_SERR
#num PCI_BRIDGE_CTL_NO_ISA
#num PCI_BRIDGE_CTL_VGA
#num PCI_BRIDGE_CTL_VGA_16BIT
#num PCI_BRIDGE_CTL_MASTER_ABORT
#num PCI_BRIDGE_CTL_BUS_RESET
#num PCI_BRIDGE_CTL_FAST_BACK
#num PCI_BRIDGE_CTL_PRI_DISCARD_TIMER
#num PCI_BRIDGE_CTL_SEC_DISCARD_TIMER
#num PCI_BRIDGE_CTL_DISCARD_TIMER_STATUS
#num PCI_BRIDGE_CTL_DISCARD_TIMER_SERR_EN

#num PCI_CB_CAPABILITY_LIST
#num PCI_CB_SEC_STATUS
#num PCI_CB_PRIMARY_BUS
#num PCI_CB_CARD_BUS
#num PCI_CB_SUBORDINATE_BUS
#num PCI_CB_LATENCY_TIMER
#num PCI_CB_MEMORY_BASE_0
#num PCI_CB_MEMORY_LIMIT_0
#num PCI_CB_MEMORY_BASE_1
#num PCI_CB_MEMORY_LIMIT_1
#num PCI_CB_IO_BASE_0
#num PCI_CB_IO_BASE_0_HI
#num PCI_CB_IO_LIMIT_0
#num PCI_CB_IO_LIMIT_0_HI
#num PCI_CB_IO_BASE_1
#num PCI_CB_IO_BASE_1_HI
#num PCI_CB_IO_LIMIT_1
#num PCI_CB_IO_LIMIT_1_HI
#num PCI_CB_IO_RANGE_MASK
#num PCI_CB_BRIDGE_CONTROL
#num PCI_CB_BRIDGE_CTL_PARITY
#num PCI_CB_BRIDGE_CTL_SERR
#num PCI_CB_BRIDGE_CTL_ISA
#num PCI_CB_BRIDGE_CTL_VGA
#num PCI_CB_BRIDGE_CTL_MASTER_ABORT
#num PCI_CB_BRIDGE_CTL_CB_RESET
#num PCI_CB_BRIDGE_CTL_16BIT_INT
#num PCI_CB_BRIDGE_CTL_PREFETCH_MEM0
#num PCI_CB_BRIDGE_CTL_PREFETCH_MEM1
#num PCI_CB_BRIDGE_CTL_POST_WRITES
#num PCI_CB_SUBSYSTEM_VENDOR_ID
#num PCI_CB_SUBSYSTEM_ID
#num PCI_CB_LEGACY_MODE_BASE

#num PCI_CAP_LIST_ID
#num PCI_CAP_ID_NULL
#num PCI_CAP_ID_PM
#num PCI_CAP_ID_AGP
#num PCI_CAP_ID_VPD
#num PCI_CAP_ID_SLOTID
#num PCI_CAP_ID_MSI
#num PCI_CAP_ID_CHSWP
#num PCI_CAP_ID_PCIX
#num PCI_CAP_ID_HT
#num PCI_CAP_ID_VNDR
#num PCI_CAP_ID_DBG
#num PCI_CAP_ID_CCRC
#num PCI_CAP_ID_HOTPLUG
#num PCI_CAP_ID_SSVID
#num PCI_CAP_ID_AGP3
#num PCI_CAP_ID_SECURE
#num PCI_CAP_ID_EXP
#num PCI_CAP_ID_MSIX
#num PCI_CAP_ID_SATA
#num PCI_CAP_ID_AF
#num PCI_CAP_ID_EA
#num PCI_CAP_LIST_NEXT
#num PCI_CAP_FLAGS
#num PCI_CAP_SIZEOF



#num PCI_EXT_CAP_ID_NULL
#num PCI_EXT_CAP_ID_AER
#num PCI_EXT_CAP_ID_VC
#num PCI_EXT_CAP_ID_DSN
#num PCI_EXT_CAP_ID_PB
#num PCI_EXT_CAP_ID_RCLINK
#num PCI_EXT_CAP_ID_RCILINK
#num PCI_EXT_CAP_ID_RCECOLL
#num PCI_EXT_CAP_ID_MFVC
#num PCI_EXT_CAP_ID_VC2
#num PCI_EXT_CAP_ID_RCRB
#num PCI_EXT_CAP_ID_VNDR
#num PCI_EXT_CAP_ID_ACS
#num PCI_EXT_CAP_ID_ARI
#num PCI_EXT_CAP_ID_ATS
#num PCI_EXT_CAP_ID_SRIOV
#num PCI_EXT_CAP_ID_MRIOV
#num PCI_EXT_CAP_ID_MCAST
#num PCI_EXT_CAP_ID_PRI
#num PCI_EXT_CAP_ID_REBAR
#num PCI_EXT_CAP_ID_DPA
#num PCI_EXT_CAP_ID_TPH
#num PCI_EXT_CAP_ID_LTR
#num PCI_EXT_CAP_ID_SECPCI
#num PCI_EXT_CAP_ID_PMUX
#num PCI_EXT_CAP_ID_PASID
#num PCI_EXT_CAP_ID_LNR
#num PCI_EXT_CAP_ID_DPC
#num PCI_EXT_CAP_ID_L1PM
#num PCI_EXT_CAP_ID_PTM
#num PCI_EXT_CAP_ID_M_PCIE
#num PCI_EXT_CAP_ID_FRS
#num PCI_EXT_CAP_ID_RTR
#num PCI_EXT_CAP_ID_DVSEC
#num PCI_EXT_CAP_ID_VF_REBAR
#num PCI_EXT_CAP_ID_DLNK
#num PCI_EXT_CAP_ID_16GT
#num PCI_EXT_CAP_ID_LMR
#num PCI_EXT_CAP_ID_HIER_ID
#num PCI_EXT_CAP_ID_NPEM





#num PCI_PM_CAP_VER_MASK
#num PCI_PM_CAP_PME_CLOCK
#num PCI_PM_CAP_DSI
#num PCI_PM_CAP_AUX_C_MASK
#num PCI_PM_CAP_D1
#num PCI_PM_CAP_D2
#num PCI_PM_CAP_PME_D0
#num PCI_PM_CAP_PME_D1
#num PCI_PM_CAP_PME_D2
#num PCI_PM_CAP_PME_D3_HOT
#num PCI_PM_CAP_PME_D3_COLD
#num PCI_PM_CTRL
#num PCI_PM_CTRL_STATE_MASK
#num PCI_PM_CTRL_NO_SOFT_RST
#num PCI_PM_CTRL_PME_ENABLE
#num PCI_PM_CTRL_DATA_SEL_MASK
#num PCI_PM_CTRL_DATA_SCALE_MASK
#num PCI_PM_CTRL_PME_STATUS
#num PCI_PM_PPB_EXTENSIONS
#num PCI_PM_PPB_B2_B3
#num PCI_PM_BPCC_ENABLE
#num PCI_PM_DATA_REGISTER
#num PCI_PM_SIZEOF



#num PCI_AGP_VERSION
#num PCI_AGP_RFU
#num PCI_AGP_STATUS
#num PCI_AGP_STATUS_RQ_MASK
#num PCI_AGP_STATUS_ISOCH
#num PCI_AGP_STATUS_ARQSZ_MASK
#num PCI_AGP_STATUS_CAL_MASK
#num PCI_AGP_STATUS_SBA
#num PCI_AGP_STATUS_ITA_COH
#num PCI_AGP_STATUS_GART64
#num PCI_AGP_STATUS_HTRANS
#num PCI_AGP_STATUS_64BIT
#num PCI_AGP_STATUS_FW
#num PCI_AGP_STATUS_AGP3
#num PCI_AGP_STATUS_RATE4
#num PCI_AGP_STATUS_RATE2
#num PCI_AGP_STATUS_RATE1
#num PCI_AGP_COMMAND
#num PCI_AGP_COMMAND_RQ_MASK
#num PCI_AGP_COMMAND_ARQSZ_MASK
#num PCI_AGP_COMMAND_CAL_MASK
#num PCI_AGP_COMMAND_SBA
#num PCI_AGP_COMMAND_AGP
#num PCI_AGP_COMMAND_GART64
#num PCI_AGP_COMMAND_64BIT
#num PCI_AGP_COMMAND_FW
#num PCI_AGP_COMMAND_RATE4
#num PCI_AGP_COMMAND_RATE2
#num PCI_AGP_COMMAND_RATE1
#num PCI_AGP_SIZEOF



#num PCI_VPD_ADDR
#num PCI_VPD_ADDR_MASK
#num PCI_VPD_ADDR_F
#num PCI_VPD_DATA



#num PCI_SID_ESR
#num PCI_SID_ESR_NSLOTS
#num PCI_SID_ESR_FIC
#num PCI_SID_CHASSIS_NR



#num PCI_MSI_FLAGS
#num PCI_MSI_FLAGS_MASK_BIT
#num PCI_MSI_FLAGS_64BIT
#num PCI_MSI_FLAGS_QSIZE
#num PCI_MSI_FLAGS_QMASK
#num PCI_MSI_FLAGS_ENABLE
#num PCI_MSI_RFU
#num PCI_MSI_ADDRESS_LO
#num PCI_MSI_ADDRESS_HI
#num PCI_MSI_DATA_32
#num PCI_MSI_DATA_64
#num PCI_MSI_MASK_BIT_32
#num PCI_MSI_MASK_BIT_64
#num PCI_MSI_PENDING_32
#num PCI_MSI_PENDING_64


#num PCI_PCIX_COMMAND
#num PCI_PCIX_COMMAND_DPERE
#num PCI_PCIX_COMMAND_ERO
#num PCI_PCIX_COMMAND_MAX_MEM_READ_BYTE_COUNT
#num PCI_PCIX_COMMAND_MAX_OUTSTANDING_SPLIT_TRANS
#num PCI_PCIX_COMMAND_RESERVED
#num PCI_PCIX_STATUS
#num PCI_PCIX_STATUS_FUNCTION
#num PCI_PCIX_STATUS_DEVICE
#num PCI_PCIX_STATUS_BUS
#num PCI_PCIX_STATUS_64BIT
#num PCI_PCIX_STATUS_133MHZ
#num PCI_PCIX_STATUS_SC_DISCARDED
#num PCI_PCIX_STATUS_UNEXPECTED_SC
#num PCI_PCIX_STATUS_DEVICE_COMPLEXITY
#num PCI_PCIX_STATUS_DESIGNED_MAX_MEM_READ_BYTE_COUNT
#num PCI_PCIX_STATUS_DESIGNED_MAX_OUTSTANDING_SPLIT_TRANS
#num PCI_PCIX_STATUS_DESIGNED_MAX_CUMULATIVE_READ_SIZE
#num PCI_PCIX_STATUS_RCVD_SC_ERR_MESS
#num PCI_PCIX_STATUS_266MHZ
#num PCI_PCIX_STATUS_533MHZ
#num PCI_PCIX_SIZEOF


#num PCI_PCIX_BRIDGE_SEC_STATUS
#num PCI_PCIX_BRIDGE_SEC_STATUS_64BIT
#num PCI_PCIX_BRIDGE_SEC_STATUS_133MHZ
#num PCI_PCIX_BRIDGE_SEC_STATUS_SC_DISCARDED
#num PCI_PCIX_BRIDGE_SEC_STATUS_UNEXPECTED_SC
#num PCI_PCIX_BRIDGE_SEC_STATUS_SC_OVERRUN
#num PCI_PCIX_BRIDGE_SEC_STATUS_SPLIT_REQUEST_DELAYED
#num PCI_PCIX_BRIDGE_SEC_STATUS_CLOCK_FREQ
#num PCI_PCIX_BRIDGE_SEC_STATUS_RESERVED
#num PCI_PCIX_BRIDGE_STATUS
#num PCI_PCIX_BRIDGE_STATUS_FUNCTION
#num PCI_PCIX_BRIDGE_STATUS_DEVICE
#num PCI_PCIX_BRIDGE_STATUS_BUS
#num PCI_PCIX_BRIDGE_STATUS_64BIT
#num PCI_PCIX_BRIDGE_STATUS_133MHZ
#num PCI_PCIX_BRIDGE_STATUS_SC_DISCARDED
#num PCI_PCIX_BRIDGE_STATUS_UNEXPECTED_SC
#num PCI_PCIX_BRIDGE_STATUS_SC_OVERRUN
#num PCI_PCIX_BRIDGE_STATUS_SPLIT_REQUEST_DELAYED
#num PCI_PCIX_BRIDGE_STATUS_RESERVED
#num PCI_PCIX_BRIDGE_UPSTREAM_SPLIT_TRANS_CTRL
#num PCI_PCIX_BRIDGE_DOWNSTREAM_SPLIT_TRANS_CTRL
#num PCI_PCIX_BRIDGE_STR_CAPACITY
#num PCI_PCIX_BRIDGE_STR_COMMITMENT_LIMIT
#num PCI_PCIX_BRIDGE_SIZEOF


#num PCI_HT_CMD
#num PCI_HT_CMD_TYP_HI
#num PCI_HT_CMD_TYP_HI_PRI
#num PCI_HT_CMD_TYP_HI_SEC
#num PCI_HT_CMD_TYP
#num PCI_HT_CMD_TYP_SW
#num PCI_HT_CMD_TYP_IDC
#num PCI_HT_CMD_TYP_RID
#num PCI_HT_CMD_TYP_UIDC
#num PCI_HT_CMD_TYP_ECSA
#num PCI_HT_CMD_TYP_AM
#num PCI_HT_CMD_TYP_MSIM
#num PCI_HT_CMD_TYP_DR
#num PCI_HT_CMD_TYP_VCS
#num PCI_HT_CMD_TYP_RM
#num PCI_HT_CMD_TYP_X86


#num PCI_HT_LCTR_CFLE
#num PCI_HT_LCTR_CST
#num PCI_HT_LCTR_CFE
#num PCI_HT_LCTR_LKFAIL
#num PCI_HT_LCTR_INIT
#num PCI_HT_LCTR_EOC
#num PCI_HT_LCTR_TXO
#num PCI_HT_LCTR_CRCERR
#num PCI_HT_LCTR_ISOCEN
#num PCI_HT_LCTR_LSEN
#num PCI_HT_LCTR_EXTCTL
#num PCI_HT_LCTR_64B


#num PCI_HT_LCNF_MLWI
#num PCI_HT_LCNF_LW_8B
#num PCI_HT_LCNF_LW_16B
#num PCI_HT_LCNF_LW_32B
#num PCI_HT_LCNF_LW_2B
#num PCI_HT_LCNF_LW_4B
#num PCI_HT_LCNF_LW_NC
#num PCI_HT_LCNF_DFI
#num PCI_HT_LCNF_MLWO
#num PCI_HT_LCNF_DFO
#num PCI_HT_LCNF_LWI
#num PCI_HT_LCNF_DFIE
#num PCI_HT_LCNF_LWO
#num PCI_HT_LCNF_DFOE


#num PCI_HT_RID_MIN
#num PCI_HT_RID_MAJ


#num PCI_HT_LFRER_FREQ
#num PCI_HT_LFRER_200
#num PCI_HT_LFRER_300
#num PCI_HT_LFRER_400
#num PCI_HT_LFRER_500
#num PCI_HT_LFRER_600
#num PCI_HT_LFRER_800
#num PCI_HT_LFRER_1000
#num PCI_HT_LFRER_1200
#num PCI_HT_LFRER_1400
#num PCI_HT_LFRER_1600
#num PCI_HT_LFRER_VEND
#num PCI_HT_LFRER_ERR
#num PCI_HT_LFRER_PROT
#num PCI_HT_LFRER_OV
#num PCI_HT_LFRER_EOC
#num PCI_HT_LFRER_CTLT


#num PCI_HT_LFCAP_200
#num PCI_HT_LFCAP_300
#num PCI_HT_LFCAP_400
#num PCI_HT_LFCAP_500
#num PCI_HT_LFCAP_600
#num PCI_HT_LFCAP_800
#num PCI_HT_LFCAP_1000
#num PCI_HT_LFCAP_1200
#num PCI_HT_LFCAP_1400
#num PCI_HT_LFCAP_1600
#num PCI_HT_LFCAP_VEND


#num PCI_HT_FTR_ISOCFC
#num PCI_HT_FTR_LDTSTOP
#num PCI_HT_FTR_CRCTM
#num PCI_HT_FTR_ECTLT
#num PCI_HT_FTR_64BA
#num PCI_HT_FTR_UIDRD


#num PCI_HT_EH_PFLE
#num PCI_HT_EH_OFLE
#num PCI_HT_EH_PFE
#num PCI_HT_EH_OFE
#num PCI_HT_EH_EOCFE
#num PCI_HT_EH_RFE
#num PCI_HT_EH_CRCFE
#num PCI_HT_EH_SERRFE
#num PCI_HT_EH_CF
#num PCI_HT_EH_RE
#num PCI_HT_EH_PNFE
#num PCI_HT_EH_ONFE
#num PCI_HT_EH_EOCNFE
#num PCI_HT_EH_RNFE
#num PCI_HT_EH_CRCNFE
#num PCI_HT_EH_SERRNFE


#num PCI_HT_PRI_CMD
#num PCI_HT_PRI_CMD_BUID
#num PCI_HT_PRI_CMD_UC
#num PCI_HT_PRI_CMD_MH
#num PCI_HT_PRI_CMD_DD
#num PCI_HT_PRI_CMD_DUL

#num PCI_HT_PRI_LCTR0
#num PCI_HT_PRI_LCNF0
#num PCI_HT_PRI_LCTR1
#num PCI_HT_PRI_LCNF1
#num PCI_HT_PRI_RID
#num PCI_HT_PRI_LFRER0
#num PCI_HT_PRI_LFCAP0
#num PCI_HT_PRI_FTR
#num PCI_HT_PRI_LFRER1
#num PCI_HT_PRI_LFCAP1
#num PCI_HT_PRI_ES
#num PCI_HT_PRI_EH
#num PCI_HT_PRI_MBU
#num PCI_HT_PRI_MLU
#num PCI_HT_PRI_BN
#num PCI_HT_PRI_SIZEOF


#num PCI_HT_SEC_CMD
#num PCI_HT_SEC_CMD_WR
#num PCI_HT_SEC_CMD_DE
#num PCI_HT_SEC_CMD_DN
#num PCI_HT_SEC_CMD_CS
#num PCI_HT_SEC_CMD_HH
#num PCI_HT_SEC_CMD_AS
#num PCI_HT_SEC_CMD_HIECE
#num PCI_HT_SEC_CMD_DUL

#num PCI_HT_SEC_LCTR
#num PCI_HT_SEC_LCNF
#num PCI_HT_SEC_RID
#num PCI_HT_SEC_LFRER
#num PCI_HT_SEC_LFCAP
#num PCI_HT_SEC_FTR
#num PCI_HT_SEC_FTR_EXTRS
#num PCI_HT_SEC_FTR_UCNFE
#num PCI_HT_SEC_ES
#num PCI_HT_SEC_EH
#num PCI_HT_SEC_MBU
#num PCI_HT_SEC_MLU
#num PCI_HT_SEC_SIZEOF


#num PCI_HT_SW_CMD
#num PCI_HT_SW_CMD_VIBERR
#num PCI_HT_SW_CMD_VIBFL
#num PCI_HT_SW_CMD_VIBFT
#num PCI_HT_SW_CMD_VIBNFT
#num PCI_HT_SW_PMASK
#num PCI_HT_SW_SWINF
#num PCI_HT_SW_SWINF_DP
#num PCI_HT_SW_SWINF_EN
#num PCI_HT_SW_SWINF_CR
#num PCI_HT_SW_SWINF_PCIDX
#num PCI_HT_SW_SWINF_BLRIDX
#num PCI_HT_SW_SWINF_SBIDX
#num PCI_HT_SW_SWINF_HP
#num PCI_HT_SW_SWINF_HIDE
#num PCI_HT_SW_PCD
#num PCI_HT_SW_BLRD
#num PCI_HT_SW_SBD
#num PCI_HT_SW_SIZEOF


#num PCI_HT_SW_PC_PCR
#num PCI_HT_SW_PC_NPCR
#num PCI_HT_SW_PC_RCR
#num PCI_HT_SW_PC_PDWR
#num PCI_HT_SW_PC_NPDWR
#num PCI_HT_SW_PC_RDWR
#num PCI_HT_SW_PC_PCT
#num PCI_HT_SW_PC_NPCT
#num PCI_HT_SW_PC_RCT
#num PCI_HT_SW_PC_PDWT
#num PCI_HT_SW_PC_NPDWT
#num PCI_HT_SW_PC_RDWT


#num PCI_HT_SW_BLR_BASE0_LO
#num PCI_HT_SW_BLR_BASE0_HI
#num PCI_HT_SW_BLR_LIM0_LO
#num PCI_HT_SW_BLR_LIM0_HI


#num PCI_HT_SW_SB_LO
#num PCI_HT_SW_S0_HI


#num PCI_HT_IDC_IDX
#num PCI_HT_IDC_DATA
#num PCI_HT_IDC_SIZEOF


#num PCI_HT_IDC_IDX_LINT
#num PCI_HT_IDC_LINT
#num PCI_HT_IDC_IDX_IDR

#num PCI_HT_IDC_IDR_MASK
#num PCI_HT_IDC_IDR_POL
#num PCI_HT_IDC_IDR_II_2
#num PCI_HT_IDC_IDR_II_5
#num PCI_HT_IDC_IDR_II_6
#num PCI_HT_IDC_IDR_II_24

#num PCI_HT_IDC_IDR_II_32
#num PCI_HT_IDC_IDR_PASSPW
#num PCI_HT_IDC_IDR_WEOI


#num PCI_HT_RID_RID
#num PCI_HT_RID_SIZEOF


#num PCI_HT_UIDC_CS
#num PCI_HT_UIDC_CE
#num PCI_HT_UIDC_SIZEOF


#num PCI_HT_ECSA_ADDR
#num PCI_HT_ECSA_ADDR_REG
#num PCI_HT_ECSA_ADDR_FUN
#num PCI_HT_ECSA_ADDR_DEV
#num PCI_HT_ECSA_ADDR_BUS
#num PCI_HT_ECSA_ADDR_TYPE
#num PCI_HT_ECSA_DATA
#num PCI_HT_ECSA_SIZEOF


#num PCI_HT_AM_CMD
#num PCI_HT_AM_CMD_NDMA
#num PCI_HT_AM_CMD_IOSIZ
#num PCI_HT_AM_CMD_MT
#num PCI_HT_AM_CMD_MT_40B
#num PCI_HT_AM_CMD_MT_64B


#num PCI_HT_AM_SBW_CTR_COMP
#num PCI_HT_AM_SBW_CTR_NCOH
#num PCI_HT_AM_SBW_CTR_ISOC
#num PCI_HT_AM_SBW_CTR_EN


#num PCI_HT_AM40_SBNPW
#num PCI_HT_AM40_SBW_BASE
#num PCI_HT_AM40_SBW_CTR
#num PCI_HT_AM40_SBPW
#num PCI_HT_AM40_DMA_PBASE0
#num PCI_HT_AM40_DMA_CTR0
#num PCI_HT_AM40_DMA_CTR_CTR
#num PCI_HT_AM40_DMA_SLIM0
#num PCI_HT_AM40_DMA_SBASE0
#num PCI_HT_AM40_SIZEOF


#num PCI_HT_AM64_IDX
#num PCI_HT_AM64_DATA_LO
#num PCI_HT_AM64_DATA_HI
#num PCI_HT_AM64_SIZEOF


#num PCI_HT_AM64_IDX_SBNPW
#num PCI_HT_AM64_W_BASE_LO
#num PCI_HT_AM64_W_CTR
#num PCI_HT_AM64_IDX_SBPW
#num PCI_HT_AM64_IDX_PBNPW
#num PCI_HT_AM64_IDX_DMAPB0
#num PCI_HT_AM64_IDX_DMASB0
#num PCI_HT_AM64_IDX_DMASL0


#num PCI_HT_MSIM_CMD
#num PCI_HT_MSIM_CMD_EN
#num PCI_HT_MSIM_CMD_FIXD
#num PCI_HT_MSIM_ADDR_LO
#num PCI_HT_MSIM_ADDR_HI
#num PCI_HT_MSIM_SIZEOF


#num PCI_HT_DR_CMD
#num PCI_HT_DR_CMD_NDRS
#num PCI_HT_DR_CMD_IDX
#num PCI_HT_DR_EN
#num PCI_HT_DR_DATA
#num PCI_HT_DR_SIZEOF


#num PCI_HT_DR_IDX_BASE_LO
#num PCI_HT_DR_OTNRD
#num PCI_HT_DR_BL_LO
#num PCI_HT_DR_IDX_BASE_HI
#num PCI_HT_DR_IDX_LIMIT_LO
#num PCI_HT_DR_IDX_LIMIT_HI


#num PCI_HT_VCS_SUP
#num PCI_HT_VCS_L1EN
#num PCI_HT_VCS_L0EN
#num PCI_HT_VCS_SBD
#num PCI_HT_VCS_SINT
#num PCI_HT_VCS_SSUP
#num PCI_HT_VCS_SSUP_0
#num PCI_HT_VCS_SSUP_3
#num PCI_HT_VCS_SSUP_15
#num PCI_HT_VCS_NFCBD
#num PCI_HT_VCS_NFCINT
#num PCI_HT_VCS_SIZEOF


#num PCI_HT_RM_CTR0
#num PCI_HT_RM_CTR_LRETEN
#num PCI_HT_RM_CTR_FSER
#num PCI_HT_RM_CTR_ROLNEN
#num PCI_HT_RM_CTR_FSS
#num PCI_HT_RM_CTR_RETNEN
#num PCI_HT_RM_CTR_RETFEN
#num PCI_HT_RM_CTR_AA
#num PCI_HT_RM_STS0
#num PCI_HT_RM_STS_RETSNT
#num PCI_HT_RM_STS_CNTROL
#num PCI_HT_RM_STS_SRCV
#num PCI_HT_RM_CTR1
#num PCI_HT_RM_STS1
#num PCI_HT_RM_CNT0
#num PCI_HT_RM_CNT1
#num PCI_HT_RM_SIZEOF


#num PCI_VNDR_LENGTH


#num PCI_EXP_FLAGS
#num PCI_EXP_FLAGS_VERS
#num PCI_EXP_FLAGS_TYPE
#num PCI_EXP_TYPE_ENDPOINT
#num PCI_EXP_TYPE_LEG_END
#num PCI_EXP_TYPE_ROOT_PORT
#num PCI_EXP_TYPE_UPSTREAM
#num PCI_EXP_TYPE_DOWNSTREAM
#num PCI_EXP_TYPE_PCI_BRIDGE
#num PCI_EXP_TYPE_PCIE_BRIDGE
#num PCI_EXP_TYPE_ROOT_INT_EP
#num PCI_EXP_TYPE_ROOT_EC
#num PCI_EXP_FLAGS_SLOT
#num PCI_EXP_FLAGS_IRQ
#num PCI_EXP_DEVCAP
#num PCI_EXP_DEVCAP_PAYLOAD
#num PCI_EXP_DEVCAP_PHANTOM
#num PCI_EXP_DEVCAP_EXT_TAG
#num PCI_EXP_DEVCAP_L0S
#num PCI_EXP_DEVCAP_L1
#num PCI_EXP_DEVCAP_ATN_BUT
#num PCI_EXP_DEVCAP_ATN_IND
#num PCI_EXP_DEVCAP_PWR_IND
#num PCI_EXP_DEVCAP_RBE
#num PCI_EXP_DEVCAP_PWR_VAL
#num PCI_EXP_DEVCAP_PWR_SCL
#num PCI_EXP_DEVCAP_FLRESET
#num PCI_EXP_DEVCTL
#num PCI_EXP_DEVCTL_CERE
#num PCI_EXP_DEVCTL_NFERE
#num PCI_EXP_DEVCTL_FERE
#num PCI_EXP_DEVCTL_URRE
#num PCI_EXP_DEVCTL_RELAXED
#num PCI_EXP_DEVCTL_PAYLOAD
#num PCI_EXP_DEVCTL_EXT_TAG
#num PCI_EXP_DEVCTL_PHANTOM
#num PCI_EXP_DEVCTL_AUX_PME
#num PCI_EXP_DEVCTL_NOSNOOP
#num PCI_EXP_DEVCTL_READRQ
#num PCI_EXP_DEVCTL_BCRE
#num PCI_EXP_DEVCTL_FLRESET
#num PCI_EXP_DEVSTA
#num PCI_EXP_DEVSTA_CED
#num PCI_EXP_DEVSTA_NFED
#num PCI_EXP_DEVSTA_FED
#num PCI_EXP_DEVSTA_URD
#num PCI_EXP_DEVSTA_AUXPD
#num PCI_EXP_DEVSTA_TRPND
#num PCI_EXP_LNKCAP
#num PCI_EXP_LNKCAP_SPEED
#num PCI_EXP_LNKCAP_WIDTH
#num PCI_EXP_LNKCAP_ASPM
#num PCI_EXP_LNKCAP_L0S
#num PCI_EXP_LNKCAP_L1
#num PCI_EXP_LNKCAP_CLOCKPM
#num PCI_EXP_LNKCAP_SURPRISE
#num PCI_EXP_LNKCAP_DLLA
#num PCI_EXP_LNKCAP_LBNC
#num PCI_EXP_LNKCAP_AOC
#num PCI_EXP_LNKCAP_PORT
#num PCI_EXP_LNKCTL
#num PCI_EXP_LNKCTL_ASPM
#num PCI_EXP_LNKCTL_RCB
#num PCI_EXP_LNKCTL_DISABLE
#num PCI_EXP_LNKCTL_RETRAIN
#num PCI_EXP_LNKCTL_CLOCK
#num PCI_EXP_LNKCTL_XSYNCH
#num PCI_EXP_LNKCTL_CLOCKPM
#num PCI_EXP_LNKCTL_HWAUTWD
#num PCI_EXP_LNKCTL_BWMIE
#num PCI_EXP_LNKCTL_AUTBWIE
#num PCI_EXP_LNKSTA
#num PCI_EXP_LNKSTA_SPEED
#num PCI_EXP_LNKSTA_WIDTH
#num PCI_EXP_LNKSTA_TR_ERR
#num PCI_EXP_LNKSTA_TRAIN
#num PCI_EXP_LNKSTA_SL_CLK
#num PCI_EXP_LNKSTA_DL_ACT
#num PCI_EXP_LNKSTA_BWMGMT
#num PCI_EXP_LNKSTA_AUTBW
#num PCI_EXP_SLTCAP
#num PCI_EXP_SLTCAP_ATNB
#num PCI_EXP_SLTCAP_PWRC
#num PCI_EXP_SLTCAP_MRL
#num PCI_EXP_SLTCAP_ATNI
#num PCI_EXP_SLTCAP_PWRI
#num PCI_EXP_SLTCAP_HPS
#num PCI_EXP_SLTCAP_HPC
#num PCI_EXP_SLTCAP_PWR_VAL
#num PCI_EXP_SLTCAP_PWR_SCL
#num PCI_EXP_SLTCAP_INTERLOCK
#num PCI_EXP_SLTCAP_NOCMDCOMP
#num PCI_EXP_SLTCAP_PSN
#num PCI_EXP_SLTCTL
#num PCI_EXP_SLTCTL_ATNB
#num PCI_EXP_SLTCTL_PWRF
#num PCI_EXP_SLTCTL_MRLS
#num PCI_EXP_SLTCTL_PRSD
#num PCI_EXP_SLTCTL_CMDC
#num PCI_EXP_SLTCTL_HPIE
#num PCI_EXP_SLTCTL_ATNI
#num PCI_EXP_SLTCTL_PWRI
#num PCI_EXP_SLTCTL_PWRC
#num PCI_EXP_SLTCTL_INTERLOCK
#num PCI_EXP_SLTCTL_LLCHG
#num PCI_EXP_SLTSTA
#num PCI_EXP_SLTSTA_ATNB
#num PCI_EXP_SLTSTA_PWRF
#num PCI_EXP_SLTSTA_MRLS
#num PCI_EXP_SLTSTA_PRSD
#num PCI_EXP_SLTSTA_CMDC
#num PCI_EXP_SLTSTA_MRL_ST
#num PCI_EXP_SLTSTA_PRES
#num PCI_EXP_SLTSTA_INTERLOCK
#num PCI_EXP_SLTSTA_LLCHG
#num PCI_EXP_RTCTL
#num PCI_EXP_RTCTL_SECEE
#num PCI_EXP_RTCTL_SENFEE
#num PCI_EXP_RTCTL_SEFEE
#num PCI_EXP_RTCTL_PMEIE
#num PCI_EXP_RTCTL_CRSVIS
#num PCI_EXP_RTCAP
#num PCI_EXP_RTCAP_CRSVIS
#num PCI_EXP_RTSTA
#num PCI_EXP_RTSTA_PME_REQID
#num PCI_EXP_RTSTA_PME_STATUS
#num PCI_EXP_RTSTA_PME_PENDING
#num PCI_EXP_DEVCAP2
#num PCI_EXP_DEVCAP2_NROPRPRP
#num PCI_EXP_DEVCAP2_LTR
#cinline PCI_EXP_DEVCAP2_TPH_COMP , CUInt -> CUInt
#cinline PCI_EXP_DEVCAP2_LN_CLS , CUInt -> CUInt
#num PCI_EXP_DEVCAP2_10BIT_TAG_COMP
#num PCI_EXP_DEVCAP2_10BIT_TAG_REQ
#cinline PCI_EXP_DEVCAP2_OBFF , CUInt -> CUInt
#num PCI_EXP_DEVCAP2_EXTFMT
#num PCI_EXP_DEVCAP2_EE_TLP
#cinline PCI_EXP_DEVCAP2_MEE_TLP, CUInt -> CUInt
#cinline PCI_EXP_DEVCAP2_EPR , CUInt -> CUInt
#num PCI_EXP_DEVCAP2_EPR_INIT
#num PCI_EXP_DEVCAP2_FRS
#num PCI_EXP_DEVCTL2
#cinline PCI_EXP_DEV2_TIMEOUT_RANGE , CUInt -> CUInt
#cinline PCI_EXP_DEV2_TIMEOUT_VALUE , CUShort -> CUShort
#num PCI_EXP_DEV2_TIMEOUT_DIS
#num PCI_EXP_DEV2_ATOMICOP_REQUESTER_EN
#num PCI_EXP_DEV2_ATOMICOP_EGRESS_BLOCK
#num PCI_EXP_DEV2_ARI
#num PCI_EXP_DEVCAP2_ATOMICOP_ROUTING
#num PCI_EXP_DEVCAP2_32BIT_ATOMICOP_COMP
#num PCI_EXP_DEVCAP2_64BIT_ATOMICOP_COMP
#num PCI_EXP_DEVCAP2_128BIT_CAS_COMP
#num PCI_EXP_DEV2_LTR
#cinline PCI_EXP_DEV2_OBFF , CUShort -> CUShort
#num PCI_EXP_DEVSTA2
#num PCI_EXP_LNKCAP2
#num PCI_EXP_LNKCTL2
#cinline PCI_EXP_LNKCTL2_SPEED , CUShort -> CUShort
#num PCI_EXP_LNKCTL2_CMPLNC
#num PCI_EXP_LNKCTL2_SPEED_DIS
#cinline PCI_EXP_LNKCTL2_DEEMPHASIS , CUShort -> CUShort
#cinline PCI_EXP_LNKCTL2_MARGIN , CUShort -> CUShort
#num PCI_EXP_LNKCTL2_MOD_CMPLNC
#num PCI_EXP_LNKCTL2_CMPLNC_SOS
#cinline PCI_EXP_LNKCTL2_COM_DEEMPHASIS , CUShort -> CUShort
#num PCI_EXP_LNKSTA2
#cinline PCI_EXP_LINKSTA2_DEEMPHASIS , CUShort -> CUShort
#num PCI_EXP_LINKSTA2_EQU_COMP
#num PCI_EXP_LINKSTA2_EQU_PHASE1
#num PCI_EXP_LINKSTA2_EQU_PHASE2
#num PCI_EXP_LINKSTA2_EQU_PHASE3
#num PCI_EXP_LINKSTA2_EQU_REQ
#num PCI_EXP_SLTCAP2
#num PCI_EXP_SLTCTL2
#num PCI_EXP_SLTSTA2


#num PCI_MSIX_ENABLE
#num PCI_MSIX_MASK
#num PCI_MSIX_TABSIZE
#num PCI_MSIX_TABLE
#num PCI_MSIX_PBA
#num PCI_MSIX_BIR


#num PCI_SSVID_VENDOR
#num PCI_SSVID_DEVICE


#num PCI_AF_CAP
#num PCI_AF_CAP_TP
#num PCI_AF_CAP_FLR
#num PCI_AF_CTRL
#num PCI_AF_CTRL_FLR
#num PCI_AF_STATUS
#num PCI_AF_STATUS_TP


#num PCI_SATA_HBA_BARS
#num PCI_SATA_HBA_REG0


#num PCI_EA_CAP_TYPE1_SECONDARY
#num PCI_EA_CAP_TYPE1_SUBORDINATE

#num PCI_EA_CAP_ENT_WRITABLE
#num PCI_EA_CAP_ENT_ENABLE




#num PCI_ERR_UNCOR_STATUS
#num PCI_ERR_UNC_TRAIN
#num PCI_ERR_UNC_DLP
#num PCI_ERR_UNC_SDES
#num PCI_ERR_UNC_POISON_TLP
#num PCI_ERR_UNC_FCP
#num PCI_ERR_UNC_COMP_TIME
#num PCI_ERR_UNC_COMP_ABORT
#num PCI_ERR_UNC_UNX_COMP
#num PCI_ERR_UNC_RX_OVER
#num PCI_ERR_UNC_MALF_TLP
#num PCI_ERR_UNC_ECRC
#num PCI_ERR_UNC_UNSUP
#num PCI_ERR_UNC_ACS_VIOL
#num PCI_ERR_UNCOR_MASK

#num PCI_ERR_UNCOR_SEVER

#num PCI_ERR_COR_STATUS
#num PCI_ERR_COR_RCVR
#num PCI_ERR_COR_BAD_TLP
#num PCI_ERR_COR_BAD_DLLP
#num PCI_ERR_COR_REP_ROLL
#num PCI_ERR_COR_REP_TIMER
#num PCI_ERR_COR_REP_ANFE
#num PCI_ERR_COR_MASK

#num PCI_ERR_CAP
#cinline PCI_ERR_CAP_FEP , CUInt -> CUInt
#num PCI_ERR_CAP_ECRC_GENC
#num PCI_ERR_CAP_ECRC_GENE
#num PCI_ERR_CAP_ECRC_CHKC
#num PCI_ERR_CAP_ECRC_CHKE
#num PCI_ERR_CAP_MULT_HDRC
#num PCI_ERR_CAP_MULT_HDRE
#num PCI_ERR_CAP_TLP_PFX
#num PCI_ERR_CAP_HDR_LOG
#num PCI_ERR_HEADER_LOG
#num PCI_ERR_ROOT_COMMAND
#num PCI_ERR_ROOT_CMD_COR_EN
#num PCI_ERR_ROOT_CMD_NONFATAL_EN
#num PCI_ERR_ROOT_CMD_FATAL_EN
#num PCI_ERR_ROOT_STATUS
#num PCI_ERR_ROOT_COR_RCV
#num PCI_ERR_ROOT_MULTI_COR_RCV
#num PCI_ERR_ROOT_UNCOR_RCV
#num PCI_ERR_ROOT_MULTI_UNCOR_RCV
#num PCI_ERR_ROOT_FIRST_FATAL
#num PCI_ERR_ROOT_NONFATAL_RCV
#num PCI_ERR_ROOT_FATAL_RCV
#cinline PCI_ERR_MSG_NUM , CUInt -> CUInt
#num PCI_ERR_ROOT_COR_SRC
#num PCI_ERR_ROOT_SRC


#num PCI_VC_PORT_REG1
#num PCI_VC_PORT_REG2
#num PCI_VC_PORT_CTRL
#num PCI_VC_PORT_STATUS
#num PCI_VC_RES_CAP
#num PCI_VC_RES_CTRL
#num PCI_VC_RES_STATUS


#num PCI_PWR_DSR
#num PCI_PWR_DATA
#cinline PCI_PWR_DATA_BASE , CUInt -> CUInt
#cinline PCI_PWR_DATA_SCALE , CUInt -> CUInt
#cinline PCI_PWR_DATA_PM_SUB , CUInt -> CUInt
#cinline PCI_PWR_DATA_PM_STATE , CUInt -> CUInt
#cinline PCI_PWR_DATA_TYPE , CUInt -> CUInt
#cinline PCI_PWR_DATA_RAIL , CUInt -> CUInt
#num PCI_PWR_CAP
#cinline PCI_PWR_CAP_BUDGET , CUInt -> CUInt


#num PCI_RCLINK_ESD
#num PCI_RCLINK_LINK1
#num PCI_RCLINK_LINK_DESC
#num PCI_RCLINK_LINK_ADDR
#num PCI_RCLINK_LINK_SIZE


#num PCI_EVNDR_HEADER
#num PCI_EVNDR_REGISTERS


#num PCI_ACS_CAP
#num PCI_ACS_CAP_VALID
#num PCI_ACS_CAP_BLOCK
#num PCI_ACS_CAP_REQ_RED
#num PCI_ACS_CAP_CMPLT_RED
#num PCI_ACS_CAP_FORWARD
#num PCI_ACS_CAP_EGRESS
#num PCI_ACS_CAP_TRANS
#cinline PCI_ACS_CAP_VECTOR , CUInt -> CUInt
#num PCI_ACS_CTRL
#num PCI_ACS_CTRL_VALID
#num PCI_ACS_CTRL_BLOCK
#num PCI_ACS_CTRL_REQ_RED
#num PCI_ACS_CTRL_CMPLT_RED
#num PCI_ACS_CTRL_FORWARD
#num PCI_ACS_CTRL_EGRESS
#num PCI_ACS_CTRL_TRANS
#num PCI_ACS_EGRESS_CTRL


#num PCI_ARI_CAP
#num PCI_ARI_CAP_MFVC
#num PCI_ARI_CAP_ACS
#cinline PCI_ARI_CAP_NFN , CUShort -> CUShort
#num PCI_ARI_CTRL
#num PCI_ARI_CTRL_MFVC
#num PCI_ARI_CTRL_ACS
#cinline PCI_ARI_CTRL_FG , CUShort -> CUShort


#num PCI_ATS_CAP
#cinline PCI_ATS_CAP_IQD , CUShort -> CUShort
#num PCI_ATS_CTRL
#cinline PCI_ATS_CTRL_STU , CUShort -> CUShort
#num PCI_ATS_CTRL_ENABLE


#num PCI_IOV_CAP
#num PCI_IOV_CAP_VFM
#cinline PCI_IOV_CAP_IMN , CUInt -> CUInt
#num PCI_IOV_CTRL
#num PCI_IOV_CTRL_VFE
#num PCI_IOV_CTRL_VFME
#num PCI_IOV_CTRL_VFMIE
#num PCI_IOV_CTRL_MSE
#num PCI_IOV_CTRL_ARI
#num PCI_IOV_STATUS
#num PCI_IOV_STATUS_MS
#num PCI_IOV_INITIALVF
#num PCI_IOV_TOTALVF
#num PCI_IOV_NUMVF
#num PCI_IOV_FDL
#num PCI_IOV_OFFSET
#num PCI_IOV_STRIDE
#num PCI_IOV_DID
#num PCI_IOV_SUPPS
#num PCI_IOV_SYSPS
#num PCI_IOV_BAR_BASE
#num PCI_IOV_NUM_BAR
#num PCI_IOV_MSAO
#cinline PCI_IOV_MSA_BIR , CUInt -> CUInt
#cinline PCI_IOV_MSA_OFFSET , CUInt -> CUInt


#num PCI_MCAST_CAP
#cinline PCI_MCAST_CAP_MAX_GROUP , CUShort -> CUShort
#cinline PCI_MCAST_CAP_WIN_SIZE , CUShort -> CUShort
#num PCI_MCAST_CAP_ECRC
#num PCI_MCAST_CTRL
#cinline PCI_MCAST_CTRL_NUM_GROUP , CUShort -> CUShort
#num PCI_MCAST_CTRL_ENABLE
#num PCI_MCAST_BAR
#cinline PCI_MCAST_BAR_INDEX_POS , CULong -> CUInt
#num PCI_MCAST_BAR_MASK
#num PCI_MCAST_RCV
#num PCI_MCAST_BLOCK
#num PCI_MCAST_BLOCK_UNTRANS
#num PCI_MCAST_OVL_BAR
#cinline PCI_MCAST_OVL_SIZE , CULong -> CUInt
#num PCI_MCAST_OVL_MASK


#num PCI_PRI_CTRL
#num PCI_PRI_CTRL_ENABLE
#num PCI_PRI_CTRL_RESET
#num PCI_PRI_STATUS
#num PCI_PRI_STATUS_RF
#num PCI_PRI_STATUS_UPRGI
#num PCI_PRI_STATUS_STOPPED
#num PCI_PRI_MAX_REQ
#num PCI_PRI_ALLOC_REQ


#num PCI_TPH_CAPABILITIES
#num PCI_TPH_INTVEC_SUP
#num PCI_TPH_DEV_SUP
#num PCI_TPH_EXT_REQ_SUP
#num PCI_TPH_ST_LOC_MASK
#num PCI_TPH_ST_NONE
#num PCI_TPH_ST_CAP
#num PCI_TPH_ST_MSIX
#num PCI_TPH_ST_SIZE_SHIFT


#num PCI_LTR_MAX_SNOOP
#num PCI_LTR_VALUE_MASK
#num PCI_LTR_SCALE_SHIFT
#num PCI_LTR_SCALE_MASK
#num PCI_LTR_MAX_NOSNOOP


#num PCI_SEC_LNKCTL3
#num PCI_SEC_LNKCTL3_PERFORM_LINK_EQU
#num PCI_SEC_LNKCTL3_LNK_EQU_REQ_INTR_EN
#cinline PCI_SEC_LNKCTL3_ENBL_LOWER_SKP_OS_GEN_VEC , CUInt -> CUInt
#num PCI_SEC_LANE_ERR
#num PCI_SEC_LANE_EQU_CTRL


#num PCI_PASID_CAP
#num PCI_PASID_CAP_EXEC
#num PCI_PASID_CAP_PRIV
#cinline PCI_PASID_CAP_WIDTH , CUShort -> CUShort
#num PCI_PASID_CTRL
#num PCI_PASID_CTRL_ENABLE
#num PCI_PASID_CTRL_EXEC
#num PCI_PASID_CTRL_PRIV

#num PCI_DPC_CAP
#cinline PCI_DPC_CAP_INT_MSG , CUInt -> CUInt
#num PCI_DPC_CAP_RP_EXT
#num PCI_DPC_CAP_TLP_BLOCK
#num PCI_DPC_CAP_SW_TRIGGER
#cinline PCI_DPC_CAP_RP_LOG , CUInt -> CUInt
#num PCI_DPC_CAP_DL_ACT_ERR
#num PCI_DPC_CTL
#cinline PCI_DPC_CTL_TRIGGER , CUInt -> CUInt
#num PCI_DPC_CTL_CMPL
#num PCI_DPC_CTL_INT
#num PCI_DPC_CTL_ERR_COR
#num PCI_DPC_CTL_TLP
#num PCI_DPC_CTL_SW_TRIGGER
#num PCI_DPC_CTL_DL_ACTIVE
#num PCI_DPC_STATUS
#num PCI_DPC_STS_TRIGGER
#cinline PCI_DPC_STS_REASON , CUInt -> CUInt
#num PCI_DPC_STS_INT
#num PCI_DPC_STS_RP_BUSY
#cinline PCI_DPC_STS_TRIGGER_EXT , CUInt -> CUInt
#cinline PCI_DPC_STS_PIO_FEP , CUInt -> CUInt
#num PCI_DPC_SOURCE


#num PCI_L1PM_SUBSTAT_CAP
#num PCI_L1PM_SUBSTAT_CAP_PM_L12
#num PCI_L1PM_SUBSTAT_CAP_PM_L11
#num PCI_L1PM_SUBSTAT_CAP_ASPM_L12
#num PCI_L1PM_SUBSTAT_CAP_ASPM_L11
#num PCI_L1PM_SUBSTAT_CAP_L1PM_SUPP
#num PCI_L1PM_SUBSTAT_CTL1
#num PCI_L1PM_SUBSTAT_CTL1_PM_L12
#num PCI_L1PM_SUBSTAT_CTL1_PM_L11
#num PCI_L1PM_SUBSTAT_CTL1_ASPM_L12
#num PCI_L1PM_SUBSTAT_CTL1_ASPM_L11
#num PCI_L1PM_SUBSTAT_CTL2









#cinline PCI_DEVFN , CUChar -> CUChar -> CUChar
#cinline PCI_SLOT , CUChar -> CUChar
#cinline PCI_FUNC , CUChar -> CUChar



#num PCI_CLASS_NOT_DEFINED
#num PCI_CLASS_NOT_DEFINED_VGA

#num PCI_BASE_CLASS_STORAGE
#num PCI_CLASS_STORAGE_SCSI
#num PCI_CLASS_STORAGE_IDE
#num PCI_CLASS_STORAGE_FLOPPY
#num PCI_CLASS_STORAGE_IPI
#num PCI_CLASS_STORAGE_RAID
#num PCI_CLASS_STORAGE_ATA
#num PCI_CLASS_STORAGE_SATA
#num PCI_CLASS_STORAGE_SAS
#num PCI_CLASS_STORAGE_OTHER

#num PCI_BASE_CLASS_NETWORK
#num PCI_CLASS_NETWORK_ETHERNET
#num PCI_CLASS_NETWORK_TOKEN_RING
#num PCI_CLASS_NETWORK_FDDI
#num PCI_CLASS_NETWORK_ATM
#num PCI_CLASS_NETWORK_ISDN
#num PCI_CLASS_NETWORK_OTHER

#num PCI_BASE_CLASS_DISPLAY
#num PCI_CLASS_DISPLAY_VGA
#num PCI_CLASS_DISPLAY_XGA
#num PCI_CLASS_DISPLAY_3D
#num PCI_CLASS_DISPLAY_OTHER

#num PCI_BASE_CLASS_MULTIMEDIA
#num PCI_CLASS_MULTIMEDIA_VIDEO
#num PCI_CLASS_MULTIMEDIA_AUDIO
#num PCI_CLASS_MULTIMEDIA_PHONE
#num PCI_CLASS_MULTIMEDIA_AUDIO_DEV
#num PCI_CLASS_MULTIMEDIA_OTHER

#num PCI_BASE_CLASS_MEMORY
#num PCI_CLASS_MEMORY_RAM
#num PCI_CLASS_MEMORY_FLASH
#num PCI_CLASS_MEMORY_OTHER

#num PCI_BASE_CLASS_BRIDGE
#num PCI_CLASS_BRIDGE_HOST
#num PCI_CLASS_BRIDGE_ISA
#num PCI_CLASS_BRIDGE_EISA
#num PCI_CLASS_BRIDGE_MC
#num PCI_CLASS_BRIDGE_PCI
#num PCI_CLASS_BRIDGE_PCMCIA
#num PCI_CLASS_BRIDGE_NUBUS
#num PCI_CLASS_BRIDGE_CARDBUS
#num PCI_CLASS_BRIDGE_RACEWAY
#num PCI_CLASS_BRIDGE_PCI_SEMI
#num PCI_CLASS_BRIDGE_IB_TO_PCI
#num PCI_CLASS_BRIDGE_OTHER

#num PCI_BASE_CLASS_COMMUNICATION
#num PCI_CLASS_COMMUNICATION_SERIAL
#num PCI_CLASS_COMMUNICATION_PARALLEL
#num PCI_CLASS_COMMUNICATION_MSERIAL
#num PCI_CLASS_COMMUNICATION_MODEM
#num PCI_CLASS_COMMUNICATION_OTHER

#num PCI_BASE_CLASS_SYSTEM
#num PCI_CLASS_SYSTEM_PIC
#num PCI_CLASS_SYSTEM_DMA
#num PCI_CLASS_SYSTEM_TIMER
#num PCI_CLASS_SYSTEM_RTC
#num PCI_CLASS_SYSTEM_PCI_HOTPLUG
#num PCI_CLASS_SYSTEM_OTHER

#num PCI_BASE_CLASS_INPUT
#num PCI_CLASS_INPUT_KEYBOARD
#num PCI_CLASS_INPUT_PEN
#num PCI_CLASS_INPUT_MOUSE
#num PCI_CLASS_INPUT_SCANNER
#num PCI_CLASS_INPUT_GAMEPORT
#num PCI_CLASS_INPUT_OTHER

#num PCI_BASE_CLASS_DOCKING
#num PCI_CLASS_DOCKING_GENERIC
#num PCI_CLASS_DOCKING_OTHER

#num PCI_BASE_CLASS_PROCESSOR
#num PCI_CLASS_PROCESSOR_386
#num PCI_CLASS_PROCESSOR_486
#num PCI_CLASS_PROCESSOR_PENTIUM
#num PCI_CLASS_PROCESSOR_ALPHA
#num PCI_CLASS_PROCESSOR_POWERPC
#num PCI_CLASS_PROCESSOR_MIPS
#num PCI_CLASS_PROCESSOR_CO
#num PCI_BASE_CLASS_SERIAL
#num PCI_CLASS_SERIAL_FIREWIRE
#num PCI_CLASS_SERIAL_ACCESS
#num PCI_CLASS_SERIAL_SSA
#num PCI_CLASS_SERIAL_USB
#num PCI_CLASS_SERIAL_FIBER
#num PCI_CLASS_SERIAL_SMBUS
#num PCI_CLASS_SERIAL_INFINIBAND
#num PCI_BASE_CLASS_WIRELESS
#num PCI_CLASS_WIRELESS_IRDA
#num PCI_CLASS_WIRELESS_CONSUMER_IR
#num PCI_CLASS_WIRELESS_RF
#num PCI_CLASS_WIRELESS_OTHER
#num PCI_BASE_CLASS_INTELLIGENT
#num PCI_CLASS_INTELLIGENT_I2O
#num PCI_BASE_CLASS_SATELLITE
#num PCI_CLASS_SATELLITE_TV
#num PCI_CLASS_SATELLITE_AUDIO
#num PCI_CLASS_SATELLITE_VOICE
#num PCI_CLASS_SATELLITE_DATA
#num PCI_BASE_CLASS_CRYPT
#num PCI_CLASS_CRYPT_NETWORK
#num PCI_CLASS_CRYPT_ENTERTAINMENT
#num PCI_CLASS_CRYPT_OTHER
#num PCI_BASE_CLASS_SIGNAL
#num PCI_CLASS_SIGNAL_DPIO
#num PCI_CLASS_SIGNAL_PERF_CTR
#num PCI_CLASS_SIGNAL_SYNCHRONIZER
#num PCI_CLASS_SIGNAL_OTHER
#num PCI_CLASS_OTHERS
#num PCI_VENDOR_ID_INTEL
#num PCI_VENDOR_ID_COMPAQ
#num PCI_IORESOURCE_PCI_EA_BEI
