.class Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;
.super Ljava/lang/Object;
.source "SelectiveFocus.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/MakerInterface$OutFocusEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCaptureProgress$0$SelectiveFocus$2(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$100(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvents(Z)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$1200(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;I)V

    return-void
.end method

.method public synthetic lambda$onError$1$SelectiveFocus$2(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$100(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;->SINGLE_SHUTTER:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/SoundManager;->playSound(Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$1000(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$1100(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$700(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    const/4 p1, -0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    return-void
.end method

.method public synthetic lambda$onOutFocusCaptureResult$2$SelectiveFocus$2(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$100(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$1000(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;I)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$1100(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$700(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    const/4 p1, -0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    return-void
.end method

.method public synthetic lambda$onProgress$3$SelectiveFocus$2(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$900(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$700(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$700(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$700(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onShutter$4$SelectiveFocus$2()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$100(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startShutterAnimation()V

    return-void
.end method

.method public onCaptureProgress(II)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureProgress : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SelectiveFocus"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$400(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SelectiveFocus$2$AKEVmIqcQKD-DiacET3wBpNqTEE;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SelectiveFocus$2$AKEVmIqcQKD-DiacET3wBpNqTEE;-><init>(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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

    const-string v1, "SelectiveFocus"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$500(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->POST_PROCESSING_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelCapture(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$400(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SelectiveFocus$2$bz4GevV9zGfdpvQagSFrEkPszRg;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SelectiveFocus$2$bz4GevV9zGfdpvQagSFrEkPszRg;-><init>(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onOutFocusCaptureResult(Ljava/io/File;I)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOutFocusCaptureResult : file path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", error code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SelectiveFocus"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$600(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "onOutFocusCaptureResult : returned because it is not waiting to complete capture."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$700(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$500(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->processPicture(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    if-nez p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$802(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;Z)Z

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$400(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SelectiveFocus$2$WbExlgl9TY9RFWvlwlLN_4G8p84;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SelectiveFocus$2$WbExlgl9TY9RFWvlwlLN_4G8p84;-><init>(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onProgress(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SelectiveFocus"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$600(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "onProgress : returned because it is not waiting to complete capture."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$400(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SelectiveFocus$2$tMJsdbYwPezQITB9paqArBYv0H4;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SelectiveFocus$2$tMJsdbYwPezQITB9paqArBYv0H4;-><init>(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShutter(Ljava/lang/Long;)V
    .locals 2
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p1, "SelectiveFocus"

    const-string v0, "onShutter"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$100(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onShutter : capture request is interrupted because camera is not running."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$500(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->POST_PROCESSING_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelCapture(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$500(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->POST_PROCESSING_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->handleShutterEvent(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$602(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;Z)Z

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$500(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_FOCUSED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$500(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$100(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;->SINGLE_SHUTTER:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/SoundManager;->playSound(Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$100(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getHapticFeedback()Lcom/sec/android/app/camera/interfaces/HapticManager;

    move-result-object p1

    const/16 v0, 0x30

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/HapticManager;->playHaptic(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$400(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SelectiveFocus$2$GSiuHi85t-u_r_GpRMx0FbmcJUY;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SelectiveFocus$2$GSiuHi85t-u_r_GpRMx0FbmcJUY;-><init>(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
