.class final Lcom/sec/android/app/camera/engine/request/MakerBuilder$2;
.super Ljava/util/HashMap;
.source "MakerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/request/MakerBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Class;",
        "Lcom/sec/android/app/camera/engine/request/MakerBuilder$MakerInterfaceBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-class v0, Lcom/samsung/android/camera/core2/makerwrapper/SingleTakePhotoMakerWrapper;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$MakerBuilder$2$EhSlMFom69Wr9qvVoxke88sRRt0;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$MakerBuilder$2$EhSlMFom69Wr9qvVoxke88sRRt0;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/MakerBuilder$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/MakerInterface;
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/makerwrapper/SingleTakePhotoMakerWrapper;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/camera/core2/makerwrapper/SingleTakePhotoMakerWrapper;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    return-object v0
.end method
