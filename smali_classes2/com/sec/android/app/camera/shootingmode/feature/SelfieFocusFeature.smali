.class Lcom/sec/android/app/camera/shootingmode/feature/SelfieFocusFeature;
.super Ljava/lang/Object;
.source "SelfieFocusFeature.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraId(II)I
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SELFIE_FOCUS:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getCameraId(Lcom/sec/android/app/camera/interfaces/CommandId;II)I

    move-result p0

    return p0
.end method

.method public getSupportedBokehEffectType()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;->SINGLE_BOKEH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    return-object p0
.end method

.method public getSupportedFaceDetectionMode(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;->BOTH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    return-object p0
.end method

.method public getSupportedFlashType(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;->PHOTO_FLASH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    return-object p0
.end method

.method public isAngleChangeSupported(I)Z
    .locals 0

    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SINGLE_BOKEH_EFFECT:Z

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_FRONT_CAMERA_DYNAMIC_FOV:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SENSOR_CROP:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBeautyFaceSupported(I)Z
    .locals 0

    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_LIVE_BEAUTY:Z

    return p0
.end method

.method public isFloatingCameraButtonSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isLiveHdrSupported(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isLowLightDetectionSupported(I)Z
    .locals 0

    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_LIVE_FOCUS_HDR_CAPTURE:Z

    return p0
.end method

.method public isPalmDetectionSupported(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isReviewSupported()Z
    .locals 0

    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_REVIEW:Z

    return p0
.end method

.method public isSensorCropSupported(I)Z
    .locals 0

    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_FRONT_CAMERA_DYNAMIC_FOV:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SENSOR_CROP:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isTakingPictureSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isTakingPostProcessingPictureSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isTouchAeSupported(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isTouchEvSupported(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isWatchModeSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isZoomSupported(I)Z
    .locals 0

    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SINGLE_BOKEH_EFFECT:Z

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_FRONT_CAMERA_DYNAMIC_FOV:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
