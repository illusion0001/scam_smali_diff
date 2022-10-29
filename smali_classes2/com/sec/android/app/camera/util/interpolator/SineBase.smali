.class Lcom/sec/android/app/camera/util/interpolator/SineBase;
.super Ljava/lang/Object;
.source "SineBase.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInterpolation(F[[F)F
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr p0, v0

    array-length v1, p1

    int-to-float v1, v1

    mul-float v2, v1, p0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    array-length v3, p1

    const/4 v4, 0x1

    if-lt v2, v3, :cond_0

    array-length v2, p1

    sub-int/2addr v2, v4

    :cond_0
    int-to-float v3, v2

    div-float v5, v0, v1

    mul-float/2addr v3, v5

    sub-float/2addr p0, v3

    mul-float/2addr p0, v1

    aget-object p1, p1, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v3, p1, v2

    const/high16 v5, 0x40000000    # 2.0f

    sub-float v6, v0, p0

    mul-float/2addr v6, v5

    aget v4, p1, v4

    aget v5, p1, v2

    sub-float/2addr v4, v5

    mul-float/2addr v6, v4

    const/4 v4, 0x2

    aget v4, p1, v4

    aget p1, p1, v2

    sub-float/2addr v4, p1

    mul-float/2addr v4, p0

    add-float/2addr v6, v4

    mul-float/2addr p0, v6

    add-float/2addr v3, p0

    mul-float/2addr v3, v0

    add-float/2addr v3, v1

    return v3
.end method
