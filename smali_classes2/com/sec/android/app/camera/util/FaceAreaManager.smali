.class public Lcom/sec/android/app/camera/util/FaceAreaManager;
.super Ljava/lang/Object;
.source "FaceAreaManager.java"


# static fields
.field public static final BIG_FACE_SIZE:F = 1000.0f

.field public static final GUIDE_BIG_FACE:I = 0x9

.field public static final GUIDE_LEFT_BOTTOM:I = 0x2

.field public static final GUIDE_LEFT_CENTER:I = 0x1

.field public static final GUIDE_LEFT_TOP:I = 0x0

.field public static final GUIDE_MIDDLE_BOTTOM:I = 0x8

.field public static final GUIDE_MIDDLE_CENTER:I = 0x7

.field public static final GUIDE_MIDDLE_TOP:I = 0x6

.field public static final GUIDE_NONE:I = -0x1

.field public static final GUIDE_RIGHT_BOTTOM:I = 0x5

.field public static final GUIDE_RIGHT_CENTER:I = 0x4

.field public static final GUIDE_RIGHT_TOP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FaceAreaManager"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findBigRect([Landroid/graphics/Rect;I)I
    .locals 4
    .param p0    # [Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    move v2, v0

    :cond_0
    if-ge v0, p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    if-lt v0, p1, :cond_1

    goto :goto_1

    :cond_1
    aget-object v3, p0, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_0

    :cond_2
    :goto_1
    return v2
.end method

.method private static getDownRect([Landroid/graphics/Rect;II)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v2, p0, p2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    aget-object v3, p0, v0

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static getFaceCountStringId(I)I
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const p0, 0x7f110519

    return p0

    :cond_0
    const p0, 0x7f1102ab

    return p0

    :cond_1
    const p0, 0x7f1102a4

    return p0

    :cond_2
    const p0, 0x7f11051d

    return p0
.end method

.method private static getFaceInformationText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/FaceAreaManager;->getFaceCountStringId(I)I

    move-result p2

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p0, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p2, p1}, Lcom/sec/android/app/camera/util/FaceAreaManager;->getFacePositionStringId(II)I

    move-result p2

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p0, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p2}, Lcom/sec/android/app/camera/util/FaceAreaManager;->getFacePositionStringId(I)I

    move-result p1

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFacePosition(Landroid/graphics/Rect;Landroid/graphics/RectF;)I
    .locals 9
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget p0, p0, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v0, :cond_3

    const/4 v7, 0x1

    if-eq v0, v7, :cond_2

    const/4 v7, 0x2

    if-eq v0, v7, :cond_1

    const/4 v7, 0x3

    if-eq v0, v7, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    int-to-float v3, v3

    div-float v4, v3, v5

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v5

    div-float/2addr v3, v6

    int-to-float p0, p0

    sub-float/2addr v3, p0

    iput v3, v1, Landroid/graphics/PointF;->x:F

    iget p0, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr p0, p1

    div-float/2addr p0, v6

    iput p0, v1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_1
    int-to-float v2, v2

    div-float v4, v2, v5

    int-to-float v2, v3

    div-float/2addr v2, v5

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v5

    div-float/2addr v3, v6

    iput v3, v1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p1

    div-float/2addr v3, v6

    int-to-float p0, p0

    sub-float/2addr v3, p0

    iput v3, v1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_2
    int-to-float v3, v3

    div-float v4, v3, v5

    int-to-float v2, v2

    div-float v5, v2, v5

    iget v7, p1, Landroid/graphics/RectF;->top:F

    iget v8, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v8

    div-float/2addr v7, v6

    sub-float/2addr v3, v7

    int-to-float p0, p0

    sub-float/2addr v3, p0

    iput v3, v1, Landroid/graphics/PointF;->x:F

    iget p0, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p0, p1

    div-float/2addr p0, v6

    sub-float/2addr v2, p0

    iput v2, v1, Landroid/graphics/PointF;->y:F

    move v2, v5

    goto :goto_0

    :cond_3
    int-to-float v2, v2

    div-float v4, v2, v5

    int-to-float v2, v3

    div-float/2addr v2, v5

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v5

    div-float/2addr v3, v6

    iput v3, v1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p1

    div-float/2addr v3, v6

    int-to-float p0, p0

    sub-float/2addr v3, p0

    iput v3, v1, Landroid/graphics/PointF;->y:F

    :goto_0
    iget p0, v1, Landroid/graphics/PointF;->x:F

    cmpg-float p0, p0, v4

    if-gez p0, :cond_4

    iget p0, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v2, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->getFacePositionOnLeftSide(IFF)I

    move-result p0

    return p0

    :cond_4
    iget p0, v1, Landroid/graphics/PointF;->x:F

    cmpl-float p0, p0, v4

    if-ltz p0, :cond_5

    iget p0, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v6

    cmpg-float p0, p0, v4

    if-gtz p0, :cond_5

    iget p0, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v2, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->getFacePositionOnCenter(IFF)I

    move-result p0

    return p0

    :cond_5
    iget p0, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v2, p0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->getFacePositionOnRightSide(IFF)I

    move-result p0

    return p0
.end method

.method private static getFacePosition([Landroid/graphics/Rect;I)I
    .locals 5
    .param p0    # [Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/FaceAreaManager;->findBigRect([Landroid/graphics/Rect;I)I

    move-result v0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->getLeftRect([Landroid/graphics/Rect;II)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->getDownRect([Landroid/graphics/Rect;II)I

    move-result p0

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->getRightRect([Landroid/graphics/Rect;II)I

    move-result p0

    goto :goto_0

    :cond_3
    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/util/FaceAreaManager;->getUpRect([Landroid/graphics/Rect;II)I

    move-result p0

    :goto_0
    const/4 v0, 0x4

    if-ne p1, v2, :cond_5

    if-nez p0, :cond_4

    return v3

    :cond_4
    return v0

    :cond_5
    if-eqz p0, :cond_7

    if-eq p0, v3, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x7

    return p0

    :cond_7
    return v3
.end method

.method private static getFacePositionGuideText(Lcom/sec/android/app/camera/interfaces/CameraContext;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFacePositionGuideText : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceAreaManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110517

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f11051e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110518

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110521

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110520

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f11051f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFacePositionIndex(Lcom/sec/android/app/camera/interfaces/CameraContext;[Landroid/graphics/Rect;Landroid/graphics/Matrix;I)I
    .locals 2
    .param p1    # [Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/sec/android/app/camera/util/VoiceAssistantManager;->isTtsEnabled(Lcom/sec/android/app/camera/interfaces/CameraContext;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 p0, 0x2

    if-eq p3, p0, :cond_1

    const/4 p0, 0x3

    if-eq p3, p0, :cond_1

    return v1

    :cond_1
    invoke-static {p1, p3}, Lcom/sec/android/app/camera/util/FaceAreaManager;->getFacePosition([Landroid/graphics/Rect;I)I

    move-result p0

    return p0

    :cond_2
    new-instance p3, Landroid/graphics/RectF;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-direct {p3, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/sec/android/app/camera/util/FaceAreaManager;->getFacePosition(Landroid/graphics/Rect;Landroid/graphics/RectF;)I

    move-result p0

    return p0
.end method

.method private static getFacePositionOnCenter(IFF)I
    .locals 4

    cmpg-float v0, p2, p1

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x6

    if-gez v0, :cond_2

    if-eqz p0, :cond_1

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v3

    :cond_2
    cmpl-float v0, p2, p1

    if-ltz v0, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_3

    const/4 p0, 0x7

    return p0

    :cond_3
    if-eqz p0, :cond_5

    if-ne p0, v2, :cond_4

    goto :goto_1

    :cond_4
    return v3

    :cond_5
    :goto_1
    return v1
.end method

.method private static getFacePositionOnLeftSide(IFF)I
    .locals 3

    cmpg-float v0, p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-gez v0, :cond_2

    if-eqz p0, :cond_1

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    cmpl-float v0, p2, p1

    if-ltz v0, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    if-eqz p0, :cond_5

    if-ne p0, v2, :cond_4

    goto :goto_1

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v2
.end method

.method private static getFacePositionOnRightSide(IFF)I
    .locals 4

    cmpg-float v0, p2, p1

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-gez v0, :cond_2

    if-eqz p0, :cond_1

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v3

    :cond_2
    cmpl-float v0, p2, p1

    if-ltz v0, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    if-eqz p0, :cond_5

    if-ne p0, v2, :cond_4

    goto :goto_1

    :cond_4
    return v3

    :cond_5
    :goto_1
    return v1
.end method

.method private static getFacePositionStringId(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const p0, 0x7f1102a8

    return p0

    :pswitch_1
    const p0, 0x7f1102a1

    return p0

    :pswitch_2
    const p0, 0x7f1102a2

    return p0

    :pswitch_3
    const p0, 0x7f1102a3

    return p0

    :pswitch_4
    const p0, 0x7f1102a9

    return p0

    :pswitch_5
    const p0, 0x7f1102aa

    return p0

    :pswitch_6
    const p0, 0x7f1102a5

    return p0

    :pswitch_7
    const p0, 0x7f1102a6

    return p0

    :pswitch_8
    const p0, 0x7f1102a7

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getFacePositionStringId(II)I
    .locals 0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x7

    if-eq p0, p1, :cond_0

    const p0, 0x7f11051c

    return p0

    :cond_0
    const p0, 0x7f11051a

    return p0

    :cond_1
    const p0, 0x7f11051b

    return p0
.end method

.method private static getLeftRect([Landroid/graphics/Rect;II)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v2, p0, p2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    aget-object v3, p0, v0

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static getRightRect([Landroid/graphics/Rect;II)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v2, p0, p2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    aget-object v3, p0, v0

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static getUpRect([Landroid/graphics/Rect;II)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v2, p0, p2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    aget-object v3, p0, v0

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isBigFaceSize(Landroid/graphics/Rect;)Z
    .locals 2
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p0, v1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static speak(Lcom/sec/android/app/camera/interfaces/CameraContext;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/FaceAreaManager;->getFaceInformationText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/VoiceAssistantManager;->speakTtsAllAtOnce(Lcom/sec/android/app/camera/interfaces/CameraContext;Ljava/lang/String;)V

    return-void
.end method

.method public static speakWithGuide(Lcom/sec/android/app/camera/interfaces/CameraContext;Landroid/graphics/Rect;I)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-static {p0, v0, p2}, Lcom/sec/android/app/camera/util/FaceAreaManager;->getFaceInformationText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/FaceAreaManager;->isBigFaceSize(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p2, 0x9

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p2}, Lcom/sec/android/app/camera/util/FaceAreaManager;->getFacePositionGuideText(Lcom/sec/android/app/camera/interfaces/CameraContext;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/VoiceAssistantManager;->speakTtsAllAtOnce(Lcom/sec/android/app/camera/interfaces/CameraContext;Ljava/lang/String;)V

    return-void
.end method
