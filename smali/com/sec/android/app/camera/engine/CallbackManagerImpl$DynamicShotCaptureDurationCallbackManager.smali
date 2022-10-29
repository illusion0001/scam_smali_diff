.class Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/MakerInterface$DynamicShotCaptureDurationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DynamicShotCaptureDurationCallbackManager"
.end annotation


# instance fields
.field private mDynamicShotCaptureDuration:I

.field private mDynamicShotCaptureDurationForCapture:I

.field private mEstimatedCaptureDurationListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$EstimatedCaptureDurationListener;

.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mDynamicShotCaptureDuration:I

    iput p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mDynamicShotCaptureDurationForCapture:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mEstimatedCaptureDurationListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$EstimatedCaptureDurationListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;Lcom/sec/android/app/camera/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->notifyDynamicShotCaptureDuration()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->reset()V

    return-void
.end method

.method private notifyDynamicShotCaptureDuration()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mEstimatedCaptureDurationListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$EstimatedCaptureDurationListener;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mDynamicShotCaptureDuration:I

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager$EstimatedCaptureDurationListener;->onEstimatedCaptureDurationChanged(I)V

    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mEstimatedCaptureDurationListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$EstimatedCaptureDurationListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mDynamicShotCaptureDuration:I

    iput v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mDynamicShotCaptureDurationForCapture:I

    :cond_0
    return-void
.end method


# virtual methods
.method getDynamicShotCaptureDurationForCapture()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mDynamicShotCaptureDurationForCapture:I

    return p0
.end method

.method public synthetic lambda$onDynamicShotCaptureDurationChanged$0$CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2000(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2100(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->notifyDynamicShotCaptureDuration()V

    return-void
.end method

.method public onDynamicShotCaptureDurationChanged(Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mDynamicShotCaptureDuration:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mDynamicShotCaptureDuration:I

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2000(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager$Njq6raFoPsiWRA8HBdCaXLkTLKQ;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager$Njq6raFoPsiWRA8HBdCaXLkTLKQ;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method setEstimatedCaptureDurationListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$EstimatedCaptureDurationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mEstimatedCaptureDurationListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$EstimatedCaptureDurationListener;

    return-void
.end method

.method updateDynamicShotCaptureDurationForCapture()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mDynamicShotCaptureDuration:I

    iput v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->mDynamicShotCaptureDurationForCapture:I

    return-void
.end method
