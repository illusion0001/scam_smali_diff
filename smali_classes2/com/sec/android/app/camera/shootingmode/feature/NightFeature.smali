.class public Lcom/sec/android/app/camera/shootingmode/feature/NightFeature;
.super Ljava/lang/Object;
.source "NightFeature.java"

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

    sget-object p0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_NIGHT:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getCameraId(Lcom/sec/android/app/camera/interfaces/CommandId;II)I

    move-result p0

    return p0
.end method

.method public getSupportedFaceDetectionMode(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;->HW:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    return-object p0
.end method

.method public getSupportedZoomType()I
    .locals 0

    const/4 p0, 0x4

    return p0
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

.method public isZoomBarSupported(I)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SEAMLESS_ZOOM:Z

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_NIGHT_MODE_ZOOM:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isZoomSupported(I)Z
    .locals 1

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_NIGHT_MODE_ZOOM:Z

    if-nez v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_FRONT_CAMERA_DYNAMIC_FOV:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return p0
.end method
