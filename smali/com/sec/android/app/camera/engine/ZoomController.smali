.class Lcom/sec/android/app/camera/engine/ZoomController;
.super Ljava/lang/Object;
.source "ZoomController.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraIdChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomController"

.field private static final TRANSIENT_ZOOMING_STOP_TIMER:I = 0x1f4


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private mIsTransientZooming:Z

.field private mScalerCropRegion:Landroid/graphics/Rect;

.field private final mStopTransientZoomingRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$ZoomController$1pky6TatQxub0n2Ec9Jn21m1mtY;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$ZoomController$1pky6TatQxub0n2Ec9Jn21m1mtY;-><init>(Lcom/sec/android/app/camera/engine/ZoomController;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mStopTransientZoomingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method private getScalerCropRegion(I)Landroid/graphics/Rect;
    .locals 4

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object p0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    int-to-float v1, v0

    div-float v2, v1, p1

    int-to-float v3, p0

    div-float p1, v3, p1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sub-float/2addr v3, p1

    float-to-int p1, v3

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p0, p1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, p1, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method static synthetic lambda$setTargetZoomRatio$2(FLcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_ZOOM_JUMP_TARGET_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_ZOOM_JUMP_TARGET_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$setWideLensDistortionCorrection$3(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-ge p0, v2, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    sget-object v2, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_LENS_DISTORTION_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_LENS_DISTORTION_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v0

    :cond_1
    return v1
.end method

.method private setWideLensDistortionCorrection(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isLensDistortionCorrectionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWideLensCorrection()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$ZoomController$I50n1-DviJ08yt-_mCqs2V49Ehs;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/-$$Lambda$ZoomController$I50n1-DviJ08yt-_mCqs2V49Ehs;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method private setZoomLevel(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->getScalerAvailableMaxDigitalZoom()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Capability;->getScalerAvailableMinDigitalZoom()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isZoomSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoomLevel : level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$ZoomController$ka9Gzl1lGagq9m4tbcUx7E_GeWw;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/engine/-$$Lambda$ZoomController$ka9Gzl1lGagq9m4tbcUx7E_GeWw;-><init>(Lcom/sec/android/app/camera/engine/ZoomController;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method


# virtual methods
.method getMaxZoomLevel()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ZoomController;->getZoomType()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Capability;->getScalerAvailableMaxDigitalZoom(I)F

    move-result p0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method getMinZoomLevel()I
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SEM_INT:I

    const/high16 v1, 0x42c80000    # 100.0f

    const/16 v2, 0xb55

    if-gt v0, v2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Capability;->getScalerAvailableMinDigitalZoom()F

    move-result p0

    :goto_0
    mul-float/2addr p0, v1

    float-to-int p0, p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ZoomController;->getZoomType()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Capability;->getScalerAvailableMinDigitalZoom(I)F

    move-result p0

    goto :goto_0
.end method

.method getScalerCropRegion()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isZoomSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mScalerCropRegion:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method getTotalZoomLevel()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ZoomController;->getMaxZoomLevel()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ZoomController;->getMinZoomLevel()I

    move-result p0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method getZoomType()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v0

    :goto_0
    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isSuperResolution(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedZoomType()I

    move-result p0

    return p0
.end method

.method isTransientZooming()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mIsTransientZooming:Z

    return p0
.end method

.method public synthetic lambda$new$1$ZoomController()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mIsTransientZooming:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mIsTransientZooming:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$ZoomController$MKvyPHhOo8CRxVgiyBGItEX8snM;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$ZoomController$MKvyPHhOo8CRxVgiyBGItEX8snM;-><init>(Lcom/sec/android/app/camera/engine/ZoomController;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public synthetic lambda$null$0$ZoomController(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 4

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_TRANSIENT_ACTION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isSmoothZoomSupported()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/MakerParameter;->getAfMode(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_TRANSIENT_ACTION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Capability;->isSmoothZoomSupported()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_ZOOM_JUMP_TARGET_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p1, p0, v2}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_ZOOM_JUMP_TARGET_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method public synthetic lambda$setZoomLevel$4$ZoomController(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/ZoomController;->getScalerCropRegion(I)Landroid/graphics/Rect;

    move-result-object v0

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p2, v1, v0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_SCALER_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mIsTransientZooming:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_TRANSIENT_ACTION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Capability;->isSmoothZoomSupported()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result v1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    :cond_2
    sget-object v1, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/MakerParameter;->getAfMode(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_3
    sget-object v1, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_TRANSIENT_ACTION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_4
    sget-object v1, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p2, v1, v0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_SCALER_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mScalerCropRegion:Landroid/graphics/Rect;

    return v3
.end method

.method public onCameraIdChanged(IIZ)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ZoomController;->getMaxZoomLevel()I

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ZoomController;->getMinZoomLevel()I

    move-result p2

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ZoomController;->getMinZoomLevel()I

    move-result p2

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ZoomController;->getMaxZoomLevel()I

    move-result p2

    if-le p1, p2, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 p1, 0x64

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    :cond_1
    return-void
.end method

.method public onCameraSettingChanged(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/engine/ZoomController$1;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperVideoStabilization()I

    move-result p1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSteadyZoomType()I

    move-result p1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMinZoomLevel()I

    move-result p1

    if-eq p2, p1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/engine/ZoomController;->setWideLensDistortionCorrection(I)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/engine/ZoomController;->setZoomLevel(I)V

    :goto_0
    return-void
.end method

.method resetScalerCropRegion()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mScalerCropRegion:Landroid/graphics/Rect;

    return-void
.end method

.method setScalerCropRegion(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/ZoomController;->getScalerCropRegion(I)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mScalerCropRegion:Landroid/graphics/Rect;

    return-void
.end method

.method setTargetZoomRatio(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isSmoothZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$ZoomController$2seypevdJ282qBgmwD9G1AqJ_BA;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/-$$Lambda$ZoomController$2seypevdJ282qBgmwD9G1AqJ_BA;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method start()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraIdChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraIdChangedListener;)V

    return-void
.end method

.method startTransientZooming()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mStopTransientZoomingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mIsTransientZooming:Z

    return-void
.end method

.method stop()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraIdChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraIdChangedListener;)V

    return-void
.end method

.method stopTransientZooming(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mStopTransientZoomingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mStopTransientZoomingRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ZoomController;->mStopTransientZoomingRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
