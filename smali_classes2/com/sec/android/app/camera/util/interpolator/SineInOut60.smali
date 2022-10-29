.class public Lcom/sec/android/app/camera/util/interpolator/SineInOut60;
.super Landroid/view/animation/BaseInterpolator;
.source "SineInOut60.java"


# static fields
.field private static final segments:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [[F

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/sec/android/app/camera/util/interpolator/SineInOut60;->segments:[[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3c23d70a    # 0.01f
        0x3ebd70a4    # 0.37f
    .end array-data

    :array_1
    .array-data 4
        0x3ebd70a4    # 0.37f
        0x3f3851ec    # 0.72f
        0x3f6353f8    # 0.888f
    .end array-data

    :array_2
    .array-data 4
        0x3f6353f8    # 0.888f
        0x3f7ff972    # 0.9999f
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

    sget-object p0, Lcom/sec/android/app/camera/util/interpolator/SineInOut60;->segments:[[F

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/util/interpolator/SineBase;->getInterpolation(F[[F)F

    move-result p0

    return p0
.end method
