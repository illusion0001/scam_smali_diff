.class Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;
.super Landroid/os/Handler;
.source "WideSelfie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/WideSelfie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field private final mWideSelfie:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/camera/shootingmode/WideSelfie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;->mWideSelfie:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;->mWideSelfie:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const-string v2, "WideSelfie"

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;->CAPTURING:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1600(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    goto/16 :goto_0

    :cond_1
    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;->removeMessages(I)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1400(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1500(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1500(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;->removeMessages(I)V

    const-wide/16 v0, 0x32

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;->removeMessages(I)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1300(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "MESSAGE_WIDE_SELFIE_WARNING_HIGH"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;->removeMessages(I)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1200(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)I

    move-result v2

    if-ne v2, p1, :cond_3

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object v2

    sget-object v4, Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;->PANORAMA_WARNING:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    invoke-interface {v2, v4, v3}, Lcom/sec/android/app/camera/interfaces/SoundManager;->playSound(Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;I)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getHapticFeedback()Lcom/sec/android/app/camera/interfaces/HapticManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/HapticManager;->playHaptic(I)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_5
    :try_start_0
    const-string p0, "Inactivity timer is expired. finish."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;->PANORAMA_WARNING:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    invoke-interface {p0, p1, v3}, Lcom/sec/android/app/camera/interfaces/SoundManager;->playSound(Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;I)V

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "MSG arrived after the onDestroy. Ignore exception"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
