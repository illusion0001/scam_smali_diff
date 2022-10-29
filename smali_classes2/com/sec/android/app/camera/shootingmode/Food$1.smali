.class Lcom/sec/android/app/camera/shootingmode/Food$1;
.super Landroid/content/BroadcastReceiver;
.source "Food.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Food;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Food;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Food;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: action = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Food"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, 0x10ac4bed

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "camera.action.ERROR_CAMERA_BUSY"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Food;->access$100(Lcom/sec/android/app/camera/shootingmode/Food;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Food;->access$200(Lcom/sec/android/app/camera/shootingmode/Food;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/Food;->access$100(Lcom/sec/android/app/camera/shootingmode/Food;)Landroid/content/BroadcastReceiver;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Food;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->access$300(Lcom/sec/android/app/camera/shootingmode/Food;)Lcom/sec/android/app/camera/shootingmode/Food$MainHandler;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Food$MainHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
