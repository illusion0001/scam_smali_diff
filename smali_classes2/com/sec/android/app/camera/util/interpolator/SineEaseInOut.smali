.class public Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;
.super Landroid/view/animation/BaseInterpolator;
.source "SineEaseInOut.java"


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

.method private inout(F)F
    .locals 2

    float-to-double p0, p1

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p0, v0

    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    mul-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/util/interpolator/SineEaseInOut;->inout(F)F

    move-result p0

    return p0
.end method
