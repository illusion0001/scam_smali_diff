.class Lcom/sec/android/app/camera/engine/AeAfManagerImpl$4;
.super Ljava/lang/Object;
.source "AeAfManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/MakerInterface$DofMultiInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/AeAfManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$4;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onDofMultiInfoChanged$0$AeAfManagerImpl$4([B)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$4;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$4;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfEventListener;->onMultiAfChanged([B)V

    :cond_0
    return-void
.end method

.method public onDofMultiInfoChanged(Ljava/lang/Long;Lcom/samsung/android/camera/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;)V
    .locals 5
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/camera/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;->getDofMultiInfo()[I

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;->getDofMultiData()[I

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$4;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1800(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAfMode()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;->getDofMultiInfo()[I

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$DofMultiInfoCallback$DofMultiInfo;->getDofMultiData()[I

    move-result-object p2

    const/4 v1, 0x0

    aget v2, p1, v1

    aget p1, p1, v0

    mul-int/2addr v2, p1

    new-array p1, v2, [B

    const/4 v0, 0x3

    :goto_0
    mul-int/lit8 v3, v2, 0x4

    if-ge v0, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    aget v4, p2, v0

    rem-int/lit16 v4, v4, 0x100

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    add-int/lit8 v0, v0, 0x4

    move v1, v3

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$4;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$4$4XurHq6RLhVJAmXBRkPAQPmPt8M;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$4$4XurHq6RLhVJAmXBRkPAQPmPt8M;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl$4;[B)V

    invoke-virtual {p2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method
