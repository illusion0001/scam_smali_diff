.class Lcom/sec/android/app/camera/engine/request/PrepareMakerRequest;
.super Lcom/sec/android/app/camera/engine/request/Request;
.source "PrepareMakerRequest.java"


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/Request;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method


# virtual methods
.method execute()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;

    invoke-direct {v1}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/PrepareMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSensorCropEnabled()Z

    move-result v2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setPictureSize(Landroid/util/Size;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/request/PrepareMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Capability;->isSecondPictureConfigSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackWideCameraMaxResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v5

    sget v6, Lcom/samsung/android/camera/feature/Feature;->BACK_WIDE_CAMERA_ID:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setExtraPictureSize(Landroid/util/Size;Ljava/lang/String;)V

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/request/PrepareMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Capability;->isDynamicFovSupported()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->isSuperResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v2, :cond_1

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getNormalAngleResolutionBySensorCropAngle(Lcom/sec/android/app/camera/interfaces/Resolution;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->getSensorCropResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setPictureSize(Landroid/util/Size;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setExtraPictureSize(Landroid/util/Size;Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/request/PrepareMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Capability;->isSensorCropSupported()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_3

    sget-object v3, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorStreamType;->CROP:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorStreamType;

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorStreamType;->FULL:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorStreamType;

    :goto_1
    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setSensorStreamType(Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorStreamType;)V

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/request/PrepareMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getMakerEventListener()Lcom/sec/android/app/camera/interfaces/Engine$MakerEventListener;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/request/PrepareMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerEventListener;->onConnectMakerPrepared(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;)V

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/request/PrepareMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v3

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderSnapshotWidthFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)I

    move-result v3

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderSnapshotHeightFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)I

    move-result v4

    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v3, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setPictureSize(Landroid/util/Size;)V

    :cond_5
    sget-boolean v3, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SAVE_AS_FLIPPED_IN_MEDIA_RECORDER:Z

    if-eqz v3, :cond_6

    sget-object v3, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;->FLIP_MODE_NONE:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setSensorFlipMode(Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;)V

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSensorFlipMode(I)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Capability;->getAvailableJpegPictureSizes(Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->getPictureSize()Landroid/util/Size;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->getEffectProcessorMode()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->getEffectProcessorMode()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/request/PrepareMakerRequest;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->createEffectProcessor(ILandroid/os/Handler;)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCurrentPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setPreviewSurface(Landroid/view/Surface;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PrepareMakerRequest;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setConnectionInfo(Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;)V

    return-void

    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "picture size is not supported - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->getPictureSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method isSupportedCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isSupportedState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$State;->CONNECTING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
