// (c) Copyright 2018 Xilinx, Inc. All rights reserved.
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

/***************************** Include Files *********************************/
#include "xpolar.h"

/************************** Function Implementation *************************/
int xpolar_CfgInitialize(xpolar *InstancePtr, xpolar_Config *ConfigPtr) {
  Xil_AssertNonvoid(InstancePtr != NULL);
  Xil_AssertNonvoid(ConfigPtr != NULL);

  InstancePtr->BaseAddress      = ConfigPtr->BaseAddress;
  InstancePtr->code_id          = 0;
  InstancePtr->ba_table_current = 0;

  InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

  return XST_SUCCESS;
}

void xpolar_add_polar_params(xpolar *iptr, const xpolar_polar_parameters* params) {
  Xil_AssertVoid(iptr != NULL);
  Xil_AssertVoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  u32 wr_data = 0;
  if (iptr->code_id < 128) {
#ifdef XPOLAR_USE_INDV_WRITES
    xpolar_write_POLAR_CODE_REG0_words(iptr, iptr->code_id, &wr_data, 1);
    xpolar_write_POLAR_CODE_REG2_words(iptr, iptr->code_id, &wr_data, 1);
    xpolar_write_POLAR_CODE_REG3_words(iptr, iptr->code_id, &wr_data, 1);

    xpolar_write_POLAR_CODE_REG0_N_words(iptr, iptr->code_id, &params->N, 1); // Use ID directly as offset as it is scaled by the step size
    xpolar_write_POLAR_CODE_REG0_K_words(iptr, iptr->code_id, &params->K, 1);

    xpolar_write_POLAR_CODE_REG2_AUGMENT_words(iptr, iptr->code_id, &params->AUGMENT, 1);
    xpolar_write_POLAR_CODE_REG2_CRC_SEL_words(iptr, iptr->code_id, &params->CRC_SEL, 1);
    xpolar_write_POLAR_CODE_REG2_ITLV_words(iptr, iptr->code_id, &params->ITLV, 1);
    xpolar_write_POLAR_CODE_REG2_CRC_INIT_words(iptr, iptr->code_id, &PARAM->CRC_INIT, 1);

    xpolar_write_POLAR_CODE_REG3_BA_OFF_words(iptr, iptr->code_id, &iptr->ba_table_current, 1);
#else
    wr_data = 0;
    wr_data |= (XPOLAR_POLAR_CODE_REG0_N_MASK & (params->N << XPOLAR_POLAR_CODE_REG0_N_LSB));
    wr_data |= (XPOLAR_POLAR_CODE_REG0_K_MASK & (params->K << XPOLAR_POLAR_CODE_REG0_K_LSB));
    xpolar_write_POLAR_CODE_REG0_words(iptr, iptr->code_id, &wr_data, 1);

    wr_data = 0;
    wr_data |= (XPOLAR_POLAR_CODE_REG2_AUGMENT_MASK & (params->AUGMENT << XPOLAR_POLAR_CODE_REG2_AUGMENT_LSB));
    wr_data |= (XPOLAR_POLAR_CODE_REG2_CRC_SEL_MASK & (params->CRC_SEL << XPOLAR_POLAR_CODE_REG2_CRC_SEL_LSB));
    wr_data |= (XPOLAR_POLAR_CODE_REG2_ITLV_MASK & (params->ITLV << XPOLAR_POLAR_CODE_REG2_ITLV_LSB));
    wr_data |= (XPOLAR_POLAR_CODE_REG2_CRC_INIT_MASK & (params->CRC_INIT << XPOLAR_POLAR_CODE_REG2_CRC_INIT_LSB));
    xpolar_write_POLAR_CODE_REG2_words(iptr, iptr->code_id, &wr_data, 1);

    wr_data = 0;
    wr_data |= (XPOLAR_POLAR_CODE_REG3_BA_OFF_MASK & (iptr->ba_table_current << XPOLAR_POLAR_CODE_REG3_BA_OFF_LSB));
    xpolar_write_POLAR_CODE_REG3_words(iptr, iptr->code_id, &wr_data, 1);
#endif
    xpolar_write_POLAR_BA_TABLE_words(iptr, iptr->ba_table_current,  params->BA_TABLE, (params->N / 16));

    // Update state
    iptr->ba_table_offset[iptr->code_id] = iptr->ba_table_current;
    iptr->code_id++;
    iptr->ba_table_current += params->N;
  }
}

void xpolar_compress_bit_allocation_table(u32 *originalData, u32 *compressedData, u16 compressedLength) {
  for (int i = 0; i < compressedLength; i++) {
    u32 value = 0;
    u8 shift = 0;
    for (int j = (i * 16); j <= ((i * 16) + 15); j++) {
      value += (originalData[j] & 0x03) << shift;
      shift += 2;
    }
    compressedData[i] = value;
  }
}

void xpolar_decompress_bit_allocation_table(u32 *compressedData, u32 *originalData, u16 originalLength) {
  for (int i = 0; i < (originalLength / 16); i++) {
    u8 shift = 0;
    for (int j = (i * 16); j <= ((i * 16) + 15); j++) {
      originalData[j] = (compressedData[i] >> shift) & 0x03;
      shift += 2;
    }
  }
}

/************************** Base API Function Implementation *************************/
void xpolar_set_CORE_AXI_WR_PROTECT(xpolar *iptr, u32 data) {
  Xil_AssertVoid(iptr != NULL);
  Xil_AssertVoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  xpolar_WriteReg(iptr->BaseAddress, XPOLAR_CORE_AXI_WR_PROTECT_ADDR, data);
}

u32 xpolar_get_CORE_AXI_WR_PROTECT(xpolar *iptr) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  return xpolar_ReadReg(iptr->BaseAddress, XPOLAR_CORE_AXI_WR_PROTECT_ADDR);
}

void xpolar_set_CORE_CODE_WR_PROTECT(xpolar *iptr, u32 data) {
  Xil_AssertVoid(iptr != NULL);
  Xil_AssertVoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  xpolar_WriteReg(iptr->BaseAddress, XPOLAR_CORE_CODE_WR_PROTECT_ADDR, data);
}

u32 xpolar_get_CORE_CODE_WR_PROTECT(xpolar *iptr) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  return xpolar_ReadReg(iptr->BaseAddress, XPOLAR_CORE_CODE_WR_PROTECT_ADDR);
}

u32 xpolar_get_CORE_ACTIVE(xpolar *iptr) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  return xpolar_ReadReg(iptr->BaseAddress, XPOLAR_CORE_ACTIVE_ADDR);
}

void xpolar_set_CORE_AXIS_WIDTH_DIN_WORDS(xpolar *iptr, u32 data) {
  Xil_AssertVoid(iptr != NULL);
  Xil_AssertVoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_WIDTH_ADDR);
  rdata = rdata & ~XPOLAR_CORE_AXIS_WIDTH_DIN_WORDS_MASK;
  u32 wdata = (rdata & ~XPOLAR_CORE_AXIS_WIDTH_DIN_WORDS_MASK) | (XPOLAR_CORE_AXIS_WIDTH_DIN_WORDS_MASK & (data << XPOLAR_CORE_AXIS_WIDTH_DIN_WORDS_LSB));
  xpolar_WriteReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_WIDTH_ADDR, wdata);
}

u32 xpolar_get_CORE_AXIS_WIDTH_DIN_WORDS(xpolar *iptr) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_WIDTH_ADDR);
  return (rdata & XPOLAR_CORE_AXIS_WIDTH_DIN_WORDS_MASK) >> XPOLAR_CORE_AXIS_WIDTH_DIN_WORDS_LSB;
}

void xpolar_set_CORE_AXIS_WIDTH_DOUT_WORDS(xpolar *iptr, u32 data) {
  Xil_AssertVoid(iptr != NULL);
  Xil_AssertVoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_WIDTH_ADDR);
  rdata = rdata & ~XPOLAR_CORE_AXIS_WIDTH_DOUT_WORDS_MASK;
  u32 wdata = (rdata & ~XPOLAR_CORE_AXIS_WIDTH_DOUT_WORDS_MASK) | (XPOLAR_CORE_AXIS_WIDTH_DOUT_WORDS_MASK & (data << XPOLAR_CORE_AXIS_WIDTH_DOUT_WORDS_LSB));
  xpolar_WriteReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_WIDTH_ADDR, wdata);
}

u32 xpolar_get_CORE_AXIS_WIDTH_DOUT_WORDS(xpolar *iptr) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_WIDTH_ADDR);
  return (rdata & XPOLAR_CORE_AXIS_WIDTH_DOUT_WORDS_MASK) >> XPOLAR_CORE_AXIS_WIDTH_DOUT_WORDS_LSB;
}

void xpolar_set_CORE_AXIS_WIDTH(xpolar *iptr, u32 data) {
  Xil_AssertVoid(iptr != NULL);
  Xil_AssertVoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  xpolar_WriteReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_WIDTH_ADDR, data);
}

u32 xpolar_get_CORE_AXIS_WIDTH(xpolar *iptr) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  return xpolar_ReadReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_WIDTH_ADDR);
}

void xpolar_set_CORE_AXIS_ENABLE_CTRL(xpolar *iptr, u32 data) {
  Xil_AssertVoid(iptr != NULL);
  Xil_AssertVoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_ENABLE_ADDR);
  rdata = rdata & ~XPOLAR_CORE_AXIS_ENABLE_CTRL_MASK;
  u32 wdata = (rdata & ~XPOLAR_CORE_AXIS_ENABLE_CTRL_MASK) | (XPOLAR_CORE_AXIS_ENABLE_CTRL_MASK & (data << XPOLAR_CORE_AXIS_ENABLE_CTRL_LSB));
  xpolar_WriteReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_ENABLE_ADDR, wdata);
}

u32 xpolar_get_CORE_AXIS_ENABLE_CTRL(xpolar *iptr) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_ENABLE_ADDR);
  return (rdata & XPOLAR_CORE_AXIS_ENABLE_CTRL_MASK) >> XPOLAR_CORE_AXIS_ENABLE_CTRL_LSB;
}

void xpolar_set_CORE_AXIS_ENABLE_DIN(xpolar *iptr, u32 data) {
  Xil_AssertVoid(iptr != NULL);
  Xil_AssertVoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_ENABLE_ADDR);
  rdata = rdata & ~XPOLAR_CORE_AXIS_ENABLE_DIN_MASK;
  u32 wdata = (rdata & ~XPOLAR_CORE_AXIS_ENABLE_DIN_MASK) | (XPOLAR_CORE_AXIS_ENABLE_DIN_MASK & (data << XPOLAR_CORE_AXIS_ENABLE_DIN_LSB));
  xpolar_WriteReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_ENABLE_ADDR, wdata);
}

u32 xpolar_get_CORE_AXIS_ENABLE_DIN(xpolar *iptr) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_ENABLE_ADDR);
  return (rdata & XPOLAR_CORE_AXIS_ENABLE_DIN_MASK) >> XPOLAR_CORE_AXIS_ENABLE_DIN_LSB;
}

void xpolar_set_CORE_AXIS_ENABLE_DIN_WORDS(xpolar *iptr, u32 data) {
  Xil_AssertVoid(iptr != NULL);
  Xil_AssertVoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_ENABLE_ADDR);
  rdata = rdata & ~XPOLAR_CORE_AXIS_ENABLE_DIN_WORDS_MASK;
  u32 wdata = (rdata & ~XPOLAR_CORE_AXIS_ENABLE_DIN_WORDS_MASK) | (XPOLAR_CORE_AXIS_ENABLE_DIN_WORDS_MASK & (data << XPOLAR_CORE_AXIS_ENABLE_DIN_WORDS_LSB));
  xpolar_WriteReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_ENABLE_ADDR, wdata);
}

u32 xpolar_get_CORE_AXIS_ENABLE_DIN_WORDS(xpolar *iptr) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_ENABLE_ADDR);
  return (rdata & XPOLAR_CORE_AXIS_ENABLE_DIN_WORDS_MASK) >> XPOLAR_CORE_AXIS_ENABLE_DIN_WORDS_LSB;
}

void xpolar_set_CORE_AXIS_ENABLE_STATUS(xpolar *iptr, u32 data) {
  Xil_AssertVoid(iptr != NULL);
  Xil_AssertVoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_ENABLE_ADDR);
  rdata = rdata & ~XPOLAR_CORE_AXIS_ENABLE_STATUS_MASK;
  u32 wdata = (rdata & ~XPOLAR_CORE_AXIS_ENABLE_STATUS_MASK) | (XPOLAR_CORE_AXIS_ENABLE_STATUS_MASK & (data << XPOLAR_CORE_AXIS_ENABLE_STATUS_LSB));
  xpolar_WriteReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_ENABLE_ADDR, wdata);
}

u32 xpolar_get_CORE_AXIS_ENABLE_STATUS(xpolar *iptr) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_ENABLE_ADDR);
  return (rdata & XPOLAR_CORE_AXIS_ENABLE_STATUS_MASK) >> XPOLAR_CORE_AXIS_ENABLE_STATUS_LSB;
}

void xpolar_set_CORE_AXIS_ENABLE_DOUT(xpolar *iptr, u32 data) {
  Xil_AssertVoid(iptr != NULL);
  Xil_AssertVoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_ENABLE_ADDR);
  rdata = rdata & ~XPOLAR_CORE_AXIS_ENABLE_DOUT_MASK;
  u32 wdata = (rdata & ~XPOLAR_CORE_AXIS_ENABLE_DOUT_MASK) | (XPOLAR_CORE_AXIS_ENABLE_DOUT_MASK & (data << XPOLAR_CORE_AXIS_ENABLE_DOUT_LSB));
  xpolar_WriteReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_ENABLE_ADDR, wdata);
}

u32 xpolar_get_CORE_AXIS_ENABLE_DOUT(xpolar *iptr) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_ENABLE_ADDR);
  return (rdata & XPOLAR_CORE_AXIS_ENABLE_DOUT_MASK) >> XPOLAR_CORE_AXIS_ENABLE_DOUT_LSB;
}

void xpolar_set_CORE_AXIS_ENABLE_DOUT_WORDS(xpolar *iptr, u32 data) {
  Xil_AssertVoid(iptr != NULL);
  Xil_AssertVoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_ENABLE_ADDR);
  rdata = rdata & ~XPOLAR_CORE_AXIS_ENABLE_DOUT_WORDS_MASK;
  u32 wdata = (rdata & ~XPOLAR_CORE_AXIS_ENABLE_DOUT_WORDS_MASK) | (XPOLAR_CORE_AXIS_ENABLE_DOUT_WORDS_MASK & (data << XPOLAR_CORE_AXIS_ENABLE_DOUT_WORDS_LSB));
  xpolar_WriteReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_ENABLE_ADDR, wdata);
}

u32 xpolar_get_CORE_AXIS_ENABLE_DOUT_WORDS(xpolar *iptr) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_ENABLE_ADDR);
  return (rdata & XPOLAR_CORE_AXIS_ENABLE_DOUT_WORDS_MASK) >> XPOLAR_CORE_AXIS_ENABLE_DOUT_WORDS_LSB;
}

void xpolar_set_CORE_AXIS_ENABLE(xpolar *iptr, u32 data) {
  Xil_AssertVoid(iptr != NULL);
  Xil_AssertVoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  xpolar_WriteReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_ENABLE_ADDR, data);
}

u32 xpolar_get_CORE_AXIS_ENABLE(xpolar *iptr) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  return xpolar_ReadReg(iptr->BaseAddress, XPOLAR_CORE_AXIS_ENABLE_ADDR);
}

void xpolar_set_CORE_ISR(xpolar *iptr, u32 data) {
  Xil_AssertVoid(iptr != NULL);
  Xil_AssertVoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  xpolar_WriteReg(iptr->BaseAddress, XPOLAR_CORE_ISR_ADDR, data);
}

u32 xpolar_get_CORE_ISR(xpolar *iptr) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  return xpolar_ReadReg(iptr->BaseAddress, XPOLAR_CORE_ISR_ADDR);
}

void xpolar_set_CORE_IER(xpolar *iptr, u32 data) {
  Xil_AssertVoid(iptr != NULL);
  Xil_AssertVoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  xpolar_WriteReg(iptr->BaseAddress, XPOLAR_CORE_IER_ADDR, data);
}

void xpolar_set_CORE_IDR(xpolar *iptr, u32 data) {
  Xil_AssertVoid(iptr != NULL);
  Xil_AssertVoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  xpolar_WriteReg(iptr->BaseAddress, XPOLAR_CORE_IDR_ADDR, data);
}

u32 xpolar_get_CORE_IMR(xpolar *iptr) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  return xpolar_ReadReg(iptr->BaseAddress, XPOLAR_CORE_IMR_ADDR);
}

void xpolar_set_CORE_ECC_ISR(xpolar *iptr, u32 data) {
  Xil_AssertVoid(iptr != NULL);
  Xil_AssertVoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  xpolar_WriteReg(iptr->BaseAddress, XPOLAR_CORE_ECC_ISR_ADDR, data);
}

u32 xpolar_get_CORE_ECC_ISR(xpolar *iptr) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  return xpolar_ReadReg(iptr->BaseAddress, XPOLAR_CORE_ECC_ISR_ADDR);
}

void xpolar_set_CORE_ECC_IER(xpolar *iptr, u32 data) {
  Xil_AssertVoid(iptr != NULL);
  Xil_AssertVoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  xpolar_WriteReg(iptr->BaseAddress, XPOLAR_CORE_ECC_IER_ADDR, data);
}

void xpolar_set_CORE_ECC_IDR(xpolar *iptr, u32 data) {
  Xil_AssertVoid(iptr != NULL);
  Xil_AssertVoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  xpolar_WriteReg(iptr->BaseAddress, XPOLAR_CORE_ECC_IDR_ADDR, data);
}

u32 xpolar_get_CORE_ECC_IMR(xpolar *iptr) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  return xpolar_ReadReg(iptr->BaseAddress, XPOLAR_CORE_ECC_IMR_ADDR);
}

u32 xpolar_get_CORE_VERSION(xpolar *iptr) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  return xpolar_ReadReg(iptr->BaseAddress, XPOLAR_CORE_VERSION_ADDR);
}

u32 xpolar_write_POLAR_CODE_REG0_N_words(xpolar *iptr, u32 offset, const u32 *data, u32 length) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  if ((offset + length) * 4 > XPOLAR_POLAR_CODE_REG0_DEPTH)
    return 0;
  int i;
  for (i = 0; i < length; i++) {
    u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_POLAR_CODE_REG0_ADDR_BASE + (offset + i) * 4 * 4);
    u32 wdata = (rdata & ~XPOLAR_POLAR_CODE_REG0_N_MASK) | (XPOLAR_POLAR_CODE_REG0_N_MASK & (data[i] << XPOLAR_POLAR_CODE_REG0_N_LSB));
    xpolar_WriteReg(iptr->BaseAddress, XPOLAR_POLAR_CODE_REG0_ADDR_BASE + (offset + i) * 4 * 4, wdata);
  }
  return length;
}

u32 xpolar_read_POLAR_CODE_REG0_N_words(xpolar *iptr, u32 offset, u32 *data, u32 length) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  if ((offset + length) * 4 > XPOLAR_POLAR_CODE_REG0_DEPTH)
    return 0;
  int i;
  for (i = 0; i < length; i++) {
    u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_POLAR_CODE_REG0_ADDR_BASE + (offset + i) * 4 * 4);
    data[i] = (rdata & XPOLAR_POLAR_CODE_REG0_N_MASK) >> XPOLAR_POLAR_CODE_REG0_N_LSB;
  }
  return length;
}

u32 xpolar_write_POLAR_CODE_REG0_K_words(xpolar *iptr, u32 offset, const u32 *data, u32 length) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  if ((offset + length) * 4 > XPOLAR_POLAR_CODE_REG0_DEPTH)
    return 0;
  int i;
  for (i = 0; i < length; i++) {
    u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_POLAR_CODE_REG0_ADDR_BASE + (offset + i) * 4 * 4);
    u32 wdata = (rdata & ~XPOLAR_POLAR_CODE_REG0_K_MASK) | (XPOLAR_POLAR_CODE_REG0_K_MASK & (data[i] << XPOLAR_POLAR_CODE_REG0_K_LSB));
    xpolar_WriteReg(iptr->BaseAddress, XPOLAR_POLAR_CODE_REG0_ADDR_BASE + (offset + i) * 4 * 4, wdata);
  }
  return length;
}

u32 xpolar_read_POLAR_CODE_REG0_K_words(xpolar *iptr, u32 offset, u32 *data, u32 length) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  if ((offset + length) * 4 > XPOLAR_POLAR_CODE_REG0_DEPTH)
    return 0;
  int i;
  for (i = 0; i < length; i++) {
    u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_POLAR_CODE_REG0_ADDR_BASE + (offset + i) * 4 * 4);
    data[i] = (rdata & XPOLAR_POLAR_CODE_REG0_K_MASK) >> XPOLAR_POLAR_CODE_REG0_K_LSB;
  }
  return length;
}

u32 xpolar_write_POLAR_CODE_REG0_words(xpolar *iptr, u32 offset, const u32 *data, u32 length) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  if ((offset + length) * 4 > XPOLAR_POLAR_CODE_REG0_DEPTH)
    return 0;
  int i;
  for (i = 0; i < length; i++) {
    xpolar_WriteReg(iptr->BaseAddress, XPOLAR_POLAR_CODE_REG0_ADDR_BASE + (offset + i) * 4 * 4, data[i]);
  }
  return length;
}

u32 xpolar_read_POLAR_CODE_REG0_words(xpolar *iptr, u32 offset, u32 *data, u32 length) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  if ((offset + length) * 4 > XPOLAR_POLAR_CODE_REG0_DEPTH)
    return 0;
  int i;
  for (i = 0; i < length; i++) {
    data[i] = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_POLAR_CODE_REG0_ADDR_BASE + (offset + i) * 4 * 4);
  }
  return length;
}

u32 xpolar_write_POLAR_CODE_REG2_AUGMENT_words(xpolar *iptr, u32 offset, const u32 *data, u32 length) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  if ((offset + length) * 4 > XPOLAR_POLAR_CODE_REG2_DEPTH)
    return 0;
  int i;
  for (i = 0; i < length; i++) {
    u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_POLAR_CODE_REG2_ADDR_BASE + (offset + i) * 4 * 4);
    u32 wdata = (rdata & ~XPOLAR_POLAR_CODE_REG2_AUGMENT_MASK) | (XPOLAR_POLAR_CODE_REG2_AUGMENT_MASK & (data[i] << XPOLAR_POLAR_CODE_REG2_AUGMENT_LSB));
    xpolar_WriteReg(iptr->BaseAddress, XPOLAR_POLAR_CODE_REG2_ADDR_BASE + (offset + i) * 4 * 4, wdata);
  }
  return length;
}

u32 xpolar_read_POLAR_CODE_REG2_AUGMENT_words(xpolar *iptr, u32 offset, u32 *data, u32 length) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  if ((offset + length) * 4 > XPOLAR_POLAR_CODE_REG2_DEPTH)
    return 0;
  int i;
  for (i = 0; i < length; i++) {
    u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_POLAR_CODE_REG2_ADDR_BASE + (offset + i) * 4 * 4);
    data[i] = (rdata & XPOLAR_POLAR_CODE_REG2_AUGMENT_MASK) >> XPOLAR_POLAR_CODE_REG2_AUGMENT_LSB;
  }
  return length;
}

u32 xpolar_write_POLAR_CODE_REG2_CRC_SEL_words(xpolar *iptr, u32 offset, const u32 *data, u32 length) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  if ((offset + length) * 4 > XPOLAR_POLAR_CODE_REG2_DEPTH)
    return 0;
  int i;
  for (i = 0; i < length; i++) {
    u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_POLAR_CODE_REG2_ADDR_BASE + (offset + i) * 4 * 4);
    u32 wdata = (rdata & ~XPOLAR_POLAR_CODE_REG2_CRC_SEL_MASK) | (XPOLAR_POLAR_CODE_REG2_CRC_SEL_MASK & (data[i] << XPOLAR_POLAR_CODE_REG2_CRC_SEL_LSB));
    xpolar_WriteReg(iptr->BaseAddress, XPOLAR_POLAR_CODE_REG2_ADDR_BASE + (offset + i) * 4 * 4, wdata);
  }
  return length;
}

u32 xpolar_read_POLAR_CODE_REG2_CRC_SEL_words(xpolar *iptr, u32 offset, u32 *data, u32 length) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  if ((offset + length) * 4 > XPOLAR_POLAR_CODE_REG2_DEPTH)
    return 0;
  int i;
  for (i = 0; i < length; i++) {
    u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_POLAR_CODE_REG2_ADDR_BASE + (offset + i) * 4 * 4);
    data[i] = (rdata & XPOLAR_POLAR_CODE_REG2_CRC_SEL_MASK) >> XPOLAR_POLAR_CODE_REG2_CRC_SEL_LSB;
  }
  return length;
}

u32 xpolar_write_POLAR_CODE_REG2_ITLV_words(xpolar *iptr, u32 offset, const u32 *data, u32 length) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  if ((offset + length) * 4 > XPOLAR_POLAR_CODE_REG2_DEPTH)
    return 0;
  int i;
  for (i = 0; i < length; i++) {
    u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_POLAR_CODE_REG2_ADDR_BASE + (offset + i) * 4 * 4);
    u32 wdata = (rdata & ~XPOLAR_POLAR_CODE_REG2_ITLV_MASK) | (XPOLAR_POLAR_CODE_REG2_ITLV_MASK & (data[i] << XPOLAR_POLAR_CODE_REG2_ITLV_LSB));
    xpolar_WriteReg(iptr->BaseAddress, XPOLAR_POLAR_CODE_REG2_ADDR_BASE + (offset + i) * 4 * 4, wdata);
  }
  return length;
}

u32 xpolar_read_POLAR_CODE_REG2_ITLV_words(xpolar *iptr, u32 offset, u32 *data, u32 length) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  if ((offset + length) * 4 > XPOLAR_POLAR_CODE_REG2_DEPTH)
    return 0;
  int i;
  for (i = 0; i < length; i++) {
    u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_POLAR_CODE_REG2_ADDR_BASE + (offset + i) * 4 * 4);
    data[i] = (rdata & XPOLAR_POLAR_CODE_REG2_ITLV_MASK) >> XPOLAR_POLAR_CODE_REG2_ITLV_LSB;
  }
  return length;
}

u32 xpolar_write_POLAR_CODE_REG2_CRC_INIT_words(xpolar *iptr, u32 offset, const u32 *data, u32 length) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  if ((offset + length) * 4 > XPOLAR_POLAR_CODE_REG2_DEPTH)
    return 0;
  int i;
  for (i = 0; i < length; i++) {
    u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_POLAR_CODE_REG2_ADDR_BASE + (offset + i) * 4 * 4);
    u32 wdata = (rdata & ~XPOLAR_POLAR_CODE_REG2_CRC_INIT_MASK) | (XPOLAR_POLAR_CODE_REG2_CRC_INIT_MASK & (data[i] << XPOLAR_POLAR_CODE_REG2_CRC_INIT_LSB));
    xpolar_WriteReg(iptr->BaseAddress, XPOLAR_POLAR_CODE_REG2_ADDR_BASE + (offset + i) * 4 * 4, wdata);
  }
  return length;
}

u32 xpolar_read_POLAR_CODE_REG2_CRC_INIT_words(xpolar *iptr, u32 offset, u32 *data, u32 length) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  if ((offset + length) * 4 > XPOLAR_POLAR_CODE_REG2_DEPTH)
    return 0;
  int i;
  for (i = 0; i < length; i++) {
    u32 rdata = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_POLAR_CODE_REG2_ADDR_BASE + (offset + i) * 4 * 4);
    data[i] = (rdata & XPOLAR_POLAR_CODE_REG2_CRC_INIT_MASK) >> XPOLAR_POLAR_CODE_REG2_CRC_INIT_LSB;
  }
  return length;
}

u32 xpolar_write_POLAR_CODE_REG2_words(xpolar *iptr, u32 offset, const u32 *data, u32 length) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  if ((offset + length) * 4 > XPOLAR_POLAR_CODE_REG2_DEPTH)
    return 0;
  int i;
  for (i = 0; i < length; i++) {
    xpolar_WriteReg(iptr->BaseAddress, XPOLAR_POLAR_CODE_REG2_ADDR_BASE + (offset + i) * 4 * 4, data[i]);
  }
  return length;
}

u32 xpolar_read_POLAR_CODE_REG2_words(xpolar *iptr, u32 offset, u32 *data, u32 length) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  if ((offset + length) * 4 > XPOLAR_POLAR_CODE_REG2_DEPTH)
    return 0;
  int i;
  for (i = 0; i < length; i++) {
    data[i] = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_POLAR_CODE_REG2_ADDR_BASE + (offset + i) * 4 * 4);
  }
  return length;
}

u32 xpolar_write_POLAR_CODE_REG3_words(xpolar *iptr, u32 offset, const u32 *data, u32 length) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  if ((offset + length) * 4 > XPOLAR_POLAR_CODE_REG3_DEPTH)
    return 0;
  int i;
  for (i = 0; i < length; i++) {
    xpolar_WriteReg(iptr->BaseAddress, XPOLAR_POLAR_CODE_REG3_ADDR_BASE + (offset + i) * 4 * 4, data[i]);
  }
  return length;
}

u32 xpolar_read_POLAR_CODE_REG3_words(xpolar *iptr, u32 offset, u32 *data, u32 length) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  if ((offset + length) * 4 > XPOLAR_POLAR_CODE_REG3_DEPTH)
    return 0;
  int i;
  for (i = 0; i < length; i++) {
    data[i] = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_POLAR_CODE_REG3_ADDR_BASE + (offset + i) * 4 * 4);
  }
  return length;
}

u32 xpolar_write_POLAR_BA_TABLE_words(xpolar *iptr, u32 offset, const u32 *data, u32 length) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  if ((offset + length) * 4 > XPOLAR_POLAR_BA_TABLE_DEPTH)
    return 0;
  int i;
  for (i = 0; i < length; i++) {
    xpolar_WriteReg(iptr->BaseAddress, XPOLAR_POLAR_BA_TABLE_ADDR_BASE + (offset + i) * 4, data[i]);
  }
  return length;
}

u32 xpolar_read_POLAR_BA_TABLE_words(xpolar *iptr, u32 offset, u32 *data, u32 length) {
  Xil_AssertNonvoid(iptr != NULL);
  Xil_AssertNonvoid(iptr->IsReady == XIL_COMPONENT_IS_READY);
  if ((offset + length) * 4 > XPOLAR_POLAR_BA_TABLE_DEPTH)
    return 0;
  int i;
  for (i = 0; i < length; i++) {
    data[i] = xpolar_ReadReg(iptr->BaseAddress, XPOLAR_POLAR_BA_TABLE_ADDR_BASE + (offset + i) * 4);
  }
  return length;
}