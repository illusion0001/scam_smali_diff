.class Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;
.super Ljava/lang/Object;
.source "DirectorsViewManagerImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DirectorsViewManagerImpl"


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private mIndex:I

.field private mRoiProperties:Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->init()V

    return-void
.end method

.method private getFocusRect(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Rect;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Point;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getTouchAutoFocusBoundary()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFocusRect : boundary="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DirectorsViewManagerImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFocusRect : previewRect="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->isDeviceLandscape(Landroid/app/Activity;)Z

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    if-nez p0, :cond_1

    iget p0, p1, Landroid/graphics/Point;->y:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v1

    sub-int/2addr v3, p1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    sub-int p1, p0, p1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    sub-int v1, v3, v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v4, v4

    add-int/2addr p0, v4

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    float-to-int p2, p2

    add-int/2addr v3, p2

    goto :goto_0

    :cond_1
    iget p0, p1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v3

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    sub-int v1, p0, v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    sub-int v3, p1, v3

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v4, v4

    add-int/2addr p0, v4

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    float-to-int p2, p2

    add-int/2addr p1, p2

    move v5, v3

    move v3, p1

    move p1, v1

    move v1, v5

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFocusRect : rect="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, v1, p0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p1, v1, p0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method private getTransformedFocusArea(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;
    .locals 4

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getTouchAutoFocusBoundary()Landroid/graphics/Rect;

    move-result-object p0

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Landroid/graphics/Point;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_0
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget v3, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p2

    invoke-static {p1, v1, p0}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result p0

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method static synthetic lambda$setSpinEffect$0([ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_MULTIVIEW_SPIN_EFFECT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$setZoomTransition$1(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_MULTIVIEW_TRANSITION_EFFECT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput v2, v1, p0

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return p0
.end method

.method static synthetic lambda$updateDirectorsViewRoi$2(Landroid/hardware/camera2/params/MeteringRectangle;Landroid/hardware/camera2/params/MeteringRectangle;Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 4

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_MULTIVIEW_CROP_ROI:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x7

    new-array v1, v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v3, 0x2

    aput-object p0, v1, v3

    const/4 v3, 0x3

    aput-object p1, v1, v3

    const/4 p1, 0x4

    aput-object p0, v1, p1

    const/4 p1, 0x5

    aput-object p0, v1, p1

    const/4 p1, 0x6

    aput-object p0, v1, p1

    invoke-interface {p2, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v2
.end method

.method private setRoiMode(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mIndex:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mRoiProperties:Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;->access$200(Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public changeRoiMode(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->setRoiMode(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->setManualRoi(II)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->updateDirectorsViewRoi(Z)V

    :cond_0
    return-void
.end method

.method public changeView(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mIndex:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->updateDirectorsViewRoi(Z)V

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mRoiProperties:Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;

    return-void
.end method

.method public getManualRoiPoint()Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget v1, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mIndex:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mRoiProperties:Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;->access$000(Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;)Landroid/graphics/Point;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRoiMode()I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mIndex:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mRoiProperties:Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;->access$100(Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mRoiProperties:Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;-><init>(Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mRoiProperties:Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mIndex:I

    return-void
.end method

.method public setManualRoi(II)V
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance p1, Landroid/util/Size;

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f070247

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070246

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p1, p2, v1}, Landroid/util/Size;-><init>(II)V

    iget p2, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mIndex:I

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mRoiProperties:Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;

    invoke-static {p2, v0}, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;->access$400(Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;Landroid/graphics/Point;)V

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mRoiProperties:Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->getTransformedFocusArea(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->getFocusRect(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;->access$500(Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;Landroid/graphics/Rect;)V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->updateDirectorsViewRoi(Z)V

    return-void
.end method

.method public setSpinEffect(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/16 p1, 0x64

    :goto_0
    const/4 v2, 0x1

    aput p1, v0, v2

    const/4 p1, 0x2

    aput v1, v0, p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance p1, Lcom/sec/android/app/camera/engine/-$$Lambda$DirectorsViewManagerImpl$-qaRcjvEr23QlroNqVPWVG8ZaI0;

    invoke-direct {p1, v0}, Lcom/sec/android/app/camera/engine/-$$Lambda$DirectorsViewManagerImpl$-qaRcjvEr23QlroNqVPWVG8ZaI0;-><init>([I)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public setZoomTransition(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoomTransition : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DirectorsViewManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$DirectorsViewManagerImpl$lxQVMEOrGg_K5MAf5oBjfKK9_ow;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/-$$Lambda$DirectorsViewManagerImpl$lxQVMEOrGg_K5MAf5oBjfKK9_ow;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public updateDirectorsViewRoi(Z)V
    .locals 4

    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    if-nez p1, :cond_0

    iget p1, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mIndex:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mRoiProperties:Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;->access$100(Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mRoiProperties:Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;

    invoke-static {v1}, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;->access$000(Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;)Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Point;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mRoiProperties:Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;

    invoke-static {v2}, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;->access$600(Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl$RoiProperties;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v1, Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v1, v3, p1}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    :goto_2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance p1, Lcom/sec/android/app/camera/engine/-$$Lambda$DirectorsViewManagerImpl$Gg034DGP65X2rdmMJ4ke-hfGim8;

    invoke-direct {p1, v0, v1}, Lcom/sec/android/app/camera/engine/-$$Lambda$DirectorsViewManagerImpl$Gg034DGP65X2rdmMJ4ke-hfGim8;-><init>(Landroid/hardware/camera2/params/MeteringRectangle;Landroid/hardware/camera2/params/MeteringRectangle;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "updateDirectorsViewRoi roi rect : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", weight : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DirectorsViewManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
