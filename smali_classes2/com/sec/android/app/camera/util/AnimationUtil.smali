.class public Lcom/sec/android/app/camera/util/AnimationUtil;
.super Ljava/lang/Object;
.source "AnimationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;
    }
.end annotation


# static fields
.field public static final CLOSE:I = 0x1

.field public static final DURATION_150:I = 0x96

.field public static final DURATION_200:I = 0xc8

.field public static final DURATION_NORMAL:I

.field public static final EXPAND_DIRECTION_CENTER:I = 0x4

.field public static final EXPAND_DIRECTION_LEFT_DOWN:I = 0x0

.field public static final EXPAND_DIRECTION_LEFT_UP:I = 0x1

.field public static final EXPAND_DIRECTION_RIGHT_DOWN:I = 0x2

.field public static final EXPAND_DIRECTION_RIGHT_UP:I = 0x3

.field public static final FADE_IN:I = 0x0

.field public static final FADE_OUT:I = 0x1

.field public static final OPEN:I = 0x0

.field public static final ROTATION_AXIS_X:I = 0x0

.field public static final ROTATION_AXIS_Y:I = 0x1

.field public static final SLIDE_DIRECTION_DOWN:I = 0x3

.field public static final SLIDE_DIRECTION_LEFT:I = 0x0

.field public static final SLIDE_DIRECTION_RIGHT:I = 0x1

.field public static final SLIDE_DIRECTION_UP:I = 0x2

.field public static final SWITCH_OFFSET_DIRECTION_DOWN:I = 0x64

.field public static final SWITCH_OFFSET_DIRECTION_UP:I = 0x65


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0b0029

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlphaAnimation(FFI)Landroid/view/animation/Animation;
    .locals 1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long p0, p2

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object v0
.end method

.method public static getAlphaOffAnimation()Landroid/view/animation/Animation;
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget v1, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object v0
.end method

.method public static getAlphaOffAnimation(FI)Landroid/view/animation/Animation;
    .locals 2

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long p0, p1

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object v0
.end method

.method public static getAlphaOffAnimation(I)Landroid/view/animation/Animation;
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object v0
.end method

.method public static getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public static getAlphaOnAnimation()Landroid/view/animation/Animation;
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget v1, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object v0
.end method

.method public static getAlphaOnAnimation(F)Landroid/view/animation/Animation;
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget p0, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object v0
.end method

.method public static getAlphaOnAnimation(FI)Landroid/view/animation/Animation;
    .locals 2

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long p0, p1

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    return-object v0
.end method

.method public static getAlphaOnAnimation(I)Landroid/view/animation/Animation;
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object v0
.end method

.method public static getAlphaOnAnimation(IILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, p2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    int-to-long p0, p1

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    return-object v0
.end method

.method public static getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public static getAnimatorDurationScale(Landroid/content/Context;)F
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "animator_duration_scale"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getBlinkAnimation(Z)Landroid/view/animation/Animation;
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget v1, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    :cond_0
    return-object v0
.end method

.method public static getExpandAnimation(Lcom/samsung/android/glview/GLView;IIZ)Landroid/view/animation/Animation;
    .locals 28

    move/from16 v0, p1

    move/from16 v1, p2

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v8, 0x42700000    # 60.0f

    const/4 v9, 0x0

    if-eqz v1, :cond_6

    if-ne v1, v6, :cond_5

    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v9, v9, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    div-float/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    neg-float v4, v4

    div-float/2addr v4, v7

    invoke-direct {v0, v9, v3, v9, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    div-float/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    div-float/2addr v4, v7

    invoke-direct {v0, v9, v3, v9, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    neg-float v3, v3

    div-float/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    neg-float v4, v4

    div-float/2addr v4, v7

    invoke-direct {v0, v9, v3, v9, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    neg-float v3, v3

    div-float/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    div-float/2addr v4, v7

    invoke-direct {v0, v9, v3, v9, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-eqz v0, :cond_b

    if-eq v0, v6, :cond_a

    if-eq v0, v5, :cond_9

    if-eq v0, v4, :cond_8

    if-ne v0, v3, :cond_7

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v9, v9, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    neg-float v3, v3

    div-float/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    div-float/2addr v4, v7

    invoke-direct {v0, v3, v9, v4, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    :cond_9
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    neg-float v3, v3

    div-float/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    neg-float v4, v4

    div-float/2addr v4, v7

    invoke-direct {v0, v3, v9, v4, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    :cond_a
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    div-float/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    div-float/2addr v4, v7

    invoke-direct {v0, v3, v9, v4, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    :cond_b
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    div-float/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    neg-float v4, v4

    div-float/2addr v4, v7

    invoke-direct {v0, v3, v9, v4, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    sget v3, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_d

    if-eq v1, v6, :cond_c

    goto :goto_1

    :cond_c
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f733333    # 0.95f

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x3f733333    # 0.95f

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getCurrentLeft()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v5

    div-float/2addr v5, v3

    add-float v16, v4, v5

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getCurrentTop()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    div-float/2addr v5, v3

    add-float v18, v4, v5

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    goto :goto_1

    :cond_d
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v20, 0x3f733333    # 0.95f

    const/high16 v21, 0x3f800000    # 1.0f

    const v22, 0x3f733333    # 0.95f

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getCurrentLeft()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v5

    div-float/2addr v5, v3

    add-float v25, v4, v5

    const/16 v26, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getCurrentTop()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    div-float/2addr v5, v3

    add-float v27, v4, v5

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v27}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    sget v3, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz p3, :cond_10

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_f

    if-eq v1, v6, :cond_e

    goto :goto_2

    :cond_e
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_2

    :cond_f
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v9, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_2
    sget v1, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_10
    return-object v2
.end method

.method public static getFadeAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;
    .locals 13

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    new-instance v12, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f666666    # 0.9f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f666666    # 0.9f

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v9

    div-float/2addr v9, v2

    add-float/2addr v9, v3

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v11

    div-float/2addr v11, v2

    add-float/2addr v11, v3

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object v11, v12

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f666666    # 0.9f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v9

    div-float/2addr v9, v2

    add-float/2addr v8, v9

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v12

    div-float/2addr v12, v2

    add-float/2addr v10, v12

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v11, v2, v3, v4, p0}, Landroid/view/animation/Animation;->initialize(IIII)V

    sget p0, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long v2, p0

    invoke-virtual {v11, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v11, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz p2, :cond_4

    const/high16 p0, 0x3f800000    # 1.0f

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, p0, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_1

    :cond_3
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, p2, p0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_1
    sget p0, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long p0, p0

    invoke-virtual {v11, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v11, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    return-object v0
.end method

.method public static getProgressWheelTimerFadeAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;
    .locals 13

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    new-instance v12, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f4ccccd    # 0.8f

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v9

    div-float/2addr v9, v2

    add-float/2addr v9, v3

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v11

    div-float/2addr v11, v2

    add-float/2addr v11, v3

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object v11, v12

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v9

    div-float/2addr v9, v2

    add-float/2addr v8, v9

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v12

    div-float/2addr v12, v2

    add-float/2addr v10, v12

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v11, v2, v3, v4, p0}, Landroid/view/animation/Animation;->initialize(IIII)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v11, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v11, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz p2, :cond_4

    const p0, 0x3e99999a    # 0.3f

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, p0, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_1

    :cond_3
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, p2, p0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_1
    const-wide/16 p0, 0x14a

    invoke-virtual {v11, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v11, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    return-object v0
.end method

.method public static getRotateAnimation(FFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;JJ)Landroid/view/animation/Animation;
    .locals 8

    new-instance v7, Landroid/view/animation/RotateAnimation;

    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v4, v0, v1

    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v1

    div-float/2addr v1, v2

    add-float v6, v0, v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v7, p0, p1, v0, p2}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    invoke-virtual {v7, p6, p7}, Landroid/view/animation/RotateAnimation;->setStartOffset(J)V

    invoke-virtual {v7, p4, p5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    invoke-virtual {v7, p3}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v7
.end method

.method public static getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;
    .locals 10

    new-instance v9, Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p4}, Lcom/samsung/android/glview/GLView;->getCurrentLeft()F

    move-result v0

    invoke-virtual {p4}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v6, v0, v1

    invoke-virtual {p4}, Lcom/samsung/android/glview/GLView;->getCurrentTop()F

    move-result v0

    invoke-virtual {p4}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v1

    div-float/2addr v1, v2

    add-float v8, v0, v1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {p4}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p4}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p4}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p4}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    move-object v0, p5

    invoke-virtual {v9, p5}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move/from16 v0, p7

    int-to-long v0, v0

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    move/from16 v0, p6

    int-to-long v0, v0

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    return-object v9
.end method

.method public static getSlideAnimation(Lcom/samsung/android/glview/GLView;IIIZI)Landroid/view/animation/Animation;
    .locals 3

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-direct {p1, v1, v1, p2, p3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_1

    :cond_2
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-direct {p1, p2, p3, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result p0

    float-to-int p0, p0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result p3

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    invoke-virtual {p1, p2, p0, p3, v2}, Landroid/view/animation/Animation;->initialize(IIII)V

    int-to-long p2, p5

    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz p4, :cond_3

    new-instance p0, Landroid/view/animation/AlphaAnimation;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget p1, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual {v0, p2, p3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    :cond_4
    return-object v0
.end method

.method public static getSwitchAnimation(Lcom/samsung/android/glview/GLView;IIIFFI)Landroid/view/animation/Animation;
    .locals 4

    new-instance v0, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result p0

    add-float/2addr v2, p0

    float-to-int p0, v1

    float-to-int v1, v2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->initialize(IIII)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->setRotationAxis(I)V

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->setRotationDegrees(II)V

    invoke-virtual {v0, p5}, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->setMaxOffsetY(F)V

    invoke-virtual {v0, p4}, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->setDepth(F)V

    invoke-virtual {v0, p6}, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->setDirection(I)V

    sget p0, Lcom/sec/android/app/camera/util/AnimationUtil;->DURATION_NORMAL:I

    int-to-long p0, p0

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/camera/util/AnimationUtil$SwitchAnimation;->setDuration(J)V

    return-object v0
.end method

.method public static getTimerFadeAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;
    .locals 13

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v2, :cond_0

    new-instance v12, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f59999a    # 0.85f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f59999a    # 0.85f

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v9

    div-float/2addr v9, v1

    add-float/2addr v9, v3

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v11

    div-float/2addr v11, v1

    add-float/2addr v11, v3

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v12, Landroid/view/animation/ScaleAnimation;

    const v4, 0x3f666666    # 0.9f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f666666    # 0.9f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v9

    div-float/2addr v9, v1

    add-float/2addr v9, v3

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v11

    div-float/2addr v11, v1

    add-float/2addr v11, v3

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v12, v1, v3, v4, p0}, Landroid/view/animation/Animation;->initialize(IIII)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v12, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v5, 0x2bc

    invoke-virtual {v12, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v12, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v12, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz p2, :cond_4

    const/high16 p0, 0x3f800000    # 1.0f

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v12, p0, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_1

    :cond_3
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v12, p2, p0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_1
    invoke-virtual {v12, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v12, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v12, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v12, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    return-object v0
.end method

.method public static getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;
    .locals 1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {p4}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p4}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p0, p1, p5, p6}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    invoke-virtual {v0, p7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    int-to-long p0, p8

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    return-object v0
.end method

.method public static isAnimatorDisabled(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "animator_duration_scale"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result p0

    return p0
.end method
