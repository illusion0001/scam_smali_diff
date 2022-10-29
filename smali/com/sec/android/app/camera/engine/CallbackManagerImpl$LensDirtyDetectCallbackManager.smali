.class Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/MakerInterface$LensDirtyDetectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LensDirtyDetectCallbackManager"
.end annotation


# instance fields
.field private mLensDirtyDetectListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$LensDirtyDetectListener;

.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;->mLensDirtyDetectListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$LensDirtyDetectListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;Lcom/sec/android/app/camera/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;Lcom/sec/android/app/camera/interfaces/CallbackManager$LensDirtyDetectListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;->setLensDirtyDetectListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$LensDirtyDetectListener;)V

    return-void
.end method

.method private setLensDirtyDetectListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$LensDirtyDetectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;->mLensDirtyDetectListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$LensDirtyDetectListener;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onLensDirtyDetectChanged$0$CallbackManagerImpl$LensDirtyDetectCallbackManager(Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;->mLensDirtyDetectListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$LensDirtyDetectListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;->mLensDirtyDetectListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$LensDirtyDetectListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager$LensDirtyDetectListener;->onLensDirtyDetected()V

    :cond_0
    return-void
.end method

.method public onLensDirtyDetectChanged(Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLensDirtyDetectChanged : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CallbackManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2000(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$LensDirtyDetectCallbackManager$cNecra1-AIvrOmjt-3lW0gdnEtc;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$LensDirtyDetectCallbackManager$cNecra1-AIvrOmjt-3lW0gdnEtc;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;Ljava/lang/Boolean;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
