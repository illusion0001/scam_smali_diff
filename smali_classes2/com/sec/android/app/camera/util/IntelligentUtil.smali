.class public Lcom/sec/android/app/camera/util/IntelligentUtil;
.super Ljava/lang/Object;
.source "IntelligentUtil.java"


# static fields
.field public static final COMPOSITION_GUIDE_STATUS_ANALYZING:I = 0x8

.field public static final COMPOSITION_GUIDE_STATUS_HIDE:I = 0x5

.field public static final COMPOSITION_GUIDE_STATUS_INIT:I = 0x0

.field public static final COMPOSITION_GUIDE_STATUS_MOVEMENT_REACHED:I = 0x3

.field public static final COMPOSITION_GUIDE_STATUS_ROTATION_REACHED:I = 0x4

.field public static final COMPOSITION_GUIDE_STATUS_TARGET_FOUND:I = 0x1

.field public static final COMPOSITION_GUIDE_STATUS_TARGET_REACHED:I = 0x2

.field public static final COMPOSITION_GUIDE_STATUS_TARGET_TRACKING:I = 0x7

.field private static final mIntelligentEventMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/interfaces/PopupLayoutController$IntelligentTipsId;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSceneIndexMap:Ljava/util/Map;
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

    new-instance v0, Lcom/sec/android/app/camera/util/IntelligentUtil$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/IntelligentUtil$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/IntelligentUtil;->mSceneIndexMap:Ljava/util/Map;

    new-instance v0, Lcom/sec/android/app/camera/util/IntelligentUtil$2;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/IntelligentUtil$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/IntelligentUtil;->mIntelligentEventMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSceneDetectIconDisplayByTime(I)Z
    .locals 7

    invoke-static {}, Lcom/sec/android/app/camera/util/IntelligentUtil;->getCurrentHour()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x18

    const/16 v2, 0x9

    const/4 v3, 0x3

    const/16 v4, 0x16

    const/4 v5, 0x0

    const/16 v6, 0xa

    if-ne p0, v6, :cond_2

    if-ltz v0, :cond_0

    if-le v0, v3, :cond_7

    :cond_0
    if-lt v0, v4, :cond_1

    if-le v0, v1, :cond_7

    :cond_1
    if-lt v0, v2, :cond_6

    const/16 p0, 0x10

    if-gt v0, p0, :cond_6

    goto :goto_0

    :cond_2
    const/16 v6, 0xc

    if-ne p0, v6, :cond_4

    if-ltz v0, :cond_3

    if-le v0, v3, :cond_7

    :cond_3
    if-lt v0, v4, :cond_6

    if-gt v0, v1, :cond_6

    goto :goto_0

    :cond_4
    const/16 v1, 0xe

    if-eq p0, v1, :cond_5

    const/16 v1, 0x29

    if-ne p0, v1, :cond_6

    :cond_5
    if-lt v0, v2, :cond_6

    const/16 p0, 0x12

    if-ge v0, p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v5, 0x1

    :cond_7
    :goto_0
    return v5
.end method

.method public static convertToCompositionGuideStatus(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :pswitch_4
    const/4 p0, 0x3

    return p0

    :pswitch_5
    const/4 p0, 0x2

    return p0

    :pswitch_6
    const/4 p0, 0x1

    return p0

    :pswitch_7
    const/16 p0, 0x8

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public static convertToDetectedSceneEvent(I)I
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/util/IntelligentUtil;->mSceneIndexMap:Ljava/util/Map;

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

.method public static distinguishSunriseFromSunsetSunriseByTime()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/camera/util/IntelligentUtil;->getCurrentHour()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getCurrentHour()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "HH"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIntelligentTipsId(I)Lcom/sec/android/app/camera/interfaces/PopupLayoutController$IntelligentTipsId;
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/util/IntelligentUtil;->mIntelligentEventMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$IntelligentTipsId;->EVENT_NONE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$IntelligentTipsId;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$IntelligentTipsId;

    return-object p0
.end method
