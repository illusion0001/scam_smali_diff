.class Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;
.super Lcom/sec/android/app/camera/engine/request/Request;
.source "WaitTakePictureCompletedRequest.java"


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/Request;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method private stopTorchFlash(Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->setTorchFlashEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->isScreenFlashAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlash()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/MakerParameter;->getAeModeByFrontFlashSetting(I)I

    move-result p0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlash()I

    move-result p0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/MakerParameter;->getAeModeByFlashSetting(IZ)I

    move-result p0

    :goto_1
    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method execute()V
    .locals 4

    const-string v0, "Request"

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->getMakerPublicSettings()Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->countDownPictureLatch()V

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->isTorchFlashEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WaitTakePictureCompletedRequest : Stop torch flash."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;->stopTorchFlash(Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->getCurrentMaker()Lcom/samsung/android/camera/core2/MakerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/camera/core2/MakerInterface;->applySettings()I

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->isCancelAfRequiredAfterTakingPicture()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WaitTakePictureCompletedRequest : Cancel auto focus."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->getCurrentMaker()Lcom/samsung/android/camera/core2/MakerInterface;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/samsung/android/camera/core2/MakerInterface;->setAfTrigger(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->CANCEL_REQUESTED:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->changeAfTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V
    :try_end_0
    .catch Lcom/samsung/android/camera/core2/exception/CamAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    :try_start_1
    const-string v1, "IllegalStateException : Invalid device session state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;->discard()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;->setNextCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)V

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_2
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

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/exception/CamAccessException;->getReason()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->handleCamAccessException(I)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;->discard()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;->setNextCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)V

    throw v0
.end method

.method getBlockingRequestTimeOut()I
    .locals 0

    const/16 p0, 0x1b58

    return p0
.end method

.method isBlockingRequest()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method isInterruptibleRequest()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method isSupportedCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->CAPTURING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

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

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$onTimeout$0$WaitTakePictureCompletedRequest()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    const/16 v0, -0xa

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->handleCameraError(I)V

    return-void
.end method

.method onInterrupt()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    return-void
.end method

.method onTimeout()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;->setNextCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$WaitTakePictureCompletedRequest$jluhOvl-85x5zqrLoTjbk_7AVJE;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/request/-$$Lambda$WaitTakePictureCompletedRequest$jluhOvl-85x5zqrLoTjbk_7AVJE;-><init>(Lcom/sec/android/app/camera/engine/request/WaitTakePictureCompletedRequest;)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
