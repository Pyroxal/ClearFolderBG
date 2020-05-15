INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ClearFolderBG

ClearFolderBG_FILES = Tweak.x
ClearFolderBG_CFLAGS = -fobjc-arc

ARCHS = arm64 arm64e

include $(THEOS_MAKE_PATH)/tweak.mk
