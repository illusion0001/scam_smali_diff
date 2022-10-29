.class Lcom/sec/android/app/camera/engine/EffectController$1;
.super Ljava/lang/Object;
.source "EffectController.java"

# interfaces
.implements Lcom/samsung/android/camera/effect/SecEffectProcessor$EffectProcessorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/EffectController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/EffectController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/EffectController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController$1;->this$0:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$null$0(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V
    .locals 0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;->onCaptureCompleted()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPictureTaken$1$EffectController$1()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EffectController$1;->this$0:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/EffectController;->access$000(Lcom/sec/android/app/camera/engine/EffectController;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCaptureEventListeners()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/-$$Lambda$EffectController$1$6hpJWiLvwsHh-Eq-Ci2gqnlVEpw;->INSTANCE:Lcom/sec/android/app/camera/engine/-$$Lambda$EffectController$1$6hpJWiLvwsHh-Eq-Ci2gqnlVEpw;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onInfo(I)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EffectProcessorListener.onInfo : message = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EffectController"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPictureTaken(ILjava/nio/ByteBuffer;I)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EffectProcessorListener.onPictureTaken : message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", format = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EffectController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController$1;->this$0:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/EffectController;->access$000(Lcom/sec/android/app/camera/engine/EffectController;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PREVIEW_SNAPSHOT:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isWaiting(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/EffectController$1;->this$0:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/EffectController;->access$000(Lcom/sec/android/app/camera/engine/EffectController;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/android/app/camera/engine/EffectController$1;->this$0:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-static {p3}, Lcom/sec/android/app/camera/engine/EffectController;->access$000(Lcom/sec/android/app/camera/engine/EffectController;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/android/app/camera/engine/CommonEngine;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController$1;->this$0:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/EffectController;->access$000(Lcom/sec/android/app/camera/engine/EffectController;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {p2, p1, p3, v0}, Lcom/sec/android/app/camera/util/ImageUtils;->convertYuvToRGB(Landroid/content/Context;[BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/EffectController$1;->this$0:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/EffectController;->access$000(Lcom/sec/android/app/camera/engine/EffectController;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startPreviewImageAnimation(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EffectController$1;->this$0:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/EffectController;->access$000(Lcom/sec/android/app/camera/engine/EffectController;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PREVIEW_SNAPSHOT:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController$1;->this$0:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/EffectController;->access$000(Lcom/sec/android/app/camera/engine/EffectController;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Capability;->getAvailableThumbnailSizes()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController$1;->this$0:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/EffectController;->access$100(Lcom/sec/android/app/camera/engine/EffectController;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/Util;->findThumbnailSize(Ljava/util/List;Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController$1;->this$0:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/EffectController;->access$000(Lcom/sec/android/app/camera/engine/EffectController;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getThumbnailProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

    move-result-object v0

    const/16 v2, 0x100

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/EffectController$1;->this$0:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/EffectController;->access$000(Lcom/sec/android/app/camera/engine/EffectController;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationForCapture()I

    move-result v3

    invoke-virtual {v0, p2, p1, v2, v3}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->process(Ljava/nio/ByteBuffer;Landroid/util/Size;II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v5, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPictureTaken : Buffer allocation took "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p1, v2

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-ne p1, p3, :cond_1

    sget-object p1, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->HEIF:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->JPEG:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    :goto_0
    move-object v9, p1

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController$1;->this$0:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/EffectController;->access$000(Lcom/sec/android/app/camera/engine/EffectController;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getPictureProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getCurrentTimeInMillis()J

    move-result-wide v7

    invoke-virtual/range {v4 .. v9}, Lcom/sec/android/app/camera/engine/PictureProcessor;->process(Ljava/nio/ByteBuffer;Landroid/util/Size;JLcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController$1;->this$0:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/EffectController;->access$000(Lcom/sec/android/app/camera/engine/EffectController;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_TAKE_PICTURE_COMPLETED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController$1;->this$0:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/EffectController;->access$000(Lcom/sec/android/app/camera/engine/EffectController;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isHalfShutterStarted()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController$1;->this$0:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/EffectController;->access$000(Lcom/sec/android/app/camera/engine/EffectController;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController$1;->this$0:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/EffectController;->access$000(Lcom/sec/android/app/camera/engine/EffectController;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->resetAeAfTriggerForTakingPicture()V

    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController$1;->this$0:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/EffectController;->access$000(Lcom/sec/android/app/camera/engine/EffectController;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/camera/engine/-$$Lambda$EffectController$1$wncHk9mSWX1HiR_Kmqi_tGmx9rU;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$EffectController$1$wncHk9mSWX1HiR_Kmqi_tGmx9rU;-><init>(Lcom/sec/android/app/camera/engine/EffectController$1;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public onPictureTaken(I[BI)V
    .locals 0

    return-void
.end method
