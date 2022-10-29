.class Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;
.super Ljava/lang/Object;
.source "ProVideo.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/gl/ProItem$ItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/ProVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProItemSelectListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/ProVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private selectColorTuneButton()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$800(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$1600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "ProVideo"

    const-string v0, "selectColorTuneButton: Returned, not supported engine state"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$1700(Lcom/sec/android/app/camera/shootingmode/ProVideo;I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$1900(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$1802(Lcom/sec/android/app/camera/shootingmode/ProVideo;Lcom/sec/android/app/camera/widget/gl/ProItem;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    const-string p0, "1304"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private selectExposureValueButton()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$2000(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProSlider;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$2100(Lcom/sec/android/app/camera/shootingmode/ProVideo;Lcom/sec/android/app/camera/widget/gl/ProSlider;I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$2200(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$1802(Lcom/sec/android/app/camera/shootingmode/ProVideo;Lcom/sec/android/app/camera/widget/gl/ProItem;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    const-string p0, "1303"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private selectIsoButton()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$2300(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProSlider;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getIso()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$2100(Lcom/sec/android/app/camera/shootingmode/ProVideo;Lcom/sec/android/app/camera/widget/gl/ProSlider;I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$2400(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$1802(Lcom/sec/android/app/camera/shootingmode/ProVideo;Lcom/sec/android/app/camera/widget/gl/ProItem;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    const-string p0, "1301"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private selectManualFocusButton()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$2500(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProSlider;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$2100(Lcom/sec/android/app/camera/shootingmode/ProVideo;Lcom/sec/android/app/camera/widget/gl/ProSlider;I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$2600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$1802(Lcom/sec/android/app/camera/shootingmode/ProVideo;Lcom/sec/android/app/camera/widget/gl/ProItem;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    const-string p0, "1306"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private selectShutterSpeedButton()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$2700(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProSlider;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$2100(Lcom/sec/android/app/camera/shootingmode/ProVideo;Lcom/sec/android/app/camera/widget/gl/ProSlider;I)V

    const-string v0, "1302"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$2800(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$1802(Lcom/sec/android/app/camera/shootingmode/ProVideo;Lcom/sec/android/app/camera/widget/gl/ProItem;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 p0, 0x1

    return p0
.end method

.method private selectWhiteBalanceButton()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$2900(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProSlider;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getKelvinValue()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$2100(Lcom/sec/android/app/camera/shootingmode/ProVideo;Lcom/sec/android/app/camera/widget/gl/ProSlider;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$2900(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProSlider;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$2100(Lcom/sec/android/app/camera/shootingmode/ProVideo;Lcom/sec/android/app/camera/widget/gl/ProSlider;I)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$3000(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$1802(Lcom/sec/android/app/camera/shootingmode/ProVideo;Lcom/sec/android/app/camera/widget/gl/ProItem;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    const-string p0, "1305"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public onSelect(Lcom/sec/android/app/camera/interfaces/CommandId;Z)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$1300(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    sget-object p2, Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$1400(Lcom/sec/android/app/camera/shootingmode/ProVideo;Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$1000(Lcom/sec/android/app/camera/shootingmode/ProVideo;Z)V

    return v0

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$1500(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$1300(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lcom/sec/android/app/camera/interfaces/CommandId;->COLOR_TUNE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    if-ne p1, p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    sget-object v1, Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;->NONE:Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;

    invoke-static {p2, v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$1400(Lcom/sec/android/app/camera/shootingmode/ProVideo;Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    sget-object v1, Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;->ALPHA:Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;

    invoke-static {p2, v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$1400(Lcom/sec/android/app/camera/shootingmode/ProVideo;Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;)V

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/sec/android/app/camera/interfaces/CommandId;->COLOR_TUNE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    if-eq p1, p2, :cond_4

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p2, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$1000(Lcom/sec/android/app/camera/shootingmode/ProVideo;Z)V

    :cond_4
    :goto_0
    sget-object p2, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CommandId:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CommandId;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->selectManualFocusButton()Z

    move-result p0

    return p0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->selectWhiteBalanceButton()Z

    move-result p0

    return p0

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->selectColorTuneButton()Z

    move-result p0

    return p0

    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->selectExposureValueButton()Z

    move-result p0

    return p0

    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->selectShutterSpeedButton()Z

    move-result p0

    return p0

    :pswitch_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;->selectIsoButton()Z

    move-result p0

    return p0

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
