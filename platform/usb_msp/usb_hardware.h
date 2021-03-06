//****************************************************************************//
// Function Library for setting the PMM, TLV, DMA
//    File: usb_hardware.h
//
//    Texas Instruments
//
//    Version 1.1
//    07/27/09
// 
//****************************************************************************////====================================================================
#include <string.h>
#include <stddef.h>
#define _CDC_
#include "device.h"
#include "usb_def.h"
#include "descriptors.h"
#include "usb.h"            // USB-specific Data Structures
#ifdef _CDC_
    #include "usb_cdc.h"
#endif

#ifndef __PMM
#define __PMM

extern void Get_TLV_info(uint8_t tag, uint8_t *length, unsigned int *data_address);

//====================================================================
/**
  * Set the VCore to a new level
  *
  * \param level       PMM level ID
  */
void SetVCore (uint8_t level);

//====================================================================
/**
  * Set the VCore to a new higher level
  *
  * \param level       PMM level ID
  */
void SetVCoreUp (uint8_t level);

//====================================================================
/**
  * Set the VCore to a new Lower level
  *
  * \param level       PMM level ID
  */
void SetVCoreDown (uint8_t level);

//====================================================================
//====================================================================
//====================================================================
// INTERRUPTS:

/*----------------------------------------------------------------------------+
| External Variables                                                          |
+----------------------------------------------------------------------------*/
extern uint8_t  bFunctionSuspended;

//extern __no_init tEDB0 __data16 tEndPoint0DescriptorBlock;
//extern __no_init tEDB __data16 tInputEndPointDescriptorBlock[];
//extern __no_init tEDB __data16 tOutputEndPointDescriptorBlock[];
extern __no_init tEDB0 tEndPoint0DescriptorBlock;
extern __no_init tEDB tInputEndPointDescriptorBlock[];
extern __no_init tEDB tOutputEndPointDescriptorBlock[];


extern volatile uint8_t bHostAsksUSBData;
extern volatile uint8_t bTransferInProgress;
extern volatile uint8_t bSecondUartTxDataCounter[];
extern volatile uint8_t* pbSecondUartTxData;

extern uint8_t bStatusAction;
extern uint16_t wUsbEventMask;

uint16_t CdcToHostFromBuffer();
uint16_t CdcToBufferFromHost();
uint16_t CdcIsReceiveInProgress();

// These variables are only example, they are not needed for stack
extern volatile uint8_t bDataReceived_event;          // data received event
extern volatile uint8_t bDataReceiveCompleted_event;  // data receive completed event
extern volatile uint8_t bDataSendCompleted_event;     // data send completed event
uint8_t usb_reconnect(void);
extern uint8_t usb_data_received(uint8_t intfNum);
extern uint8_t usb_data_send_completed(uint8_t intfNum);
extern uint8_t usb_data_rcv_completed(uint8_t intfNum);

/**
Handle incoming setup packet.
returns TRUE to keep CPU awake
*/
uint8_t SetupPacketInterruptHandler(void);

/**
Handle VBuss on signal.
*/
void PWRVBUSonHandler(void);

/**
Handle VBuss off signal.
*/
void PWRVBUSoffHandler(void);

/**
Handle In-requests from control pipe.
*/
void IEP0InterruptHandler(void);

/**
Handle Out-requests from control pipe.
*/
void OEP0InterruptHandler(void);

/*----------------------------------------------------------------------------+
| End of header file                                                          |
+----------------------------------------------------------------------------*/

#endif /* __PMM */
#ifndef __MSP430_HAS_TLV__              /* Definition to show that Module is available */
#define __MSP430_HAS_TLV__              /* Definition to show that Module is available */
#endif // TLV

