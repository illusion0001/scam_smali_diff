.class Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "RecordingManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/RecordingManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$RecordingManagerImpl$2()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$700(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    const v0, 0x7f1103b3

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecordingManagerImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$400(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "onReceive return - RecordingManager is unregistered"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$800(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "onReceive return - MediaRecorderProfile is null"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "camera.action.VIDEO_CAPABILITY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "camera.action.LIMIT_RECORDING_SEAMLESS_ZOOM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v4

    goto :goto_0

    :sswitch_2
    const-string v2, "camera.action.CALL_STATE_OFFHOOK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_3
    const-string v2, "camera.action.SHUTDOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "camera.action.CALL_STATE_RINGING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_5
    const-string v2, "camera.action.CALL_STATE_IDLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_6
    const-string v2, "camera.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_7
    const-string v2, "camera.action.AUDIOFOCUS_LOSS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v3

    goto :goto_0

    :sswitch_8
    const-string v2, "camera.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_9
    const-string v2, "camera.action.WIFI_DISPLAY_NOT_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0xa

    goto :goto_0

    :sswitch_a
    const-string v2, "camera.action.RECORDING_LOW_POWER_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    :cond_2
    :goto_0
    const-wide/16 v5, 0x3e8

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {p0, v4}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$1602(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;Z)Z

    goto/16 :goto_1

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {p0, v4}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$1502(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;Z)Z

    goto/16 :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$700(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$700(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$2$i7q_HOzvPXsnLb15hbVBVXUlUCE;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$2$i7q_HOzvPXsnLb15hbVBVXUlUCE;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {p1, v4}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$1302(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;Z)Z

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {p0, v4}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$1400(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;Z)V

    goto/16 :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$1302(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;Z)Z

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {p0, v3}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$1400(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;Z)V

    goto/16 :goto_1

    :pswitch_5
    const-string p1, "microphone_plugged"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$800(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->isAudioEncodingDisabled()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$700(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    const p2, 0x7f1103b8

    invoke-static {p1, p2, v3}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_RECORDING_MULTI_MIC_ZOOM_FOCUS:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$1100(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {p1, v3}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->enableMultiMicZoomFocus(Z)V

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {p0, v4}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$1202(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;Z)Z

    goto/16 :goto_1

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$1202(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;Z)Z

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$800(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->isAudioEncodingDisabled()Z

    move-result p1

    if-nez p1, :cond_5

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_RECORDING_MULTI_MIC_ZOOM_FOCUS:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$900(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomInMic()I

    move-result p1

    if-ne p1, v4, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->enableMultiMicZoomFocus(Z)V

    goto/16 :goto_1

    :pswitch_6
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$900(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$900(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result p2

    invoke-static {p2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderExternalStorageAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$400(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onCancelRecordingRequested()V

    goto/16 :goto_1

    :pswitch_7
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$400(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onStopRecordingRequested()V

    goto/16 :goto_1

    :pswitch_8
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getTotalRecordingTimeInMs()J

    move-result-wide p1

    div-long/2addr p1, v5

    sget v0, Lcom/samsung/android/camera/feature/Feature;->MIN_RECORDING_TIME_TO_ENABLE_LOW_POWER_MODE:I

    int-to-long v0, v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$700(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->getRecordingOverheatLevel()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->setRecordingOverheatLevel(I)V

    goto :goto_1

    :pswitch_9
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getTotalRecordingTimeInMs()J

    move-result-wide p1

    div-long/2addr p1, v5

    sget v0, Lcom/samsung/android/camera/feature/Feature;->MAX_SEAMLESS_ZOOM_RECORDING_TIME_LIMIT_IN_OVERHEAT_CONDITION:I

    int-to-long v0, v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$900(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result p1

    const/16 p2, 0x14

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$1000(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$700(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->isTemperatureHighToDualRecord()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->disableRecordingSeamlessZoom(Z)V

    goto :goto_1

    :pswitch_a
    invoke-static {p1}, Lcom/sec/android/app/camera/provider/CallStateManager;->isVTCallOngoing(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;->this$0:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->access$400(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onStopRecordingRequested()V

    :cond_5
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x797c0b3b -> :sswitch_a
        -0x3b27fe5c -> :sswitch_9
        -0x37e00a46 -> :sswitch_8
        -0x322c7c4f -> :sswitch_7
        -0x215f7beb -> :sswitch_6
        -0x19ce236c -> :sswitch_5
        -0x16cd912e -> :sswitch_4
        0x210cbe45 -> :sswitch_3
        0x44f10232 -> :sswitch_2
        0x4ac0935a -> :sswitch_1
        0x7a5bfc6b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
