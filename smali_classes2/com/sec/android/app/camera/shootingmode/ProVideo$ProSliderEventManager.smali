.class Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;
.super Ljava/lang/Object;
.source "ProVideo.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/gl/ProSlider$ProSliderValueChangeListener;
.implements Lcom/sec/android/app/camera/widget/gl/ProSlider$ProSliderHideListener;
.implements Lcom/sec/android/app/camera/widget/gl/ProSlider$ProSliderLoggingListener;
.implements Lcom/sec/android/app/camera/widget/gl/ProSlider$ProSliderManualFocusAssistListener;
.implements Lcom/sec/android/app/camera/widget/gl/ProSlider$ProSliderAutoButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/ProVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProSliderEventManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/ProVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApertureValueChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAperture(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$2800(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$3100(Lcom/sec/android/app/camera/shootingmode/ProVideo;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setSubText(Ljava/lang/String;)V

    return-void
.end method

.method public onAutoButtonClicked(Lcom/sec/android/app/camera/widget/gl/ProSlider;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$2300(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProSlider;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$3200(Lcom/sec/android/app/camera/shootingmode/ProVideo;)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$1300(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;->ALPHA:Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;

    :goto_0
    invoke-virtual {p1, v0, p0}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->show(ILcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;)V

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$2700(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProSlider;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$3300(Lcom/sec/android/app/camera/shootingmode/ProVideo;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$1300(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;->ALPHA:Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;

    :goto_1
    invoke-virtual {p1, v0, p0}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->show(ILcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$2900(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProSlider;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$3400(Lcom/sec/android/app/camera/shootingmode/ProVideo;)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$1300(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;->ALPHA:Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;

    :goto_2
    invoke-virtual {p1, v0, p0}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->show(ILcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public onExposureValueChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onExposureValueChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setExposureValue(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$2200(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    const/4 v1, 0x5

    invoke-static {p0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$3500(Lcom/sec/android/app/camera/shootingmode/ProVideo;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public onHideProSlider(Lcom/sec/android/app/camera/widget/gl/ProSlider;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$1800(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$1800(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setSelected(Z)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$3600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProSlider;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$3600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProSlider;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$3602(Lcom/sec/android/app/camera/shootingmode/ProVideo;Lcom/sec/android/app/camera/widget/gl/ProSlider;)Lcom/sec/android/app/camera/widget/gl/ProSlider;

    :cond_1
    return-void
.end method

.method public onIsoValueChanged(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIsoValueChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$3700(Lcom/sec/android/app/camera/shootingmode/ProVideo;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$3800(Lcom/sec/android/app/camera/shootingmode/ProVideo;I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setIso(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$2400(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$3500(Lcom/sec/android/app/camera/shootingmode/ProVideo;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public onKelvinValueChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKelvinValueChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setWhiteBalance(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setKelvinValue(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$3000(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getKelvinValue()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$3500(Lcom/sec/android/app/camera/shootingmode/ProVideo;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public onManualFocusAssistStarted()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_FOCUS_PEAKING:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$1500(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->enableFocusPeaking(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onManualFocusAssistStopped()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_FOCUS_PEAKING:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$1500(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->enableFocusPeaking(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    :goto_0
    return-void
.end method

.method public onManualFocusAutoLoggingEvent(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    const-string v0, "1330"

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    return-void
.end method

.method public onManualFocusValueChanged(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onManualFocusValueChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFocusLength(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$2600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    const/4 v2, 0x3

    invoke-static {v1, v2, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$3500(Lcom/sec/android/app/camera/shootingmode/ProVideo;II)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p0, v2, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$3900(Lcom/sec/android/app/camera/shootingmode/ProVideo;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProSliderLoggingEvent(I)V
    .locals 3

    if-eqz p1, :cond_7

    const-string v0, "AUTO"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    const-string p0, "1"

    goto :goto_0

    :cond_1
    const-string p0, "2"

    :goto_0
    const-string p1, "1332"

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getKelvinValue()I

    move-result p0

    int-to-long p0, p0

    const-wide/16 v0, 0x64

    mul-long/2addr p0, v0

    const-string v0, "1331"

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getIso()I

    move-result p1

    const-string v1, "1322"

    if-nez p1, :cond_4

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    const/4 p1, 0x0

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getIso()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$3500(Lcom/sec/android/app/camera/shootingmode/ProVideo;II)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result p1

    const-string v2, "1325"

    if-nez p1, :cond_6

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result p1

    invoke-static {p0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$3500(Lcom/sec/android/app/camera/shootingmode/ProVideo;II)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result p0

    int-to-long p0, p0

    const-string v0, "1326"

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    :goto_1
    return-void
.end method

.method public onShutterSpeedValueChanged(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterSpeedValueChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$2800(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    const/4 v3, 0x1

    invoke-static {v2, v3, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$3500(Lcom/sec/android/app/camera/shootingmode/ProVideo;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$4000(Lcom/sec/android/app/camera/shootingmode/ProVideo;Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setShutterSpeed(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$4100(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PRO_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setShutterSpeed(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$4000(Lcom/sec/android/app/camera/shootingmode/ProVideo;Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$4100(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PRO_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setShutterSpeed(I)V

    :goto_0
    return-void
.end method

.method public onWhiteBalanceValueChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWhiteBalanceValueChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setWhiteBalance(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$3000(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/ProVideo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->access$3500(Lcom/sec/android/app/camera/shootingmode/ProVideo;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    return-void
.end method
