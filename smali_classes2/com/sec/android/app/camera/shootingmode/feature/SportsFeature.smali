.class Lcom/sec/android/app/camera/shootingmode/feature/SportsFeature;
.super Ljava/lang/Object;
.source "SportsFeature.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraId(II)I
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SPORTS:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getCameraId(Lcom/sec/android/app/camera/interfaces/CommandId;II)I

    move-result p0

    return p0
.end method

.method public isFloatingCameraButtonSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isReviewSupported()Z
    .locals 0

    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_REVIEW:Z

    return p0
.end method

.method public isTakingPictureSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isTakingPostProcessingPictureSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isTouchAeSupported(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isTrackingAfSupported(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isWatchModeSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isZoomSupported(I)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
