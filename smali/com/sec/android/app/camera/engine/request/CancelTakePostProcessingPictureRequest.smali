.class Lcom/sec/android/app/camera/engine/request/CancelTakePostProcessingPictureRequest;
.super Lcom/sec/android/app/camera/engine/request/Request;
.source "CancelTakePostProcessingPictureRequest.java"


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/Request;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method


# virtual methods
.method execute()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/CancelTakePostProcessingPictureRequest;->setNextCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)V

    return-void
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
