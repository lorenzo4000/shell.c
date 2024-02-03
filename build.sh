#!/bin/bash
set -xe

CC="gcc"
CC_FLAGS="-std=c99 -Wall -I./"
LIBS="-lncurses"

$CC $CC_FLAGS $LIBS		 	 \
	./*.c 				 	 \
 -c 
