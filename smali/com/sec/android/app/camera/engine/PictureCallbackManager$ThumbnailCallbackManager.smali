.class Lcom/sec/android/app/camera/engine/PictureCallbackManager$ThumbnailCallbackManager;
.super Ljava/lang/Object;
.source "PictureCallbackManager.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/PictureCallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailCallbackManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$ThumbnailCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;Lcom/sec/android/app/camera/engine/PictureCallbackManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager$ThumbnailCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)V

    return-void
.end method


# virtual methods
.method public onDraftThumbnailTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback$DataInfo;)V
    .locals 2
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback$DataInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "PictureCallbackManager"

    const-string v1, "onDraftThumbnailTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$ThumbnailCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->access$1002(Lcom/sec/android/app/camera/engine/PictureCallbackManager;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$ThumbnailCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->access$600(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getThumbnailProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback$DataInfo;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback$DataInfo;->getFormat()I

    move-result p2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$ThumbnailCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->access$600(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationForCapture()I

    move-result p0

    invoke-virtual {v0, p1, v1, p2, p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->process(Ljava/nio/ByteBuffer;Landroid/util/Size;II)V

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

    const-string v0, "PictureCallbackManager"

    const-string v1, "onThumbnailTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$ThumbnailCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->access$600(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "onThumbnailTaken : Returned because effect processor is activated."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SMART_SCAN_MANUAL_CROP:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$ThumbnailCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->access$600(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentCaptureType()Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SMART_SCAN_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    if-ne v1, v2, :cond_1

    const-string p0, "onThumbnailTaken : Returned because smart scan doesn\'t support thumbnail."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$ThumbnailCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->access$600(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getThumbnailProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback$DataInfo;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback$DataInfo;->getFormat()I

    move-result p2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/PictureCallbackManager$ThumbnailCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->access$600(Lcom/sec/android/app/camera/engine/PictureCallbackManager;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationForCapture()I

    move-result p0

    invoke-virtual {v0, p1, v1, p2, p0}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->process(Ljava/nio/ByteBuffer;Landroid/util/Size;II)V

    return-void
.end method
