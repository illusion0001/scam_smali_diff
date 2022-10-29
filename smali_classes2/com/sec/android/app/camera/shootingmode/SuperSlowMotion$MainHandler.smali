.class Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;
.super Landroid/os/Handler;
.source "SuperSlowMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field private final mSuperSlowMotion:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->mSuperSlowMotion:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage : msg.what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperSlowMotion"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->mSuperSlowMotion:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x14

    const/4 v2, 0x2

    const v3, 0x7f0807f5

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SUPER_SLOW_MOTION_FPS_CHANGEABLE:Z

    if-eqz p0, :cond_3

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$300(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p0

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$1100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionFrc()I

    move-result p1

    if-nez p1, :cond_2

    move p1, v5

    goto :goto_0

    :cond_2
    move p1, v4

    :goto_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->changeSuperSlowMotionRecordingFPS(Z)V

    :cond_3
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$1100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionFrc()I

    move-result p0

    if-ne p0, v5, :cond_4

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$1100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSuperSlowMotionFrc(I)V

    goto/16 :goto_5

    :cond_4
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$1100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionFrc()I

    move-result p0

    if-nez p0, :cond_14

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$1100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSuperSlowMotionFrc(I)V

    goto/16 :goto_5

    :pswitch_1
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    const/4 p1, 0x0

    const/16 v1, 0x82

    invoke-interface {p0, v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0, v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto/16 :goto_5

    :pswitch_2
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$3400(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V

    goto/16 :goto_5

    :pswitch_3
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$500(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$600(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Z

    move-result p0

    if-eqz p0, :cond_14

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$300(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p0, p1, :cond_14

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$700(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V

    goto/16 :goto_5

    :pswitch_4
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$1600(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V

    goto/16 :goto_5

    :pswitch_5
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$802(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;Z)Z

    goto/16 :goto_5

    :pswitch_6
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$2100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-ne p0, p1, :cond_5

    return-void

    :cond_5
    invoke-static {v0, v5}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$1900(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;Z)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$2700(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;->isHighlight()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$2800(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$2900(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V

    :cond_6
    const/16 p0, 0x4b0

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$3002(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;I)I

    goto/16 :goto_5

    :pswitch_7
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$3100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)I

    move-result p0

    if-ne p0, v5, :cond_8

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$3300(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$300(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {p0, v5}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->cancelSuperSlowMotionRecording(Z)V

    invoke-static {v0, v5}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$3302(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;Z)Z

    goto/16 :goto_5

    :cond_8
    :goto_1
    return-void

    :pswitch_8
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$3100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)I

    move-result p0

    if-eq p0, v5, :cond_9

    return-void

    :cond_9
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$300(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {p0, v4}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->cancelSuperSlowMotionRecording(Z)V

    goto/16 :goto_5

    :pswitch_9
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$3100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)I

    move-result p1

    if-ne p1, v5, :cond_f

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$900(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$1700(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)I

    move-result p1

    if-lt p1, v1, :cond_b

    return-void

    :cond_b
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$300(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p1, v1, :cond_c

    return-void

    :cond_c
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$2100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq p1, v1, :cond_e

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$2100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_FOCUSED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq p1, v1, :cond_e

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$2100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Capability;->isAfSupported()Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_2

    :cond_d
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$300(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->startAfTrigger()V

    goto :goto_3

    :cond_e
    :goto_2
    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->sendEmptyMessage(I)Z

    :goto_3
    invoke-static {v0, v5}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$3202(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;Z)Z

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$3302(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;Z)Z

    goto/16 :goto_5

    :cond_f
    :goto_4
    return-void

    :pswitch_a
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$300(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->prepareVideoRecording()V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$300(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->resetAfTrigger()V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$2100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$1100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result p0

    if-ne p0, v5, :cond_10

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$1100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result p0

    if-nez p0, :cond_10

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$2200(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V

    :cond_10
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$2302(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;Z)Z

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$2400(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    const/16 p1, 0x108

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$2400(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    const/4 p1, -0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$2500(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$2600(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$700(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$1500(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/samsung/android/glview/GLNinePatch;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    goto/16 :goto_5

    :pswitch_b
    invoke-static {v0, v4}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$902(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;Z)Z

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$1000(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;Z)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$300(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p0, p1, :cond_14

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$1100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result p0

    if-ne p0, v2, :cond_14

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$1100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result p0

    if-nez p0, :cond_14

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$1200(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/samsung/android/glview/GLButton;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$1300(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;Lcom/samsung/android/glview/GLButton;)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$1400(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V

    goto :goto_5

    :pswitch_c
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$1500(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/samsung/android/glview/GLNinePatch;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLNinePatch;->isAnimationFinished()Z

    move-result p0

    if-nez p0, :cond_11

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$1500(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/samsung/android/glview/GLNinePatch;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLNinePatch;->cancelAnimation()V

    :cond_11
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$1500(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/samsung/android/glview/GLNinePatch;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$1100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result p0

    if-ne p0, v2, :cond_14

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$1600(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$1700(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)I

    move-result p0

    if-ge p0, v1, :cond_13

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$300(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p0, p1, :cond_13

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$1100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result p0

    if-ne p0, v5, :cond_12

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$1800(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$1900(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;Z)V

    :cond_12
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$2000(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;->moveLeft()V

    goto :goto_5

    :cond_13
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->access$2000(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;

    move-result-object p0

    const p1, 0x7f0807f0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;->setFocusImage(I)V

    :cond_14
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
