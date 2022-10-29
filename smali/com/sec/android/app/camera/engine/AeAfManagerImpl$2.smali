.class Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;
.super Ljava/lang/Object;
.source "AeAfManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/MakerInterface$AeInfoCallback;


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

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isTouchAfResultReceived()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$200(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$200(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isAfSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$200(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)I

    move-result p0

    const/16 v0, 0x65

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public synthetic lambda$onAeInfoChanged$0$AeAfManagerImpl$2()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1200(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1200(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;->onAeAfLocked()V

    :cond_0
    return-void
.end method

.method public onAeInfoChanged(Ljava/lang/Long;Lcom/samsung/android/camera/core2/MakerInterface$AeInfoCallback$AeInfo;)V
    .locals 1
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/camera/core2/MakerInterface$AeInfoCallback$AeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$AeInfoCallback$AeInfo;->getAeMode()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$AeInfoCallback$AeInfo;->getAeState()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAeInfoChanged : aeMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$AeInfoCallback$AeInfo;->getAeMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/MakerParameter;->getAeModeString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " aeState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$AeInfoCallback$AeInfo;->getAeState()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/MakerParameter;->getAeStateString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AeAfManagerImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1100(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)I

    move-result p1

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$AeInfoCallback$AeInfo;->getAeState()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$AeInfoCallback$AeInfo;->getAeState()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1102(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;I)I

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$600(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->WAIT_REQUESTED:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1100(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1302(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Z)Z

    return-void

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1300(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1400(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1302(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Z)Z

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    sget-object p2, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAePrecaptureTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$400(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$800(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$700(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$800(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$700(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1100(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_6

    sget-object p1, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$6;->$SwitchMap$com$sec$android$app$camera$interfaces$AeAfManager$AeAfUiState:[I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    if-eq p1, p2, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->isTouchAfResultReceived()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->DIVIDE_AE_AF_LOCKED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1000(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->isTouchAfResultReceived()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    sget-object p2, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCKED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$1000(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->access$900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$2$aNBJUER-NKw3fVynxJ0zbvtjgcc;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$2$aNBJUER-NKw3fVynxJ0zbvtjgcc;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :cond_6
    :goto_0
    return-void
.end method
