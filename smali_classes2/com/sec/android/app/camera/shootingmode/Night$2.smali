.class Lcom/sec/android/app/camera/shootingmode/Night$2;
.super Ljava/util/TimerTask;
.source "Night.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/Night;->startSystemTimeTick()V
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

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Night;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$Night$2()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Night;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Night;->access$100(Lcom/sec/android/app/camera/shootingmode/Night;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Night;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Night;->access$700(Lcom/sec/android/app/camera/shootingmode/Night;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Night$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Night;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Night;->access$800(Lcom/sec/android/app/camera/shootingmode/Night;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Night$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Night;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Night;->access$900(Lcom/sec/android/app/camera/shootingmode/Night;)Lcom/sec/android/app/camera/widget/gl/NightShotTimerIndicator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/gl/NightShotTimerIndicator;->updateCapturingTime(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Night;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Night;->access$808(Lcom/sec/android/app/camera/shootingmode/Night;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSystemTimeInSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Night;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->access$800(Lcom/sec/android/app/camera/shootingmode/Night;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Night"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Night;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Night;->access$500(Lcom/sec/android/app/camera/shootingmode/Night;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Night$2$3Z4WslKvXqwUd6dj4C1W4lV4NRU;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Night$2$3Z4WslKvXqwUd6dj4C1W4lV4NRU;-><init>(Lcom/sec/android/app/camera/shootingmode/Night$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
