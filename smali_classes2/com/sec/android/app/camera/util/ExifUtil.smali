.class public Lcom/sec/android/app/camera/util/ExifUtil;
.super Ljava/lang/Object;
.source "ExifUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertExifOrientationToMediaOrientation(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0

    :cond_2
    const/16 p0, 0xb4

    return p0
.end method

.method public static convertToExifDateFormat(J)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    const-string p0, "yyyy:MM:dd kk:mm:ss"

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertToExifLocation(D)Ljava/lang/String;
    .locals 10

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const/4 v0, 0x3

    new-array v1, v0, [I

    double-to-int v2, p0

    const/4 v3, 0x0

    aput v2, v1, v3

    aget v2, v1, v3

    int-to-double v4, v2

    sub-double v4, p0, v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double/2addr v4, v6

    double-to-int v2, v4

    const/4 v4, 0x1

    aput v2, v1, v4

    aget v2, v1, v3

    int-to-double v8, v2

    sub-double/2addr p0, v8

    mul-double/2addr p0, v6

    aget v2, v1, v4

    int-to-double v8, v2

    sub-double/2addr p0, v8

    mul-double/2addr p0, v6

    double-to-int p0, p0

    const/4 p1, 0x2

    aput p0, v1, p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    aget v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    aget v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    aget v1, v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "%d/1,%d/1,%d/1"

    invoke-static {p0, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertToExifOrientation(I)I
    .locals 1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x6

    return p0
.end method

.method public static getExifOrientation([B)I
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    add-int/lit8 v2, v1, 0x3

    array-length v3, p0

    const-string v4, "ExifUtil"

    const/16 v5, 0x8

    if-ge v2, v3, :cond_9

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p0, v1

    const/16 v3, 0xff

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_8

    aget-byte v1, p0, v2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xd8

    if-eq v1, v3, :cond_7

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    goto :goto_2

    :cond_2
    const/16 v3, 0xd9

    if-eq v1, v3, :cond_8

    const/16 v3, 0xda

    if-ne v1, v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x2

    invoke-static {p0, v2, v3, v0}, Lcom/sec/android/app/camera/util/ExifUtil;->pack([BIIZ)I

    move-result v6

    if-lt v6, v3, :cond_6

    add-int v7, v2, v6

    array-length v8, p0

    if-le v7, v8, :cond_4

    goto :goto_1

    :cond_4
    const/16 v8, 0xe1

    if-ne v1, v8, :cond_5

    if-lt v6, v5, :cond_5

    add-int/lit8 v1, v2, 0x2

    const/4 v8, 0x4

    invoke-static {p0, v1, v8, v0}, Lcom/sec/android/app/camera/util/ExifUtil;->pack([BIIZ)I

    move-result v1

    const v8, 0x45786966

    if-ne v1, v8, :cond_5

    add-int/lit8 v1, v2, 0x6

    invoke-static {p0, v1, v3, v0}, Lcom/sec/android/app/camera/util/ExifUtil;->pack([BIIZ)I

    move-result v1

    if-nez v1, :cond_5

    add-int/lit8 v1, v2, 0x8

    add-int/lit8 v2, v6, -0x8

    goto :goto_4

    :cond_5
    move v1, v7

    goto :goto_0

    :cond_6
    :goto_1
    const-string p0, "Invalid length"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7
    :goto_2
    move v1, v2

    goto :goto_0

    :cond_8
    :goto_3
    move v1, v2

    :cond_9
    move v2, v0

    :goto_4
    if-le v2, v5, :cond_a

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/camera/util/ExifUtil;->getExifOrientationByExifPrint([BII)I

    move-result p0

    return p0

    :cond_a
    const-string p0, "Orientation not found"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getExifOrientationByExifPrint([BII)I
    .locals 8

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/app/camera/util/ExifUtil;->pack([BIIZ)I

    move-result v2

    const v3, 0x49492a00    # 823968.0f

    const-string v4, "ExifUtil"

    if-eq v2, v3, :cond_0

    const v5, 0x4d4d002a    # 2.14958752E8f

    if-eq v2, v5, :cond_0

    const-string p0, "Invalid byte order"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    add-int/lit8 v3, p1, 0x4

    invoke-static {p0, v3, v0, v2}, Lcom/sec/android/app/camera/util/ExifUtil;->pack([BIIZ)I

    move-result v0

    const/4 v3, 0x2

    add-int/2addr v0, v3

    const/16 v6, 0xa

    if-lt v0, v6, :cond_9

    if-le v0, p2, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr p1, v0

    sub-int/2addr p2, v0

    add-int/lit8 v0, p1, -0x2

    invoke-static {p0, v0, v3, v2}, Lcom/sec/android/app/camera/util/ExifUtil;->pack([BIIZ)I

    move-result v0

    :goto_1
    add-int/lit8 v6, v0, -0x1

    if-lez v0, :cond_8

    const/16 v0, 0xc

    if-lt p2, v0, :cond_8

    invoke-static {p0, p1, v3, v2}, Lcom/sec/android/app/camera/util/ExifUtil;->pack([BIIZ)I

    move-result v0

    const/16 v7, 0x112

    if-ne v0, v7, :cond_7

    const/16 p2, 0x8

    add-int/2addr p1, p2

    invoke-static {p0, p1, v3, v2}, Lcom/sec/android/app/camera/util/ExifUtil;->pack([BIIZ)I

    move-result p0

    if-eq p0, v5, :cond_6

    const/4 p1, 0x3

    if-eq p0, p1, :cond_5

    const/4 p1, 0x6

    if-eq p0, p1, :cond_4

    if-eq p0, p2, :cond_3

    const-string p0, "Unsupported orientation"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/16 p0, 0x10e

    return p0

    :cond_4
    const/16 p0, 0x5a

    return p0

    :cond_5
    const/16 p0, 0xb4

    return p0

    :cond_6
    return v1

    :cond_7
    add-int/lit8 p1, p1, 0xc

    add-int/lit8 p2, p2, -0xc

    move v0, v6

    goto :goto_1

    :cond_8
    const-string p0, "Orientation not found"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_9
    :goto_2
    const-string p0, "Invalid offset"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static pack([BIIZ)I
    .locals 2

    if-eqz p3, :cond_0

    add-int/lit8 p3, p2, -0x1

    add-int/2addr p1, p3

    const/4 p3, -0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v1, p2, -0x1

    if-lez p2, :cond_1

    shl-int/lit8 p2, v0, 0x8

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, p2

    add-int/2addr p1, p3

    move p2, v1

    goto :goto_1

    :cond_1
    return v0
.end method
