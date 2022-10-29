.class Lcom/sec/android/app/camera/engine/request/CloseCameraRequest;
.super Lcom/sec/android/app/camera/engine/request/Request;
.source "CloseCameraRequest.java"


# instance fields
.field private mCameraId:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/request/Request;-><init>(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iput p5, p0, Lcom/sec/android/app/camera/engine/request/CloseCameraRequest;->mCameraId:I

    return-void
.end method


# virtual methods
.method execute()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CloseCameraRequest;->mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

    iget v1, p0, Lcom/sec/android/app/camera/engine/request/CloseCameraRequest;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/CameraHolder;->closeCamera(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CloseCameraRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CloseCameraRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->destroyEffectProcessor()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CloseCameraRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCurrentCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->SWITCHING_RECORD_FACING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CloseCameraRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCurrentState()Lcom/sec/android/app/camera/interfaces/Engine$State;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    if-ne v0, v1, :cond_2

    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/CloseCameraRequest;->setNextCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)V

    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/CloseCameraRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    return-void
.end method

.method getInitialState()Lcom/sec/android/app/camera/interfaces/Engine$State;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CloseCameraRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCurrentState()Lcom/sec/android/app/camera/interfaces/Engine$State;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    return-object p0

    :cond_0
    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$State;->CLOSING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    return-object p0
.end method

.method isBlockingRequest()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method isSupportedCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method isSupportedState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$State;->OPENED:Lcom/sec/android/app/camera/interfaces/Engine$State;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$State;->CONNECTING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$State;->CONNECTED:Lcom/sec/android/app/camera/interfaces/Engine$State;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

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
