.class public Lcom/sec/android/app/camera/shootingmode/feature/PhotoFeature;
.super Ljava/lang/Object;
.source "PhotoFeature.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraId(II)I
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getCameraId(Lcom/sec/android/app/camera/interfaces/CommandId;II)I

    move-result p0

    return p0
.end method

.method public getSupportedFaceDetectionMode(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;->HW:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;->BOTH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    :goto_0
    return-object p0
.end method

.method public getSupportedFlashType(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;->PHOTO_FLASH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    return-object p0
.end method

.method public isAeAfLockSupported(I)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAgifBurstCaptureSupported(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isAngleChangeSupported(I)Z
    .locals 0

    if-nez p1, :cond_1

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

.method public isBurstCaptureSupported(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isEffectSupported(I)Z
    .locals 0

    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_FILTER:Z

    return p0
.end method

.method public isFloatingCameraButtonSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isHalfShutterSupported(I)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLevelMeterSupported()Z
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

    const/4 p0, 0x1

    return p0
.end method

.method public isMotionPhotoSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPalmDetectionSupported(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQuickTakeSupported()Z
    .locals 0

    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_QUICK_TAKE:Z

    return p0
.end method

.method public isReviewSupported()Z
    .locals 0

    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_REVIEW:Z

    return p0
.end method

.method public isSensorCropSupported(I)Z
    .locals 0

    if-nez p1, :cond_1

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

.method public isSuperResolutionSupported(I)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BACK_SUPER_RESOLUTION_CAMERA:Z

    return p0

    :cond_0
    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_FRONT_SUPER_RESOLUTION_CAMERA:Z

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

.method public isTrackingAfSupported(I)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWatchModeSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isZoomBarSupported(I)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SEAMLESS_ZOOM:Z

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BACK_WIDE_CAMERA:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method public isZoomSupported(I)Z
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_FRONT_CAMERA_DYNAMIC_FOV:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method
