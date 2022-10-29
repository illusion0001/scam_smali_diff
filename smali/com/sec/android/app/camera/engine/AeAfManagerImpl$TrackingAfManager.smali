.class Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TrackingAfManager;
.super Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfComponent;
.source "AeAfManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/AeAfManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackingAfManager"
.end annotation


# static fields
.field private static final OBJECT_TRACKING_AREA_OFFSET:I = 0x2


# instance fields
.field private final mFocusSize:Landroid/util/Size;

.field final synthetic this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TrackingAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfComponent;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;)V

    new-instance p1, Landroid/util/Size;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v0}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TrackingAfManager;->mFocusSize:Landroid/util/Size;

    return-void
.end method

.method private startTrackingAf(Landroid/graphics/Point;)V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string v1, "TrackingAfManager.startTrackingAf"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TrackingAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TrackingAfManager;->mFocusSize:Landroid/util/Size;

    invoke-static {v0, p1, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TrackingAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1700(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/engine/AeAfController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TrackingAfManager;->mFocusSize:Landroid/util/Size;

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/engine/AeAfController;->startTrackingAf(Landroid/graphics/Point;Landroid/util/Size;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TrackingAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TRACKING_AF_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1000(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TrackingAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$TrackingAfManager$TX9J-8ObYXvHHF9Cr5lu6zREOVw;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$TrackingAfManager$TX9J-8ObYXvHHF9Cr5lu6zREOVw;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TrackingAfManager;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method isAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TrackingAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2500(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTrackingAfAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TrackingAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCK_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TrackingAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCKED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TrackingAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->DIVIDE_AE_AF_LOCK_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TrackingAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->DIVIDE_AE_AF_LOCKED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v2, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TrackingAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->DIVIDE_AE_AF_MOVING:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public synthetic lambda$startTrackingAf$0$AeAfManagerImpl$TrackingAfManager()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TrackingAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1200(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TrackingAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1200(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;->onTrackingAfRequested()V

    :cond_0
    return-void
.end method

.method onLongPressed(Landroid/graphics/Point;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TrackingAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

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
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TrackingAfManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TrackingAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTrackingAfStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TrackingAfManager;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2000(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v0, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TrackingAfManager;->startTrackingAf(Landroid/graphics/Point;)V

    :goto_0
    return v1
.end method
