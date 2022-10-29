.class Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;
.super Lcom/sec/android/app/camera/engine/request/Request;
.source "ConnectMakerRequest.java"


# instance fields
.field mImageReader:Landroid/media/ImageReader;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/Request;-><init>(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method private createDummyRecordSurface(Lcom/sec/android/app/camera/interfaces/Resolution;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->mImageReader:Landroid/media/ImageReader;

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result p1

    const/16 v1, 0x22

    const/4 v2, 0x3

    invoke-static {v0, p1, v1, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->mImageReader:Landroid/media/ImageReader;

    return-void
.end method


# virtual methods
.method execute()V
    .locals 9

    const-string v0, "ConnectMakerRequest"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceBegin(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Maker - ConnectMakerRequest : Start["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPerformance"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->getCurrentMaker()Lcom/samsung/android/camera/core2/MakerInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/engine/request/CameraHolder;->getCameraDevice(I)Lcom/samsung/android/camera/core2/CamDevice;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->getConnectionInfo()Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;

    move-result-object v4

    if-eqz v4, :cond_8

    new-instance v5, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;

    invoke-direct {v5}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;-><init>()V

    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->setPreviewSurface(Landroid/view/Surface;)V

    new-instance v6, Landroid/util/Pair;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->getPictureSize()Landroid/util/Size;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->setFirstPicCbImageSize(Landroid/util/Pair;)V

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->isExtraPreviewSurfaceCreated()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isWatchModeSupported()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getExtraPreviewSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->setExtraSurface(Landroid/view/Surface;)V

    :cond_0
    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->getExtraPictureSize()Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->getExtraPictureSize()Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->setSecondPicCbImageSize(Landroid/util/Pair;)V

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->isHeifCaptureEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->setPictureEncodeFormat(I)V

    :cond_2
    invoke-interface {v2}, Lcom/samsung/android/camera/core2/MakerInterface;->getMakerType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Capability;->isFilterRecordingUsingVideoMakerSupported()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->isEffectProcessorActivated()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->createDummyRecordSurface(Lcom/sec/android/app/camera/interfaces/Resolution;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->setRecorderSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->getRecorderSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->setRecorderSurface(Landroid/view/Surface;)V

    :cond_4
    :goto_0
    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->getParameters()Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration;->setParameters(Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setConnectionInfo(Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;)V

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v1

    const-string v4, "Request"

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->isPreviewSurfaceCreated()Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_2

    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->getMakerStateCallback()Lcom/samsung/android/camera/core2/MakerInterface$StateCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v2, v3, v5, v0, v1}, Lcom/samsung/android/camera/core2/MakerInterface;->connectCamDevice(Lcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/container/DeviceConfiguration;Lcom/samsung/android/camera/core2/MakerInterface$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Lcom/samsung/android/camera/core2/exception/CamAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/samsung/android/camera/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/camera/core2/makerwrapper/MakerWrapperException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->CONNECTED:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/makerwrapper/MakerWrapperException;->getReason()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const-string v0, "MakerWrapperException"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string v0, "MakerWrapperException : Permission for single take service is denied"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    const/16 v1, -0x17

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->handleCameraError(I)V

    :goto_1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->discard()V

    return-void

    :catch_1
    const-string v0, "IllegalStateException : Invalid device session state"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->discard()V

    return-void

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InvalidOperationException / IllegalArgumentException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->discard()V

    return-void

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CamAccessException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;->getReason()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->handleCamAccessException(I)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->discard()V

    return-void

    :cond_7
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectMakerRequest : isRunning = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isPreviewSurfaceCreated = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->isPreviewSurfaceCreated()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->discard()V

    return-void

    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "connectionInfo is null!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method isBlockingRequest()Z
    .locals 0

    const/4 p0, 0x1

    return p0
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

.method onInterrupt()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    return-void
.end method

.method onTimeout()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/ConnectMakerRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    return-void
.end method
