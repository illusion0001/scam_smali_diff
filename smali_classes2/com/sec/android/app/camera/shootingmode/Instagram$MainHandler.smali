.class Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;
.super Landroid/os/Handler;
.source "Instagram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Instagram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field private final mInstagram:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/camera/shootingmode/Instagram;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/shootingmode/Instagram;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;->mInstagram:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/Instagram;Lcom/sec/android/app/camera/shootingmode/Instagram$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/Instagram;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;->mInstagram:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/Instagram;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->access$700(Lcom/sec/android/app/camera/shootingmode/Instagram;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->access$600(Lcom/sec/android/app/camera/shootingmode/Instagram;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->startRecording()V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->access$500(Lcom/sec/android/app/camera/shootingmode/Instagram;)V

    :goto_0
    return-void
.end method
