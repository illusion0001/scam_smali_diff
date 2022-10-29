.class synthetic Lcom/sec/android/app/camera/util/SmartTipsUtil$3;
.super Ljava/lang/Object;
.source "SmartTipsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/util/SmartTipsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$android$app$camera$util$SmartTipsUtil$SmartTipsPopupCount:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->values()[Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$3;->$SwitchMap$com$sec$android$app$camera$util$SmartTipsUtil$SmartTipsPopupCount:[I

    :try_start_0
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$3;->$SwitchMap$com$sec$android$app$camera$util$SmartTipsUtil$SmartTipsPopupCount:[I

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_AR_DOODLE_GUIDE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$3;->$SwitchMap$com$sec$android$app$camera$util$SmartTipsUtil$SmartTipsPopupCount:[I

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_BURST_SHOT_GUIDE_ON_QUICK_TAKE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$3;->$SwitchMap$com$sec$android$app$camera$util$SmartTipsUtil$SmartTipsPopupCount:[I

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_CLOSE_UP_SUGGESTION:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$3;->$SwitchMap$com$sec$android$app$camera$util$SmartTipsUtil$SmartTipsPopupCount:[I

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_DOCUMENT_SCAN:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$3;->$SwitchMap$com$sec$android$app$camera$util$SmartTipsUtil$SmartTipsPopupCount:[I

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_DUAL_SHOT:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$3;->$SwitchMap$com$sec$android$app$camera$util$SmartTipsUtil$SmartTipsPopupCount:[I

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_LAUNCH_ZOOM_BAR:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$3;->$SwitchMap$com$sec$android$app$camera$util$SmartTipsUtil$SmartTipsPopupCount:[I

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_LIVE_FOCUS:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$3;->$SwitchMap$com$sec$android$app$camera$util$SmartTipsUtil$SmartTipsPopupCount:[I

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_MY_FILTER_CREATE_GUIDE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$3;->$SwitchMap$com$sec$android$app$camera$util$SmartTipsUtil$SmartTipsPopupCount:[I

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_QUICK_LAUNCH:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$3;->$SwitchMap$com$sec$android$app$camera$util$SmartTipsUtil$SmartTipsPopupCount:[I

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SELFIE_CAPTURE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$3;->$SwitchMap$com$sec$android$app$camera$util$SmartTipsUtil$SmartTipsPopupCount:[I

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SELFIE_TONE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$3;->$SwitchMap$com$sec$android$app$camera$util$SmartTipsUtil$SmartTipsPopupCount:[I

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SHOT_SUGGESTION_GUIDE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$3;->$SwitchMap$com$sec$android$app$camera$util$SmartTipsUtil$SmartTipsPopupCount:[I

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SUPER_RESOLUTION_SUGGESTION:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$3;->$SwitchMap$com$sec$android$app$camera$util$SmartTipsUtil$SmartTipsPopupCount:[I

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_ULTRA_WIDE_FOCUSED:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$3;->$SwitchMap$com$sec$android$app$camera$util$SmartTipsUtil$SmartTipsPopupCount:[I

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_ZOOM_IN_MIC:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    return-void
.end method
