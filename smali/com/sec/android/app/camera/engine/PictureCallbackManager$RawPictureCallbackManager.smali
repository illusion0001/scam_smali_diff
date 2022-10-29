.class Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;
.super Ljava/lang/Object;
.source "PictureCallbackManager.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/MakerInterface$RawPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/PictureCallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RawPictureCallbackManager"
.end annotation


# instance fields
.field private mDateTaken:J

.field private mIsPictureCallbackReceived:Z

.field final synthetic this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->mIsPictureCallbackReceived:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->mDateTaken:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;Lcom/sec/android/app/camera/engine/PictureCallbackManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->reset()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->isRawPictureCallbackReceived()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;)J
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->getRawPictureDateTaken()J

    move-result-wide v0

    return-wide v0
.end method

.method private getRawPictureDateTaken()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->mDateTaken:J

    return-wide v0
.end method

.method private isRawPictureCallbackReceived()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->mIsPictureCallbackReceived:Z

    return p0
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->mIsPictureCallbackReceived:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->mDateTaken:J

    return-void
.end method


# virtual methods
.method public onPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;)V
    .locals 7
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->access$600(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->CAPTURING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    const-string v2, "PictureCallbackManager"

    if-eq v0, v1, :cond_0

    const-string p0, "RawPictureCallback.onPictureTaken : Current capture state is not CAPTURING. return."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "RawPictureCallback.onPictureTaken"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->mIsPictureCallbackReceived:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->access$700(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->access$800(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getCurrentTimeInMillis()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->mDateTaken:J

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->access$600(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getPictureProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;->getSize()Landroid/util/Size;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->mDateTaken:J

    sget-object v6, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->RAW:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/camera/engine/PictureProcessor;->process(Ljava/nio/ByteBuffer;Landroid/util/Size;JLcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->access$700(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$RawPictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->access$900(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V

    :cond_2
    return-void
.end method
