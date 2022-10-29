.class Lcom/sec/android/app/camera/engine/request/WaitLastSettingsAppliedRequest;
.super Lcom/sec/android/app/camera/engine/request/Request;
.source "WaitLastSettingsAppliedRequest.java"


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/Request;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method


# virtual methods
.method execute()V
    .locals 0

    return-void
.end method

.method getBlockingRequestTimeOut()I
    .locals 0

    const/16 p0, 0x3e8

    return p0
.end method

.method getInitialCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/WaitLastSettingsAppliedRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/android/app/camera/engine/request/Request;->getInitialCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->PREPARING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    return-object p0
.end method

.method isBlockingRequest()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/WaitLastSettingsAppliedRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->isLastSettingsApplied()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method isSupportedCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

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

.method public synthetic lambda$onTimeout$0$WaitLastSettingsAppliedRequest()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/WaitLastSettingsAppliedRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->clearApplySettingsSequenceId()V

    return-void
.end method

.method onInterrupt()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/WaitLastSettingsAppliedRequest;->setNextCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/WaitLastSettingsAppliedRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    return-void
.end method

.method onTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/WaitLastSettingsAppliedRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$WaitLastSettingsAppliedRequest$dapl7joREeazTtoaNHOJdx1k-ds;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/request/-$$Lambda$WaitLastSettingsAppliedRequest$dapl7joREeazTtoaNHOJdx1k-ds;-><init>(Lcom/sec/android/app/camera/engine/request/WaitLastSettingsAppliedRequest;)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
