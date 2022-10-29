.class Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/CamDevice$StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraDeviceStateCallbackManager"
.end annotation


# instance fields
.field private mIsCameraDeviceOpened:Z

.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CommonEngine;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/CommonEngine$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;->isCameraDeviceOpened()Z

    move-result p0

    return p0
.end method

.method private isCameraDeviceOpened()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;->mIsCameraDeviceOpened:Z

    return p0
.end method


# virtual methods
.method public onCameraDeviceClosed(Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 2
    .param p1    # Lcom/samsung/android/camera/core2/CamDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraDeviceClosed : id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;->mIsCameraDeviceOpened:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1000(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/engine/request/CameraHolder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/engine/request/CameraHolder;->setCameraDevice(ILcom/samsung/android/camera/core2/CamDevice;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$100(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->CLOSE_CAMERA:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public onCameraDeviceDisconnected(Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 2
    .param p1    # Lcom/samsung/android/camera/core2/CamDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraDeviceDisconnected : id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommonEngine"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;->mIsCameraDeviceOpened:Z

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->interruptCaptureRequest()V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 p1, -0x7

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->handleCameraError(I)V

    return-void
.end method

.method public onCameraDeviceError(Lcom/samsung/android/camera/core2/CamDevice;I)V
    .locals 2
    .param p1    # Lcom/samsung/android/camera/core2/CamDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraDeviceError : id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", errorCode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommonEngine"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->interruptCaptureRequest()V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_4

    const/4 p1, 0x2

    if-eq p2, p1, :cond_4

    const/4 p1, 0x3

    if-eq p2, p1, :cond_3

    const/4 p1, 0x4

    if-eq p2, p1, :cond_2

    const/4 p1, 0x5

    if-eq p2, p1, :cond_1

    const/16 p1, 0x7d0

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1100(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 p1, -0x6

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->handleCameraError(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 p1, -0x5

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->handleCameraError(I)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 p1, -0x4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->handleCameraError(I)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 p1, -0x3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->handleCameraError(I)V

    :goto_0
    return-void
.end method

.method public onCameraDeviceOpened(Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 3
    .param p1    # Lcom/samsung/android/camera/core2/CamDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "OpenCameraRequest"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device - OpenCameraRequest(ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") : End["

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraDeviceOpened : id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;->mIsCameraDeviceOpened:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$1000(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/engine/request/CameraHolder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/engine/request/CameraHolder;->setCameraDevice(ILcom/samsung/android/camera/core2/CamDevice;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$100(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->OPEN_CAMERA:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method
