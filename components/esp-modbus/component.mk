#
# Component Makefile
#
# This Makefile should, at the very least, just include $(SDK_PATH)/make/component.mk. By default,
# this will take the sources in this directory, compile them and link them into
# lib(subdirectory_name).a in the build directory. This behaviour is entirely configurable,
# please read the SDK documents if you need to do this.
#
COMPONENT_ADD_INCLUDEDIRS := include port
#COMPONENT_PRIV_INCLUDEDIRS :=

#EXTRA_CFLAGS := -DICACHE_RODATA_ATTR
#CFLAGS += -Wno-error=implicit-function-declaration -Wno-error=format= -DHAVE_CONFIG_H

COMPONENT_SRCDIRS := ./ ./rtu ./port ./functions ./tcp
COMPONENT_PRIV_INCLUDEDIRS := include ./rtu ./port ./ascii ./tcp
