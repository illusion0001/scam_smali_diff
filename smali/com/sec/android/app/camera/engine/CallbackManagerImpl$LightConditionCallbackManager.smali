.class Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/MakerInterface$LightConditionCallback;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LightConditionCallbackManager"
.end annotation


# instance fields
.field private mLightCondition:I

.field private mLightConditionForCapture:I

.field private mLightConditionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/CallbackManager$LightConditionListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->mLightConditionListeners:Ljava/util/List;

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->reset()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;Lcom/sec/android/app/camera/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->notifyCurrentLightCondition()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->reset()V

    return-void
.end method

.method private getLightConditionString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string v0, ")"

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TORCH FLASH("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LLS_FLASH("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FLASH("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LLS_LOW("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIS_LOW("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOW("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HIGH("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLightConditionValue(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/4 p0, 0x6

    return p0

    :pswitch_1
    const/4 p0, 0x5

    return p0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/4 p0, 0x2

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyCurrentLightCondition()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->mLightConditionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/interfaces/CallbackManager$LightConditionListener;

    iget v2, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->mLightCondition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->getLightConditionValue(Ljava/lang/Integer;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager$LightConditionListener;->onLightConditionChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->mLightCondition:I

    return-void
.end method


# virtual methods
.method getLightConditionForCapture()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->mLightConditionForCapture:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->getLightConditionValue(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public synthetic lambda$onLightConditionChanged$0$CallbackManagerImpl$LightConditionCallbackManager()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2000(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2100(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->notifyCurrentLightCondition()V

    return-void
.end method

.method public onCameraSettingChanged(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;I)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$1;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->notifyCurrentLightCondition()V

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->notifyCurrentLightCondition()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onLightConditionChanged(Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->mLightCondition:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p1, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLightConditionChanged : lightCondition="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->getLightConditionString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CallbackManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->mLightCondition:I

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2000(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$LightConditionCallbackManager$ph0IKcYcAo64Q-pHRHzY1RElhig;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$CallbackManagerImpl$LightConditionCallbackManager$ph0IKcYcAo64Q-pHRHzY1RElhig;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method registerLightConditionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$LightConditionListener;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->mLightConditionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2200(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2200(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2200(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->mLightConditionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->mLightConditionListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method unregisterLightConditionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$LightConditionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->mLightConditionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->mLightConditionListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2200(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2200(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->this$0:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->access$2200(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_0
    return-void
.end method

.method updateLightConditionForCapture()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->mLightCondition:I

    iput v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->mLightConditionForCapture:I

    return v0
.end method
