.class Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;
.super Landroid/os/Handler;
.source "SingleTakePhoto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field private final mSingleTakePhoto:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->mSingleTakePhoto:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage : msg.what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleTakePhoto"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->mSingleTakePhoto:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->removeMessages(I)V

    sget-object p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;->CAPTURING:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$1400(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;)V

    goto/16 :goto_1

    :pswitch_1
    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->removeMessages(I)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$400(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;->PREPARE_CAPTURING:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    if-ne p0, p1, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$1200(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$1300(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)V

    goto :goto_1

    :pswitch_2
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$1100(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)V

    goto :goto_1

    :pswitch_3
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$1000(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)V

    goto :goto_1

    :pswitch_4
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->removeMessages(I)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$800(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;->startCenterRectAnimation()V

    goto :goto_1

    :pswitch_5
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->removeMessages(I)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$900(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)V

    goto :goto_1

    :pswitch_6
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->removeMessages(I)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$800(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;

    move-result-object p0

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$400(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;->PREPARE_CAPTURING:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;->startShutterAnimation(Z)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->removeMessages(I)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$400(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;->PREPARE_CAPTURING:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    if-ne p0, p1, :cond_3

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$500(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SINGLE_TAKE_PICTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelCapture(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$400(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;->CAPTURING:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    if-ne p0, p1, :cond_4

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->access$500(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SINGLE_TAKE_PICTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleShutterEvent(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
