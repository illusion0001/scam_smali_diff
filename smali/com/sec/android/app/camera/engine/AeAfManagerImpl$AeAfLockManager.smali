.class Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;
.super Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfComponent;
.source "AeAfManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/AeAfManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AeAfLockManager"
.end annotation


# instance fields
.field private final mFocusGroupSize:Landroid/util/Size;

.field private final mFocusSize:Landroid/util/Size;

.field final synthetic this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfComponent;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    const v0, 0x7f07001c

    invoke-static {p1, v0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2200(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;II)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->mFocusSize:Landroid/util/Size;

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    const v0, 0x7f07001d

    invoke-static {p1, v0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2200(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;II)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->mFocusGroupSize:Landroid/util/Size;

    return-void
.end method

.method private startAeAfLock(Landroid/graphics/Point;)V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string v1, "AeAfLockManager.startAeAfLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->mFocusGroupSize:Landroid/util/Size;

    invoke-static {v0, p1, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->updateAeAfLockPosition(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1700(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/engine/AeAfController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/engine/AeAfController;->startTouchAfWithAe(Landroid/graphics/Point;Landroid/util/Size;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCK_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1000(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V

    :cond_0
    return-void
.end method

.method private updateAeAfLockPosition(Landroid/graphics/Point;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$AeAfLockManager$rVM_hWuP0Xohf3ZDw5tHkZP42Gw;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$AeAfLockManager$rVM_hWuP0Xohf3ZDw5tHkZP42Gw;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;Landroid/graphics/Point;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method isAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1800(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSimpleMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1800(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isAeAfLockSupported()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2400(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1800(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAeAfLockSupported(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->AE_LOCKED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCKED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCK_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v2, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2500(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public synthetic lambda$updateAeAfLockPosition$0$AeAfManagerImpl$AeAfLockManager(Landroid/graphics/Point;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfEventListener;

    move-result-object p0

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfEventListener;->onAeAfLockPosChanged(II)V

    :cond_0
    return-void
.end method

.method onLongPressed(Landroid/graphics/Point;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_FOCUSED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2600(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchEv()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTrackingAfStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2000(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2702(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Z)Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->startAeAfLock(Landroid/graphics/Point;)V

    return v1
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2500(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchPreviewArea(II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->KEEP_CHANGED_EV_AFTER_ZOOM:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2700(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->AE_LOCKED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCKED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCK_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-ne p1, v0, :cond_7

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2800(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2702(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Z)Z

    goto :goto_0

    :cond_5
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->KEEP_CHANGED_EV_AFTER_ZOOM:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCKED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq p1, v0, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCK_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-ne p1, v0, :cond_7

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2800(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    :cond_7
    :goto_0
    return v1
.end method
