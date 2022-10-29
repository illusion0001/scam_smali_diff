.class Lcom/sec/android/app/camera/shootingmode/Pro$2;
.super Ljava/lang/Object;
.source "Pro.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Pro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Pro;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Pro;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$100(Lcom/sec/android/app/camera/shootingmode/Pro;)I

    move-result v0

    const/16 v1, 0x18

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$200(Lcom/sec/android/app/camera/shootingmode/Pro;)J

    move-result-wide v2

    const-wide/16 v4, 0x18

    div-long/2addr v2, v4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$100(Lcom/sec/android/app/camera/shootingmode/Pro;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$300(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$108(Lcom/sec/android/app/camera/shootingmode/Pro;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$500(Lcom/sec/android/app/camera/shootingmode/Pro;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$400(Lcom/sec/android/app/camera/shootingmode/Pro;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$500(Lcom/sec/android/app/camera/shootingmode/Pro;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$400(Lcom/sec/android/app/camera/shootingmode/Pro;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
