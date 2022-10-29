.class Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl$TimerHandler;
.super Landroid/os/Handler;
.source "ShutterTimerManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimerHandler"
.end annotation


# instance fields
.field private final mShutterTimerManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl$TimerHandler;->mShutterTimerManager:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl$TimerHandler;-><init>(Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl$TimerHandler;->mShutterTimerManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->access$100(Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ShutterTimerManager"

    const-string v0, "handleMessage return - Camera is not running"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->cancelShutterTimer()V

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->what:I

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;->TIMER_ONESHOT:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_1

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->access$200(Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;I)V

    goto :goto_0

    :cond_1
    invoke-static {p0, v0}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->access$300(Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;I)V

    :goto_0
    return-void
.end method
