.class Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;
.super Landroid/os/Handler;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field private final mVideo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/camera/shootingmode/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/shootingmode/Video;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;->mVideo:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/Video;Lcom/sec/android/app/camera/shootingmode/Video$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/Video;)V

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

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;->mVideo:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/Video;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->access$300(Lcom/sec/android/app/camera/shootingmode/Video;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->access$100(Lcom/sec/android/app/camera/shootingmode/Video;)Lcom/sec/android/app/camera/widget/gl/AudioZoomView;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->access$100(Lcom/sec/android/app/camera/shootingmode/Video;)Lcom/sec/android/app/camera/widget/gl/AudioZoomView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/AudioZoomView;->hide()V

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->access$200(Lcom/sec/android/app/camera/shootingmode/Video;)V

    :cond_3
    :goto_0
    return-void
.end method
