PROGPORT := /dev/tty.usbmodem1444301
CONSPORT := /dev/cu.usbserial-144440

PIC := 18F57Q43
XC8 := /Applications/microchip/xc8/v2.40/bin/xc8
XC8_OPTS := --chip=$(PIC) --std=c99
PP3_OPTS := -c $(PROGPORT) -s 1700 -v 2 -r 30 -t $(PIC)

PJ_DIR := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))
SRC_DIR := $(PJ_DIR)/src
BUILD_DIR := $(PJ_DIR)/build

SRCS := $(SRC_DIR)/emuz80_57Q.c
INCS :=-I$(SRC_DIR)
HDRS := 

all: $(BUILD_DIR)/emuz80_57Q.hex

$(BUILD_DIR)/emuz80_57Q.hex: $(SRCS) $(HDRS)
	mkdir -p $(BUILD_DIR) && cd $(BUILD_DIR) && \
        $(XC8) $(XC8_OPTS) $(DEFS) $(INCS) $(SRCS)

upload: $(BUILD_DIR)/emuz80_57Q.hex
	pp3 $(PP3_OPTS) $(BUILD_DIR)/emuz80_57Q.hex

clean::
	rm -rf $(BUILD_DIR)
