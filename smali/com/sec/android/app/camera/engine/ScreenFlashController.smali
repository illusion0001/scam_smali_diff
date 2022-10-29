.class Lcom/sec/android/app/camera/engine/ScreenFlashController;
.super Ljava/lang/Object;
.source "ScreenFlashController.java"


# instance fields
.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private mIsScreenFlashStarted:Z

.field private mScreenFlashEventListener:Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/ScreenFlashController;->mScreenFlashEventListener:Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/ScreenFlashController;->mIsScreenFlashStarted:Z

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/ScreenFlashController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/ScreenFlashController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method


# virtual methods
.method addScreenFlashRequest()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ScreenFlashController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SCREEN_FLASH:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method isScreenFlashAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ScreenFlashController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ScreenFlashController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ScreenFlashController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlash()I

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method isScreenFlashRequired()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ScreenFlashController;->isScreenFlashAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ScreenFlashController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlash()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ScreenFlashController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlash()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ScreenFlashController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFlashRequired()Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method isScreenFlashStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/ScreenFlashController;->mIsScreenFlashStarted:Z

    return p0
.end method

.method setScreenFlashEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/ScreenFlashController;->mScreenFlashEventListener:Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;

    return-void
.end method

.method startScreenFlash()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/ScreenFlashController;->mIsScreenFlashStarted:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/ScreenFlashController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/Util;->setLcdFlashMode(Landroid/content/Context;Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ScreenFlashController;->mScreenFlashEventListener:Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;->onScreenFlashStarted()V

    :cond_0
    return-void
.end method

.method stop()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/ScreenFlashController;->mIsScreenFlashStarted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ScreenFlashController;->stopScreenFlash()V

    :cond_0
    return-void
.end method

.method stopScreenFlash()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/ScreenFlashController;->mIsScreenFlashStarted:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/ScreenFlashController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/Util;->setLcdFlashMode(Landroid/content/Context;Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ScreenFlashController;->mScreenFlashEventListener:Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;->onScreenFlashStopped()V

    :cond_0
    return-void
.end method
