.class Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;
.super Ljava/lang/Object;
.source "PictureProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/PictureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThumbnailProcessor"
.end annotation


# instance fields
.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field final synthetic this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/PictureProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/PictureProcessor;Lcom/sec/android/app/camera/engine/PictureProcessor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->initialize()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->release()V

    return-void
.end method

.method private initialize()V
    .locals 8

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x2

    const-wide/16 v3, 0x1e

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v7, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private release()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThumbnailProcessor.release : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " tasks will be discarded."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictureProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public synthetic lambda$process$0$PictureProcessor$ThumbnailProcessor([BLandroid/util/Size;Lcom/sec/android/app/camera/engine/LastContentData;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$400(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-static {v0, p1, v1, p2}, Lcom/sec/android/app/camera/util/ImageUtils;->convertYuvToRGB(Landroid/content/Context;[BII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/sec/android/app/camera/engine/LastContentData;->setThumbnail(Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$300(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$300(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p4}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onThumbnailTaken(Landroid/graphics/Bitmap;I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$process$1$PictureProcessor$ThumbnailProcessor([BLandroid/util/Size;Lcom/sec/android/app/camera/engine/LastContentData;I)V
    .locals 1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    mul-int/2addr v0, p2

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/ImageUtils;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/sec/android/app/camera/engine/LastContentData;->setThumbnail(Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$300(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$300(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p4}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onThumbnailTaken(Landroid/graphics/Bitmap;I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$process$2$PictureProcessor$ThumbnailProcessor(Landroid/util/Size;Ljava/nio/ByteBuffer;Lcom/sec/android/app/camera/engine/LastContentData;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {p3, p1}, Lcom/sec/android/app/camera/engine/LastContentData;->setThumbnail(Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$300(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$300(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p4}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onThumbnailTaken(Landroid/graphics/Bitmap;I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$process$3$PictureProcessor$ThumbnailProcessor(Landroid/graphics/Bitmap;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$300(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$300(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onThumbnailTaken(Landroid/graphics/Bitmap;I)V

    :cond_0
    return-void
.end method

.method process(Landroid/graphics/Bitmap;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    const-string p0, "PictureProcessor"

    const-string p1, "ThumbnailProcessor.process : cannot execute."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$PictureProcessor$ThumbnailProcessor$k1a2AGYTCaCfeHfqvQvHQQYK54U;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/engine/-$$Lambda$PictureProcessor$ThumbnailProcessor$k1a2AGYTCaCfeHfqvQvHQQYK54U;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method process(Ljava/nio/ByteBuffer;Landroid/util/Size;II)V
    .locals 11

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v1, "PictureProcessor"

    if-nez v0, :cond_0

    const-string p0, "ThumbnailProcessor.process : cannot execute."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v4, v0, [B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->this$0:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->access$300(Lcom/sec/android/app/camera/engine/PictureProcessor;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/sec/android/app/camera/engine/LastContentData;

    const/16 v0, 0x23

    if-eq p3, v0, :cond_3

    const/16 v0, 0x2a

    if-eq p3, v0, :cond_2

    const/16 p1, 0x100

    if-eq p3, p1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ThumbnailProcessor.process : unsupported thumbnail format("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p3, Lcom/sec/android/app/camera/engine/-$$Lambda$PictureProcessor$ThumbnailProcessor$u4iZlHZpUFpAuvFH6vlXpJk3vE4;

    move-object v2, p3

    move-object v3, p0

    move-object v5, p2

    move-object v6, v9

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/engine/-$$Lambda$PictureProcessor$ThumbnailProcessor$u4iZlHZpUFpAuvFH6vlXpJk3vE4;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;[BLandroid/util/Size;Lcom/sec/android/app/camera/engine/LastContentData;I)V

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$PictureProcessor$ThumbnailProcessor$qiRR4aJrb_ckbJh7MvF9524UdXM;

    move-object v5, v0

    move-object v6, p0

    move-object v7, p2

    move-object v8, p1

    move v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/camera/engine/-$$Lambda$PictureProcessor$ThumbnailProcessor$qiRR4aJrb_ckbJh7MvF9524UdXM;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;Landroid/util/Size;Ljava/nio/ByteBuffer;Lcom/sec/android/app/camera/engine/LastContentData;I)V

    invoke-virtual {p3, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p3, Lcom/sec/android/app/camera/engine/-$$Lambda$PictureProcessor$ThumbnailProcessor$phP5pY1H6ixOiD2dOaeQ3I_nLko;

    move-object v2, p3

    move-object v3, p0

    move-object v5, p2

    move-object v6, v9

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/engine/-$$Lambda$PictureProcessor$ThumbnailProcessor$phP5pY1H6ixOiD2dOaeQ3I_nLko;-><init>(Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;[BLandroid/util/Size;Lcom/sec/android/app/camera/engine/LastContentData;I)V

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
