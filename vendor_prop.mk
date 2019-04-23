#
# vendor props for ss2
#


# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.sensors.maghalcal=true \
    ro.vendor.sensors.facing=true \
    ro.vendor.sensors.scrn_ortn=false \
    ro.vendor.sensors.dev_ori=true \
    ro.vendor.sensors.sta_detect=true \
    ro.vendor.sensors.cmc=false \
    ro.vendor.sdk.sensors.gestures=false

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=420

#FIH
PRODUCT_PROPERTY_OVERRIDES += \
   ro.product.model.num=00E0 \
   ro.build.product=SAT \
   cda.skuid.brand=SHARP \
   cda.skuid.carrier=FIH Generic \
   cda.skuid.locale=Europe \
   ro.bsp.device=SS2 \
   ro.product.device=SS2

#Custom needs my Linage platform patches.

PRODUCT_PROPERTY_OVERRIDES += \
  persist.sbheight=123


