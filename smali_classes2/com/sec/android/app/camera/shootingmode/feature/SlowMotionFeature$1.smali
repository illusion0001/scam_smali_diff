.class Lcom/sec/android/app/camera/shootingmode/feature/SlowMotionFeature$1;
.super Ljava/util/HashMap;
.source "SlowMotionFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/feature/SlowMotionFeature;->getMediaRecorderProfile(I)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/feature/SlowMotionFeature;

.field final synthetic val$facing:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/feature/SlowMotionFeature;I)V
    .locals 4

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/feature/SlowMotionFeature$1;->this$0:Lcom/sec/android/app/camera/shootingmode/feature/SlowMotionFeature;

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/feature/SlowMotionFeature$1;->val$facing:I

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const p1, 0x895440

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "recordingBitrate"

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/camera/shootingmode/feature/SlowMotionFeature$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x1e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "recordingFps"

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/camera/shootingmode/feature/SlowMotionFeature$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x2ee0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "recordingAudioSamplingRate"

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/camera/shootingmode/feature/SlowMotionFeature$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p1, 0x1f400

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "recordingAudioBitrate"

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/camera/shootingmode/feature/SlowMotionFeature$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/feature/SlowMotionFeature$1;->val$facing:I

    const/16 p2, 0xf0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "recordingCaptureRate"

    const-string v2, "recordingMode"

    if-nez p1, :cond_1

    sget p1, Lcom/sec/android/app/camera/interfaces/RecordingManager;->SLOW_MOTION_RECORDING_FRONT_FPS:I

    const/16 v3, 0x78

    if-ne p1, v3, :cond_0

    const/16 p1, 0xd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/app/camera/shootingmode/feature/SlowMotionFeature$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/feature/SlowMotionFeature$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/camera/shootingmode/feature/SlowMotionFeature$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1, p2}, Lcom/sec/android/app/camera/shootingmode/feature/SlowMotionFeature$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/camera/shootingmode/feature/SlowMotionFeature$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1, p2}, Lcom/sec/android/app/camera/shootingmode/feature/SlowMotionFeature$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
