/*
    NitroHax -- Cheat tool for the Nintendo DS
    Copyright (C) 2008  Michael "Chishm" Chisholm

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#ifndef SDMMC_ENGINE_ARM7_H
#define SDMMC_ENGINE_ARM7_H

#ifdef __cplusplus
extern "C" {
#endif

void myIrqHandler(void);

void runSdMmcEngineCheck (void);


#ifdef __cplusplus
}
#endif

#endif // SDMMC_ENGINE_ARM7_H
