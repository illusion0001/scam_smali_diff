.class Lcom/sec/android/app/camera/engine/request/NotifyStartVideoRecordingPreparedRequest;
.super Lcom/sec/android/app/camera/engine/request/Request;
.source "NotifyStartVideoRecordingPreparedRequest.java"


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/Request;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method


# virtual methods
.method execute()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/NotifyStartVideoRecordingPreparedRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$NotifyStartVideoRecordingPreparedRequest$OzAK5BUzNJuqsN9aN2GhqaFvJxU;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/request/-$$Lambda$NotifyStartVideoRecordingPreparedRequest$OzAK5BUzNJuqsN9aN2GhqaFvJxU;-><init>(Lcom/sec/android/app/camera/engine/request/NotifyStartVideoRecordingPreparedRequest;)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method isBlockingRequest()Z
    .locals 0

    const/4 p0, 0x1

    return p0
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

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$execute$0$NotifyStartVideoRecordingPreparedRequest()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/NotifyStartVideoRecordingPreparedRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onVideoRecordingPrepared()V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/NotifyStartVideoRecordingPreparedRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->notifyStartVideoRecordingPrepared()V

    return-void
.end method

.method onInterrupt()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/NotifyStartVideoRecordingPreparedRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    return-void
.end method
