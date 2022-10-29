.class public Lcom/sec/android/app/camera/util/LiveFocusUtil;
.super Ljava/lang/Object;
.source "LiveFocusUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehType;,
        Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;
    }
.end annotation


# static fields
.field private static final mBackBokehEffectLevelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;",
            ">;"
        }
    .end annotation
.end field

.field private static final mBackVideoBokehEffectLevelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;",
            ">;"
        }
    .end annotation
.end field

.field private static final mDualBokehEffectTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mFrontBokehEffectLevelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;",
            ">;"
        }
    .end annotation
.end field

.field private static final mFrontVideoBokehEffectLevelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSingleBokehEffectLevelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSingleBokehEffectTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mVideoBokehEffectTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/LiveFocusUtil$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil;->mDualBokehEffectTypeMap:Ljava/util/Map;

    new-instance v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$2;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/LiveFocusUtil$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil;->mSingleBokehEffectTypeMap:Ljava/util/Map;

    new-instance v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$3;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/LiveFocusUtil$3;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil;->mVideoBokehEffectTypeMap:Ljava/util/Map;

    new-instance v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$4;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/LiveFocusUtil$4;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil;->mFrontBokehEffectLevelMap:Ljava/util/Map;

    new-instance v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$5;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/LiveFocusUtil$5;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil;->mBackBokehEffectLevelMap:Ljava/util/Map;

    new-instance v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$6;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/LiveFocusUtil$6;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil;->mSingleBokehEffectLevelMap:Ljava/util/Map;

    new-instance v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$7;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/LiveFocusUtil$7;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil;->mFrontVideoBokehEffectLevelMap:Ljava/util/Map;

    new-instance v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$8;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/LiveFocusUtil$8;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil;->mBackVideoBokehEffectLevelMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBokehCallbackState(I)Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;
    .locals 5

    invoke-static {}, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->values()[Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->access$000(Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;)I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->NONE:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    return-object p0
.end method

.method public static getBokehEffectButtonResource(IZ)I
    .locals 3

    const v0, 0x7f080b76

    const v1, 0x7f080b75

    if-eqz p0, :cond_9

    const/4 v2, 0x1

    if-eq p0, v2, :cond_7

    const/4 v2, 0x2

    if-eq p0, v2, :cond_5

    const/4 v2, 0x6

    if-eq p0, v2, :cond_3

    const/4 v2, 0x7

    if-eq p0, v2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    const p0, 0x7f080b72

    goto :goto_1

    :cond_2
    const p0, 0x7f080b71

    :goto_1
    return p0

    :cond_3
    if-eqz p1, :cond_4

    const p0, 0x7f080a1a

    goto :goto_2

    :cond_4
    const p0, 0x7f080a19

    :goto_2
    return p0

    :cond_5
    if-eqz p1, :cond_6

    const p0, 0x7f080a26

    goto :goto_3

    :cond_6
    const p0, 0x7f080a25

    :goto_3
    return p0

    :cond_7
    if-eqz p1, :cond_8

    const p0, 0x7f080a22

    goto :goto_4

    :cond_8
    const p0, 0x7f080a21

    :goto_4
    return p0

    :cond_9
    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    move v0, v1

    :goto_5
    return v0
.end method

.method public static getBokehEffectTitle(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const v0, 0x7f1101f7

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const p1, 0x7f1101f6

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p1, 0x7f1101f8

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p1, 0x7f1101fa

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const p1, 0x7f1101fb

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    const p1, 0x7f1101fd

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    const p1, 0x7f1101fe

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    const p1, 0x7f1101fc

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_DUAL_BOKEH_EFFECT:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const p1, 0x7f110356

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static getDualBokehEffectLevelSettingKey(II)Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/sec/android/app/camera/util/LiveFocusUtil;->mFrontBokehEffectLevelMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_BOKEH_LENS_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    return-object p0

    :cond_0
    sget-object p1, Lcom/sec/android/app/camera/util/LiveFocusUtil;->mBackBokehEffectLevelMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_BOKEH_LENS_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    return-object p0
.end method

.method public static getDualBokehEffectTypeMetadata(I)I
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil;->mDualBokehEffectTypeMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getDualBokehGuideText(Landroid/content/Context;Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;I)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    sget-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$9;->$SwitchMap$com$sec$android$app$camera$util$LiveFocusUtil$BokehCallbackState:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x7f110270

    const v1, 0x7f1101f4

    packed-switch p1, :pswitch_data_0

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_DUAL_BOKEH_EFFECT:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_0
    const p1, 0x7f110407

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p1, 0x7f110271

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    if-eqz p2, :cond_1

    const v0, 0x7f110313

    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    const p1, 0x7f110273

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    const p1, 0x7f110272

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSingleBokehEffectLevelSettingKey(I)Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil;->mSingleBokehEffectLevelMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SINGLE_BOKEH_LENS_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    return-object p0
.end method

.method public static getSingleBokehEffectTypeMetadata(I)I
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil;->mSingleBokehEffectTypeMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getSingleBokehGuideText(Landroid/content/Context;Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$9;->$SwitchMap$com$sec$android$app$camera$util$LiveFocusUtil$BokehCallbackState:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x7f110407

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p1, 0x7f1101f4

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p1, 0x7f110271

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const p1, 0x7f11026f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    const p1, 0x7f110273

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    const p1, 0x7f110272

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getVideoBokehEffectButtonResource(IZ)I
    .locals 3

    const v0, 0x7f080b76

    const v1, 0x7f080b75

    if-eqz p0, :cond_7

    const/4 v2, 0x1

    if-eq p0, v2, :cond_5

    const/4 v2, 0x2

    if-eq p0, v2, :cond_3

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    const p0, 0x7f080a1e

    goto :goto_1

    :cond_2
    const p0, 0x7f080a1d

    :goto_1
    return p0

    :cond_3
    if-eqz p1, :cond_4

    const p0, 0x7f080b72

    goto :goto_2

    :cond_4
    const p0, 0x7f080b71

    :goto_2
    return p0

    :cond_5
    if-eqz p1, :cond_6

    const p0, 0x7f080a1a

    goto :goto_3

    :cond_6
    const p0, 0x7f080a19

    :goto_3
    return p0

    :cond_7
    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    move v0, v1

    :goto_4
    return v0
.end method

.method public static getVideoBokehEffectLevelSettingKey(II)Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/sec/android/app/camera/util/LiveFocusUtil;->mFrontVideoBokehEffectLevelMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_VIDEO_BOKEH_LENS_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    return-object p0

    :cond_0
    sget-object p1, Lcom/sec/android/app/camera/util/LiveFocusUtil;->mBackVideoBokehEffectLevelMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_VIDEO_BOKEH_LENS_EFFECT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    return-object p0
.end method

.method public static getVideoBokehEffectTitle(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    const v0, 0x7f1101f7

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const p1, 0x7f1101f5

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const p1, 0x7f1101f9

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const p1, 0x7f1101f6

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const p1, 0x7f1101f8

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVideoBokehEffectTypeMetadata(I)I
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil;->mVideoBokehEffectTypeMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getVideoBokehGuideText(Landroid/content/Context;Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    sget-object v1, Lcom/sec/android/app/camera/util/LiveFocusUtil$9;->$SwitchMap$com$sec$android$app$camera$util$LiveFocusUtil$BokehCallbackState:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    const v1, 0x7f110313

    const v2, 0x7f110314

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const p1, 0x7f110407

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const p1, 0x7f1101f4

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const p1, 0x7f110271

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-eqz p2, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const p1, 0x7f110273

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const p1, 0x7f110272

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
