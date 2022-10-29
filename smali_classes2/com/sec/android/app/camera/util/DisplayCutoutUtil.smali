.class public Lcom/sec/android/app/camera/util/DisplayCutoutUtil;
.super Ljava/lang/Object;
.source "DisplayCutoutUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/util/DisplayCutoutUtil$DisplayCutoutAnimationInfo;
    }
.end annotation


# static fields
.field private static final FEATURE_INDEX_BOTTOM:Ljava/lang/String; = "display-cutout-%d-bottom"

.field private static final FEATURE_INDEX_INNER_BOTTOM:Ljava/lang/String; = "display-cutout-%d-inner-bottom"

.field private static final FEATURE_INDEX_INNER_LEFT:Ljava/lang/String; = "display-cutout-%d-inner-left"

.field private static final FEATURE_INDEX_INNER_RIGHT:Ljava/lang/String; = "display-cutout-%d-inner-right"

.field private static final FEATURE_INDEX_INNER_TOP:Ljava/lang/String; = "display-cutout-%d-inner-top"

.field private static final FEATURE_INDEX_LEFT:Ljava/lang/String; = "display-cutout-%d-left"

.field private static final FEATURE_INDEX_NUM_OF_DISPLAY_CUTOUT:Ljava/lang/String; = "num-of-display-cutout"

.field private static final FEATURE_INDEX_RIGHT:Ljava/lang/String; = "display-cutout-%d-right"

.field private static final FEATURE_INDEX_TOP:Ljava/lang/String; = "display-cutout-%d-top"

.field private static final FEATURE_INDEX_TYPE:Ljava/lang/String; = "display-cutout-%d-type"

.field public static final TYPE_CIRCLE:I = 0x0

.field public static final TYPE_OBLONG:I = 0x1

.field private static mAnimationInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/camera/util/DisplayCutoutUtil$DisplayCutoutAnimationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTotalTimerStepMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/util/DisplayCutoutUtil$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/DisplayCutoutUtil$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/util/DisplayCutoutUtil;->mTotalTimerStepMap:Ljava/util/Map;

    invoke-static {}, Lcom/sec/android/app/camera/util/DisplayCutoutUtil;->initAnimationInfoList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/util/DisplayCutoutUtil;->mAnimationInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimationInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/camera/util/DisplayCutoutUtil$DisplayCutoutAnimationInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/app/camera/util/DisplayCutoutUtil;->mAnimationInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static getNumOfDisplayCutout()I
    .locals 2

    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->DISPLAY_CUTOUT_ANIMATION_INFO:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->DISPLAY_CUTOUT_ANIMATION_INFO:Ljava/util/Map;

    const-string v1, "num-of-display-cutout"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static initAnimationInfoList()Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/camera/util/DisplayCutoutUtil$DisplayCutoutAnimationInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/camera/util/DisplayCutoutUtil;->getNumOfDisplayCutout()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    sget-object v4, Lcom/samsung/android/camera/feature/Feature;->DISPLAY_CUTOUT_ANIMATION_INFO:Ljava/util/Map;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "display-cutout-%d-type"

    invoke-static {v5, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sget-object v4, Lcom/samsung/android/camera/feature/Feature;->DISPLAY_CUTOUT_ANIMATION_INFO:Ljava/util/Map;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v2

    const-string v9, "display-cutout-%d-left"

    invoke-static {v5, v9, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sget-object v5, Lcom/samsung/android/camera/feature/Feature;->DISPLAY_CUTOUT_ANIMATION_INFO:Ljava/util/Map;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    const-string v10, "display-cutout-%d-top"

    invoke-static {v7, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    sget-object v7, Lcom/samsung/android/camera/feature/Feature;->DISPLAY_CUTOUT_ANIMATION_INFO:Ljava/util/Map;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v2

    const-string v11, "display-cutout-%d-right"

    invoke-static {v9, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sget-object v9, Lcom/samsung/android/camera/feature/Feature;->DISPLAY_CUTOUT_ANIMATION_INFO:Ljava/util/Map;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v2

    const-string v12, "display-cutout-%d-bottom"

    invoke-static {v10, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    sget-object v10, Lcom/samsung/android/camera/feature/Feature;->DISPLAY_CUTOUT_ANIMATION_INFO:Ljava/util/Map;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v12, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v2

    const-string v13, "display-cutout-%d-inner-left"

    invoke-static {v11, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-interface {v10, v11, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    sget-object v11, Lcom/samsung/android/camera/feature/Feature;->DISPLAY_CUTOUT_ANIMATION_INFO:Ljava/util/Map;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v14, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v2

    const-string v15, "display-cutout-%d-inner-top"

    invoke-static {v13, v15, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    sget-object v13, Lcom/samsung/android/camera/feature/Feature;->DISPLAY_CUTOUT_ANIMATION_INFO:Ljava/util/Map;

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v15, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v2

    const-string v2, "display-cutout-%d-inner-right"

    invoke-static {v14, v2, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v13, v2, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    sget-object v13, Lcom/samsung/android/camera/feature/Feature;->DISPLAY_CUTOUT_ANIMATION_INFO:Ljava/util/Map;

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v6, v16

    const-string v15, "display-cutout-%d-inner-bottom"

    invoke-static {v14, v15, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v13, v6, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    new-instance v13, Lcom/sec/android/app/camera/util/DisplayCutoutUtil$DisplayCutoutAnimationInfo;

    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12, v4, v5, v7, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v14, Landroid/graphics/RectF;

    sub-float/2addr v10, v4

    sub-float/2addr v11, v5

    sub-float/2addr v2, v4

    sub-float/2addr v6, v5

    invoke-direct {v14, v10, v11, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v2, Lcom/sec/android/app/camera/util/DisplayCutoutUtil;->mTotalTimerStepMap:Ljava/util/Map;

    sub-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    sub-float/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    const v5, 0x7f0b0061

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v2, 0x0

    move-object v7, v13

    move-object v9, v12

    move-object v10, v14

    move-object v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/util/DisplayCutoutUtil$DisplayCutoutAnimationInfo;-><init>(ILandroid/graphics/RectF;Landroid/graphics/RectF;ILcom/sec/android/app/camera/util/DisplayCutoutUtil$1;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v16

    goto/16 :goto_0

    :cond_0
    return-object v1
.end method
