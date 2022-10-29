.class public Lcom/sec/android/app/camera/engine/request/MakerHolder;
.super Ljava/lang/Object;
.source "MakerHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/request/MakerHolder$MakerEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MakerHolder"


# instance fields
.field private mCallbackHandler:Landroid/os/Handler;

.field private mCallbackThread:Landroid/os/HandlerThread;

.field private mConnectionInfo:Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;

.field private mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

.field private final mMakerEventListener:Lcom/sec/android/app/camera/engine/request/MakerHolder$MakerEventListener;

.field private mMakerSettings:Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;

.field private final mMakerSettingsLock:Ljava/lang/Object;

.field private final mMakerStateCallback:Lcom/samsung/android/camera/core2/MakerInterface$StateCallback;

.field private mPreviousCameraId:I

.field private mShootingModeId:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/engine/request/MakerHolder$MakerEventListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMakerSettingsLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mShootingModeId:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    iput v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mPreviousCameraId:I

    new-instance v0, Lcom/sec/android/app/camera/engine/request/MakerHolder$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder$1;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMakerStateCallback:Lcom/samsung/android/camera/core2/MakerInterface$StateCallback;

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMakerEventListener:Lcom/sec/android/app/camera/engine/request/MakerHolder$MakerEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/engine/request/MakerHolder;)Lcom/sec/android/app/camera/engine/request/MakerHolder$MakerEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMakerEventListener:Lcom/sec/android/app/camera/engine/request/MakerHolder$MakerEventListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/engine/request/MakerHolder;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMakerSettingsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;)Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMakerSettings:Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;

    return-object p1
.end method

.method private startCallbackHandler()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MakerHolder"

    const-string v1, "startCallbackHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CamDeviceCallbackThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    return-void
.end method

.method private stopCallbackHandler()V
    .locals 2

    const-string v0, "MakerHolder"

    const-string/jumbo v1, "stopCallbackHandler E"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackThread:Landroid/os/HandlerThread;

    :cond_0
    const-string/jumbo p0, "stopCallbackHandler X"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dumpLastCaptureResult()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    invoke-interface {p0}, Lcom/samsung/android/camera/core2/MakerInterface;->dumpLatestRepeatingCaptureResult()V

    return-void
.end method

.method getCallbackHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method getConnectionInfo()Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mConnectionInfo:Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;

    return-object p0
.end method

.method getCurrentMaker()Lcom/samsung/android/camera/core2/MakerInterface;
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    return-object p0
.end method

.method public getLatestRepeatingCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    invoke-interface {p0}, Lcom/samsung/android/camera/core2/MakerInterface;->getLatestRepeatingCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    return-object p0
.end method

.method getMakerPublicSettings()Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMakerSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMakerSettings:Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;

    if-nez v1, :cond_0

    const-string v1, "MakerHolder"

    const-string v2, "getMakerPublicSettings : mMakerSettings is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMakerSettings:Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method getMakerStateCallback()Lcom/samsung/android/camera/core2/MakerInterface$StateCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMakerStateCallback:Lcom/samsung/android/camera/core2/MakerInterface$StateCallback;

    return-object p0
.end method

.method getPreviousCameraId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mPreviousCameraId:I

    return p0
.end method

.method initializeMaker(ILcom/sec/android/app/camera/interfaces/InternalEngine;Landroid/os/Handler;)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iput p1, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mShootingModeId:I

    iget p1, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mShootingModeId:I

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->build(ILcom/sec/android/app/camera/interfaces/InternalEngine;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/MakerInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    return-void
.end method

.method public setAeInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$AeInfoCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$AeInfoCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setAeInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$AeInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setAfInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setAfInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setAgifEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$AgifEventCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$AgifEventCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setAgifEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$AgifEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setBokehInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setBokehInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setBrightnessValueCallback(Lcom/samsung/android/camera/core2/MakerInterface$BrightnessValueCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$BrightnessValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setBrightnessValueCallback(Lcom/samsung/android/camera/core2/MakerInterface$BrightnessValueCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setBurstPictureCallback(Lcom/samsung/android/camera/core2/MakerInterface$BurstPictureCallback;)V
    .locals 2
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$BurstPictureCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    invoke-interface {v0}, Lcom/samsung/android/camera/core2/MakerInterface;->getMakerType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string p0, "MakerHolder"

    const-string p1, "setBurstPictureCallback : Not supported. return."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setBurstPictureCallback(Lcom/samsung/android/camera/core2/MakerInterface$BurstPictureCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setBurstShotFpsCallback(Lcom/samsung/android/camera/core2/MakerInterface$BurstShotFpsCallback;)V
    .locals 2
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$BurstShotFpsCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    invoke-interface {v0}, Lcom/samsung/android/camera/core2/MakerInterface;->getMakerType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string p0, "MakerHolder"

    const-string p1, "setBurstShotFpsCallback : Not supported. return."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setBurstShotFpsCallback(Lcom/samsung/android/camera/core2/MakerInterface$BurstShotFpsCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setColorTemperatureCallback(Lcom/samsung/android/camera/core2/MakerInterface$ColorTemperatureCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$ColorTemperatureCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setColorTemperatureCallback(Lcom/samsung/android/camera/core2/MakerInterface$ColorTemperatureCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setCompositionGuideEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$CompositionGuideEventCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$CompositionGuideEventCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setCompositionGuideEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$CompositionGuideEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method setConnectionInfo(Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mConnectionInfo:Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;

    return-void
.end method

.method public setDistanceMeasureCallback(Lcom/samsung/android/camera/core2/MakerInterface$DistanceMeasureCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$DistanceMeasureCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setDistanceMeasureEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$DistanceMeasureCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setDofMultiInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$DofMultiInfoCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$DofMultiInfoCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setDofMultiInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$DofMultiInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setDofSingleInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$DofSingleInfoCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$DofSingleInfoCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setDofSingleInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$DofSingleInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setDynamicShotCaptureDurationCallback(Lcom/samsung/android/camera/core2/MakerInterface$DynamicShotCaptureDurationCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$DynamicShotCaptureDurationCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setDynamicShotCaptureDurationCallback(Lcom/samsung/android/camera/core2/MakerInterface$DynamicShotCaptureDurationCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setDynamicShotInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$DynamicShotInfoCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$DynamicShotInfoCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setDynamicShotInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$DynamicShotInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setEvCompensationValueCallback(Lcom/samsung/android/camera/core2/MakerInterface$EvCompensationValueCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$EvCompensationValueCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setEvCompensationValueCallback(Lcom/samsung/android/camera/core2/MakerInterface$EvCompensationValueCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setExposureTimeCallback(Lcom/samsung/android/camera/core2/MakerInterface$ExposureTimeCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$ExposureTimeCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setExposureTimeCallback(Lcom/samsung/android/camera/core2/MakerInterface$ExposureTimeCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setFaceAlignmentEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$FaceAlignmentEventCallback;)V
    .locals 2
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$FaceAlignmentEventCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "MakerHolder"

    const-string v1, "setFaceAlignmentEventCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setFaceAlignmentEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$FaceAlignmentEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setFaceDetectionCallback(Lcom/samsung/android/camera/core2/MakerInterface$FaceDetectionInfoCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$FaceDetectionInfoCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setFaceDetectionInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$FaceDetectionInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setFaceLandmarkEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$FaceLandmarkEventCallback;)V
    .locals 2
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$FaceLandmarkEventCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "MakerHolder"

    const-string v1, "setFaceLandmarkEventCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setFaceLandmarkEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$FaceLandmarkEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setFacialAttributeEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$FacialAttributeEventCallback;)V
    .locals 2
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$FacialAttributeEventCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "MakerHolder"

    const-string v1, "setFacialAttributeEventCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setFacialAttributeEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$FacialAttributeEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setFoodEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$FoodEventCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$FoodEventCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setFoodEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$FoodEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setGestureAttributeEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$GestureAttributeEventCallback;)V
    .locals 2
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$GestureAttributeEventCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "MakerHolder"

    const-string v1, "setGestureAttributeEventCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setGestureAttributeEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$GestureAttributeEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setIntelligentGuideEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$IntelligentGuideEventCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$IntelligentGuideEventCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setIntelligentGuideEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$IntelligentGuideEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setLensDirtyDetectCallback(Lcom/samsung/android/camera/core2/MakerInterface$LensDirtyDetectCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$LensDirtyDetectCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setLensDirtyDetectCallback(Lcom/samsung/android/camera/core2/MakerInterface$LensDirtyDetectCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setLensInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$LensInfoCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$LensInfoCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setLensInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$LensInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setLightConditionCallback(Lcom/samsung/android/camera/core2/MakerInterface$LightConditionCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$LightConditionCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setLightConditionCallback(Lcom/samsung/android/camera/core2/MakerInterface$LightConditionCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setLiveHdrStateCallback(Lcom/samsung/android/camera/core2/MakerInterface$LiveHdrStateCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$LiveHdrStateCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setLiveHdrStateCallback(Lcom/samsung/android/camera/core2/MakerInterface$LiveHdrStateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setMasterPreviewCallback(Lcom/samsung/android/camera/core2/MakerInterface$PreviewCallback;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setMasterPreviewCallback(Lcom/samsung/android/camera/core2/MakerInterface$PreviewCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Lcom/samsung/android/camera/core2/exception/CamAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/camera/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "MakerHolder"

    const-string p1, "Failed to set preview callback"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setMultiViewCropRoiInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$MultiViewInfoCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$MultiViewInfoCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setMultiViewInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$MultiViewInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setObjectTrackingInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$ObjectTrackingInfoCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$ObjectTrackingInfoCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setObjectTrackingInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$ObjectTrackingInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setOutFocusEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$OutFocusEventCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$OutFocusEventCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setOutFocusEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$OutFocusEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setPalmDetectionCallback(Lcom/samsung/android/camera/core2/MakerInterface$PalmDetectionEventCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$PalmDetectionEventCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setPalmDetectionEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$PalmDetectionEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setPanoramaEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$PanoramaEventCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$PanoramaEventCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setPanoramaEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$PanoramaEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setPictureCallback(Lcom/samsung/android/camera/core2/MakerInterface$PictureCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$PictureCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setPictureCallback(Lcom/samsung/android/camera/core2/MakerInterface$PictureCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setPreviewSnapShotCallback(Lcom/samsung/android/camera/core2/MakerInterface$PreviewSnapShotCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$PreviewSnapShotCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setPreviewSnapShotCallback(Lcom/samsung/android/camera/core2/MakerInterface$PreviewSnapShotCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setPreviewStateCallback(Lcom/samsung/android/camera/core2/MakerInterface$PreviewStateCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$PreviewStateCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setPreviewStateCallback(Lcom/samsung/android/camera/core2/MakerInterface$PreviewStateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method setPreviousCameraId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mPreviousCameraId:I

    return-void
.end method

.method public setQrCodeDetectionEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$QRCodeDetectionEventCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$QRCodeDetectionEventCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setQRCodeDetectionEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$QRCodeDetectionEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setRawPictureCallback(Lcom/samsung/android/camera/core2/MakerInterface$RawPictureCallback;)V
    .locals 2
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$RawPictureCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    invoke-interface {v0}, Lcom/samsung/android/camera/core2/MakerInterface;->getMakerType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string p0, "MakerHolder"

    const-string p1, "setRawPictureCallback : Not supported. return."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setRawPictureCallback(Lcom/samsung/android/camera/core2/MakerInterface$RawPictureCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setRecordStateCallback(Lcom/samsung/android/camera/core2/MakerInterface$RecordStateCallback;)V
    .locals 2
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$RecordStateCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    invoke-interface {v0}, Lcom/samsung/android/camera/core2/MakerInterface;->getMakerType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string p0, "MakerHolder"

    const-string p1, "setRecordStateCallback : Not supported. return."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setRecordStateCallback(Lcom/samsung/android/camera/core2/MakerInterface$RecordStateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setSceneDetectionCallback(Lcom/samsung/android/camera/core2/MakerInterface$SceneDetectionEventCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$SceneDetectionEventCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setSceneDetectionEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$SceneDetectionEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setSceneDetectionInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$SceneDetectionInfoCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$SceneDetectionInfoCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setSceneDetectionInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$SceneDetectionInfoCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setSensorSensitivityCallback(Lcom/samsung/android/camera/core2/MakerInterface$SensorSensitivityCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$SensorSensitivityCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setSensorSensitivityCallback(Lcom/samsung/android/camera/core2/MakerInterface$SensorSensitivityCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setSingleBokehEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$SingleBokehEventCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$SingleBokehEventCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setSingleBokehEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$SingleBokehEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setSingleTakePictureCallback(Lcom/samsung/android/camera/core2/MakerInterface$SingleTakePictureCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$SingleTakePictureCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setSingleTakePictureCallback(Lcom/samsung/android/camera/core2/MakerInterface$SingleTakePictureCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setSlavePreviewCallback(Lcom/samsung/android/camera/core2/MakerInterface$PreviewCallback;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setSlavePreviewCallback(Lcom/samsung/android/camera/core2/MakerInterface$PreviewCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Lcom/samsung/android/camera/core2/exception/CamAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/camera/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "MakerHolder"

    const-string p1, "Failed to set zoom map view callback"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setSlowMotionEventDetectionEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$SlowMotionEventDetectionEventCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$SlowMotionEventDetectionEventCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setSlowMotionEventDetectionEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$SlowMotionEventDetectionEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setSmartScanEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$SmartScanEventCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$SmartScanEventCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setSmartScanEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$SmartScanEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setStarEffectEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$StarEffectEventCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$StarEffectEventCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setStarEffectEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$StarEffectEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setStillCaptureProgressCallback(Lcom/samsung/android/camera/core2/MakerInterface$StillCaptureProgressCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$StillCaptureProgressCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setStillCaptureProgressCallback(Lcom/samsung/android/camera/core2/MakerInterface$StillCaptureProgressCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setSuperSlowMotionStateCallback(Lcom/samsung/android/camera/core2/MakerInterface$SuperSlowMotionStateCallback;)V
    .locals 2
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$SuperSlowMotionStateCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "MakerHolder"

    const-string v1, "setSuperSlowMotionStateCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setSuperSlowMotionStateCallback(Lcom/samsung/android/camera/core2/MakerInterface$SuperSlowMotionStateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setSwFaceDetectionEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$SwFaceDetectionEventCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$SwFaceDetectionEventCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setSwFaceDetectionEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$SwFaceDetectionEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setThumbnailCallback(Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setThumbnailCallback(Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setTouchAeStateCallback(Lcom/samsung/android/camera/core2/MakerInterface$TouchAeStateCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$TouchAeStateCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setTouchAeStateCallback(Lcom/samsung/android/camera/core2/MakerInterface$TouchAeStateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setVideoSnapshotCallback(Lcom/samsung/android/camera/core2/MakerInterface$PictureCallback;)V
    .locals 2
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$PictureCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    invoke-interface {v0}, Lcom/samsung/android/camera/core2/MakerInterface;->getMakerType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string p0, "MakerHolder"

    const-string p1, "setVideoSnapshotCallback : Not supported. return."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setPictureCallback(Lcom/samsung/android/camera/core2/MakerInterface$PictureCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public setWideSelfieEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$WideSelfieEventCallback;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$WideSelfieEventCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mCallbackHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/camera/core2/MakerInterface;->setWideSelfieEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$WideSelfieEventCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public start()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->startCallbackHandler()V

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->stopCallbackHandler()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mPreviousCameraId:I

    return-void
.end method

.method updateCurrentMaker(Lcom/sec/android/app/camera/interfaces/InternalEngine;Landroid/os/Handler;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mShootingModeId:I

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->getMakerClass(ILcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->build(Ljava/lang/Class;Lcom/sec/android/app/camera/interfaces/InternalEngine;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/MakerInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder;->mMaker:Lcom/samsung/android/camera/core2/MakerInterface;

    :cond_0
    return-void
.end method
