.class Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;
.super Lcom/sec/android/app/camera/engine/request/Request;
.source "PrepareVideoMakerRequest.java"


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/Request;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method private getVdisMode()Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;->VDIS_OFF:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderVideoStabilizationAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoStabilisation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoFilter()I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoMyFilter()I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTuneType()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;->VDIS_NORMAL:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;->VDIS_OFF:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;->VDIS_CENTER_CROP:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;

    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VDIS mode : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Request"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method


# virtual methods
.method execute()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->getCurrentMaker()Lcom/samsung/android/camera/core2/MakerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;

    invoke-direct {v2}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;-><init>()V

    invoke-interface {v0}, Lcom/samsung/android/camera/core2/MakerInterface;->getMakerType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v3

    invoke-static {v3, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderSnapshotWidthFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)I

    move-result v4

    invoke-static {v3, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderSnapshotHeightFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)I

    move-result v5

    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v4, v5}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setPictureSize(Landroid/util/Size;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Capability;->isSecondPictureConfigSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->getBackWideCameraMaxResolution(Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v4

    sget v5, Lcom/samsung/android/camera/feature/Feature;->BACK_WIDE_CAMERA_ID:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setExtraPictureSize(Landroid/util/Size;Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->is60FpsCamcorderResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->is60fpsRecordingRestricted()Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x3c

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->is24FpsCamcorderResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x18

    goto :goto_0

    :cond_2
    const/16 v4, 0x1e

    :goto_0
    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setVideoMaxFps(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->getVdisMode()Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setVdisMode(Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;)V

    invoke-static {v3, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderSuperVideoStabilizationAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperVideoStabilization()I

    move-result v1

    if-ne v1, v6, :cond_3

    move v1, v6

    goto :goto_1

    :cond_3
    move v1, v5

    :goto_1
    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->enableSuperVdis(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isVideoBeautyFaceSupported(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isBeautyFaceSupported(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->enableVideoBeautyFace(Z)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->enableVideoBeautyFace(Z)V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isHdr10RecordingEnabled()Z

    move-result v0

    const-string v1, "Request"

    if-eqz v0, :cond_5

    const-string v0, "onConnectMakerPrepared HDR10"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;->HDR10:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setRecordingDrMode(Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;)V

    goto :goto_3

    :cond_5
    const-string v0, "onConnectMakerPrepared SDR"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;->SDR:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setRecordingDrMode(Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;)V

    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getMakerEventListener()Lcom/sec/android/app/camera/interfaces/Engine$MakerEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine$MakerEventListener;->onConnectMakerPrepared(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->createPersistentInputSurface()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isFilterRecordingUsingVideoMakerSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->getEffectProcessorMode()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->getEffectProcessorMode()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->createEffectProcessor(ILandroid/os/Handler;)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getPersistentInputSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setRecorderSurface(Landroid/view/Surface;)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->isEffectProcessorActivated()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getPersistentInputSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setRecorderSurface(Landroid/view/Surface;)V

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCurrentPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->setPreviewSurface(Landroid/view/Surface;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PrepareVideoMakerRequest;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setConnectionInfo(Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;)V

    return-void

    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "this maker is not instanceof VideoMakerBase"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
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

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$State;->CONNECTING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
