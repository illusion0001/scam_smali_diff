.class public Lcom/sec/android/app/camera/util/interpolator/SineInOut33;
.super Landroid/view/animation/BaseInterpolator;
.source "SineInOut33.java"


# static fields
.field private static final segments:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [[F

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;->segments:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3d4ccccd    # 0.05f
        0x3efd70a4    # 0.495f
    .end array-data

    :array_1
    .array-data 4
        0x3efd70a4    # 0.495f
        0x3f70a3d7    # 0.94f
        0x3f800000    # 1.0f
    .end array-data
.end method

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


# virtual methods
.method public getInterpolation(F)F
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;->segments:[[F

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/util/interpolator/SineBase;->getInterpolation(F[[F)F

    move-result p0

    return p0
.end method
