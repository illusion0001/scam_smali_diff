.class Lcom/sec/android/app/camera/engine/PictureCallbackManager;
.super Ljava/lang/Object;
.source "PictureCallbackManager.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/MakerInterface$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/PictureCallbackManager$ThumbnailCallbackManager;,
        Lcom/sec/android/app/camera/engine/PictureCallbackManager$SingleTakePictureCallbackManager;,
        Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;
    }
.end annotation


# static fields
.field private static final PICTURE_LATCH_WAIT_TIMEOUT:I = 0xc8

.field private static final SHUTTER_LATCH_WAIT_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "PictureCallbackManager"


# instance fields
.field private mCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field private mDateTaken:J

.field private final mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private mInfo:Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;

.field private mIsDraftPictureSaved:Z

.field private mIsPictureCallbackReceived:Z

.field private mPictureData:Ljava/nio/ByteBuffer;

.field private mPictureLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mRawPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;

.field private mSavingType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

.field private mShutterLatch:Ljava/util/concurrent/CountDownLatch;

.field private mSingleCaptureResultListener:Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureResultListener;

.field private final mSingleTakePictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager$SingleTakePictureCallbackManager;

.field private mSize:Landroid/util/Size;

.field private final mThumbnailCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager$ThumbnailCallbackManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mDateTaken:J

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mShutterLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPictureLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance p1, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;Lcom/sec/android/app/camera/engine/PictureCallbackManager$1;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mRawPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;

    new-instance p1, Lcom/sec/android/app/camera/engine/PictureCallbackManager$SingleTakePictureCallbackManager;

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager$SingleTakePictureCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;Lcom/sec/android/app/camera/engine/PictureCallbackManager$1;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mSingleTakePictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager$SingleTakePictureCallbackManager;

    new-instance p1, Lcom/sec/android/app/camera/engine/PictureCallbackManager$ThumbnailCallbackManager;

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager$ThumbnailCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;Lcom/sec/android/app/camera/engine/PictureCallbackManager$1;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mThumbnailCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager$ThumbnailCallbackManager;

    return-void
.end method

.method static synthetic access$1002(Lcom/sec/android/app/camera/engine/PictureCallbackManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mIsDraftPictureSaved:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/sec/android/app/camera/engine/CommonEngine;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->isPictureCallbackReceived()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)J
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->getDateTaken()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->completeTakePicture()V

    return-void
.end method

.method private completeTakePicture()V
    .locals 8

    const-string v0, "PictureCallbackManager"

    const-string v1, "completeTakePicture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$1;->$SwitchMap$com$sec$android$app$camera$interfaces$InternalEngine$TakePictureType:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentTakePictureType()Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getPictureProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPictureData:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mSize:Landroid/util/Size;

    iget-wide v4, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mDateTaken:J

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mSavingType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    iget-object v7, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mInfo:Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/app/camera/engine/PictureProcessor;->process(Ljava/nio/ByteBuffer;Landroid/util/Size;JLcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isHalfShutterStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->resetAeAfTriggerForTakingPicture()V

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->waitPictureLatch()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_TAKE_PICTURE_COMPLETED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->notifyCurrentLightCondition()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->notifyCurrentDynamicShotCaptureDurationTime()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mSingleCaptureResultListener:Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureResultListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureResultListener;->onSingleCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$PictureCallbackManager$cucg4MiHl8l5nTY62_vZQIU3PrE;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$PictureCallbackManager$cucg4MiHl8l5nTY62_vZQIU3PrE;-><init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->reset()V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mRawPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->access$300(Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;)V

    return-void
.end method

.method private getDateTaken()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mDateTaken:J

    return-wide v0
.end method

.method private getImageSavingType(I)Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;
    .locals 1

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SMART_SCAN_MANUAL_CROP:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentCaptureType()Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SMART_SCAN_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->SMART_SCAN:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    return-object p0

    :cond_0
    const/4 p0, -0x1

    if-ne p1, p0, :cond_1

    sget-object p0, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->HEIF:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->JPEG:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    :goto_0
    return-object p0
.end method

.method private handlePictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;)V
    .locals 3
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->CAPTURING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    const-string v2, "PictureCallbackManager"

    if-eq v0, v1, :cond_0

    const-string p0, "handlePictureTaken : Current capture state is not CAPTURING. return."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getEffectController()Lcom/sec/android/app/camera/engine/EffectController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/EffectController;->takePicture(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mIsPictureCallbackReceived:Z

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPictureData:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;->getSize()Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mSize:Landroid/util/Size;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;->getImageFormat()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->getImageSavingType(I)Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mSavingType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getCurrentTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mDateTaken:J

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mInfo:Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRawCaptureEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mRawPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->access$400(Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mRawPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->access$500(Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mDateTaken:J

    goto :goto_0

    :cond_2
    const-string p0, "handlePictureTaken : raw picture callback was not called yet on raw capture sequence."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->completeTakePicture()V

    return-void
.end method

.method private isPictureCallbackReceived()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mIsPictureCallbackReceived:Z

    return p0
.end method

.method static synthetic lambda$null$1(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V
    .locals 0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;->onShutter()V

    return-void
.end method

.method static synthetic lambda$null$3(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V
    .locals 0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;->onCaptureCompleted()V

    return-void
.end method

.method private reset()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mIsDraftPictureSaved:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mIsPictureCallbackReceived:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPictureData:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mSize:Landroid/util/Size;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mSavingType:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mDateTaken:J

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mInfo:Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;

    return-void
.end method

.method private waitPictureLatch()V
    .locals 4

    const-string v0, "PictureCallbackManager"

    :try_start_0
    const-string/jumbo v1, "waitPictureLatch : Waiting."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPictureLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0xc8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitPictureLatch : Waiting completed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "waitPictureLatch : Interrupted while waiting mPictureLatch."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method countDownPictureLatch()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPictureLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method getRawPictureCallbackManager()Lcom/samsung/android/camera/core2/MakerInterface$RawPictureCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mRawPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;

    return-object p0
.end method

.method getSingleTakePictureCallbackManager()Lcom/samsung/android/camera/core2/MakerInterface$SingleTakePictureCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mSingleTakePictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager$SingleTakePictureCallbackManager;

    return-object p0
.end method

.method getThumbnailCallbackManager()Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mThumbnailCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager$ThumbnailCallbackManager;

    return-object p0
.end method

.method isDraftPictureSaved()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDraftPictureSaved : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mIsDraftPictureSaved:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictureCallbackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mIsDraftPictureSaved:Z

    return p0
.end method

.method public synthetic lambda$completeTakePicture$4$PictureCallbackManager()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCaptureEventListeners()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/-$$Lambda$PictureCallbackManager$qEod9dE1GP81-NNK3kQhBYSFonk;->INSTANCE:Lcom/sec/android/app/camera/engine/-$$Lambda$PictureCallbackManager$qEod9dE1GP81-NNK3kQhBYSFonk;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$onDraftPostProcessingPictureTaken$0$PictureCallbackManager(Lcom/sec/android/app/camera/engine/LastContentData;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onPictureSaved(Lcom/sec/android/app/camera/interfaces/Engine$ContentData;Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onShutter$2$PictureCallbackManager()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onPictureProcessingStarted()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCaptureEventListeners()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/-$$Lambda$PictureCallbackManager$5xD_RbKBZPa2m7etyss0s-ceX40;->INSTANCE:Lcom/sec/android/app/camera/engine/-$$Lambda$PictureCallbackManager$5xD_RbKBZPa2m7etyss0s-ceX40;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onDraftPostProcessingPictureTaken(Landroid/net/Uri;Ljava/io/File;)V
    .locals 11
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "PictureCallbackManager"

    const-string v1, "onDraftPostProcessingPictureTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/engine/LastContentData;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/LastContentData;->clear()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getCurrentTimeInMillis()J

    move-result-wide v4

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationForCapture()I

    move-result v6

    sget-object v9, Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;->IMAGE:Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    move-object v7, p1

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/camera/engine/LastContentData;->updateLastContentData(Ljava/nio/ByteBuffer;Ljava/lang/String;JILandroid/net/Uri;Landroid/net/Uri;Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance p2, Lcom/sec/android/app/camera/engine/-$$Lambda$PictureCallbackManager$Nk4ys5znTafgFVHYgXz5gMxBmz0;

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/camera/engine/-$$Lambda$PictureCallbackManager$Nk4ys5znTafgFVHYgXz5gMxBmz0;-><init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;Lcom/sec/android/app/camera/engine/LastContentData;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictureCallbackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Take picture request is flushed"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCameraDeviceOpened()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->interruptCaptureRequest()V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/16 p1, -0xa

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->handleCameraError(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;)V
    .locals 3
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "TakePictureRequest"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capture - TakePictureRequest : End["

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

    const-string v0, "PictureCallbackManager"

    const-string v1, "onPictureTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->handlePictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;)V

    return-void
.end method

.method public onPostProcessingFrameCollectionCompleted()V
    .locals 2

    const-string v0, "PictureCallbackManager"

    const-string v1, "onPostProcessingFrameCollectionCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->completeTakePicture()V

    return-void
.end method

.method public onPostProcessingPictureTaken(Ljava/io/File;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "TakeProcessingPictureRequest"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Capture - TakeProcessingPictureRequest : End["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraPerformance"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "PictureCallbackManager"

    const-string p1, "onPostProcessingPictureTaken"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProcessingFrameCollected(I)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProcessingFrameCollected : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PictureCallbackManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProcessingPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;)V
    .locals 3
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "TakeProcessingPictureRequest"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capture - TakeProcessingPictureRequest : End["

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

    const-string v0, "PictureCallbackManager"

    const-string v1, "onProcessingPictureTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->handlePictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProgress : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PictureCallbackManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShutter(Ljava/lang/Long;)V
    .locals 3
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Capture - ShutterCallback : Point["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraPerformance"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mShutterLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "PictureCallbackManager"

    const-string v0, "onShutter : Camera is not running, return."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->interruptRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PROCESSING_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->interruptRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mShutterLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isMotionPhotoAudioRecordingEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isLongTakePicture()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;->LONG_EXPOSURE_SHUTTER_STOP:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;->SINGLE_SHUTTER:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/sec/android/app/camera/interfaces/SoundManager;->playSound(Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getHapticFeedback()Lcom/sec/android/app/camera/interfaces/HapticManager;

    move-result-object p1

    const/16 v1, 0x30

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/HapticManager;->playHaptic(I)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getScreenFlashController()Lcom/sec/android/app/camera/engine/ScreenFlashController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/ScreenFlashController;->isScreenFlashStarted()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getScreenFlashController()Lcom/sec/android/app/camera/engine/ScreenFlashController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/ScreenFlashController;->stopScreenFlash()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startShutterAnimation()V

    :goto_1
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mPictureLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_TAKE_PICTURE_COMPLETED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PROCESSING_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_POST_PROCESSING_MOTION_PHOTO:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentTakePictureType()Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;->PROCESSING_POST:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    if-eq p1, v0, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->prepareStore(Ljava/lang/Long;)V

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$PictureCallbackManager$l81VpSqm9u-yoe68sFQTCyb3vb0;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$PictureCallbackManager$l81VpSqm9u-yoe68sFQTCyb3vb0;-><init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mShutterLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method setSingleCaptureResultListener(Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mSingleCaptureResultListener:Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureResultListener;

    return-void
.end method

.method start()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->reset()V

    return-void
.end method

.method stop()V
    .locals 4

    const-string v0, "PictureCallbackManager"

    const-string/jumbo v1, "stop : wait shutter latch - start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->mShutterLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Interrupted while waiting shutter latch."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop : wait shutter latch - end, result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
