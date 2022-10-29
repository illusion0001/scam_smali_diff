.class public Lcom/sec/android/app/camera/util/interpolator/QuintEaseIn;
.super Landroid/view/animation/BaseInterpolator;
.source "QuintEaseIn.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    return-void
.end method

.method private in(F)F
    .locals 0

    mul-float p0, p1, p1

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/util/interpolator/QuintEaseIn;->in(F)F

    move-result p0

    return p0
.end method
