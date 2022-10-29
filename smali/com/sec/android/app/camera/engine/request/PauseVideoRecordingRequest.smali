.class Lcom/sec/android/app/camera/engine/request/PauseVideoRecordingRequest;
.super Lcom/sec/android/app/camera/engine/request/Request;
.source "PauseVideoRecordingRequest.java"


# instance fields
.field private mIsFacingSwitch:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/Request;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/request/PauseVideoRecordingRequest;->mIsFacingSwitch:Z

    return-void
.end method


# virtual methods
.method execute()V
    .locals 6

    const-string v0, "Request"

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/PauseVideoRecordingRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/PauseVideoRecordingRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2}, Landroid/media/MediaRecorder;->pause()V
    :try_end_0
    .catch Lcom/samsung/android/camera/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/util/Util;->disableAlertSound(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PauseVideoRecordingRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$PauseVideoRecordingRequest$t55vQR_DyhcsIWARTG0O0Gaaa-w;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/request/-$$Lambda$PauseVideoRecordingRequest$t55vQR_DyhcsIWARTG0O0Gaaa-w;-><init>(Lcom/sec/android/app/camera/engine/request/PauseVideoRecordingRequest;)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->postToUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PauseVideoRecordingRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getRecordingEventListener()Lcom/sec/android/app/camera/interfaces/InternalEngine$RecordingEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine$RecordingEventListener;->onRecordingPaused()V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/request/PauseVideoRecordingRequest;->mIsFacingSwitch:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->SWITCHING_RECORD_FACING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/PauseVideoRecordingRequest;->setNextCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not pause media recorder. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/PauseVideoRecordingRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getRecordingEventListener()Lcom/sec/android/app/camera/interfaces/InternalEngine$RecordingEventListener;

    move-result-object v0

    const/16 v2, -0xb

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/InternalEngine$RecordingEventListener;->onRecordingFailed(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/PauseVideoRecordingRequest;->discard()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/sec/android/app/camera/util/Util;->disableAlertSound(Landroid/content/Context;Z)V

    return-void

    :catch_1
    move-exception v2

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvalidOperationException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/PauseVideoRecordingRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/PauseVideoRecordingRequest;->discard()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/util/Util;->disableAlertSound(Landroid/content/Context;Z)V

    throw p0
.end method

.method isSupportedCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->BACKGROUND_RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

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

.method public synthetic lambda$execute$0$PauseVideoRecordingRequest()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/PauseVideoRecordingRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onVideoRecordingPaused()V

    return-void
.end method
