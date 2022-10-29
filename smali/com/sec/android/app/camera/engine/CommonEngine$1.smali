.class Lcom/sec/android/app/camera/engine/CommonEngine$1;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "extraSurfaceChanged, width="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CommonEngine"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$000(Lcom/sec/android/app/camera/engine/CommonEngine;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    if-ne p3, p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$000(Lcom/sec/android/app/camera/engine/CommonEngine;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    if-ne p4, p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$100(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_EXTRA_PREVIEW_SURFACE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$202(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "CommonEngine"

    const-string v0, "extraSurfaceCreated"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$000(Lcom/sec/android/app/camera/engine/CommonEngine;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$000(Lcom/sec/android/app/camera/engine/CommonEngine;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$300(Lcom/sec/android/app/camera/engine/CommonEngine;)Landroid/view/SurfaceView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$000(Lcom/sec/android/app/camera/engine/CommonEngine;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$000(Lcom/sec/android/app/camera/engine/CommonEngine;)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-interface {p1, v0, p0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "CommonEngine"

    const-string v0, "extraSurfaceDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$1;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$202(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z

    return-void
.end method
