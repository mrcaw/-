#ifndef __LQ__EEPROM_H
#define __LQ__EEPROM_H

void EEPROM_EraseSector(unsigned char sector);
void EEPROM_Write(unsigned char sector, unsigned short page, unsigned long *buff, unsigned short len);
void EEPROM_Read(unsigned char sector, unsigned short page, unsigned long *rbuff, unsigned short len);

#endif
