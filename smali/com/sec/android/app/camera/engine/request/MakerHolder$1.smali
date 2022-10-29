.class Lcom/sec/android/app/camera/engine/request/MakerHolder$1;
.super Ljava/lang/Object;
.source "MakerHolder.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/MakerInterface$StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/request/MakerHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/request/MakerHolder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder$1;->this$0:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCamDeviceConnectFailed(Lcom/samsung/android/camera/core2/MakerInterface;)V
    .locals 2
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCamDeviceConnectFailed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MakerHolder"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder$1;->this$0:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->access$000(Lcom/sec/android/app/camera/engine/request/MakerHolder;)Lcom/sec/android/app/camera/engine/request/MakerHolder$MakerEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder$MakerEventListener;->onConnectFailed()V

    return-void
.end method

.method public onCamDeviceConnected(Lcom/samsung/android/camera/core2/MakerInterface;)V
    .locals 3
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCamDeviceConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MakerHolder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder$1;->this$0:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->access$100(Lcom/sec/android/app/camera/engine/request/MakerHolder;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder$1;->this$0:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    new-instance v2, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;

    invoke-direct {v2, p1}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;-><init>(Lcom/samsung/android/camera/core2/MakerInterface;)V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->access$202(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;)Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder$1;->this$0:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->access$000(Lcom/sec/android/app/camera/engine/request/MakerHolder;)Lcom/sec/android/app/camera/engine/request/MakerHolder$MakerEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder$MakerEventListener;->onConnected()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onCamDeviceDisconnected(Lcom/samsung/android/camera/core2/MakerInterface;)V
    .locals 2
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCamDeviceDisconnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MakerHolder"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder$1;->this$0:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->access$000(Lcom/sec/android/app/camera/engine/request/MakerHolder;)Lcom/sec/android/app/camera/engine/request/MakerHolder$MakerEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder$MakerEventListener;->onDisconnected()V

    return-void
.end method

.method public onCamDeviceReady(Lcom/samsung/android/camera/core2/MakerInterface;)V
    .locals 2
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCamDeviceReady : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MakerHolder"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerHolder$1;->this$0:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->access$000(Lcom/sec/android/app/camera/engine/request/MakerHolder;)Lcom/sec/android/app/camera/engine/request/MakerHolder$MakerEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder$MakerEventListener;->onCamDeviceReady()V

    return-void
.end method

.method public onMakerError(Lcom/samsung/android/camera/core2/MakerInterface;I)V
    .locals 0
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "MakerHolder"

    const-string p1, "onMakerError"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
