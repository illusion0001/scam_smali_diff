.class Lcom/sec/android/app/camera/engine/request/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/request/RequestBuilder$Builder;
    }
.end annotation


# static fields
.field private static final mRequestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/android/app/camera/engine/request/RequestId;",
            "Lcom/sec/android/app/camera/engine/request/RequestBuilder$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->mRequestMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->mRequestMap:Ljava/util/Map;

    return-object v0
.end method

.method static buildRequest(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/engine/request/RequestId;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->buildRequest(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method

.method static buildRequest(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;
    .locals 7

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->mRequestMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/camera/engine/request/RequestBuilder$Builder;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/camera/engine/request/RequestBuilder$Builder;->build(Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    return-object p0
.end method
