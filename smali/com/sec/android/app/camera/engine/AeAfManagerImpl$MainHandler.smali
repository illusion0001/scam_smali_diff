.class Lcom/sec/android/app/camera/engine/AeAfManagerImpl$MainHandler;
.super Landroid/os/Handler;
.source "AeAfManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/AeAfManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/camera/engine/AeAfManagerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$MainHandler;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$MainHandler;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$MainHandler;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    if-nez p0, :cond_0

    const-string p0, "AeAfManagerImpl"

    const-string p1, "handleMessage : Reference is not valid, return."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$2100(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Landroid/os/Message;)V

    return-void
.end method
