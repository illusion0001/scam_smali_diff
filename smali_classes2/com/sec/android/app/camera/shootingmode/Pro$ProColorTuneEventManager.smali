.class Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTuneEventManager;
.super Ljava/lang/Object;
.source "Pro.java"

# interfaces
.implements Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuButtonListener;
.implements Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingSliderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Pro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProColorTuneEventManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Pro;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Pro;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTuneEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private saveColorTuneValue()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTuneEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1700(Lcom/sec/android/app/camera/shootingmode/Pro;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTuneEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1200(Lcom/sec/android/app/camera/shootingmode/Pro;I)Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTuneEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1300(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->save(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateColorTuneValue(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTuneEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1100(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTuneType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1200(Lcom/sec/android/app/camera/shootingmode/Pro;I)Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->setSliderValue(II)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTuneEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1600(Lcom/sec/android/app/camera/shootingmode/Pro;Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTuneEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1100(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTuneType()I

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1400(Lcom/sec/android/app/camera/shootingmode/Pro;I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTuneEventManager;->saveColorTuneValue()V

    return-void
.end method


# virtual methods
.method public onBackButtonClicked()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTuneEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1100(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTuneType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1200(Lcom/sec/android/app/camera/shootingmode/Pro;I)Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTuneEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1300(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->load(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTuneEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1100(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTuneType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1400(Lcom/sec/android/app/camera/shootingmode/Pro;I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTuneEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1500(Lcom/sec/android/app/camera/shootingmode/Pro;Z)V

    const-string p0, "131"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    return-void
.end method

.method public onContrastChanged(I)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTuneEventManager;->updateColorTuneValue(II)V

    return-void
.end method

.method public onHighlightChanged(I)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTuneEventManager;->updateColorTuneValue(II)V

    return-void
.end method

.method public onResetButtonClicked()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTuneEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1100(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTuneType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1200(Lcom/sec/android/app/camera/shootingmode/Pro;I)Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->reset()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTuneEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1600(Lcom/sec/android/app/camera/shootingmode/Pro;Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTuneEventManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Pro;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1100(Lcom/sec/android/app/camera/shootingmode/Pro;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTuneType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Pro;->access$1400(Lcom/sec/android/app/camera/shootingmode/Pro;I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTuneEventManager;->saveColorTuneValue()V

    return-void
.end method

.method public onSaturationChanged(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTuneEventManager;->updateColorTuneValue(II)V

    return-void
.end method

.method public onShadowChanged(I)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTuneEventManager;->updateColorTuneValue(II)V

    return-void
.end method

.method public onTemperatureChanged(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTuneEventManager;->updateColorTuneValue(II)V

    return-void
.end method

.method public onTintChanged(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/shootingmode/Pro$ProColorTuneEventManager;->updateColorTuneValue(II)V

    return-void
.end method
