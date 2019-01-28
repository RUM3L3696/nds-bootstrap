#ifndef LOCATIONS_H
#define LOCATIONS_H

#define LOAD_CRT0_LOCATION 0x06840000 // LCDC_BANK_C

#define SDENGINE_LOCATION      0x037C0000
//#define TEMP_MEM 0x02FFE000 // __DSiHeader

#define NDS_HEADER         0x023FFE00

#define ARM9_START_ADDRESS_LOCATION      (NDS_HEADER + 0x1F4) //0x023FFFF4

#define RAM_DISK_LOCATION          0x0C400000
#define RAM_DISK_LOCATION_MDROM    0x0C40DE00
#define RAM_DISK_LOCATION_SNESROM  0x0C40EA00

#endif // LOCATIONS_H
