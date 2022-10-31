.class public Lcom/sec/android/app/camera/engine/request/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;,
        Lcom/sec/android/app/camera/engine/request/RequestQueue$EmptyListener;
    }
.end annotation


# static fields
.field private static final SHUTDOWN_TIMEOUT_IN_SECOND:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "RequestQueue"


# instance fields
.field private mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

.field private mEmptyListener:Lcom/sec/android/app/camera/engine/request/RequestQueue$EmptyListener;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

.field private mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

.field private mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

.field private mRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mStopLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mStopLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

    iput-object p3, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/engine/request/RequestQueue;)Lcom/sec/android/app/camera/interfaces/InternalEngine;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/engine/request/RequestQueue;)Lcom/sec/android/app/camera/engine/request/RequestQueue$EmptyListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mEmptyListener:Lcom/sec/android/app/camera/engine/request/RequestQueue$EmptyListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/engine/request/RequestQueue;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/engine/request/RequestQueue;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mStopLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private executeOnUiThread(Lcom/sec/android/app/camera/engine/request/RequestId;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestQueue$MiEX9V9mgqVaX3o17dRwPT4Hi1M;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestQueue$MiEX9V9mgqVaX3o17dRwPT4Hi1M;-><init>(Lcom/sec/android/app/camera/engine/request/RequestQueue;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private executeOnUiThread(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestQueue$3hVa2YOJFxL1oIJFh_8DUsp3Bjc;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestQueue$3hVa2YOJFxL1oIJFh_8DUsp3Bjc;-><init>(Lcom/sec/android/app/camera/engine/request/RequestQueue;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addRequest : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/RequestId;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestQueue"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    if-nez v0, :cond_0

    const-string p0, "addRequest : Queue is not running. Return."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v2, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->executeOnUiThread(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    goto :goto_0

    :cond_1
    const-string p0, "addRequest : Can\'t handle this request because it is NOT added on UiThread."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-static {v1, v2, p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->buildRequest(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/engine/request/RequestId;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addRequest : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/RequestId;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestQueue"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    if-nez v0, :cond_0

    const-string p0, "addRequest : Queue is not running. Return."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v2, v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->executeOnUiThread(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p0, "addRequest : Can\'t handle this request because it is NOT added on UiThread."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-static {v1, v2, p0, p1, p2}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->buildRequest(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public interruptRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interruptRequest : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/RequestId;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestQueue"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    if-nez p0, :cond_0

    const-string p0, "interruptRequest : Queue is not running."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->interrupt(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    if-nez p0, :cond_0

    const-string p0, "RequestQueue"

    const-string v0, "isEmpty : Queue is not running."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "RequestQueue"

    const-string p1, "isRequested : Queue is not running."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    check-cast v1, Lcom/sec/android/app/camera/engine/request/Request;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/request/Request;->getRequestId()Lcom/sec/android/app/camera/engine/request/RequestId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/request/RequestId;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/RequestId;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public isWaiting(Lcom/sec/android/app/camera/engine/request/RequestId;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    if-nez p0, :cond_0

    const-string p0, "RequestQueue"

    const-string p1, "isWaiting : Queue is not running."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->isWaiting(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$executeOnUiThread$1$RequestQueue(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "executeOnUiThread : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " - Queue is not running. Return."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestQueue"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->buildRequest(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/Request;->run()V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$executeOnUiThread$2$RequestQueue(Lcom/sec/android/app/camera/engine/request/RequestId;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "executeOnUiThread : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " - Queue is not running. Return."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestQueue"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-static {v0, v1, v2, p1}, Lcom/sec/android/app/camera/engine/request/RequestBuilder;->buildRequest(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/engine/request/RequestId;)Lcom/sec/android/app/camera/engine/request/Request;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/Request;->run()V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$prepareToStop$0$RequestQueue(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method public notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRequest : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/RequestId;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestQueue"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    if-nez p0, :cond_0

    const-string p0, "notifyRequest : Queue is not running."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->notify(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public prepareToStop()V
    .locals 6
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    const-string v1, "RequestQueue"

    if-nez v0, :cond_0

    const-string p0, "prepareToStop : Queue is not running. Return."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareToStop : RequestLock - isLocked = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mStopLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->interruptCurrentRequest()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "prepareToStop : shutdownNow"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->shutdownNow()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareToStop : Queue size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Queue : ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v3, Lcom/sec/android/app/camera/engine/request/Request;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/request/Request;->getRequestId()Lcom/sec/android/app/camera/engine/request/RequestId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/request/RequestId;->getId()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mStopLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const-string v2, "prepareToStop : awaitTermination"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareToStop : awaitTermination = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const-string v2, "prepareToStop : awaitTermination interrupted."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestQueue$Opxi8j7jVj4RZ0xwjE_NvXCzr9U;

    invoke-direct {v3, p0, v1}, Lcom/sec/android/app/camera/engine/request/-$$Lambda$RequestQueue$Opxi8j7jVj4RZ0xwjE_NvXCzr9U;-><init>(Lcom/sec/android/app/camera/engine/request/RequestQueue;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mStopLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public removeRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeRequest : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/RequestId;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestQueue"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "removeRequest : Queue is not running."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    move-object v4, v3

    check-cast v4, Lcom/sec/android/app/camera/engine/request/Request;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/request/Request;->getRequestId()Lcom/sec/android/app/camera/engine/request/RequestId;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/request/RequestId;->getId()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/RequestId;->getId()I

    move-result v5

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->remove(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->access$000(Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;I)V

    const/4 p0, 0x1

    return p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to remove : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/request/RequestId;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public setEmptyListener(Lcom/sec/android/app/camera/engine/request/RequestQueue$EmptyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mEmptyListener:Lcom/sec/android/app/camera/engine/request/RequestQueue$EmptyListener;

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->isTerminating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;-><init>(Lcom/sec/android/app/camera/engine/request/RequestQueue;Lcom/sec/android/app/camera/engine/request/RequestQueue$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    const-string v1, "RequestQueue"

    if-nez v0, :cond_0

    const-string/jumbo p0, "stop - Queue is not running. Return."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo p0, "stop - queue is not terminated. cannot stop."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/request/RequestQueue;->mExecutor:Lcom/sec/android/app/camera/engine/request/RequestQueue$RequestThreadPool;

    return-void
.end method
