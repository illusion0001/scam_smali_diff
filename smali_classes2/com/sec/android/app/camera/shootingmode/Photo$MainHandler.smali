.class Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;
.super Landroid/os/Handler;
.source "Photo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Photo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field private final mPhoto:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/camera/shootingmode/Photo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/shootingmode/Photo;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->mPhoto:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/Photo;Lcom/sec/android/app/camera/shootingmode/Photo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/Photo;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage : msg.what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Photo"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->mPhoto:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/Photo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$5900(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->access$4400(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$5900(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->access$4300(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeMessages(I)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeMessages(I)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$5900(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->access$2200(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;)V

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$600(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$5800(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V

    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_ADDITIONAL_EFFECTS_WITH_SCENE_DETECTION:Z

    if-eqz p0, :cond_5

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$600(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    move-result-object p0

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$1500(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;I)V

    :cond_5
    :goto_0
    return-void
.end method
