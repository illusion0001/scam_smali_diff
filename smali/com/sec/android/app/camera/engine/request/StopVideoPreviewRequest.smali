.class Lcom/sec/android/app/camera/engine/request/StopVideoPreviewRequest;
.super Lcom/sec/android/app/camera/engine/request/Request;
.source "StopVideoPreviewRequest.java"


# instance fields
.field private mIsBlockingRequest:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/Request;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iput-boolean p4, p0, Lcom/sec/android/app/camera/engine/request/StopVideoPreviewRequest;->mIsBlockingRequest:Z

    return-void
.end method


# virtual methods
.method execute()V
    .locals 4

    const-string v0, "Request"

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/StopVideoPreviewRequest;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->getCurrentMaker()Lcom/samsung/android/camera/core2/MakerInterface;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/camera/core2/MakerInterface;->stopRepeating()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/camera/core2/exception/CamAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/camera/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->CONNECTED:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/StopVideoPreviewRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    return-void

    :catch_0
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

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/StopVideoPreviewRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/StopVideoPreviewRequest;->discard()V

    return-void

    :catch_1
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

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/StopVideoPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getRecordingEventListener()Lcom/sec/android/app/camera/interfaces/InternalEngine$RecordingEventListener;

    move-result-object v0

    const/16 v2, -0xd

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/InternalEngine$RecordingEventListener;->onRecordingFailed(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/StopVideoPreviewRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/exception/CamAccessException;->getReason()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->handleCamAccessException(I)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/StopVideoPreviewRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/StopVideoPreviewRequest;->discard()V

    return-void

    :catch_2
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalStateException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/StopVideoPreviewRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/StopVideoPreviewRequest;->discard()V

    return-void
.end method

.method getInitialState()Lcom/sec/android/app/camera/interfaces/Engine$State;
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEW_STOPPING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    return-object p0
.end method

.method isBlockingRequest()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/request/StopVideoPreviewRequest;->mIsBlockingRequest:Z

    return p0
.end method

.method isSupportedCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->STARTING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

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
