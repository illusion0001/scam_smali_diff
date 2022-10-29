.class Lcom/sec/android/app/camera/util/VoiceAssistantManager$SpeakTtsRunnable;
.super Ljava/lang/Object;
.source "VoiceAssistantManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/util/VoiceAssistantManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeakTtsRunnable"
.end annotation


# instance fields
.field mLock:Ljava/lang/Object;

.field mString:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/camera/util/VoiceAssistantManager;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/util/VoiceAssistantManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/util/VoiceAssistantManager$SpeakTtsRunnable;->this$0:Lcom/sec/android/app/camera/util/VoiceAssistantManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/util/VoiceAssistantManager$SpeakTtsRunnable;->mLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/util/VoiceAssistantManager;Lcom/sec/android/app/camera/util/VoiceAssistantManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/util/VoiceAssistantManager$SpeakTtsRunnable;-><init>(Lcom/sec/android/app/camera/util/VoiceAssistantManager;)V

    return-void
.end method


# virtual methods
.method public getTtsString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/util/VoiceAssistantManager$SpeakTtsRunnable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/util/VoiceAssistantManager$SpeakTtsRunnable;->mString:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/util/VoiceAssistantManager$SpeakTtsRunnable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/util/VoiceAssistantManager$SpeakTtsRunnable;->this$0:Lcom/sec/android/app/camera/util/VoiceAssistantManager;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/VoiceAssistantManager;->access$100(Lcom/sec/android/app/camera/util/VoiceAssistantManager;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/util/VoiceAssistantManager$SpeakTtsRunnable;->this$0:Lcom/sec/android/app/camera/util/VoiceAssistantManager;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/VoiceAssistantManager;->access$100(Lcom/sec/android/app/camera/util/VoiceAssistantManager;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/camera/util/VoiceAssistantManager$SpeakTtsRunnable;->mString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/glview/GLContext;->speakTts(Ljava/lang/String;I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setTtsString(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/util/VoiceAssistantManager$SpeakTtsRunnable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/app/camera/util/VoiceAssistantManager$SpeakTtsRunnable;->mString:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
