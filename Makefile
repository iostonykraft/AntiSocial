export ARCHS = armv7 arm64
export TARGET = iphone:clang
export THEOS_DEVICE_IP=192.168.1.10
FOR_RELEASE=1
GO_EASY_ON_ME=1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AntiSocial
AntiSocial_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
