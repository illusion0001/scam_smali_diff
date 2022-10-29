.class Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;
.super Ljava/lang/Object;
.source "Pro.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$SensorInfoEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Pro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorInfoEventManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Pro;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/shootingmode/Pro;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/Pro;Lcom/sec/android/app/camera/shootingmode/Pro$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;-><init>(Lcom/sec/android/app/camera/shootingmode/Pro;)V

    return-void
.end method


# virtual methods
.method public onColorTemperatureChanged(JI)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1100(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    div-int/lit8 p3, p3, 0x64

    invoke-static {p1, p3}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$4700(Lcom/sec/android/app/camera/shootingmode/Pro;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$3902(Lcom/sec/android/app/camera/shootingmode/Pro;I)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$3500(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "A "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$3900(Lcom/sec/android/app/camera/shootingmode/Pro;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "K"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$3400(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/widget/gl/ProSlider;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$3900(Lcom/sec/android/app/camera/shootingmode/Pro;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x64

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->setValueText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onExposureTimeChanged(JJ)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1100(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1300(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f03001c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    const-wide/16 v0, 0x3e8

    div-long/2addr p3, v0

    long-to-int p3, p3

    invoke-static {p2, p3}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$4800(Lcom/sec/android/app/camera/shootingmode/Pro;I)I

    move-result p3

    invoke-static {p2, p3}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$3802(Lcom/sec/android/app/camera/shootingmode/Pro;I)I

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$3300(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "A "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$3800(Lcom/sec/android/app/camera/shootingmode/Pro;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1300(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f110000

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$3800(Lcom/sec/android/app/camera/shootingmode/Pro;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$3200(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/widget/gl/ProSlider;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$3800(Lcom/sec/android/app/camera/shootingmode/Pro;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, p1, p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->setValueText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onExposureValueChanged(JI)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$4900(Lcom/sec/android/app/camera/shootingmode/Pro;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    const/16 p1, 0x14

    const/16 p2, -0x14

    invoke-static {p3, p2, p1}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result p3

    if-ge p3, p1, :cond_1

    if-gt p3, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$2700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$5100(Lcom/sec/android/app/camera/shootingmode/Pro;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setTextColor(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$2700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$5000(Lcom/sec/android/app/camera/shootingmode/Pro;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setTextColor(I)V

    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$2700(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    const/4 p2, 0x5

    invoke-static {p0, p2, p3}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$4000(Lcom/sec/android/app/camera/shootingmode/Pro;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onIsoChanged(JI)V
    .locals 4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {p1, p3}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$5200(Lcom/sec/android/app/camera/shootingmode/Pro;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$3702(Lcom/sec/android/app/camera/shootingmode/Pro;I)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1100(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getIso()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$2900(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "A "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1300(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x7f110000

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$SensorInfoEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$2800(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/widget/gl/ProSlider;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->setValueText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
