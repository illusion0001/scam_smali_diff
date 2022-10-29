.class Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/MakerInterface$DynamicShotInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DynamicShotInfoCallbackManager"
.end annotation


# instance fields
.field private mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

.field private mDynamicShotInfoForCapture:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

.field private final mShotInfoLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->mShotInfoLock:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->reset()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;Lcom/sec/android/app/camera/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->reset()V

    return-void
.end method

.method private reset()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->mShotInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v7, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;-><init>(IIIJ)V

    iput-object v7, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->mDynamicShotInfoForCapture:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method getDynamicShotInfoForCapture()Lcom/samsung/android/camera/core2/container/DynamicShotInfo;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->mShotInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->mDynamicShotInfoForCapture:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDynamicShotInfoChanged(Ljava/lang/Long;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/camera/core2/container/DynamicShotInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->mShotInfoLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method updateDynamicShotInfoForCapture()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->mDynamicShotInfoForCapture:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    return-void
.end method
