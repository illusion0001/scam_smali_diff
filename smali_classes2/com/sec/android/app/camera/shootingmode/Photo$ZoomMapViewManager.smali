.class Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;
.super Ljava/lang/Object;
.source "Photo.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$ZoomMapViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Photo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomMapViewManager"
.end annotation


# instance fields
.field private ZOOM_MAP_VIEW_MIN_RATIO:I

.field private mCenterGuideRectScale:F

.field private mIsZoomMapViewShowing:Z

.field private mIsZoomMapViewStarted:Z

.field private mPreviewHeight:F

.field private mPreviewWidth:F

.field private mTeleZoomLevel:I

.field private mZoomMapView:Lcom/sec/android/app/camera/widget/gl/ZoomMapView;

.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Photo;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Photo;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mCenterGuideRectScale:F

    const p1, 0x7f0705e6

    invoke-static {p1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mPreviewWidth:F

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mPreviewWidth:F

    const v0, 0x3faaaaab

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mPreviewHeight:F

    const/16 p1, 0x7d0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->ZOOM_MAP_VIEW_MIN_RATIO:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mTeleZoomLevel:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mIsZoomMapViewStarted:Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mIsZoomMapViewShowing:Z

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->start()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->showZoomMapView()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->hideZoomMapView()V

    return-void
.end method

.method static synthetic access$3600(Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->initializeView(Lcom/samsung/android/glview/GLViewGroup;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->stop()V

    return-void
.end method

.method static synthetic access$7000(Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mIsZoomMapViewShowing:Z

    return p0
.end method

.method private getHideAnimation(Lcom/sec/android/app/camera/widget/gl/ZoomMapView;)Landroid/view/animation/AnimationSet;
    .locals 14

    new-instance p0, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const v0, 0x7f0b004d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v2, v5, v4, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v11, Landroid/view/animation/PathInterpolator;

    invoke-direct {v11, v5, v4, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v12

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v13, 0x0

    move-object v10, p1

    invoke-static/range {v6 .. v13}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object p0
.end method

.method private getShowAnimation(Lcom/sec/android/app/camera/widget/gl/ZoomMapView;)Landroid/view/animation/AnimationSet;
    .locals 14

    new-instance p0, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const v0, 0x7f0b004d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v2, v5, v4, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v11, Landroid/view/animation/PathInterpolator;

    invoke-direct {v11, v5, v4, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v12

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    move-object v10, p1

    invoke-static/range {v6 .. v13}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object p0
.end method

.method private getTeleZoomLevel()I
    .locals 5

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getSeamlessZoomValueArray()[I

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    const/16 v4, 0x64

    if-le v3, v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private hideZoomMapView()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mIsZoomMapViewShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mIsZoomMapViewShowing:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableZoomMapViewPreviewCallback(ZLandroid/util/Size;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mZoomMapView:Lcom/sec/android/app/camera/widget/gl/ZoomMapView;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->getHideAnimation(Lcom/sec/android/app/camera/widget/gl/ZoomMapView;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/ZoomMapView;->setAnimation(Landroid/view/animation/Animation;Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mZoomMapView:Lcom/sec/android/app/camera/widget/gl/ZoomMapView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ZoomMapView;->startAnimation()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    const/16 v0, 0x10

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/menu/Indicators;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/Indicators;->resetTranslate()V

    :cond_0
    return-void
.end method

.method private initializeView(Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 7

    new-instance v6, Lcom/sec/android/app/camera/widget/gl/ZoomMapView;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mPreviewWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mPreviewHeight:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/widget/gl/ZoomMapView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mZoomMapView:Lcom/sec/android/app/camera/widget/gl/ZoomMapView;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mZoomMapView:Lcom/sec/android/app/camera/widget/gl/ZoomMapView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ZoomMapView;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mZoomMapView:Lcom/sec/android/app/camera/widget/gl/ZoomMapView;

    invoke-virtual {p1, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private refreshZoomMapViewPosition()V
    .locals 5

    const v0, 0x7f0705e4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getTopBaseLinePositionY()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getTopBaseLinePositionY()F

    move-result v1

    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mPreviewWidth:F

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mPreviewHeight:F

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mZoomMapView:Lcom/sec/android/app/camera/widget/gl/ZoomMapView;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mPreviewWidth:F

    sub-float/2addr v3, v4

    sub-float/2addr v3, v0

    add-float/2addr v1, v0

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/app/camera/widget/gl/ZoomMapView;->moveLayoutAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mZoomMapView:Lcom/sec/android/app/camera/widget/gl/ZoomMapView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mPreviewHeight:F

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ZoomMapView;->setHeight(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mZoomMapView:Lcom/sec/android/app/camera/widget/gl/ZoomMapView;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mPreviewWidth:F

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mTeleZoomLevel:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mCenterGuideRectScale:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mPreviewHeight:F

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mTeleZoomLevel:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mCenterGuideRectScale:F

    div-float/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/ZoomMapView;->setCenterGuideRectSize(FF)V

    return-void
.end method

.method private showZoomMapView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->showZoomMapView(I)V

    return-void
.end method

.method private showZoomMapView(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mIsZoomMapViewShowing:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->ZOOM_MAP_VIEW_MIN_RATIO:I

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->refreshZoomMapViewPosition()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p1

    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mPreviewWidth:F

    float-to-int v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mPreviewHeight:F

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableZoomMapViewPreviewCallback(ZLandroid/util/Size;)V

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mIsZoomMapViewShowing:Z

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p1

    const/16 v0, 0x10

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/menu/Indicators;

    const/4 v0, 0x0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mPreviewHeight:F

    const v1, 0x7f070128

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    add-float/2addr p0, v1

    invoke-virtual {p1, v0, p0}, Lcom/sec/android/app/camera/menu/Indicators;->translateAbsolute(FF)V

    :cond_0
    return-void
.end method

.method private start()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->getTeleZoomLevel()I

    move-result v0

    sget-boolean v1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_ZOOM_MAP_VIEW:Z

    if-eqz v1, :cond_2

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSimpleMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Photo"

    const-string v2, "ZoomMapViewManager start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mIsZoomMapViewStarted:Z

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mTeleZoomLevel:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isPreviewStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090005

    invoke-virtual {v0, v2, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mCenterGuideRectScale:F

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setZoomMapviewListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$ZoomMapViewListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private stop()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mIsZoomMapViewStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Photo"

    const-string v1, "ZoomMapViewManager stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mIsZoomMapViewStarted:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setZoomMapviewListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$ZoomMapViewListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->hideZoomMapView()V

    return-void
.end method


# virtual methods
.method public onCameraSettingChanged(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;I)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->ZOOM_MAP_VIEW_MIN_RATIO:I

    if-lt p2, p1, :cond_2

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mIsZoomMapViewShowing:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mZoomMapView:Lcom/sec/android/app/camera/widget/gl/ZoomMapView;

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mPreviewWidth:F

    int-to-float p2, p2

    div-float/2addr v0, p2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mTeleZoomLevel:I

    int-to-float v2, v1

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mCenterGuideRectScale:F

    div-float/2addr v0, v2

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mPreviewHeight:F

    div-float/2addr p0, p2

    int-to-float p2, v1

    mul-float/2addr p0, p2

    div-float/2addr p0, v2

    invoke-virtual {p1, v0, p0}, Lcom/sec/android/app/camera/widget/gl/ZoomMapView;->setCenterGuideRectSize(FF)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->showZoomMapView(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->hideZoomMapView()V

    :goto_0
    return-void
.end method

.method public onPreviewFrame(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mZoomMapView:Lcom/sec/android/app/camera/widget/gl/ZoomMapView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ZoomMapView;->setPreviewData(Landroid/graphics/Bitmap;)V

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mIsZoomMapViewShowing:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mZoomMapView:Lcom/sec/android/app/camera/widget/gl/ZoomMapView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ZoomMapView;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mZoomMapView:Lcom/sec/android/app/camera/widget/gl/ZoomMapView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->getShowAnimation(Lcom/sec/android/app/camera/widget/gl/ZoomMapView;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/ZoomMapView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mZoomMapView:Lcom/sec/android/app/camera/widget/gl/ZoomMapView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ZoomMapView;->startAnimation()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->mZoomMapView:Lcom/sec/android/app/camera/widget/gl/ZoomMapView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/ZoomMapView;->setVisibility(I)V

    :cond_0
    return-void
.end method
