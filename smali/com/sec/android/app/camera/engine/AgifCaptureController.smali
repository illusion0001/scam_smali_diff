.class Lcom/sec/android/app/camera/engine/AgifCaptureController;
.super Ljava/lang/Object;
.source "AgifCaptureController.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/MakerInterface$AgifEventCallback;
.implements Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback;


# static fields
.field private static final MAX_AGIF_BURST_CAPTURE_COUNT:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "AgifCaptureController"


# instance fields
.field private final mAgifBurstCaptureEventListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private mImageHeight:I

.field private mImageWidth:I

.field private mIsCapturing:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mIsCapturing:Z

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method private cancelAgifBurstPicture()V
    .locals 2

    const-string v0, "AgifCaptureController"

    const-string v1, "cancelAgifBurstPicture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_AGIF_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$AgifCaptureController$KuP1ooTPNiskhZZe6JbSoNohL_Y;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$AgifCaptureController$KuP1ooTPNiskhZZe6JbSoNohL_Y;-><init>(Lcom/sec/android/app/camera/engine/AgifCaptureController;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method handleAgifBurstShutterPressed(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result p1

    const-string v0, "AgifCaptureController"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAgifBurstShutterPressed : Return, wrong state for take picture: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentState()Lcom/sec/android/app/camera/interfaces/Engine$State;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAgifBurstShutterPressed : Return, wrong capture state for take picture: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_AGIF_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "handleAgifBurstShutterPressed : Return, duplicated TAKE_AGIF_BURST_PICTURE request is skipped"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v0, 0x1964

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFSLock(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlash()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setAeModeByFlashSetting(I)V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->startAeAfTriggerForTakingPicture(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_AGIF_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getDynamicShotInfoForCapture()Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method handleAgifBurstShutterReleased()Z
    .locals 2

    const-string v0, "AgifCaptureController"

    const-string v1, "handleAgifBurstShutterReleased"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_AGIF_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$cancelAgifBurstPicture$3$AgifCaptureController()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;->onBurstCaptureCompleted()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public synthetic lambda$onAgifBurstPictureCompleted$0$AgifCaptureController()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;->onBurstCaptureCompleted()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public synthetic lambda$onAgifBurstPictureStarted$1$AgifCaptureController()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;->onBurstCaptureStarted()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public synthetic lambda$onProgress$2$AgifCaptureController(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;->onBurstCaptureProgress(I)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onAgifBurstPictureCompleted(I)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mIsCapturing:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAgifBurstPictureCompleted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AgifCaptureController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_AGIF_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    const-string p0, "onAgifBurstPictureCompleted : returned because camera is not running!"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$AgifCaptureController$eYBgpEBvP6tB7Y7eozYZSFYhWnc;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$AgifCaptureController$eYBgpEBvP6tB7Y7eozYZSFYhWnc;-><init>(Lcom/sec/android/app/camera/engine/AgifCaptureController;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_AGIF_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->resetAeAfTriggerForTakingPicture()V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->notifyCurrentLightCondition()V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlash()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlash()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setAeModeByFlashSetting(I)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->startMotionPhoto()V

    :cond_2
    return-void
.end method

.method public onAgifBurstPictureStarted(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAgifBurstPictureStarted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AgifCaptureController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "onAgifBurstPictureStarted : Returned because camera is not running."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mIsCapturing:Z

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;->ANIMATED_GIF_SHUTTER:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/SoundManager;->playSound(Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$AgifCaptureController$nSDrqM8PywqYveX0wEtgE3qs1tc;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$AgifCaptureController$nSDrqM8PywqYveX0wEtgE3qs1tc;-><init>(Lcom/sec/android/app/camera/engine/AgifCaptureController;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->stopMotionPhoto()V

    :cond_1
    return-void
.end method

.method public onCaptureResult(Ljava/io/File;Landroid/util/Size;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureResult - file path : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgifCaptureController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mImageWidth:I

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mImageHeight:I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->GIF:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->processPicture(Ljava/lang/String;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V

    return-void
.end method

.method public onDraftThumbnailTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback$DataInfo;)V
    .locals 0
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback$DataInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "AgifCaptureController"

    const-string p1, "onDraftThumbnailTaken"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(I)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AgifCaptureController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProgress(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgifCaptureController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_AGIF_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v2, Lcom/sec/android/app/camera/engine/-$$Lambda$AgifCaptureController$TLIUgs2nCdklQjAGg_hD2RNsbok;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/camera/engine/-$$Lambda$AgifCaptureController$TLIUgs2nCdklQjAGg_hD2RNsbok;-><init>(Lcom/sec/android/app/camera/engine/AgifCaptureController;I)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_1

    const-string p1, "onProgress : stop animated gif burst capture and returned because MAX_AGIF_BURST_CAPTURE_COUNT(30) is reached"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_AGIF_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :cond_1
    return-void
.end method

.method public onThumbnailTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback$DataInfo;)V
    .locals 2
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback$DataInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "AgifCaptureController"

    const-string v1, "onThumbnailTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getThumbnailProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback$DataInfo;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback$DataInfo;->getFormat()I

    move-result p2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationForCapture()I

    move-result p0

    invoke-virtual {v0, p1, v1, p2, p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->process(Ljava/nio/ByteBuffer;Landroid/util/Size;II)V

    return-void
.end method

.method prepareDBUpdate(Landroid/content/ContentValues;Ljava/io/File;)V
    .locals 2

    const-string v0, "AgifCaptureController"

    const-string v1, "onDBUpdatePrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mImageWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mImageHeight:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "height"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "orientation"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 p0, 0x960

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "sef_file_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    const-string v0, "Animated_Gif_Info"

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p2, v0, p1, p0}, Lcom/sec/android/app/camera/util/SemExtendedFormatUtils;->addData(Ljava/io/File;Ljava/lang/String;[BI)I

    return-void
.end method

.method registerAgifBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method stop()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_AGIF_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_AGIF_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->removeRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mIsCapturing:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mIsCapturing:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AgifCaptureController;->cancelAgifBurstPicture()V

    :cond_1
    return-void
.end method

.method unregisterAgifBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AgifCaptureController;->mAgifBurstCaptureEventListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
