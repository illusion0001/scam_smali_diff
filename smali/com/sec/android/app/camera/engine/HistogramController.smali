.class public Lcom/sec/android/app/camera/engine/HistogramController;
.super Ljava/lang/Object;
.source "HistogramController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/HistogramController$HistogramHandler;
    }
.end annotation


# static fields
.field private static final HANDLE_PREVIEW_FRAME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HistogramController"


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private mHandler:Lcom/sec/android/app/camera/engine/HistogramController$HistogramHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHistogramUpdateListener:Lcom/sec/android/app/camera/interfaces/Engine$HistogramUpdateListener;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/HistogramController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/HistogramController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/HistogramController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/HistogramController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/engine/HistogramController;Ljava/nio/ByteBuffer;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/HistogramController;->updateHistogram(Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method private updateHistogram(Ljava/nio/ByteBuffer;II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/HistogramController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-static {v0, p1, p2, p3}, Lcom/sec/android/app/camera/util/ImageUtils;->convertYuvToRGB(Landroid/content/Context;[BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/HistogramController;->mHistogramUpdateListener:Lcom/sec/android/app/camera/interfaces/Engine$HistogramUpdateListener;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/HistogramController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/ImageUtils;->getHistogram(Landroid/content/Context;Landroid/graphics/Bitmap;)[I

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/Engine$HistogramUpdateListener;->onHistogramUpdated([I)V

    :cond_0
    return-void
.end method


# virtual methods
.method onPreviewFrame(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/MakerInterface$PreviewCallback$DataInfo;)V
    .locals 3
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/camera/core2/MakerInterface$PreviewCallback$DataInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/HistogramController;->mHandler:Lcom/sec/android/app/camera/engine/HistogramController$HistogramHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/HistogramController$HistogramHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HistogramController"

    const-string v2, "onPreviewFrame -- removeMessage"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/HistogramController;->mHandler:Lcom/sec/android/app/camera/engine/HistogramController$HistogramHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/HistogramController$HistogramHandler;->removeMessages(I)V

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$PreviewCallback$DataInfo;->getSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$PreviewCallback$DataInfo;->getSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/HistogramController;->mHandler:Lcom/sec/android/app/camera/engine/HistogramController$HistogramHandler;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/HistogramController$HistogramHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method setHistogramUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$HistogramUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/HistogramController;->mHistogramUpdateListener:Lcom/sec/android/app/camera/interfaces/Engine$HistogramUpdateListener;

    return-void
.end method

.method start()V
    .locals 3

    const-string v0, "HistogramController"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HistogramHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/HistogramController;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/HistogramController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/sec/android/app/camera/engine/HistogramController$HistogramHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/HistogramController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/camera/engine/HistogramController$HistogramHandler;-><init>(Lcom/sec/android/app/camera/engine/HistogramController;Landroid/os/Looper;Lcom/sec/android/app/camera/engine/HistogramController$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/HistogramController;->mHandler:Lcom/sec/android/app/camera/engine/HistogramController$HistogramHandler;

    return-void
.end method

.method stop()V
    .locals 2

    const-string v0, "HistogramController"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/HistogramController;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/HistogramController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/HistogramController;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/HistogramController;->mHandler:Lcom/sec/android/app/camera/engine/HistogramController$HistogramHandler;

    :cond_0
    return-void
.end method
