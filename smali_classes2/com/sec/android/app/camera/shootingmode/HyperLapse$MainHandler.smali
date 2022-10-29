.class Lcom/sec/android/app/camera/shootingmode/HyperLapse$MainHandler;
.super Landroid/os/Handler;
.source "HyperLapse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/HyperLapse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field private final mHyperLapse:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/camera/shootingmode/HyperLapse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/HyperLapse;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse$MainHandler;->mHyperLapse:Ljava/lang/ref/WeakReference;

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

    const-string v1, "HyperLapse"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse$MainHandler;->mHyperLapse:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, v1}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->access$1000(Lcom/sec/android/app/camera/shootingmode/HyperLapse;I)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->access$700(Lcom/sec/android/app/camera/shootingmode/HyperLapse;)V

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->access$800(Lcom/sec/android/app/camera/shootingmode/HyperLapse;)I

    move-result p1

    if-ne p1, v0, :cond_5

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->access$500(Lcom/sec/android/app/camera/shootingmode/HyperLapse;)Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p1, v0, :cond_5

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->access$900(Lcom/sec/android/app/camera/shootingmode/HyperLapse;)V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->access$500(Lcom/sec/android/app/camera/shootingmode/HyperLapse;)Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, v0, :cond_4

    return-void

    :cond_4
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->access$600(Lcom/sec/android/app/camera/shootingmode/HyperLapse;Z)V

    :cond_5
    :goto_0
    return-void
.end method
