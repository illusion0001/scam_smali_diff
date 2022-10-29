.class Lcom/sec/android/app/camera/engine/EffectController;
.super Ljava/lang/Object;
.source "EffectController.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# static fields
.field private static final EFFECT_PROCESSOR_MSG_SNAP_IMAGE:I = 0x3

.field private static final EFFECT_PROCESSOR_MSG_STILL_IMAGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EffectController"


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

.field private final mSecEffectProcessorListener:Lcom/samsung/android/camera/effect/SecEffectProcessor$EffectProcessorListener;

.field private mSecEffectProcessorMode:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessorMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    new-instance v0, Lcom/sec/android/app/camera/engine/EffectController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/EffectController$1;-><init>(Lcom/sec/android/app/camera/engine/EffectController;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessorListener:Lcom/samsung/android/camera/effect/SecEffectProcessor$EffectProcessorListener;

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/engine/EffectController;)Lcom/sec/android/app/camera/engine/CommonEngine;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/engine/EffectController;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object p0
.end method

.method private enableFilterBypass(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/EffectController;->setFilterIntensityLevel(I)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessorMode:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoMyFilter()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoMyFilterIntensityLevel()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/engine/EffectController;->setMyFilterEffect(II)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPhotoMyFilter()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPhotoMyFilterIntensityLevel()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/engine/EffectController;->setMyFilterEffect(II)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoFilter()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoFilterIntensityLevel()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/engine/EffectController;->setFilterEffect(II)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPhotoFilter()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPhotoFilterIntensityLevel()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/engine/EffectController;->setFilterEffect(II)V

    :goto_0
    return-void
.end method

.method private isValidFacing(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;)Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    sget-object v0, Lcom/sec/android/app/camera/engine/EffectController$2;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    if-nez p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    :pswitch_1
    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isValidMode(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;)Z
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/engine/EffectController$2;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    iget p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessorMode:I

    const/4 p1, 0x7

    if-ne p0, p1, :cond_0

    move v0, v1

    :cond_0
    return v0

    :pswitch_1
    iget p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessorMode:I

    const/4 p1, 0x6

    if-ne p0, p1, :cond_1

    move v0, v1

    :cond_1
    return v0

    :pswitch_2
    iget p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessorMode:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2

    move v0, v1

    :cond_2
    return v0

    :pswitch_3
    iget p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessorMode:I

    if-ne p0, v1, :cond_3

    move v0, v1

    :cond_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private registerCameraSettingChangedListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_VIDEO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_VIDEO_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_MY_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_VIDEO_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_VIDEO_MY_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BEAUTY_FILTER_EFFECT_ENABLED:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_PHOTO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_PHOTO_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_VIDEO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_VIDEO_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_PHOTO_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_PHOTO_MY_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_VIDEO_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_VIDEO_MY_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SAVE_AS_FLIPPED:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method private setEffectProcessorParameter(ILjava/lang/Object;II)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/EffectController;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setEffectParameter(ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "EffectController"

    const-string p1, "mSecEffectProcessor is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private setEffectProcessorParameter(I[B)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/EffectController;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setEffectParameter(I[B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "EffectController"

    const-string p1, "mSecEffectProcessor is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private setEffectProcessorParameter(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/EffectController;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setEffectParameter(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "EffectController"

    const-string p1, "mSecEffectProcessor is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private setFilter(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFilter : filterId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EffectController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/EffectController;->isEffectProcessorActivated()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "setFilter : Returned, because EffectProcessor is not activated."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    const/16 p1, 0x190

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setEffect(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-static {p1}, Lcom/sec/android/app/camera/plugin/PlugInFilterStorage;->getFilterForSet(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setEffect(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setFilterEffect(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/EffectController;->setFilter(I)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/engine/EffectController;->setFilterIntensityLevel(I)V

    return-void
.end method

.method private setFilterIntensityLevel(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 p1, p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/EffectController;->setEffectProcessorParameter(Ljava/lang/String;)V

    return-void
.end method

.method private setMyFilter(I)V
    .locals 3

    const-string v0, "EffectController"

    const/16 v1, 0x2711

    if-ne p1, v1, :cond_0

    const-string p0, "setMyFilter : create my filter is not my filter set id, return."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMyFilter : myFilterId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/EffectController;->isEffectProcessorActivated()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "setMyFilter : Returned, because EffectProcessor is not activated."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    const/16 p1, 0x190

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setEffect(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x2712

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    const-string p1, "[TEMP]my_filter_preview.sel"

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setEffect(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-static {p1}, Lcom/sec/android/app/camera/plugin/PlugInMyFilterStorage;->getMyFilterForSet(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setEffect(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setMyFilterEffect(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/EffectController;->setMyFilter(I)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/engine/EffectController;->setFilterIntensityLevel(I)V

    return-void
.end method

.method private setSaveAsFlipped(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setSaveAsFlipped(I)V

    return-void
.end method

.method private unregisterCameraSettingChangedListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_VIDEO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_VIDEO_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_MY_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_VIDEO_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_VIDEO_MY_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BEAUTY_FILTER_EFFECT_ENABLED:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_PHOTO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_PHOTO_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_VIDEO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_VIDEO_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_PHOTO_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_PHOTO_MY_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_VIDEO_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_VIDEO_MY_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SAVE_AS_FLIPPED:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method


# virtual methods
.method createEffectProcessor(ILandroid/os/Handler;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createEffectProcessor - mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EffectController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    if-eqz v0, :cond_0

    const-string p0, "createEffectProcessor : returned because mSecEffectProcessor is not null."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessorMode:I

    new-instance p1, Lcom/samsung/android/camera/effect/SecEffectProcessor;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p2}, Lcom/samsung/android/camera/effect/SecEffectProcessor;-><init>(Landroid/content/Context;ILandroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessorListener:Lcom/samsung/android/camera/effect/SecEffectProcessor$EffectProcessorListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setEffectProcessorListener(Lcom/samsung/android/camera/effect/SecEffectProcessor$EffectProcessorListener;)V

    new-instance p1, Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/EffectController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    return-void
.end method

.method destroyEffectProcessor()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "EffectController"

    const-string v1, "destroyEffectProcessor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setEffectProcessorListener(Lcom/samsung/android/camera/effect/SecEffectProcessor$EffectProcessorListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-virtual {v0}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->stopProcessing()Z

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-virtual {v0}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->release()V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessorMode:I

    return-void
.end method

.method getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method isEffectProcessorActivated()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isEffectProcessorRequired()Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessorMode:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCameraSettingChanged(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/EffectController;->isEffectProcessorActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraSettingChanged : key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EffectController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/EffectController;->isValidMode(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/EffectController;->isValidFacing(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/engine/EffectController$2;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-nez p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/EffectController;->enableFilterBypass(Z)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/engine/EffectController;->setSaveAsFlipped(I)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/engine/EffectController;->setFilterIntensityLevel(I)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoMyFilterIntensityLevel()I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/camera/engine/EffectController;->setMyFilterEffect(II)V

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPhotoMyFilterIntensityLevel()I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/camera/engine/EffectController;->setMyFilterEffect(II)V

    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoFilterIntensityLevel()I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/camera/engine/EffectController;->setFilterEffect(II)V

    goto :goto_1

    :pswitch_6
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPhotoFilterIntensityLevel()I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/camera/engine/EffectController;->setFilterEffect(II)V

    :goto_1
    return-void

    :cond_3
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCameraSettingChanged return -- invalid mode : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessorMode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", facing : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setEffectParameter(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/EffectController;->setEffectProcessorParameter(Ljava/lang/String;)V

    return-void
.end method

.method setRecordingSurface(Landroid/view/Surface;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/EffectController;->isEffectProcessorActivated()Z

    move-result v0

    const-string v1, "EffectController"

    if-nez v0, :cond_0

    const-string p0, "setRecordingSurface : Returned, because EffectProcessor is not activated."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "setRecordingSurface"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setRecordingSurface(Landroid/view/Surface;)V

    return-void
.end method

.method start()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/EffectController;->registerCameraSettingChangedListener()V

    return-void
.end method

.method startEffectProcessor(Landroid/view/Surface;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/EffectController;->isEffectProcessorActivated()Z

    move-result v0

    const-string v1, "EffectController"

    if-nez v0, :cond_0

    const-string p0, "startEffectProcessor : Returned, because EffectProcessor is not activated."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "startEffectProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-virtual {v0}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->initialize()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setInputSurface(Landroid/graphics/SurfaceTexture;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setOutputSurface(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p1, v1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setCameraMode(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSaveAsFlipped()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setSaveAsFlipped(I)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-virtual {p1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->startProcessing()Z

    iget p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessorMode:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoMyFilter()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoMyFilterIntensityLevel()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/engine/EffectController;->setMyFilterEffect(II)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPhotoMyFilter()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPhotoMyFilterIntensityLevel()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/engine/EffectController;->setMyFilterEffect(II)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    const/16 p1, 0x1c2

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setEffect(I)V

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    const/16 p1, 0x1a9

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setEffect(I)V

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    const/16 p1, 0x1bf

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->setEffect(I)V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoFilter()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoFilterIntensityLevel()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/engine/EffectController;->setFilterEffect(II)V

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPhotoFilter()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPhotoFilterIntensityLevel()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/engine/EffectController;->setFilterEffect(II)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method stop()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/EffectController;->unregisterCameraSettingChangedListener()V

    return-void
.end method

.method takePicture(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/EffectController;->isEffectProcessorActivated()Z

    move-result v0

    const-string v1, "EffectController"

    if-nez v0, :cond_0

    const-string/jumbo p0, "takePicture : Returned, because EffectProcessor is not activated."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "takePicture"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHeif()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->takepicture(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method takePreviewSnapshot()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/EffectController;->isEffectProcessorActivated()Z

    move-result v0

    const-string v1, "EffectController"

    if-nez v0, :cond_0

    const-string/jumbo p0, "takePreviewSnapshot : Returned, because EffectProcessor is not activated."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "takePreviewSnapshot"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/EffectController;->mSecEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-virtual {p0}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->snapshot()V

    return-void
.end method
