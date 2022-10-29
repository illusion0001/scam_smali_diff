.class Lcom/sec/android/app/camera/engine/request/HandleCameraErrorRequest;
.super Lcom/sec/android/app/camera/engine/request/Request;
.source "HandleCameraErrorRequest.java"


# instance fields
.field private mErrorCode:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/Request;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iput p4, p0, Lcom/sec/android/app/camera/engine/request/HandleCameraErrorRequest;->mErrorCode:I

    return-void
.end method


# virtual methods
.method execute()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/HandleCameraErrorRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/HandleCameraErrorRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/HandleCameraErrorRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$HandleCameraErrorRequest$ll_W91xpXphXBIocBqVqByvrvZI;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/request/-$$Lambda$HandleCameraErrorRequest$ll_W91xpXphXBIocBqVqByvrvZI;-><init>(Lcom/sec/android/app/camera/engine/request/HandleCameraErrorRequest;)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method isSupportedCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method isSupportedState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$execute$0$HandleCameraErrorRequest()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/HandleCameraErrorRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    iget p0, p0, Lcom/sec/android/app/camera/engine/request/HandleCameraErrorRequest;->mErrorCode:I

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    return-void
.end method
