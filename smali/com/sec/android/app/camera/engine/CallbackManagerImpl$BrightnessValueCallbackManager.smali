.class Lcom/sec/android/app/camera/engine/CallbackManagerImpl$BrightnessValueCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/MakerInterface$BrightnessValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessValueCallbackManager"
.end annotation


# instance fields
.field private mBrightnessValueListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$BrightnessValueListener;

.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->mBrightnessValueListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$BrightnessValueListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;Lcom/sec/android/app/camera/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$BrightnessValueCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onBrightnessValueChanged$0$CallbackManagerImpl$BrightnessValueCallbackManager(Ljava/lang/Integer;)V
    .locals 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2000(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2000(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2000(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onBrightnessValueChanged(I)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->mBrightnessValueListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$BrightnessValueListener;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager$BrightnessValueListener;->onBrightnessValueChanged(I)V

    :cond_2
    return-void
.end method

.method public onBrightnessValueChanged(Ljava/lang/Long;Ljava/lang/Integer;)V
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
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2000(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$BrightnessValueCallbackManager$raPCVzPbHPVOIpRPuek0Yq-2J1I;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$BrightnessValueCallbackManager$raPCVzPbHPVOIpRPuek0Yq-2J1I;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$BrightnessValueCallbackManager;Ljava/lang/Integer;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setBrightnessValueListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$BrightnessValueListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->mBrightnessValueListener:Lcom/sec/android/app/camera/interfaces/CallbackManager$BrightnessValueListener;

    return-void
.end method
