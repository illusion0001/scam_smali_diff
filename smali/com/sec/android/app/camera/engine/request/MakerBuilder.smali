.class Lcom/sec/android/app/camera/engine/request/MakerBuilder;
.super Ljava/lang/Object;
.source "MakerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/request/MakerBuilder$MakerInterfaceBuilder;,
        Lcom/sec/android/app/camera/engine/request/MakerBuilder$Builder;
    }
.end annotation


# static fields
.field private static final mMakerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/engine/request/MakerBuilder$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private static final mMakerWrapperMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/sec/android/app/camera/engine/request/MakerBuilder$MakerInterfaceBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/engine/request/MakerBuilder$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/engine/request/MakerBuilder$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->mMakerMap:Ljava/util/Map;

    new-instance v0, Lcom/sec/android/app/camera/engine/request/MakerBuilder$2;

    invoke-direct {v0}, Lcom/sec/android/app/camera/engine/request/MakerBuilder$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->mMakerWrapperMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static build(ILcom/sec/android/app/camera/interfaces/InternalEngine;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/MakerInterface;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->getMakerClass(ILcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->build(Ljava/lang/Class;Lcom/sec/android/app/camera/interfaces/InternalEngine;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/MakerInterface;

    move-result-object p0

    return-object p0
.end method

.method static build(Ljava/lang/Class;Lcom/sec/android/app/camera/interfaces/InternalEngine;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/MakerInterface;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->mMakerWrapperMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/engine/request/MakerBuilder$MakerInterfaceBuilder;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {v0, p0, p2}, Lcom/sec/android/app/camera/engine/request/MakerBuilder$MakerInterfaceBuilder;->build(Landroid/content/Context;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/MakerInterface;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p0, p2, p1}, Lcom/samsung/android/camera/core2/maker/MakerFactory;->create(Ljava/lang/Class;Landroid/os/Handler;Landroid/content/Context;)Lcom/samsung/android/camera/core2/MakerInterface;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid shootingMode ID : "

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static getMakerClass(ILcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->mMakerMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/engine/request/MakerBuilder$Builder;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/engine/request/MakerBuilder$Builder;->build(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid shootingMode ID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
