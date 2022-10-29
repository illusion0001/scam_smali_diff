.class Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$2;
.super Ljava/util/TimerTask;
.source "SuperSlowMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startSystemTimeTick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$400(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$204(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$300(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getMaxRecordingTimeLimitInSecond()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateRecordingTime(JI)V

    :cond_0
    return-void
.end method
