.class Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;
.super Ljava/lang/Object;
.source "AeAfManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/AeAfManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkAfInfo(Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback$AfInfo;)Z
    .locals 3
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback$AfInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfMode()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfState()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfTrigger()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$100(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfMode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$200(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfState()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$300(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)I

    move-result p0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfTrigger()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private handleContinuousAfStateChangedEvent()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$200(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$1$_Wjm-3aA8WuXxSwqjLvuqcx4E-U;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$1$_Wjm-3aA8WuXxSwqjLvuqcx4E-U;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private handleSingleAfStateChangedEvent()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$200(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$200(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$6;->$SwitchMap$com$sec$android$app$camera$interfaces$AeAfManager$AeAfUiState:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1100(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->DIVIDE_AE_AF_LOCKED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1000(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1100(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCKED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1000(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$1$Z3WmkNwWdzHrNN4S8g1Mh5PaTFc;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$1$Z3WmkNwWdzHrNN4S8g1Mh5PaTFc;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_FOCUSED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1000(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$1$JAwH7b0dLG2_PXgsCfxfEF2y6VI;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$1$JAwH7b0dLG2_PXgsCfxfEF2y6VI;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$handleContinuousAfStateChangedEvent$0$AeAfManagerImpl$1()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1200(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1200(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;->onContinuousAfFocused()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$handleSingleAfStateChangedEvent$1$AeAfManagerImpl$1()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1200(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1200(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;->onTouchAfFocused()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$handleSingleAfStateChangedEvent$2$AeAfManagerImpl$1()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1200(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1200(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;->onAeAfLocked()V

    :cond_0
    return-void
.end method

.method public onAfInfoChanged(Ljava/lang/Long;Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback$AfInfo;)V
    .locals 2
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback$AfInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->checkAfInfo(Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback$AfInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAfInfoChanged : afMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/MakerParameter;->getAfModeString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " afState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfState()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/MakerParameter;->getAfStateString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AeAfManagerImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$102(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;I)I

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfState()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$202(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;I)I

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$100(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->handleContinuousAfStateChangedEvent()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->handleSingleAfStateChangedEvent()V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$300(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)I

    move-result p1

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfTrigger()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$400(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->REQUESTED:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    if-ne p1, v1, :cond_3

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfTrigger()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v0, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$400(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->CANCEL_REQUESTED:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    if-ne p1, v0, :cond_5

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfTrigger()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAfTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback$AfInfo;->getAfTrigger()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$302(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;I)I

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$400(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->WAIT_REQUESTED:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    if-ne p1, p2, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$500(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    sget-object p2, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAfTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$600(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    if-ne p1, p2, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$800(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$700(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$800(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$700(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method
