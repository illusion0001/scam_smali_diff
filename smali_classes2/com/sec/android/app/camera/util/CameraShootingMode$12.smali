.class final Lcom/sec/android/app/camera/util/CameraShootingMode$12;
.super Landroid/util/SparseArray;
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
        "Landroid/util/SparseArray<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BACK_WIDE_NORMAL_DUAL_PORTRAIT:Z

    const/16 v1, 0x17

    const/16 v2, 0x15

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode$12;->put(ILjava/lang/Object;)V

    const/4 v0, 0x2

    sget-boolean v3, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BACK_DUAL_PORTRAIT:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    sget-boolean v2, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_LIVE_FOCUS_BACK_CAMERA_ANGLE_CHANGE_BY_ZOOM:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BACK_WIDE_NORMAL_DUAL_PORTRAIT:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/CameraShootingMode$12;->put(ILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/util/CameraShootingMode$12;->put(ILjava/lang/Object;)V

    return-void
.end method
