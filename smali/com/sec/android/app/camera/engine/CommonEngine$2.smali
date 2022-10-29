.class Lcom/sec/android/app/camera/engine/CommonEngine$2;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CommonEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$2;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    const/4 p1, 0x0

    if-le p4, p3, :cond_0

    const-string p2, "CreateSurface"

    invoke-static {p2, p1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Surface - CreateSurface : End["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CameraPerformance"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "surfaceChanged : width="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " height="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CommonEngine"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$2;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$400(Lcom/sec/android/app/camera/engine/CommonEngine;)Landroid/view/SurfaceView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "CommonEngine"

    const-string/jumbo v0, "surfaceCreated"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$2;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$502(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$2;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$100(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_PREVIEW_SURFACE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string p1, "CommonEngine"

    const-string/jumbo v0, "surfaceDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$2;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$502(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    sget-object p1, Lcom/sec/android/app/camera/engine/CommonEngine$3;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$State:[I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$2;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentState()Lcom/sec/android/app/camera/interfaces/Engine$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Engine$State;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$2;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$100(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$2;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$100(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->CONNECT_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->interruptRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :goto_0
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0

    const-string p0, "CommonEngine"

    const-string/jumbo p1, "surfaceRedrawNeeded"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V
    .locals 1

    const-string p1, "CommonEngine"

    const-string/jumbo v0, "surfaceRedrawNeededAsync"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$2;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {p0, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$600(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/Runnable;)V

    return-void
.end method
