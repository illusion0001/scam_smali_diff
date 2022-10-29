.class Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/MakerInterface$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlavePreviewCallbackManager"
.end annotation


# instance fields
.field private mCallbackHandler:Landroid/os/Handler;

.field private mCallbackThread:Landroid/os/HandlerThread;

.field private final mHandlerLock:Ljava/lang/Object;

.field private mIsFrameHandling:Z

.field private mListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$ZoomMapViewListener;

.field private final mListenerLock:Ljava/lang/Object;

.field private mTargetHeight:I

.field private mTargetWidth:I

.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mHandlerLock:Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mListenerLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;Lcom/sec/android/app/camera/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->initialize(Landroid/util/Size;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->deinitialize()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;Lcom/sec/android/app/camera/interfaces/CallbackManager$ZoomMapViewListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->setZoomMapviewListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$ZoomMapViewListener;)V

    return-void
.end method

.method private deinitialize()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->stopCallbackHandler()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mIsFrameHandling:Z

    return-void
.end method

.method private initialize(Landroid/util/Size;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mIsFrameHandling:Z

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mTargetWidth:I

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mTargetHeight:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->startCallbackHandler()V

    return-void
.end method

.method private setZoomMapviewListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$ZoomMapViewListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$ZoomMapViewListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private startCallbackHandler()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mCallbackThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "CallbackManager"

    const-string v2, "startCallbackHandler"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SlavepreviewCallbackThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mCallbackThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mCallbackHandler:Landroid/os/Handler;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private stopCallbackHandler()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mCallbackThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    const-string v1, "CallbackManager"

    const-string/jumbo v2, "stopCallbackHandler - start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mCallbackThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mCallbackHandler:Landroid/os/Handler;

    const-string p0, "CallbackManager"

    const-string/jumbo v1, "stopCallbackHandler - end"

    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public synthetic lambda$onPreviewFrame$0$CallbackManagerImpl$SlavePreviewCallbackManager(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/MakerInterface$PreviewCallback$DataInfo;)V
    .locals 8
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/camera/core2/MakerInterface$PreviewCallback$DataInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v2, v0, [B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2100(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$PreviewCallback$DataInfo;->getSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$PreviewCallback$DataInfo;->getSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mTargetHeight:I

    iget v6, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mTargetWidth:I

    const/16 v7, 0x5a

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/camera/util/ImageUtils;->convertYuvToRGB(Landroid/content/Context;[BIIIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$ZoomMapViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$ZoomMapViewListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager$ZoomMapViewListener;->onPreviewFrame(Landroid/graphics/Bitmap;)V

    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mIsFrameHandling:Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onPreviewFrame(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/MakerInterface$PreviewCallback$DataInfo;)V
    .locals 3
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/camera/core2/MakerInterface$PreviewCallback$DataInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mIsFrameHandling:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mIsFrameHandling:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mCallbackHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->mCallbackHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$SlavePreviewCallbackManager$solzp3UXiMqjXt4knXpSNuHrgKA;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$SlavePreviewCallbackManager$solzp3UXiMqjXt4knXpSNuHrgKA;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/MakerInterface$PreviewCallback$DataInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
