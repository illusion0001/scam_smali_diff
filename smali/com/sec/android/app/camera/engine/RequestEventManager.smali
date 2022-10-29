.class Lcom/sec/android/app/camera/engine/RequestEventManager;
.super Ljava/lang/Object;
.source "RequestEventManager.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/InternalEngine$RequestEventListener;
.implements Lcom/samsung/android/camera/core2/MakerInterface$PreviewStateCallback;
.implements Lcom/samsung/android/camera/core2/MakerInterface$RecordStateCallback;


# static fields
.field private static final INITIAL_SEQUENCE_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "RequestEventManager"


# instance fields
.field private mAppliedSequenceId:I

.field private mApplySettingsSequenceId:I

.field private final mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private final mPreviewEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSequenceIdLock:Ljava/lang/Object;

.field private mStartPreviewSequenceId:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mPreviewEventListeners:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mSequenceIdLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mStartPreviewSequenceId:I

    iput v0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mApplySettingsSequenceId:I

    iput v0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mAppliedSequenceId:I

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    return-void
.end method

.method private handlePreviewRequestApplied(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePreviewRequestApplied : sequenceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestEventManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mAppliedSequenceId:I

    iget v0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mStartPreviewSequenceId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-gt v0, p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "StartPreviewRequest"

    invoke-static {v0, p1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Device - StartPreviewRequest : End["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraPerformance"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$RequestEventManager$Bn_xBsxcRHSYb-bsNmOI0lTQwiU;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$RequestEventManager$Bn_xBsxcRHSYb-bsNmOI0lTQwiU;-><init>(Lcom/sec/android/app/camera/engine/RequestEventManager;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    iput v1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mStartPreviewSequenceId:I

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_LAST_SETTINGS_APPLIED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isWaiting(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RequestEventManager;->isLastSettingsApplied()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_LAST_SETTINGS_APPLIED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :cond_1
    return-void
.end method


# virtual methods
.method clearApplySettingsSequenceId()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mSequenceIdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "RequestEventManager"

    const-string v2, "clearApplySettingsSequenceId"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mApplySettingsSequenceId:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method isLastSettingsApplied()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mSequenceIdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "RequestEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLastSettingsApplied - mApplySettingsSequenceId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mApplySettingsSequenceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mAppliedSequenceId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mAppliedSequenceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mApplySettingsSequenceId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mApplySettingsSequenceId:I

    iget p0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mAppliedSequenceId:I

    if-gt v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method isStartPreviewRequestApplied()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mSequenceIdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mStartPreviewSequenceId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget p0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mAppliedSequenceId:I

    if-eq p0, v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public synthetic lambda$handlePreviewRequestApplied$1$RequestEventManager()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onStartPreviewCompleted()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mPreviewEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;->onStartPreviewCompleted()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic lambda$onStartPreviewRequested$0$RequestEventManager()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onStartPreviewRequested()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mPreviewEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;->onStartPreviewRequested()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onApplySettingsRequested(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mSequenceIdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "RequestEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApplySettingsRequested : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mApplySettingsSequenceId:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPreviewRequestApplied(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mSequenceIdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/RequestEventManager;->handlePreviewRequestApplied(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPreviewRequestError(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mSequenceIdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "RequestEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreviewRequestError : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mAppliedSequenceId:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPreviewRequestRemoved(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mSequenceIdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "RequestEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreviewRequestRemoved : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mAppliedSequenceId:I

    if-ge v1, p1, :cond_0

    iput p1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mAppliedSequenceId:I

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onRecordRequestApplied(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mSequenceIdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/RequestEventManager;->handlePreviewRequestApplied(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onRecordRequestError(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mSequenceIdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "RequestEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRecordRequestError : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mAppliedSequenceId:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onRecordRequestRemoved(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mSequenceIdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "RequestEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRecordRequestRemoved : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mAppliedSequenceId:I

    if-ge v1, p1, :cond_0

    iput p1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mAppliedSequenceId:I

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onRestartPreviewRequested(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mSequenceIdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "RequestEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRestartPreviewRequested : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mStartPreviewSequenceId:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mApplySettingsSequenceId:I

    iput p1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mAppliedSequenceId:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onStartPreviewRequested(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mSequenceIdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "RequestEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartPreviewRequested : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mStartPreviewSequenceId:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mApplySettingsSequenceId:I

    iput p1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mAppliedSequenceId:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$RequestEventManager$lXyHfqoDhQ4-Dr14OQTZJoF_hdI;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$RequestEventManager$lXyHfqoDhQ4-Dr14OQTZJoF_hdI;-><init>(Lcom/sec/android/app/camera/engine/RequestEventManager;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->clearDrawingFinishedRunnable()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onStartVideoPreviewRequested(I)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStartVideoPreviewRequested : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RequestEventManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStopVideoPreviewRequested(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mSequenceIdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "RequestEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStopVideoPreviewRequested : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mStartPreviewSequenceId:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mApplySettingsSequenceId:I

    iput p1, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mAppliedSequenceId:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mPreviewEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mPreviewEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RequestEventManager;->mPreviewEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
