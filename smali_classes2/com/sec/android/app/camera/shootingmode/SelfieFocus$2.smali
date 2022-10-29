.class Lcom/sec/android/app/camera/shootingmode/SelfieFocus$2;
.super Landroid/content/BroadcastReceiver;
.source "SelfieFocus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/SelfieFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/SelfieFocus;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/SelfieFocus;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelfieFocus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SelfieFocus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7c86ca05

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, -0x5e60bc37

    if-eq v0, v1, :cond_1

    const v1, 0x10ac4bed

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "camera.action.ERROR_CAMERA_BUSY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "camera.action.COVER_DETACHED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v3

    goto :goto_1

    :cond_2
    const-string v0, "camera.action.COVER_ATTACHED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_5

    if-eq p2, v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelfieFocus;

    invoke-static {p0, v3}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->access$100(Lcom/sec/android/app/camera/shootingmode/SelfieFocus;Z)V

    goto :goto_2

    :cond_5
    const-string p2, "hrm_sensor_capture_unavailable_guide_popup_enabled"

    invoke-static {p1, p2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelfieFocus;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->access$000(Lcom/sec/android/app/camera/shootingmode/SelfieFocus;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;->UNAVAILABLE_HRM_CAPTURE_GUIDE:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelfieFocus;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->access$000(Lcom/sec/android/app/camera/shootingmode/SelfieFocus;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110522

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelfieFocus;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->access$000(Lcom/sec/android/app/camera/shootingmode/SelfieFocus;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f1102d3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus$2;->this$0:Lcom/sec/android/app/camera/shootingmode/SelfieFocus;

    invoke-static {p0, v2}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->access$100(Lcom/sec/android/app/camera/shootingmode/SelfieFocus;Z)V

    :goto_2
    return-void
.end method
