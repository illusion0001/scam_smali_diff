.class Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;
.super Lcom/sec/android/app/camera/engine/request/Request;
.source "PrepareStartPreviewRequest.java"


# instance fields
.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mShootingmodeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/Request;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method private getAeTargetFpsRange(Lcom/sec/android/app/camera/interfaces/Capability;)Landroid/util/Range;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/camera/interfaces/Capability;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Capability;->getAvailableEffectPreviewFpsRange()Landroid/util/Range;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->isEffectProcessorActivated()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p0, 0x1e

    if-nez v0, :cond_1

    new-instance p1, Landroid/util/Range;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p1

    :cond_1
    new-instance p1, Landroid/util/Range;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p1
.end method

.method private getAeTargetFpsRangeForRecording(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Resolution;)Landroid/util/Range;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/camera/interfaces/Capability;",
            "Lcom/sec/android/app/camera/interfaces/Resolution;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/sec/android/app/camera/util/CameraResolution;->is60FpsCamcorderResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->is60fpsRecordingRestricted()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Landroid/util/Range;

    const/16 p1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p0

    :cond_0
    invoke-static {p2}, Lcom/sec/android/app/camera/util/CameraResolution;->is24FpsCamcorderResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p0, Landroid/util/Range;

    const/16 p1, 0x18

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p0

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Capability;->getAvailableEffectRecordingFpsRange()Landroid/util/Range;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->isEffectProcessorActivated()Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    new-instance p0, Landroid/util/Range;

    const/16 p1, 0x1e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p0
.end method

.method private getTorchSetting()I
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashRestrictionMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperVideoStabilization()I

    move-result v3

    if-ne v3, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTorch()I

    move-result v1

    :cond_3
    :goto_2
    return v1
.end method

.method private setDefaultAeAfAwbSettings(Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->isScreenFlashAvailable()Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlash()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/MakerParameter;->getAeModeByFrontFlashSetting(I)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlash()I

    move-result v1

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/MakerParameter;->getAeModeByFlashSetting(IZ)I

    move-result v1

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mShootingmodeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v4, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v0

    sget-object v4, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;->VIDEO_TORCH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    if-ne v0, v4, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->getTorchSetting()I

    move-result v0

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/MakerParameter;->getAeModeByTorchSetting(IZ)I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->getTorchSetting()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/MakerParameter;->getFlashMode(I)I

    move-result v2

    :cond_1
    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->EXPOSURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v3}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v3}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->getAeTargetFpsRange(Lcom/sec/android/app/camera/interfaces/Capability;)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->isCafSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->isAfSupported()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    :goto_1
    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/MakerParameter;->getAfMode(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->isPhaseAfSupported()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_PHASE_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private setDefaultAeAfAwbSettingsForRecording(Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->getTorchSetting()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/MakerParameter;->getAeModeByTorchSetting(IZ)I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->getTorchSetting()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/util/MakerParameter;->getFlashMode(I)I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mShootingmodeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v6, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v1

    sget-object v6, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;->PHOTO_FLASH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->isScreenFlashAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlash()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/MakerParameter;->getAeModeByFrontFlashSetting(I)I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlash()I

    move-result v1

    invoke-static {v1, v3}, Lcom/sec/android/app/camera/util/MakerParameter;->getAeModeByFlashSetting(IZ)I

    move-result v2

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachFragmentVisible()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v5

    :cond_3
    :goto_1
    sget-object v1, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v4}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v4}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->EXPOSURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->getAeTargetFpsRangeForRecording(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Resolution;)Landroid/util/Range;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_RECORDING_CONTINUOUS_AF:Z

    if-eqz v0, :cond_4

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->isCafSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->isAfSupported()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusMode(I)V

    :goto_2
    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/MakerParameter;->getAfMode(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->isPhaseAfSupported()Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_PHASE_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private setDefaultCameraPreviewSettings(Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->setDefaultAeAfAwbSettings(Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHdr()I

    move-result v1

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->isLiveHdrSupported()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mShootingmodeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isLiveHdrSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/MakerParameter;->getLiveHdrMode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/MakerParameter;->getLiveHdrMode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 v2, 0x2

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureMetering()I

    move-result v1

    :goto_1
    sget-object v5, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_METERING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/MakerParameter;->getExposureMetering(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->setFrontPictureStreamType(Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v1

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->getScalerAvailableMaxDigitalZoom()F

    move-result v5

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->getScalerAvailableMinDigitalZoom()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v5, v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->setScalerCropRegion(I)V

    sget-object v5, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_SCALER_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    int-to-float v6, v1

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v5, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getScalerCropRegion()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_3
    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->isLensDistortionCorrectionSupported()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWideLensCorrection()I

    move-result v5

    if-ne v5, v4, :cond_4

    const/16 v5, 0x64

    if-ge v1, v5, :cond_4

    move v1, v4

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    sget-object v5, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_LENS_DISTORTION_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_5
    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSaveAsFlipped()I

    move-result v1

    goto :goto_3

    :cond_6
    move v1, v3

    :goto_3
    sget-object v5, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_SCALER_FLIP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/MakerParameter;->getScalerFlipMode(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mShootingmodeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedFaceDetectionMode(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    move-result-object v1

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->isFaceDetectionSupported()Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;->HW:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    if-eq v1, v5, :cond_7

    sget-object v5, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;->BOTH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    if-ne v1, v5, :cond_9

    :cond_7
    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->isFaceDetectionFullModeSupported()Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_4

    :cond_8
    move v2, v4

    :goto_4
    sget-object p2, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_9
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mShootingmodeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isLowLightDetectionSupported(I)Z

    move-result p0

    if-eqz p0, :cond_a

    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_LIGHT_CONDITION_ENABLE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_a
    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_LENS_OPTICAL_STABILIZATION_OPERATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private setDefaultRecordingPreviewSettings(Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->setDefaultAeAfAwbSettingsForRecording(Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHdr()I

    move-result v2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->isLiveHdrSupported()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mShootingmodeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v3, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isLiveHdrSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderHDRAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/MakerParameter;->getLiveHdrMode(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Lcom/sec/android/app/camera/util/MakerParameter;->getLiveHdrMode(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureMetering()I

    move-result v3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v1, v6, :cond_2

    if-ne v2, v5, :cond_3

    :cond_2
    move v3, v6

    :cond_3
    sget-object v2, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_METERING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Lcom/sec/android/app/camera/util/MakerParameter;->getExposureMetering(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->setZoomForRecording(Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mShootingmodeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedFaceDetectionMode(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    move-result-object v2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->isFaceDetectionSupported()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;->HW:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;->BOTH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    if-ne v2, v3, :cond_6

    :cond_4
    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->isFaceDetectionFullModeSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    move v5, v6

    :goto_1
    sget-object v2, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isVideoBeautyFaceSupported(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mShootingmodeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isBeautyFaceSupported(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mShootingmodeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedBokehEffectType()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;->NOT_SUPPORTED:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    if-ne v0, v1, :cond_8

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->isVideoBeautySnapshotSupported()Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoBeautyLevel()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->setSkinToneLevel(I)V

    :cond_7
    sget-object p2, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_BEAUTY_FACE_RETOUCH_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoBeautyLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_8
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->setFlipMode(Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;)V

    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_LIGHT_CONDITION_ENABLE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_LENS_OPTICAL_STABILIZATION_OPERATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private setFlipMode(Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSaveAsFlipped()I

    move-result v1

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/sec/android/app/camera/util/MakerParameter;->getScalerFlipMode(I)I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/MakerParameter;->getScalerFlipMode(I)I

    move-result v2

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCurrentCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->SWITCHING_RECORD_FACING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    if-ne v3, v4, :cond_4

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getInitialRecordingFacing()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-nez v1, :cond_4

    if-ne v0, v3, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getOrientationForCapture()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getOrientationForCapture()I

    move-result p0

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_4

    :cond_3
    const/4 v2, 0x3

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setFlipMode : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Request"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_SCALER_FLIP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private setFrontPictureStreamType(Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V
    .locals 2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->isDynamicFovSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSensorCropEnabled()Z

    move-result v0

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_SENSOR_STREAM_TYPE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/16 p1, 0x64

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSensorCropEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lcom/sec/android/app/camera/interfaces/Capability;->getSensorInfoActiveArraySize(Z)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/sec/android/app/camera/interfaces/Capability;->getSensorInfoActiveArraySize(Z)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    :cond_1
    return-void
.end method

.method private setRequestHint(Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_REPEATING_REQUEST_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->isEffectProcessorActivated()Z

    move-result p0

    if-eqz p0, :cond_1

    or-int/lit8 p0, v0, 0x1

    goto :goto_1

    :cond_1
    and-int/lit8 p0, v0, -0x2

    :goto_1
    if-eq v0, p0, :cond_2

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_REPEATING_REQUEST_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request hint : Current flag = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", New flag = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Request"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private setZoomForRecording(Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->getScalerAvailableMaxDigitalZoom()F

    move-result v1

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->getScalerAvailableMinDigitalZoom()F

    move-result p2

    cmpl-float p2, v1, p2

    if-lez p2, :cond_9

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result p2

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperVideoStabilization()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCurrentCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->SWITCHING_RECORD_FACING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    if-ne v0, v1, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getPreviousSuperSteadyZoomValue()I

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getMinZoomLevel()I

    move-result p2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSteadyZoomType()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getMinZoomLevel()I

    move-result p2

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    goto :goto_1

    :cond_3
    if-ne v0, v2, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCurrentCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->SWITCHING_RECORD_FACING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getPreviousZoomValue(I)I

    move-result p2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getPreviousZoomValue(I)I

    move-result p2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getMinZoomLevel()I

    move-result v0

    if-lt p2, v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getMaxZoomLevel()I

    move-result v0

    if-le p2, v0, :cond_8

    :cond_7
    const/16 p2, 0x64

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0, p2}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->setScalerCropRegion(I)V

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_SCALER_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    int-to-float p2, p2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p2, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getScalerCropRegion()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_9
    return-void
.end method


# virtual methods
.method execute()V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device - PrepareStartPreviewRequest : Start["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CameraPerformance"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->getCurrentMaker()Lcom/samsung/android/camera/core2/MakerInterface;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->getMakerPublicSettings()Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v7, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v7, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mShootingmodeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    iget-object v7, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->isEffectProcessorRequired()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->startEffectProcessor()V

    :cond_0
    :try_start_0
    invoke-interface {v2}, Lcom/samsung/android/camera/core2/MakerInterface;->getMakerType()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->setDefaultRecordingPreviewSettings(Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not supported maker type : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/samsung/android/camera/core2/MakerInterface;->getMakerType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->setDefaultCameraPreviewSettings(Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V

    :goto_0
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->setRequestHint(Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getMakerEventListener()Lcom/sec/android/app/camera/interfaces/Engine$MakerEventListener;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getMakerEventListener()Lcom/sec/android/app/camera/interfaces/Engine$MakerEventListener;

    move-result-object v2

    invoke-interface {v2, v5, v6}, Lcom/sec/android/app/camera/interfaces/Engine$MakerEventListener;->onStartPreviewPrepared(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device - PrepareStartPreviewRequest : End["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "] ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalStateException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Request"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/PrepareStartPreviewRequest;->discard()V

    :goto_1
    return-void
.end method

.method isSupportedCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->SWITCHING_RECORD_FACING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    if-ne p1, p0, :cond_0

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

.method isSupportedState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$State;->CONNECTED:Lcom/sec/android/app/camera/interfaces/Engine$State;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
