.class final Lcom/sec/android/app/camera/util/CameraShootingMode$1;
.super Ljava/util/HashMap;
.source "CameraShootingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/util/CameraShootingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "PHOTO"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "VIDEO"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "PRO"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "PRO_LITE"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "PANORAMA"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "WIDE_SELFIE"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "SELECTIVE_FOCUS"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "SLOW_MOTION"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "HYPER_LAPSE"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "FOOD"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "NIGHT"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "SPORTS_SCENE"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "LIVE_FOCUS"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "SUPER_SLOW_MOTION"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "SELFIE_FOCUS"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "INSTAGRAM"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "LIVE_FOCUS_VIDEO"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x21

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "DIRECTORS_VIEW"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "SINGLE_TAKE_PHOTO"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x24

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "PRO_VIDEO"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
