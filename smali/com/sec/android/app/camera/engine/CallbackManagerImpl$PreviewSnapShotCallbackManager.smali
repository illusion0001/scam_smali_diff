.class Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/MakerInterface$PreviewSnapShotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewSnapShotCallbackManager"
.end annotation


# instance fields
.field mPreviewSnapshotListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$PreviewSnapShotListener;

.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->mPreviewSnapshotListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$PreviewSnapShotListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;Lcom/sec/android/app/camera/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPreviewSnapShotTaken$0$CallbackManagerImpl$PreviewSnapShotCallbackManager(Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2100(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->setPausedPreviewSnapShotImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public synthetic lambda$onPreviewSnapShotTaken$1$CallbackManagerImpl$PreviewSnapShotCallbackManager(Landroid/graphics/Bitmap;Landroid/util/Size;)V
    .locals 2
    .param p2    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2100(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->getPreviewImageAnimationType()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;->NONE:Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2100(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startPreviewImageAnimation(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->mPreviewSnapshotListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$PreviewSnapShotListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/interfaces/CallbackManager$PreviewSnapShotListener;->onPreviewSnapShotTaken(Landroid/graphics/Bitmap;Landroid/util/Size;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError()V
    .locals 2

    const-string v0, "CallbackManager"

    const-string v1, "PreviewSnapShotCallbackManager.onError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2100(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->getPreviewImageAnimationType()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;->NONE:Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2100(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->cancelPreparePreviewImageAnimation()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2000(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PREVIEW_SNAPSHOT:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public onPreviewSnapShotTaken(Ljava/nio/ByteBuffer;Landroid/util/Size;)V
    .locals 4
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const-string p1, "CallbackManager"

    const-string v1, "onPreviewSnapshotTaken : start"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2100(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/app/camera/util/ImageUtils;->convertYuvToRGB(Landroid/content/Context;[BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2100(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isPausedPreviewSnapShotPreparing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2100(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p2

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$PreviewSnapShotCallbackManager$CggwnX1xj7GxL24UIhoyMSWI3w4;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$PreviewSnapShotCallbackManager$CggwnX1xj7GxL24UIhoyMSWI3w4;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2000(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$PreviewSnapShotCallbackManager$l-hJp_DTMjf8KsA4Z4-oVViGOgs;

    invoke-direct {v2, p0, v0, p2}, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$PreviewSnapShotCallbackManager$l-hJp_DTMjf8KsA4Z4-oVViGOgs;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;Landroid/graphics/Bitmap;Landroid/util/Size;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2000(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p2, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PREVIEW_SNAPSHOT:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    const-string p0, "onPreviewSnapshotTaken : end"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method setPreviewSnapShotListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$PreviewSnapShotListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->mPreviewSnapshotListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$PreviewSnapShotListener;

    return-void
.end method
