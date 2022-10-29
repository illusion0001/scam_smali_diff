.class Lcom/sec/android/app/camera/engine/CallbackManagerImpl$HdrStateCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/MakerInterface$LiveHdrStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HdrStateCallbackManager"
.end annotation


# instance fields
.field private mHdrStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/CallbackManager$HdrStateListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$HdrStateCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$HdrStateCallbackManager;->mHdrStateListeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;Lcom/sec/android/app/camera/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$HdrStateCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onLiveHdrStateChanged$0$CallbackManagerImpl$HdrStateCallbackManager(Ljava/lang/Integer;)V
    .locals 3
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$HdrStateCallbackManager;->mHdrStateListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/CallbackManager$HdrStateListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager$HdrStateListener;->onHdrStateChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onLiveHdrStateChanged(Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$HdrStateCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2000(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$HdrStateCallbackManager$Gff0uaDyDhLmipfhbhUMgglrYnk;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$HdrStateCallbackManager$Gff0uaDyDhLmipfhbhUMgglrYnk;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$HdrStateCallbackManager;Ljava/lang/Integer;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method registerHdrStateListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$HdrStateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$HdrStateCallbackManager;->mHdrStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$HdrStateCallbackManager;->mHdrStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method unregisterHdrStateListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$HdrStateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$HdrStateCallbackManager;->mHdrStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
