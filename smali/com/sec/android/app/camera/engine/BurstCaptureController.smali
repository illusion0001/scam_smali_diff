.class Lcom/sec/android/app/camera/engine/BurstCaptureController;
.super Ljava/lang/Object;
.source "BurstCaptureController.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/MakerInterface$BurstPictureCallback;
.implements Lcom/samsung/android/camera/core2/MakerInterface$BurstShotFpsCallback;
.implements Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback;


# static fields
.field private static final BURST_CAPTURE_SOUND_ARRAY:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BurstCaptureController"


# instance fields
.field private mBurstCaptureCount:I

.field private mBurstCaptureDateTaken:J

.field private final mBurstCaptureEventListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBurstCaptureFps:I

.field private mBurstCaptureGroupId:I

.field private mBurstCaptureSoundId:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private mInputType:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

.field private mIsCapturing:Z

.field private mMaxBurstCaptureCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/engine/BurstCaptureController$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/engine/BurstCaptureController$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->BURST_CAPTURE_SOUND_ARRAY:Landroid/util/SparseArray;

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mIsCapturing:Z

    iput v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureCount:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mMaxBurstCaptureCount:I

    iput v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureFps:I

    iput v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureGroupId:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureDateTaken:J

    sget-object v0, Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;->BURST_SHUTTER_20FPS:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureSoundId:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureEventListener:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method private cancelBurstPicture()V
    .locals 5

    const-string v0, "BurstCaptureController"

    const-string v1, "cancelBurstCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "StopBurstPictureRequest"

    invoke-static {v1, v0}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture - StopBurstPictureRequest : End["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CameraPerformance"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v4, Lcom/sec/android/app/camera/engine/-$$Lambda$BurstCaptureController$QiSGHlgAd_Mvxpr31A8vHYQy2L8;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$BurstCaptureController$QiSGHlgAd_Mvxpr31A8vHYQy2L8;-><init>(Lcom/sec/android/app/camera/engine/BurstCaptureController;)V

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    iget v1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureCount:I

    const/4 v4, 0x1

    if-lt v1, v4, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getPictureProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor;

    move-result-object v1

    iget p0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureGroupId:I

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->updateBurstPictureDB(I)V

    :cond_0
    const-string p0, "TakeBurstPictureSequence"

    invoke-static {p0, v0}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Capture - TakeBurstPictureSequence : End["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private setBurstCaptureSoundId(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "BurstCaptureController"

    const-string p1, "setBurstCaptureSoundId : returned because capturing is in progress"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->BURST_CAPTURE_SOUND_ARRAY:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureSoundId:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    :cond_1
    return-void
.end method


# virtual methods
.method getBurstCaptureFps()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureFps:I

    return p0
.end method

.method getBurstCaptureSoundId()Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureSoundId:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    return-object p0
.end method

.method handleBurstShutterPressed(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v0

    const-string v1, "BurstCaptureController"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleBurstShutterPressed : Return, wrong state for take picture: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentState()Lcom/sec/android/app/camera/interfaces/Engine$State;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleBurstShutterPressed : Return, wrong capture state for take picture: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "handleBurstShutterPressed : Return, duplicated TAKE_BURST_PICTURE request is skipped"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/util/StorageUtils;->getRemainCount(ILcom/sec/android/app/camera/interfaces/Resolution;)I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_5

    iget v4, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mMaxBurstCaptureCount:I

    if-ge v0, v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x64

    :goto_0
    iput v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mMaxBurstCaptureCount:I

    const-string v0, "handleBurstShutterPressed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TakeBurstPictureSequence"

    invoke-static {v0, v2}, Lcom/sec/android/app/TraceWrapper;->asyncTraceBegin(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capture - TakeBurstPictureSequence : Start["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "CameraPerformance"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Capture - AddTakeBurstPictureRequest : Point["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mInputType:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    iput v2, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureCount:I

    iget p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureFps:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/BurstCaptureController;->setBurstCaptureSoundId(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v0, 0x1964

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFSLock(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlash()I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->setAeModeByFlashSetting(I)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->startAeAfTriggerForTakingPicture(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getDynamicShotInfoForCapture()Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return v3

    :cond_5
    const-string p0, "handleBurstShutterPressed : Return, remain count is not enough for burst capture"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method handleBurstShutterReleased()Z
    .locals 2

    const-string v0, "BurstCaptureController"

    const-string v1, "handleBurstShutterReleased"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$cancelBurstPicture$3$BurstCaptureController()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureEventListener:Ljava/util/List;

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

.method public synthetic lambda$onBurstPictureCompleted$0$BurstCaptureController()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureEventListener:Ljava/util/List;

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

.method public synthetic lambda$onBurstPictureStarted$1$BurstCaptureController()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureEventListener:Ljava/util/List;

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

.method public synthetic lambda$onBurstPictureTaken$2$BurstCaptureController()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureEventListener:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;

    iget v3, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureCount:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;->onBurstCaptureProgress(I)V

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

.method public onBurstPictureCompleted(I)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mIsCapturing:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBurstPictureCompleted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BurstCaptureController"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "StopBurstPictureRequest"

    invoke-static {p1, v0}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture - StopBurstPictureRequest : End["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "CameraPerformance"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    const-string p0, "onBurstPictureCompleted : returned because camera is not running!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$BurstCaptureController$JZmFace33I3w0jO_If7UBSeQ7GU;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$BurstCaptureController$JZmFace33I3w0jO_If7UBSeQ7GU;-><init>(Lcom/sec/android/app/camera/engine/BurstCaptureController;)V

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    iget p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureCount:I

    const/4 v1, 0x1

    if-lt p1, v1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getPictureProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor;

    move-result-object p1

    iget v1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureGroupId:I

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->updateBurstPictureDB(I)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->resetAeAfTriggerForTakingPicture()V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->notifyCurrentLightCondition()V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlash()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlash()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setAeModeByFlashSetting(I)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->startMotionPhoto()V

    :cond_3
    iget p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureCount:I

    int-to-long v4, p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mInputType:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByBurstCaptureInputType(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0006"

    invoke-static {p1, v4, v5, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;JLjava/lang/String;)V

    const-string p0, "TakeBurstPictureSequence"

    invoke-static {p0, v0}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Capture - TakeBurstPictureSequence : End["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBurstPictureStarted(I)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBurstPictureStarted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BurstCaptureController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const-string v1, "TakeBurstPictureRequest"

    invoke-static {v1, p1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture - TakeBurstPictureRequest : End["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraPerformance"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "onBurstPictureStarted : Returned because camera is not running."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mIsCapturing:Z

    iput p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureDateTaken:J

    iget-wide v1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureDateTaken:J

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    sub-long/2addr v1, v3

    :cond_1
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3, v1, v2}, Ljava/util/Random;-><init>(J)V

    const v1, 0x7fffffff

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureGroupId:I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/BurstCaptureController;->getBurstCaptureSoundId()Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/camera/interfaces/SoundManager;->playSound(Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/BurstCaptureController;->getBurstCaptureSoundId()Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/SoundManager;->playSound(Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;I)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$BurstCaptureController$YNlMKV00_EeQdnX6fefeMKjsqVk;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$BurstCaptureController$YNlMKV00_EeQdnX6fefeMKjsqVk;-><init>(Lcom/sec/android/app/camera/engine/BurstCaptureController;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->stopMotionPhoto()V

    :cond_3
    return-void
.end method

.method public onBurstPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;)V
    .locals 10
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    const-string v1, "BurstCaptureController"

    if-nez v0, :cond_0

    const-string p0, "onBurstPictureTaken : Camera is not running. return."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->STARTING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->CAPTURING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    if-eq v0, v2, :cond_1

    const-string p0, "onBurstPictureTaken : returned because CaptureState is not STARTING and CAPTURING"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureCount:I

    iget v2, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mMaxBurstCaptureCount:I

    if-lt v0, v2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onBurstPictureTaken : stop burst capture and returned because mMaxBurstCaptureCount("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mMaxBurstCaptureCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") is reached"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void

    :cond_2
    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureCount:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBurstPictureTaken : mBurstCaptureCount="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureCount:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getPictureProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;->getSize()Landroid/util/Size;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureDateTaken:J

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationForCapture()I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureGroupId:I

    iget v8, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureCount:I

    sget-object v9, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->BURST:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/app/camera/engine/PictureProcessor;->process(Ljava/nio/ByteBuffer;Landroid/util/Size;JIIILcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance p2, Lcom/sec/android/app/camera/engine/-$$Lambda$BurstCaptureController$Mpov-Edwt0zIjKKmTVts2ddWIx4;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$BurstCaptureController$Mpov-Edwt0zIjKKmTVts2ddWIx4;-><init>(Lcom/sec/android/app/camera/engine/BurstCaptureController;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBurstShotFpsChanged(Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBurstShotFpsChanged : burstShotFps="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BurstCaptureController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureFps:I

    :cond_0
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

    const-string p0, "BurstCaptureController"

    const-string p1, "onDraftThumbnailTaken"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onThumbnailTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback$DataInfo;)V
    .locals 3
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback$DataInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->STARTING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    const-string v2, "BurstCaptureController"

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->CAPTURING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    if-eq v0, v1, :cond_0

    const-string p0, "onBurstPictureTaken : returned because CaptureState is not STARTING and CAPTURING"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureCount:I

    iget v1, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mMaxBurstCaptureCount:I

    if-lt v0, v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onThumbnailTaken : returned because mMaxBurstCaptureCount("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mMaxBurstCaptureCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") is reached"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "onThumbnailTaken"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getThumbnailProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback$DataInfo;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback$DataInfo;->getFormat()I

    move-result p2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationForCapture()I

    move-result p0

    invoke-virtual {v0, p1, v1, p2, p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->process(Ljava/nio/ByteBuffer;Landroid/util/Size;II)V

    return-void
.end method

.method registerBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureEventListener:Ljava/util/List;

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

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->removeRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mIsCapturing:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mIsCapturing:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/BurstCaptureController;->cancelBurstPicture()V

    :cond_1
    return-void
.end method

.method unregisterBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureEventListener:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BurstCaptureController;->mBurstCaptureEventListener:Ljava/util/List;

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
