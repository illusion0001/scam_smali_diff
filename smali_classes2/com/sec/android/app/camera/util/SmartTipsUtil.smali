.class public Lcom/sec/android/app/camera/util/SmartTipsUtil;
.super Ljava/lang/Object;
.source "SmartTipsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;
    }
.end annotation


# static fields
.field public static final SMART_TIPS_AR_DOODLE_GUIDE_FIRST_DISPLAY:I = 0x3

.field public static final SMART_TIPS_AR_DOODLE_GUIDE_SECOND_DISPLAY:I = 0xd

.field public static final SMART_TIPS_BURST_SHOT_GUIDE_ON_QUICK_TAKE_MAX_DISPLAY_COUNT:I = 0x3

.field public static final SMART_TIPS_CLOSE_UP_SUGGESTION_MAX_DISPLAY_COUNT:I = 0x3

.field public static final SMART_TIPS_DOCUMENT_SCAN_FIRST_DISPLAY:I = 0x1

.field public static final SMART_TIPS_DUAL_SHOT_FIRST_DISPLAY:I = 0x3

.field public static final SMART_TIPS_DUAL_SHOT_SECOND_DISPLAY:I = 0x9

.field public static final SMART_TIPS_DUAL_SHOT_THIRD_DISPLAY:I = 0x15

.field public static final SMART_TIPS_LAUNCH_ZOOM_BAR_FIRST_DISPLAY:I = 0xf

.field public static final SMART_TIPS_LIVE_FOCUS_FIRST_DISPLAY:I = 0x1e

.field public static final SMART_TIPS_LIVE_FOCUS_SECOND_DISPLAY:I = 0x5a

.field public static final SMART_TIPS_LIVE_FOCUS_THIRD_DISPLAY:I = 0xd2

.field public static final SMART_TIPS_MY_FILTER_CREATE_GUIDE_MAX_DISPLAY_COUNT:I = 0x5

.field public static final SMART_TIPS_QUICK_LAUNCH_FIRST_DISPLAY:I = 0xf

.field public static final SMART_TIPS_SELFIE_CAPTURE_FIRST_DISPLAY:I = 0x5

.field public static final SMART_TIPS_SELFIE_TONE_GUIDE_DISPLAY:I = 0x3

.field public static final SMART_TIPS_SHOT_SUGGESTION_GUIDE_FIRST_DISPLAY:I = 0xa

.field public static final SMART_TIPS_SHOT_SUGGESTION_GUIDE_SECOND_DISPLAY:I = 0x14

.field public static final SMART_TIPS_SUPER_RESOLUTION_SUGGESTION_MAX_DISPLAY_COUNT:I = 0x3

.field public static final SMART_TIPS_ULTRA_WIDE_FOCUSED_MAX_DISPLAY_COUNT:I = 0x5

.field public static final SMART_TIPS_USED_COUNT:I = -0x1

.field public static final SMART_TIPS_ZOOM_IN_MIC_MAX_DISPLAY_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SmartTipsUtil"

.field private static final mDefaultCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPrefKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil;->mPrefKeyMap:Ljava/util/Map;

    new-instance v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$2;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil;->mDefaultCountMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil;->mPrefKeyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil;->mDefaultCountMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " getSmartTipsPopupCount : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmartTipsUtil"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isSmartTipsPopupEnabled(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)Z
    .locals 8

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$3;->$SwitchMap$com$sec$android$app$camera$util$SmartTipsUtil$SmartTipsPopupCount:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0xf

    const/4 v1, 0x5

    const/4 v2, -0x1

    const/4 v3, 0x3

    const-string v4, " enabled : "

    const-string v5, "SmartTipsUtil"

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_11

    :pswitch_0
    sget-object p1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_ZOOM_IN_MIC:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result p0

    if-gt p0, v3, :cond_0

    move p1, v7

    goto :goto_0

    :cond_0
    move p1, v6

    :goto_0
    or-int/2addr p1, v6

    if-eq p0, v2, :cond_1

    move v6, v7

    :cond_1
    and-int/2addr v6, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "smartTipsZoomInMicCount : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :pswitch_1
    sget-object p1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_ULTRA_WIDE_FOCUSED:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result p0

    if-gt p0, v1, :cond_2

    move p1, v7

    goto :goto_1

    :cond_2
    move p1, v6

    :goto_1
    or-int/2addr p1, v6

    if-eq p0, v2, :cond_3

    move v6, v7

    :cond_3
    and-int/2addr v6, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "smartTipsUltraWideFocusedCount : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :pswitch_2
    sget-object p1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SUPER_RESOLUTION_SUGGESTION:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result p0

    if-gt p0, v3, :cond_4

    move p1, v7

    goto :goto_2

    :cond_4
    move p1, v6

    :goto_2
    or-int/2addr p1, v6

    if-eq p0, v2, :cond_5

    move v6, v7

    :cond_5
    and-int/2addr v6, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "smartTipsSuperResolutionCount : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :pswitch_3
    sget-object p1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SHOT_SUGGESTION_GUIDE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result p0

    const/16 p1, 0xa

    if-ne p0, p1, :cond_6

    move p1, v7

    goto :goto_3

    :cond_6
    move p1, v6

    :goto_3
    or-int/2addr p1, v6

    const/16 v0, 0x14

    if-ne p0, v0, :cond_7

    move v6, v7

    :cond_7
    or-int/2addr v6, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "smartTipsShotSuggestionGuideCount : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :pswitch_4
    sget-object p1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SELFIE_TONE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result p0

    if-ne p0, v3, :cond_8

    goto :goto_4

    :cond_8
    move v7, v6

    :goto_4
    or-int/2addr v6, v7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "smartTipsSelfieToneCount : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :pswitch_5
    sget-object p1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SELFIE_CAPTURE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result p1

    if-ne p1, v1, :cond_9

    goto :goto_5

    :cond_9
    move v7, v6

    :goto_5
    or-int/2addr v6, v7

    if-nez v6, :cond_a

    if-eq p1, v2, :cond_a

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SELFIE_CAPTURE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->setSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;I)V

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "smartTipsSelfieCaptureCount : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :pswitch_6
    sget-object p1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_QUICK_LAUNCH:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result p0

    if-ne p0, v0, :cond_b

    goto :goto_6

    :cond_b
    move v7, v6

    :goto_6
    or-int/2addr v6, v7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "smartTipsQuickLaunchCount : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :pswitch_7
    sget-object p1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_MY_FILTER_CREATE_GUIDE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result p0

    if-gt p0, v1, :cond_c

    move p1, v7

    goto :goto_7

    :cond_c
    move p1, v6

    :goto_7
    or-int/2addr p1, v6

    if-eq p0, v2, :cond_d

    move v6, v7

    :cond_d
    and-int/2addr v6, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "smartTipsMyFilterCreateButtonCount : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :pswitch_8
    sget-object p1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_LIVE_FOCUS:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result p0

    const/16 p1, 0x1e

    if-ne p0, p1, :cond_e

    move p1, v7

    goto :goto_8

    :cond_e
    move p1, v6

    :goto_8
    or-int/2addr p1, v6

    const/16 v0, 0x5a

    if-ne p0, v0, :cond_f

    move v0, v7

    goto :goto_9

    :cond_f
    move v0, v6

    :goto_9
    or-int/2addr p1, v0

    const/16 v0, 0xd2

    if-ne p0, v0, :cond_10

    move v6, v7

    :cond_10
    or-int/2addr v6, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "smartTipsSelectiveFocusCount : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :pswitch_9
    sget-object p1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_LAUNCH_ZOOM_BAR:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result p0

    if-ne p0, v0, :cond_11

    goto :goto_a

    :cond_11
    move v7, v6

    :goto_a
    or-int/2addr v6, v7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "smartTipsLaunchZoomBarCount : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :pswitch_a
    sget-object p1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_DUAL_SHOT:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result p0

    if-ne p0, v3, :cond_12

    move p1, v7

    goto :goto_b

    :cond_12
    move p1, v6

    :goto_b
    or-int/2addr p1, v6

    const/16 v0, 0x9

    if-ne p0, v0, :cond_13

    move v0, v7

    goto :goto_c

    :cond_13
    move v0, v6

    :goto_c
    or-int/2addr p1, v0

    const/16 v0, 0x15

    if-ne p0, v0, :cond_14

    move v6, v7

    :cond_14
    or-int/2addr v6, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "smartTipsDualShotCount : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :pswitch_b
    sget-object p1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_DOCUMENT_SCAN:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result p0

    if-ne p0, v7, :cond_15

    goto :goto_d

    :cond_15
    move v7, v6

    :goto_d
    or-int/2addr v6, v7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "smartTipsDocumentScanCount : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :pswitch_c
    sget-object p1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_CLOSE_UP_SUGGESTION:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result p0

    if-gt p0, v3, :cond_16

    move p1, v7

    goto :goto_e

    :cond_16
    move p1, v6

    :goto_e
    or-int/2addr p1, v6

    if-eq p0, v2, :cond_17

    move v6, v7

    :cond_17
    and-int/2addr v6, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "smartTipsCloseUpSuggestionCount : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :pswitch_d
    sget-object p1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_BURST_SHOT_GUIDE_ON_QUICK_TAKE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result p0

    if-gt p0, v3, :cond_18

    move p1, v7

    goto :goto_f

    :cond_18
    move p1, v6

    :goto_f
    or-int/2addr p1, v6

    if-eq p0, v2, :cond_19

    move v6, v7

    :cond_19
    and-int/2addr v6, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "smartTipsQuickTakeCount : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :pswitch_e
    sget-object p1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_AR_DOODLE_GUIDE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result p0

    if-ne p0, v3, :cond_1a

    move p1, v7

    goto :goto_10

    :cond_1a
    move p1, v6

    :goto_10
    or-int/2addr p1, v6

    const/16 v0, 0xd

    if-ne p0, v0, :cond_1b

    move v6, v7

    :cond_1b
    or-int/2addr v6, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "smartTipsArDoodleCount : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method public static setSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;I)V
    .locals 6

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$3;->$SwitchMap$com$sec$android$app$camera$util$SmartTipsUtil$SmartTipsPopupCount:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x5

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_c

    :pswitch_1
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_ULTRA_WIDE_FOCUSED:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result v0

    if-eq v0, v3, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    and-int/2addr v0, v5

    if-gt p2, v2, :cond_b

    goto/16 :goto_b

    :pswitch_2
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SHOT_SUGGESTION_GUIDE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result v0

    if-eq v0, v3, :cond_1

    move v0, v5

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    and-int/2addr v0, v5

    const/16 v1, 0x14

    if-gt p2, v1, :cond_b

    goto/16 :goto_b

    :pswitch_3
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SELFIE_CAPTURE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result v0

    if-eq v0, v3, :cond_2

    move v0, v5

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_2
    and-int/2addr v0, v5

    if-gt p2, v2, :cond_b

    goto/16 :goto_b

    :pswitch_4
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_QUICK_LAUNCH:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result v0

    if-eq v0, v3, :cond_3

    move v0, v5

    goto :goto_3

    :cond_3
    move v0, v4

    :goto_3
    and-int/2addr v0, v5

    if-gt p2, v1, :cond_b

    goto/16 :goto_b

    :pswitch_5
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_MY_FILTER_CREATE_GUIDE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result v0

    if-eq v0, v3, :cond_4

    move v0, v5

    goto :goto_4

    :cond_4
    move v0, v4

    :goto_4
    and-int/2addr v0, v5

    if-gt p2, v2, :cond_b

    goto/16 :goto_b

    :pswitch_6
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_LIVE_FOCUS:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result v0

    if-eq v0, v3, :cond_5

    move v0, v5

    goto :goto_5

    :cond_5
    move v0, v4

    :goto_5
    and-int/2addr v0, v5

    const/16 v1, 0xd2

    if-gt p2, v1, :cond_b

    goto/16 :goto_b

    :pswitch_7
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_LAUNCH_ZOOM_BAR:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result v0

    if-eq v0, v3, :cond_6

    move v0, v5

    goto :goto_6

    :cond_6
    move v0, v4

    :goto_6
    and-int/2addr v0, v5

    if-gt p2, v1, :cond_b

    goto :goto_b

    :pswitch_8
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_DUAL_SHOT:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result v0

    if-eq v0, v3, :cond_7

    move v0, v5

    goto :goto_7

    :cond_7
    move v0, v4

    :goto_7
    and-int/2addr v0, v5

    const/16 v1, 0x15

    if-gt p2, v1, :cond_b

    goto :goto_b

    :pswitch_9
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_DOCUMENT_SCAN:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result v0

    if-eq v0, v3, :cond_8

    move v0, v5

    goto :goto_8

    :cond_8
    move v0, v4

    :goto_8
    and-int/2addr v0, v5

    if-gt p2, v5, :cond_b

    goto :goto_b

    :pswitch_a
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_CLOSE_UP_SUGGESTION:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result v0

    if-eq v0, v3, :cond_9

    move v0, v5

    goto :goto_9

    :cond_9
    move v0, v4

    :goto_9
    and-int/2addr v0, v5

    const/4 v1, 0x3

    if-gt p2, v1, :cond_b

    goto :goto_b

    :pswitch_b
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_AR_DOODLE_GUIDE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result v0

    if-eq v0, v3, :cond_a

    move v0, v5

    goto :goto_a

    :cond_a
    move v0, v4

    :goto_a
    and-int/2addr v0, v5

    const/16 v1, 0xd

    if-gt p2, v1, :cond_b

    :goto_b
    move v4, v5

    :cond_b
    and-int v5, v0, v4

    :goto_c
    if-nez v5, :cond_c

    return-void

    :cond_c
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil;->mPrefKeyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
