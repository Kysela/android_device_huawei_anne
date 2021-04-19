#
# Copyright 2019 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Recovery ramdisk, libraries and modules.
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/modprobe:recovery/root/sbin/modprobe \
    $(LOCAL_PATH)/rootdir/modprobe_static:recovery/root/sbin/modprobe_static \
    $(LOCAL_PATH)/rootdir/oeminfo_nvm_server:recovery/root/sbin/oeminfo_nvm_server \
    $(LOCAL_PATH)/rootdir/teecd:recovery/root/sbin/teecd \
    $(LOCAL_PATH)/rootdir/toybox_static:recovery/root/sbin/toybox_static \

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
ro.build.version.sdk=  \
ro.build.version.release=  \
ro.build.version.security_patch= 

# Kernel
PRODUCT_COPY_FILES += \
    device/huawei/anne/dummykernel:kernel
	
# Usb
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=manufacture,adb,mtp \
    ro.sys.usb.storage.type=mtp,adb \
    sys.usb.configfs=1 \
    sys.usb.controller=ff100000.dwc3 \
    ro.secure=0 \
    ro.adb.secure=0 \
    ro.allow.mock.location=0 \
    service.adb.root=1 \
    ro.debuggable=1