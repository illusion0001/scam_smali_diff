.class Lcom/sec/android/app/camera/shootingmode/Night$3;
.super Ljava/util/TimerTask;
.source "Night.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/Night;->startTimeDisplayTimerTick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Night;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Night;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Night;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$Night$3()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Night;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Night;->access$100(Lcom/sec/android/app/camera/shootingmode/Night;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Night;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Night;->access$700(Lcom/sec/android/app/camera/shootingmode/Night;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Night$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Night;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Night;->access$1000(Lcom/sec/android/app/camera/shootingmode/Night;)Lcom/sec/android/app/camera/widget/gl/NightCaptureTimeIndicator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/gl/NightCaptureTimeIndicator;->updateTimeDisplayGroupLayout(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Night;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->access$1000(Lcom/sec/android/app/camera/shootingmode/Night;)Lcom/sec/android/app/camera/widget/gl/NightCaptureTimeIndicator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/NightCaptureTimeIndicator;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Night;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->access$1000(Lcom/sec/android/app/camera/shootingmode/Night;)Lcom/sec/android/app/camera/widget/gl/NightCaptureTimeIndicator;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/NightCaptureTimeIndicator;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Night;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Night;->access$500(Lcom/sec/android/app/camera/shootingmode/Night;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Night$3$IrTh8VTUWmfjN-VDDfRL7uouMug;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Night$3$IrTh8VTUWmfjN-VDDfRL7uouMug;-><init>(Lcom/sec/android/app/camera/shootingmode/Night$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
