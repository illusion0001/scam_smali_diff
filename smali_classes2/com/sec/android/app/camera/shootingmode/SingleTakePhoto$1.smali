.class Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$1;
.super Landroid/content/BroadcastReceiver;
.source "SingleTakePhoto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleTakePhoto"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "camera.action.CALL_STATE_OFFHOOK"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "camera.action.CALL_STATE_RINGING"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v4

    goto :goto_1

    :sswitch_2
    const-string v0, "camera.action.CALL_STATE_IDLE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "camera.action.COVER_ATTACHED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_5

    if-eq p2, v4, :cond_3

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$600(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0, v4, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    goto/16 :goto_2

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$600(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0, v4, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$400(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;->PREPARE_CAPTURING:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    if-ne p1, p2, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$500(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SINGLE_TAKE_PICTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelCapture(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$400(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;->CAPTURING:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    if-ne p1, p2, :cond_7

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$500(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SINGLE_TAKE_PICTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleShutterEvent(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$100(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "hrm_sensor_capture_unavailable_guide_popup_enabled"

    invoke-static {p1, p2, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$200(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;->UNAVAILABLE_HRM_CAPTURE_GUIDE:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$200(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110522

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$200(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1102d3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$1;->this$0:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;

    invoke-static {p0, v3}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$300(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;Z)V

    :cond_7
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c86ca05 -> :sswitch_3
        -0x19ce236c -> :sswitch_2
        -0x16cd912e -> :sswitch_1
        0x44f10232 -> :sswitch_0
    .end sparse-switch
.end method
