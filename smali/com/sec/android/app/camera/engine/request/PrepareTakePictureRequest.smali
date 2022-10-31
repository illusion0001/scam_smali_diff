.class Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;
.super Lcom/sec/android/app/camera/engine/request/Request;
.source "PrepareTakePictureRequest.java"


# instance fields
.field private mIsPrecaptureRequired:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/Request;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;->mIsPrecaptureRequired:Z

    iput-boolean p4, p0, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;->mIsPrecaptureRequired:Z

    return-void
.end method

.method private isTorchFlashSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;->PHOTO_TORCH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getLightConditionForCapture()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private startTorchFlash(Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->setTorchFlashEnabled(Z)V

    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method execute()V
    .locals 6

    const-string v0, "Request"

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->getCurrentMaker()Lcom/samsung/android/camera/core2/MakerInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->getMakerPublicSettings()Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Capture - PrepareTakePictureRequest : Point["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CameraPerformance"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-boolean v3, p0, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;->mIsPrecaptureRequired:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;->isTorchFlashSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;->startTorchFlash(Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;)V

    invoke-interface {v1}, Lcom/samsung/android/camera/core2/MakerInterface;->applySettings()I

    :cond_0
    invoke-interface {v1, v4, v4}, Lcom/samsung/android/camera/core2/MakerInterface;->setAfAndAePrecaptureTrigger(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->REQUESTED:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->changeAePrecaptureTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->REQUESTED:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->changeAfTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->isAutoFocusTriggerRequired()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1, v4}, Lcom/samsung/android/camera/core2/MakerInterface;->setAfTrigger(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->REQUESTED:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->changeAfTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V
    :try_end_0
    .catch Lcom/samsung/android/camera/core2/exception/CamAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/camera/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "IllegalStateException : Invalid device session state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;->setNextCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;->discard()V

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InvalidOperationException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;->setNextCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;->discard()V

    goto :goto_0

    :catch_2
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CamAccessException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/exception/CamAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/exception/CamAccessException;->getReason()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->handleCamAccessException(I)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;->setNextCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;->discard()V

    :cond_2
    :goto_0
    return-void
.end method

.method getInitialCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->PREPARING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    return-object p0
.end method

.method isSupportedCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->PREPARING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

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

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

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

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;->setNextCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/PrepareTakePictureRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    return-void
.end method
