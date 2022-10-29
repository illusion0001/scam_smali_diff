.class public Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;
.super Ljava/lang/Object;
.source "ShootingModeProviderImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;
.implements Lcom/sec/android/app/camera/interfaces/Engine$MakerEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl$Builder;
    }
.end annotation


# static fields
.field private static final STATE_ACTIVATED:I = 0x2

.field private static final STATE_ACTIVATING:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_INACTIVATING:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "ShootingModeProvider"


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

.field private mCurrentShootingModeId:I

.field private mCurrentShootingModeState:I

.field private final mShootingModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final mShootingModesList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/android/app/camera/interfaces/ShootingMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl$1;-><init>(Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mShootingModeMap:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mShootingModesList:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method private clearInactiveShootingMode()V
    .locals 6

    const-string v0, "ShootingModeProvider"

    const-string v1, "clearInactiveShootingMode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mShootingModesList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mShootingModesList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearing shooting mode class - id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mShootingModesList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private loadShootingMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mShootingModeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl$Builder;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl$Builder;->build(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)Lcom/sec/android/app/camera/interfaces/ShootingMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mShootingModesList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadShootingMode : Wrong shootingModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getCurrentShootingModeHelpString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f110406

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1102c7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f110117

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1102c9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1102c8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentShootingModeName()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingModeNameByModeId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentShootingModeTitle()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getCommandId(I)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/resourcedata/ResourceIdMap;->get(Lcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/resourcedata/ResourceIdMap$ResourceIdSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/resourcedata/ResourceIdMap$ResourceIdSet;->getTitleId()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isActivated()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCurrentShootingModeId(I)Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShootingAvailable()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->isShootingAvailable()Z

    move-result p0

    return p0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 4

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const-string v1, "ShootingModeProvider"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const-string p0, "ShootingMode can not activate because it was already activated."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivate - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getScreenIdByShootingModeId(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onCaptureCancelled()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;->CAPTURE_CANCELLED:Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onCaptureEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;)V

    return-void
.end method

.method public onCaptureCompleted()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;->CAPTURE_COMPLETED:Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onCaptureEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;)V

    return-void
.end method

.method public onCaptureEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;)V
    .locals 0

    return-void
.end method

.method public onCaptureInterrupted()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;->CAPTURE_INTERRUPTED:Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onCaptureEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;)V

    return-void
.end method

.method public onCaptureRequested()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;->CAPTURE_REQUESTED:Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onCaptureEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;)V

    return-void
.end method

.method public onCaptureStarted()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;->CAPTURE_STARTED:Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onCaptureEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;)V

    return-void
.end method

.method public onCaptureStopped()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;->CAPTURE_STOPPED:Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onCaptureEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;)V

    return-void
.end method

.method public onConnectMakerPrepared(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectMakerPrepared - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShootingModeProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onConnectMakerPrepared(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;)V

    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateView - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShootingModeProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V

    return-void
.end method

.method public onInactivate()V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const-string v1, "ShootingModeProvider"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const-string p0, "ShootingMode can not inactivate because it was not activated."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInactivate - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onInactivate()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "from-retail"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_BUTTON:Lcom/sec/android/app/camera/interfaces/CommandId;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return p2
.end method

.method public declared-synchronized onLowMemory(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->clearInactiveShootingMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onPictureSaved()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onPictureSaved()V

    return-void
.end method

.method public onRecordKeyCanceled()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onRecordKeyCanceled()Z

    move-result p0

    return p0
.end method

.method public onRecordKeyPressed()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onRecordKeyPressed()Z

    move-result p0

    return p0
.end method

.method public onRecordKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onRecordKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onShutter()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;->SHUTTER_RECEIVED:Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onCaptureEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;)V

    return-void
.end method

.method public onShutterKeyCanceled()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onShutterKeyCanceled()Z

    move-result p0

    return p0
.end method

.method public onShutterKeyLongPressed(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "ShootingModeProvider"

    const-string v1, "onShutterKeyLongPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onShutterKeyLongPressed(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onShutterKeyPressed()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onShutterKeyPressed()Z

    move-result p0

    return p0
.end method

.method public onShutterKeyPullDown(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "ShootingModeProvider"

    const-string v1, "onShutterKeyPullDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onShutterKeyPullDown(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterKeyReleased - input type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShootingModeProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onShutterTimerCanceled()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->CANCELED:Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onShutterTimerEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;)V

    return-void
.end method

.method public onShutterTimerEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;)V
    .locals 0

    return-void
.end method

.method public onShutterTimerFinished()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->FINISHED:Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onShutterTimerEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;)V

    return-void
.end method

.method public onShutterTimerStarted()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->STARTED:Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onShutterTimerEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;)V

    return-void
.end method

.method public onStartPreviewPrepared(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartPreviewPrepared - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShootingModeProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/interfaces/ShootingMode;->onStartPreviewPrepared(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->clearInactiveShootingMode()V

    return-void
.end method

.method public setShootingMode(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    if-eq v0, p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShootingMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShootingModeProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mShootingModesList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/ShootingMode;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->loadShootingMode(I)V

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingMode;

    :goto_0
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl;->mCurrentShootingModeId:I

    :cond_1
    return-void
.end method
