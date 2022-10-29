.class Lcom/sec/android/app/camera/engine/PictureProcessor;
.super Ljava/lang/Object;
.source "PictureProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;,
        Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PictureProcessor"


# instance fields
.field private final mBurstDBUpdateStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mPrepareDBUpdateListener:Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;

.field private final mThumbnailProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mBurstDBUpdateStack:Ljava/util/Stack;

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mContentResolver:Landroid/content/ContentResolver;

    new-instance p1, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor;Lcom/sec/android/app/camera/engine/PictureProcessor$1;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mThumbnailProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/engine/PictureProcessor;)Ljava/util/Stack;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mBurstDBUpdateStack:Ljava/util/Stack;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/engine/PictureProcessor;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mPrepareDBUpdateListener:Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;

    return-object p0
.end method

.method static getFileExtension(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/engine/PictureProcessor$1;->$SwitchMap$com$sec$android$app$camera$interfaces$InternalEngine$PictureSavingType:[I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not supported picture saving type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, ".gif"

    return-object p0

    :pswitch_1
    const-string p0, ".dng"

    return-object p0

    :pswitch_2
    const-string p0, ".heic"

    return-object p0

    :pswitch_3
    const-string p0, ".jpg"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method getActiveCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method getPictureSavingStorage(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingStorage()I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/engine/PictureProcessor$1;->$SwitchMap$com$sec$android$app$camera$interfaces$InternalEngine$PictureSavingType:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not supported picture saving type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result p0

    return p0

    :pswitch_1
    return v1

    :pswitch_2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRawCaptureEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v1

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method getQueuedTaskCount()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method getThumbnailProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mThumbnailProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

    return-object p0
.end method

.method initialize()V
    .locals 8

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v7, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mThumbnailProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->access$100(Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;)V

    return-void
.end method

.method process(Ljava/lang/String;Ljava/lang/String;JLcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V
    .locals 10

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    const-string p0, "PictureProcessor"

    const-string p1, "process : cannot execute."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v9, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationForCapture()I

    move-result v7

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor;Ljava/lang/String;Ljava/lang/String;JILcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method process(Ljava/nio/ByteBuffer;Landroid/util/Size;JIIILcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V
    .locals 12

    move-object v1, p0

    iget-object v10, v1, Lcom/sec/android/app/camera/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v10, :cond_0

    const-string v0, "PictureProcessor"

    const-string v1, "process : cannot execute."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v11, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor;Ljava/nio/ByteBuffer;Landroid/util/Size;JIIILcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method process(Ljava/nio/ByteBuffer;Landroid/util/Size;JLcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V
    .locals 10

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    const-string p0, "PictureProcessor"

    const-string p1, "process : cannot execute."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v9, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationForCapture()I

    move-result v7

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor;Ljava/nio/ByteBuffer;Landroid/util/Size;JILcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method process(Ljava/nio/ByteBuffer;Landroid/util/Size;JLcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;)V
    .locals 11

    move-object v1, p0

    iget-object v9, v1, Lcom/sec/android/app/camera/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v9, :cond_0

    const-string v0, "PictureProcessor"

    const-string v1, "process : cannot execute."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v10, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;

    iget-object v0, v1, Lcom/sec/android/app/camera/engine/PictureProcessor;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationForCapture()I

    move-result v6

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor;Ljava/nio/ByteBuffer;Landroid/util/Size;JILcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;)V

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method release()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v1, "PictureProcessor"

    if-nez v0, :cond_0

    const-string p0, "release : returned because executor has not been initialized."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v2, 0x3c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "release : awaitTermination interrupted."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mThumbnailProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->access$200(Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;)V

    return-void
.end method

.method setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mPrepareDBUpdateListener:Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;

    return-void
.end method

.method updateBurstPictureDB(I)V
    .locals 12

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    const-string p0, "PictureProcessor"

    const-string/jumbo p1, "updateBurstPictureDB : cannot execute."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v11, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    sget-object v10, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->BURST_DB_UPDATE_ONLY:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    move-object v1, v11

    move-object v2, p0

    move v8, p1

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/app/camera/engine/PictureProcessor$PictureSavingTask;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor;Ljava/nio/ByteBuffer;Landroid/util/Size;JIIILcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V

    invoke-virtual {v0, v11}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
