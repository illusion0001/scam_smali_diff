.class Lcom/sec/android/app/camera/engine/PictureCallbackManager$SingleTakePictureCallbackManager;
.super Ljava/lang/Object;
.source "PictureCallbackManager.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/MakerInterface$SingleTakePictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/PictureCallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleTakePictureCallbackManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$SingleTakePictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;Lcom/sec/android/app/camera/engine/PictureCallbackManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager$SingleTakePictureCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V

    return-void
.end method

.method static synthetic lambda$null$0(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V
    .locals 0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;->onCaptureCancelled()V

    return-void
.end method

.method static synthetic lambda$null$2(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V
    .locals 0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;->onCaptureCompleted()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPictureTakeCanceled$1$PictureCallbackManager$SingleTakePictureCallbackManager()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$SingleTakePictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->access$600(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCaptureEventListeners()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/-$$Lambda$PictureCallbackManager$SingleTakePictureCallbackManager$dcqRnTZjHlAC6VXDlFZIQyxhXUQ;->INSTANCE:Lcom/sec/android/app/camera/engine/-$$Lambda$PictureCallbackManager$SingleTakePictureCallbackManager$dcqRnTZjHlAC6VXDlFZIQyxhXUQ;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$onPictureTakeCompleted$3$PictureCallbackManager$SingleTakePictureCallbackManager(Lcom/sec/android/app/camera/engine/LastContentData;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$SingleTakePictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->access$600(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCaptureEventListeners()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/-$$Lambda$PictureCallbackManager$SingleTakePictureCallbackManager$tQt1VO7Oa0zWpYrxA2sKbsycMxo;->INSTANCE:Lcom/sec/android/app/camera/engine/-$$Lambda$PictureCallbackManager$SingleTakePictureCallbackManager$tQt1VO7Oa0zWpYrxA2sKbsycMxo;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$SingleTakePictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->access$600(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$SingleTakePictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->access$600(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onPictureSaved(Lcom/sec/android/app/camera/interfaces/Engine$ContentData;Z)V

    :cond_0
    return-void
.end method

.method public onError(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SingleTakePictureCallbackManager.onError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictureCallbackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$SingleTakePictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->access$600(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCameraDeviceOpened()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$SingleTakePictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->access$600(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SINGLE_TAKE_PICTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->cancelCapture(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$SingleTakePictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->access$600(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    const/16 p1, -0xa

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->handleCameraError(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPictureSequenceCompleted(I)V
    .locals 0

    return-void
.end method

.method public onPictureTakeCanceled()V
    .locals 2

    const-string v0, "PictureCallbackManager"

    const-string v1, "SingleTakePictureCallbackManager.onPictureTakeCanceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$SingleTakePictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->access$600(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$PictureCallbackManager$SingleTakePictureCallbackManager$CtYRHMEod7Haz5qdIKKgTQSL_Fw;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$PictureCallbackManager$SingleTakePictureCallbackManager$CtYRHMEod7Haz5qdIKKgTQSL_Fw;-><init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager$SingleTakePictureCallbackManager;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$SingleTakePictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->access$600(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_SINGLE_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public onPictureTakeCompleted(Landroid/net/Uri;Ljava/io/File;Ljava/lang/Integer;)V
    .locals 10
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p2, "PictureCallbackManager"

    if-nez p1, :cond_0

    const-string p0, "SingleTakePictureCallbackManager.onPictureTakeCompleted : Returned because result uri is null"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SingleTakePictureCallbackManager.onPictureTakeCompleted : resultUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$SingleTakePictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->access$600(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/camera/engine/LastContentData;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/LastContentData;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getCurrentTimeInMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$SingleTakePictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->access$600(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationForCapture()I

    move-result v5

    const/4 v7, 0x0

    sget-object v8, Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;->IMAGE:Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object v0, p2

    move-object v6, p1

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/app/camera/engine/LastContentData;->updateLastContentData(Ljava/nio/ByteBuffer;Ljava/lang/String;JILandroid/net/Uri;Landroid/net/Uri;Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$SingleTakePictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->access$600(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p1

    new-instance p3, Lcom/sec/android/app/camera/engine/-$$Lambda$PictureCallbackManager$SingleTakePictureCallbackManager$Dds7rYjCwy86s4n_2aVi0_ma43w;

    invoke-direct {p3, p0, p2}, Lcom/sec/android/app/camera/engine/-$$Lambda$PictureCallbackManager$SingleTakePictureCallbackManager$Dds7rYjCwy86s4n_2aVi0_ma43w;-><init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager$SingleTakePictureCallbackManager;Lcom/sec/android/app/camera/engine/LastContentData;)V

    invoke-virtual {p1, p3}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$SingleTakePictureCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->access$600(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_SINGLE_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public onPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;)V
    .locals 0
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onShutter(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onUnProcessedPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;)V
    .locals 0
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
