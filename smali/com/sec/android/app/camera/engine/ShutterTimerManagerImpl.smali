.class Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;
.super Ljava/lang/Object;
.source "ShutterTimerManagerImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl$TimerHandler;
    }
.end annotation


# static fields
.field private static final ONE_SECOND_IN_MILLIS:I = 0x3e8

.field private static final ONE_STEP_PROGRESS_IN_MILLIS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ShutterTimerManager"


# instance fields
.field private final mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private mInputType:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

.field private mIsTimerRunning:Z

.field private mShutterTimerCaptureTriggerListener:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;

.field private mShutterTimerEventListener:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;

.field private mTimerCountingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;

.field private final mTimerHandler:Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl$TimerHandler;

.field private mTimerMode:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl$TimerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl$TimerHandler;-><init>(Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mTimerHandler:Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl$TimerHandler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mIsTimerRunning:Z

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mInputType:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->handleOneShotTimer(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->handleTimerTick(I)V

    return-void
.end method

.method private handleOneShotTimer(I)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mShutterTimerEventListener:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;->onShutterTimerStarted()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mTimerMode:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;->getDuration()I

    move-result v1

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mTimerCountingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;

    if-eqz v2, :cond_2

    invoke-interface {v2, p1}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;->onOneShotTimerTick(I)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->handleTimerFinished()V

    return-void

    :cond_3
    add-int/lit8 p1, p1, 0xa

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mTimerHandler:Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl$TimerHandler;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;->TIMER_ONESHOT:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v1, p1, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xa

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl$TimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private handleTimerFinished()V
    .locals 2

    const-string v0, "ShutterTimerManager"

    const-string v1, "handleTimerFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mShutterTimerEventListener:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;->onShutterTimerFinished()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mShutterTimerCaptureTriggerListener:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;->onShutterTimerCaptureTriggered()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->requestShutterTimerCapture()V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mIsTimerRunning:Z

    return-void
.end method

.method private handleTimerTick(I)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mShutterTimerEventListener:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;->onShutterTimerStarted()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mTimerMode:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;->getDuration()I

    move-result v1

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mTimerMode:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;->getDuration()I

    move-result v2

    sub-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x3e8

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mTimerCountingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mInputType:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-interface {v3, v2, v4}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;->onTimerTick(ILcom/sec/android/app/camera/interfaces/CameraContext$InputType;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->handleTimerFinished()V

    return-void

    :cond_3
    add-int/lit16 p1, p1, 0x3e8

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mTimerHandler:Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl$TimerHandler;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mTimerMode:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;->ordinal()I

    move-result p0

    const/4 v2, 0x0

    invoke-static {v1, p0, p1, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl$TimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setCaptureInputType(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mInputType:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    return-void
.end method


# virtual methods
.method public cancelShutterTimer()V
    .locals 2

    const-string v0, "ShutterTimerManager"

    const-string v1, "cancelShutterTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SHUTTER_TIMER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->removeRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mTimerHandler:Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl$TimerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl$TimerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mIsTimerRunning:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mShutterTimerEventListener:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;->onShutterTimerCanceled()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mTimerCountingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;->onTimerCanceled()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->cancelShutterTimerCapture()V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "camera.action.SHUTTER_TIMER_CANCELED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public getCaptureInputType()Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mInputType:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    return-object p0
.end method

.method public getTimerMode()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mTimerMode:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;

    return-object p0
.end method

.method public isTimerRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mIsTimerRunning:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SHUTTER_TIMER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setShutterTimerCaptureTriggerListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mShutterTimerCaptureTriggerListener:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;

    return-void
.end method

.method public setShutterTimerEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mShutterTimerEventListener:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerEventListener;

    return-void
.end method

.method public setTimerCountingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mTimerCountingEventListener:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;

    return-void
.end method

.method public startShutterTimer(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->isTimerRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p0, "ShutterTimerManager"

    const-string p1, "startShutterTimer : Returned because shutter timer is already running."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v2

    if-eqz v2, :cond_4

    if-eq v2, v1, :cond_3

    const/4 v0, 0x2

    if-eq v2, v0, :cond_2

    const/4 v0, 0x3

    if-eq v2, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->setCaptureInputType(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SHUTTER_TIMER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;->TIMER_10S:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return v1

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->setCaptureInputType(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SHUTTER_TIMER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;->TIMER_5S:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return v1

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->setCaptureInputType(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SHUTTER_TIMER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;->TIMER_2S:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return v1

    :cond_4
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VOICE_COMMAND:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    if-eq p1, v0, :cond_6

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->PALM_DETECTION:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    if-eq p1, v0, :cond_6

    :cond_5
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->BIXBY_COMMAND:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    if-ne p1, v0, :cond_7

    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->setCaptureInputType(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SHUTTER_TIMER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;->TIMER_ONESHOT:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return v1

    :cond_7
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public startShutterTimerTick(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startShutterTimerTick : timer mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShutterTimerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mTimerMode:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mIsTimerRunning:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "camera.action.SHUTTER_TIMER_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mTimerMode:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;->getDuration()I

    move-result v1

    const-string v2, "countDownTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mTimerHandler:Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl$TimerHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TIMER_MODE;->ordinal()I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->mInputType:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl$TimerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method stop()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->isTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->cancelShutterTimer()V

    :cond_0
    return-void
.end method
