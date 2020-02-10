// (c) Copyright 2017 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.

/** \mainpage
* Polar Encoder/Decoder standalone driver software API summary
*
* \section sec_init Initialization and Configuration
* The xpolar_Config structure is used by the driver to configure the interface parameters defined for each
* Polar Encoder/Decoder device. The configuration structure is created by the tool-chain based on HW build properties.
*
* To support multiple runtime loading and initialization strategies employed by various operating systems, the driver
* instance can be initialized in one of two ways:
* - xpolar_Initialize(InstancePtr, DeviceId)  - The driver looks up its own configuration structure created by the tool-chain
*                                                based on an ID provided by the tool-chain.
* - xpolar_CfgInitialize(InstancePtr, CfgPtr) - Uses a configuration structure provided by the caller.
*
* \section sec_data Data Structures
* One or more device specific headers are produced during the generation of the board support package, defining further
* device specific configuration parameters. A header is generated per Polar code specified on the corresponding IP GUI;
* x<ipinst_name >_<code_id>_params.h. Each header defines an xpolar_polar_parameters structure populated with the configuration
* data required for the corresponding Polar code.
*
* \section sec_api API
* The driver provides a helper functions to set the Polar parameters, xpolar_add_polar_params(InstancePtr, xpolar_polar_parameters_ptr)
*
* In addition, the driver provides set and get functions for all the individual registers defined for the Polar Encoder/Decoder.
*
* \section sec_ex Example
* The processor based example design output by the Polar Encoder/Decoder IP instance also includes an example application
* demonstrating a basic use case of the software driver.
*/

#ifndef XPOLAR_H
#define XPOLAR_H

#ifdef __cplusplus
extern "C" {
#endif

// Include Files
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"

#include "xpolar_hw.h"

// Type Definitions

//-----------------------------------------------------------------------------
#define MAX_N     1024    // Maximum codeword bits (do not change)
//-----------------------------------------------------------------------------
// Enumerations
// Associated with xip_polar_v1_0_polar_parameters.AUGMENT
enum { AUGMENT_NONE = 0, AUGMENT_PA = 1, AUGMENT_CRC = 2, AUGMENT_BOTH = 3 };
// Associated with xip_polar_v1_0_polar_parameters.CRC_SEL
enum { CRC_SEL_24c = 0, CRC_SEL_6 = 1, CRC_SEL_11 = 2, CRC_SEL_16 = 3 };
//-----------------------------------------------------------------------------

/** \brief Device configuration
 *
 * Contains configuration information for the device.
 */
typedef struct {
    u16 DeviceId;
    UINTPTR BaseAddress;
    u32 Initialization[2];
} xpolar_Config;

/** \brief Polar Encoder/Decoder driver instance
 *
 * Contains state information for each device.
 */
typedef struct {
    UINTPTR BaseAddress;
    u32 IsReady;
    u32 code_id;                    /**< ID to use for next call to xpolar_add_polar_params */
    u32 ba_table_current;           /**< Current bit allocation offset */
    u32 ba_table_offset[128];       /**< Lookup to bit allocation table offsets for each code ID */
} xpolar;

/** \brief Struct defining Polar code parameters
 *
 * Member values are defined in device specific header x<ipinst_name >_<code_id>_params.h. as per IP GUI configuration
 */
typedef struct {
    u32  N;
    u32  K;
    u32  AUGMENT;
    u32  CRC_SEL;
    u32  ITLV;
    u32  CRC_INIT;
    u32  BA_TABLE[MAX_N];
} xpolar_polar_parameters;

// API Function Prototypes

/** \brief Incrementally add Polar codes to Polar devices
 *
 * The xpolar instance structure contains a code_id field which is used as the code number for setting the Polar Code Parameter
 * registers. The share table content is packed contiguously with table offset registers set appropriately. These values are
 * also stored locally in the xpolar instance structure. By modifying the code_id field before calling xpolar_add_polar_params
 * the code_id, values can be explicitly defined for each Polar, similarly the table offsets used can set explicitly set.
 */
void xpolar_add_polar_params(xpolar *iptr, const xpolar_polar_parameters* params);

/** \brief Device initialization
 *
 * The driver looks up its own configuration structure created by the tool-chain based on an ID provided by the tool-chain.
 */
int xpolar_Initialize(xpolar *InstancePtr, u16 DeviceId);

/** \brief Configuration lookup
 *
 * Returns the configuration struct for a given device ID
 */
xpolar_Config* xpolar_LookupConfig(u16 DeviceId);

/**\brief Device initialization
 *
 * Uses a configuration structure provided by the caller
 */
int xpolar_CfgInitialize(xpolar *InstancePtr, xpolar_Config *ConfigPtr);

/**\Compress user-defined bit allocation table
 *
 * 16 packed bit descriptions, applying to bits 16*i to 16*i+15, where each bit type is derived from each 2 bit value. N -> N/16
 */
void xpolar_compress_bit_allocation_table(u32 *originalData, u32 *compressedData, u16 compressedLength);

/**\Decompress bit allocation table
 *
 * Converts bit allocation table from compressed (16X2-bit values for each entery) to more readable table with N enteries. N/16 -> N
 */
void xpolar_decompress_bit_allocation_table(u32 *compressedData, u32 *originalData, u16 originalLength);

// Base API Function Prototypes
void xpolar_set_CORE_AXI_WR_PROTECT(xpolar *iptr, u32 data);
u32 xpolar_get_CORE_AXI_WR_PROTECT(xpolar *iptr);
void xpolar_set_CORE_CODE_WR_PROTECT(xpolar *iptr, u32 data);
u32 xpolar_get_CORE_CODE_WR_PROTECT(xpolar *iptr);
u32 xpolar_get_CORE_ACTIVE(xpolar *iptr);
void xpolar_set_CORE_AXIS_WIDTH_DIN_WORDS(xpolar *iptr, u32 data);
u32 xpolar_get_CORE_AXIS_WIDTH_DIN_WORDS(xpolar *iptr);
void xpolar_set_CORE_AXIS_WIDTH_DOUT_WORDS(xpolar *iptr, u32 data);
u32 xpolar_get_CORE_AXIS_WIDTH_DOUT_WORDS(xpolar *iptr);
void xpolar_set_CORE_AXIS_WIDTH(xpolar *iptr, u32 data);
u32 xpolar_get_CORE_AXIS_WIDTH(xpolar *iptr);
void xpolar_set_CORE_AXIS_ENABLE_CTRL(xpolar *iptr, u32 data);
u32 xpolar_get_CORE_AXIS_ENABLE_CTRL(xpolar *iptr);
void xpolar_set_CORE_AXIS_ENABLE_DIN(xpolar *iptr, u32 data);
u32 xpolar_get_CORE_AXIS_ENABLE_DIN(xpolar *iptr);
void xpolar_set_CORE_AXIS_ENABLE_DIN_WORDS(xpolar *iptr, u32 data);
u32 xpolar_get_CORE_AXIS_ENABLE_DIN_WORDS(xpolar *iptr);
void xpolar_set_CORE_AXIS_ENABLE_STATUS(xpolar *iptr, u32 data);
u32 xpolar_get_CORE_AXIS_ENABLE_STATUS(xpolar *iptr);
void xpolar_set_CORE_AXIS_ENABLE_DOUT(xpolar *iptr, u32 data);
u32 xpolar_get_CORE_AXIS_ENABLE_DOUT(xpolar *iptr);
void xpolar_set_CORE_AXIS_ENABLE_DOUT_WORDS(xpolar *iptr, u32 data);
u32 xpolar_get_CORE_AXIS_ENABLE_DOUT_WORDS(xpolar *iptr);
void xpolar_set_CORE_AXIS_ENABLE(xpolar *iptr, u32 data);
u32 xpolar_get_CORE_AXIS_ENABLE(xpolar *iptr);
void xpolar_set_CORE_ISR(xpolar *iptr, u32 data);
u32 xpolar_get_CORE_ISR(xpolar *iptr);
void xpolar_set_CORE_IER(xpolar *iptr, u32 data);
void xpolar_set_CORE_IDR(xpolar *iptr, u32 data);
u32 xpolar_get_CORE_IMR(xpolar *iptr);
void xpolar_set_CORE_ECC_ISR(xpolar *iptr, u32 data);
u32 xpolar_get_CORE_ECC_ISR(xpolar *iptr);
void xpolar_set_CORE_ECC_IER(xpolar *iptr, u32 data);
void xpolar_set_CORE_ECC_IDR(xpolar *iptr, u32 data);
u32 xpolar_get_CORE_ECC_IMR(xpolar *iptr);
u32 xpolar_get_CORE_VERSION(xpolar *iptr);
u32 xpolar_write_POLAR_CODE_REG0_N_words(xpolar *iptr, u32 offset, const u32 *data, u32 length);
u32 xpolar_read_POLAR_CODE_REG0_N_words(xpolar *iptr, u32 offset, u32 *data, u32 length);
u32 xpolar_write_POLAR_CODE_REG0_K_words(xpolar *iptr, u32 offset, const u32 *data, u32 length);
u32 xpolar_read_POLAR_CODE_REG0_K_words(xpolar *iptr, u32 offset, u32 *data, u32 length);
u32 xpolar_write_POLAR_CODE_REG0_words(xpolar *iptr, u32 offset, const u32 *data, u32 length);
u32 xpolar_read_POLAR_CODE_REG0_words(xpolar *iptr, u32 offset, u32 *data, u32 length);
u32 xpolar_write_POLAR_CODE_REG2_AUGMENT_words(xpolar *iptr, u32 offset, const u32 *data, u32 length);
u32 xpolar_read_POLAR_CODE_REG2_AUGMENT_words(xpolar *iptr, u32 offset, u32 *data, u32 length);
u32 xpolar_write_POLAR_CODE_REG2_CRC_SEL_words(xpolar *iptr, u32 offset, const u32 *data, u32 length);
u32 xpolar_read_POLAR_CODE_REG2_CRC_SEL_words(xpolar *iptr, u32 offset, u32 *data, u32 length);
u32 xpolar_write_POLAR_CODE_REG2_ITLV_words(xpolar *iptr, u32 offset, const u32 *data, u32 length);
u32 xpolar_read_POLAR_CODE_REG2_ITLV_words(xpolar *iptr, u32 offset, u32 *data, u32 length);
u32 xpolar_write_POLAR_CODE_REG2_CRC_INIT_words(xpolar *iptr, u32 offset, const u32 *data, u32 length);
u32 xpolar_read_POLAR_CODE_REG2_CRC_INIT_words(xpolar *iptr, u32 offset, u32 *data, u32 length);
u32 xpolar_write_POLAR_CODE_REG2_words(xpolar *iptr, u32 offset, const u32 *data, u32 length);
u32 xpolar_read_POLAR_CODE_REG2_words(xpolar *iptr, u32 offset, u32 *data, u32 length);
u32 xpolar_write_POLAR_CODE_REG3_words(xpolar *iptr, u32 offset, const u32 *data, u32 length);
u32 xpolar_read_POLAR_CODE_REG3_words(xpolar *iptr, u32 offset, u32 *data, u32 length);
u32 xpolar_write_POLAR_BA_TABLE_words(xpolar *iptr, u32 offset, const u32 *data, u32 length);
u32 xpolar_read_POLAR_BA_TABLE_words(xpolar *iptr, u32 offset, u32 *data, u32 length);

// Macros (Inline Functions) Definitions
#define xpolar_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define xpolar_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

#ifdef __cplusplus
}
#endif

#endif
