.class Lcom/sec/android/app/camera/shootingmode/Food;
.super Ljava/lang/Object;
.source "Food.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$PreviewLayoutChangedListener;
.implements Lcom/samsung/android/camera/core2/MakerInterface$FoodEventCallback;
.implements Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomChangeGroupOpenStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/Food$MainHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_BLUR_EFFECT_MOVING_THRESHOLD:F = 5.0f

.field private static final DELAY_TIME_TO_HIDE_MASKING_EFFECT:I = 0xbb8

.field private static final GUIDE_STATE_MOVING:I = 0x2

.field private static final GUIDE_STATE_NONE:I = 0x0

.field private static final GUIDE_STATE_RESIZING:I = 0x1

.field private static final MESSAGE_FOOD_HIDE_MASKING_EFFECT:I = 0x1

.field private static final SECIMAGE_COORDINATE_MAX:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "Food"

.field private static final TOUCH_INSIDE_AREA:I = 0x7

.field private static final TOUCH_OUTSIDE_AREA:I = 0x0

.field private static final TOUCH_VERTEX_LB:I = 0x2

.field private static final TOUCH_VERTEX_LT:I = 0x1

.field private static final TOUCH_VERTEX_RB:I = 0x4

.field private static final TOUCH_VERTEX_RT:I = 0x3


# instance fields
.field private final EFFECT_GUIDE_DEFAULT_FRAME_SIZE:F

.field private final EFFECT_GUIDE_FRAME_POS_X:F

.field private final EFFECT_GUIDE_FRAME_POS_Y:F

.field private final EFFECT_GUIDE_MAX_SIZE:F

.field private final EFFECT_GUIDE_MIN_SIZE:F

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final TOUCH_VERTEX_AREA_WIDTH:I

.field private mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

.field private mAmountDeltaX:F

.field private mAmountDeltaY:F

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mDrawingArea:Lcom/samsung/android/glview/GLViewGroup;

.field private mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

.field private mEffectGuideCenter:Landroid/graphics/PointF;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mGuideState:I

.field private final mHandler:Lcom/sec/android/app/camera/shootingmode/Food$MainHandler;

.field private mIsTouchAeAfRequired:Z

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mMovePoint:Landroid/graphics/PointF;

.field private mPreviewCenter:Landroid/graphics/PointF;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mSelectedVertex:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_HEIGHT:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v1, v0

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_MIN_SIZE:F

    int-to-float v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_MAX_SIZE:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_HEIGHT:I

    int-to-float v2, v1

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_DEFAULT_FRAME_SIZE:F

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_DEFAULT_FRAME_SIZE:F

    sub-float/2addr v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_FRAME_POS_X:F

    int-to-float v0, v1

    sub-float/2addr v0, v2

    div-float/2addr v0, v3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_FRAME_POS_Y:F

    const v0, 0x7f07011a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Food$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/shootingmode/Food$MainHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/Food;Lcom/sec/android/app/camera/shootingmode/Food$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mHandler:Lcom/sec/android/app/camera/shootingmode/Food$MainHandler;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mIsTouchAeAfRequired:Z

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mDrawingArea:Lcom/samsung/android/glview/GLViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaY:F

    new-instance v0, Landroid/graphics/PointF;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-direct {v0, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-direct {v0, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewCenter:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Food$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/Food$1;-><init>(Lcom/sec/android/app/camera/shootingmode/Food;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/Food;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/Food;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/Food;)Lcom/sec/android/app/camera/shootingmode/Food$MainHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mHandler:Lcom/sec/android/app/camera/shootingmode/Food$MainHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/Food;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Food;->enableMaskingEffect(Z)V

    return-void
.end method

.method private convertPositionForSending(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    iget p1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, p1

    iput p0, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method private decideSelectedVertex(FF)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentRight()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentTop()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentBottom()F

    move-result v3

    sub-float v4, v0, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    sub-float v5, v2, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    goto/16 :goto_0

    :cond_0
    sub-float v5, v1, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    sub-float v6, v2, p2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    const/4 p1, 0x3

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    goto :goto_0

    :cond_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v6, v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    sub-float v4, v3, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v6, v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    const/4 p1, 0x2

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    goto :goto_0

    :cond_2
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    sub-float v4, v3, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    const/4 p1, 0x4

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    goto :goto_0

    :cond_3
    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    cmpg-float p1, p1, v1

    if-gez p1, :cond_4

    cmpl-float p1, p2, v2

    if-lez p1, :cond_4

    cmpg-float p1, p2, v3

    if-gez p1, :cond_4

    const/4 p1, 0x7

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    :goto_0
    return-void
.end method

.method private enableBlurEffect(Z)V
    .locals 5

    if-eqz p1, :cond_0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    const v0, 0x7f070119

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v1

    int-to-float v0, v0

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentTop()F

    move-result v2

    add-float/2addr v2, v0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentRight()F

    move-result v3

    sub-float/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentBottom()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Food;->transformCoordinateToLandscape(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Food;->normalizeCoordinate(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FOOD=1,LE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",TO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",RI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",BO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableBlurEffect - setEffectParameter String : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Food"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const-string p1, "FOOD=0"

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private enableEngineCallbacks(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setFoodEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$FoodEventCallback;)V

    return-void
.end method

.method private enableEngineEventListeners(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->registerPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->unregisterPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    :goto_0
    return-void
.end method

.method private enableMaskingEffect(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz p1, :cond_0

    const-string p1, "ENHANCED=1"

    goto :goto_0

    :cond_0
    const-string p1, "ENHANCED=0"

    :goto_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    return-void
.end method

.method private enableMenuListeners(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->registerMenuCreateListener(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->unregisterMenuCreateListener(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FOOD_COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->setZoomChangeGroupOpenStateListener(Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomChangeGroupOpenStateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FOOD_COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FOOD_COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-object p0, v1

    :goto_2
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    :cond_3
    return-void
.end method

.method private hideEffectGuide()V
    .locals 2

    const-string v0, "Food"

    const-string v1, "hideEffectGuide"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    return-void
.end method

.method private isResizingEffectGuideAvailable(FF)Z
    .locals 2

    mul-float p0, p1, p2

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    const/4 v1, 0x0

    if-gez p0, :cond_0

    return v1

    :cond_0
    cmpl-float p0, p1, v0

    if-eqz p0, :cond_2

    cmpl-float p0, p2, v0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private isValidTouchArea(F)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->getAspectRatio(II)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->getAspectRatioType(D)Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/Food$2;->$SwitchMap$com$sec$android$app$camera$interfaces$Resolution$ASPECT_RATIO:[I

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    :cond_0
    return v1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getTopBaseLinePositionY()F

    move-result p0

    float-to-int p0, p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-ltz p0, :cond_3

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method private moveEffectGuide(Landroid/graphics/PointF;)V
    .locals 4

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, p1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    return-void
.end method

.method private normalizeCoordinate(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    mul-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method private registerLocalBroadcast()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.ERROR_CAMERA_BUSY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private resetEffectGuide()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_DEFAULT_FRAME_SIZE:F

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaY:F

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->resetTranslate()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->getLeft()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getRight()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLNinePatch;->getTop()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getBottom()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewCenter:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private resizeEffectGuideByRadiusDelta(F)V
    .locals 4

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v1

    mul-float v3, p1, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_MIN_SIZE:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result p1

    sub-float/2addr v3, p1

    div-float p1, v3, v2

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v0

    mul-float v1, p1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_MAX_SIZE:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result p1

    sub-float/2addr v1, p1

    div-float p1, v1, v2

    :cond_1
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaY:F

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    neg-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p1, v1}, Lcom/samsung/android/glview/GLNinePatch;->translate(FFZ)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_DEFAULT_FRAME_SIZE:F

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    mul-float v1, p0, v2

    add-float/2addr v1, v0

    mul-float/2addr p0, v2

    add-float/2addr v0, p0

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    return-void
.end method

.method private resizeEffectGuideWithDrag(IFF)V
    .locals 3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    if-lez v0, :cond_1

    mul-float/2addr p3, p2

    cmpg-float p3, p3, v2

    if-gez p3, :cond_0

    mul-float p3, p2, v1

    goto :goto_0

    :cond_0
    move p3, p2

    goto :goto_0

    :cond_1
    mul-float/2addr p2, p3

    cmpg-float p2, p2, v2

    if-gez p2, :cond_2

    mul-float p2, p3, v1

    goto :goto_0

    :cond_2
    move p2, p3

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    goto :goto_2

    :cond_3
    mul-float/2addr p2, v1

    goto :goto_1

    :cond_4
    mul-float/2addr p2, v1

    goto :goto_2

    :cond_5
    :goto_1
    mul-float/2addr p3, v1

    :cond_6
    :goto_2
    cmpl-float p1, p2, v2

    const/high16 v0, 0x40000000    # 2.0f

    if-ltz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result p1

    mul-float v1, p2, v0

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_MIN_SIZE:F

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result p1

    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_MIN_SIZE:F

    :goto_3
    sub-float/2addr p1, p2

    div-float p2, p1, v0

    goto :goto_4

    :cond_7
    cmpg-float p1, p2, v2

    if-gtz p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result p1

    mul-float v1, p2, v0

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_MAX_SIZE:F

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result p1

    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_MAX_SIZE:F

    goto :goto_3

    :cond_8
    :goto_4
    cmpl-float p1, p3, v2

    if-ltz p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result p1

    mul-float v1, p3, v0

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_MIN_SIZE:F

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result p1

    iget p3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_MIN_SIZE:F

    :goto_5
    sub-float/2addr p1, p3

    div-float p3, p1, v0

    goto :goto_6

    :cond_9
    cmpg-float p1, p3, v2

    if-gtz p1, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result p1

    mul-float v1, p3, v0

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_MAX_SIZE:F

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result p1

    iget p3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_MAX_SIZE:F

    goto :goto_5

    :cond_a
    :goto_6
    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/camera/shootingmode/Food;->isResizingEffectGuideAvailable(FF)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaY:F

    sub-float/2addr p1, p3

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaY:F

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, v1}, Lcom/samsung/android/glview/GLNinePatch;->translate(FFZ)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_DEFAULT_FRAME_SIZE:F

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    mul-float p3, p0, v0

    add-float/2addr p3, p2

    mul-float/2addr p0, v0

    add-float/2addr p2, p0

    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    return-void
.end method

.method private showEffectGuide()V
    .locals 2

    const-string v0, "Food"

    const-string v1, "showEffectGuide"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    return-void
.end method

.method private startMaskingEffectHideTimer(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mHandler:Lcom/sec/android/app/camera/shootingmode/Food$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Food$MainHandler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mHandler:Lcom/sec/android/app/camera/shootingmode/Food$MainHandler;

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Food$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private transformCoordinateToLandscape(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    iget p1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, p1

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method private transformCoordinateToPortrait(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method


# virtual methods
.method public isShootingAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$onFoodResultRegion$0$Food([I)V
    .locals 6
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurEffect()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "Food"

    const-string v1, "onFoodResultRegion"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x1

    aget v2, p1, v1

    int-to-float v2, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    int-to-float v3, v3

    const/4 v4, 0x3

    aget v4, p1, v4

    int-to-float v4, v4

    const/4 v5, 0x4

    aget p1, p1, v5

    int-to-float p1, p1

    invoke-virtual {v0, v2, v3, v4, p1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->transformCoordinateToPortrait(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    iget p1, p1, Landroid/graphics/RectF;->left:F

    sub-float p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v4

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Food;->moveEffectGuide(Landroid/graphics/PointF;)V

    sub-float/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Food;->resizeEffectGuideByRadiusDelta(F)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->showEffectGuide()V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Food;->enableBlurEffect(Z)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Food;->enableMaskingEffect(Z)V

    const/16 p1, 0xbb8

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Food;->startMaskingEffectHideTimer(I)V

    return-void
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 2

    const-string v0, "Food"

    const-string v1, "onActivate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_FOOD:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshMainButton(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_FOOD:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->showShootingModeHelpText()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->registerLocalBroadcast()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerPreviewLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$PreviewLayoutChangedListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FOOD_BLUR_EFFECT:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Food;->enableMenuListeners(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Food;->enableEngineEventListeners(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Food;->enableEngineCallbacks(Z)V

    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurEffect()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->isValidTouchArea(F)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x5

    if-eq v0, p1, :cond_2

    return v1

    :cond_2
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mIsTouchAeAfRequired:Z

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mIsTouchAeAfRequired:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Food;->convertPositionForSending(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFoodBlurPosition(Landroid/graphics/PointF;)V

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mIsTouchAeAfRequired:Z

    return v1

    :cond_4
    :goto_0
    return v2

    :cond_5
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mIsTouchAeAfRequired:Z

    return v1
.end method

.method public onCameraSettingChanged(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraSettingChanged : key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Food"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Food$2;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->resetEffectGuide()V

    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->showEffectGuide()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->enableBlurEffect(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->enableMaskingEffect(Z)V

    const/16 p1, 0xbb8

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Food;->startMaskingEffectHideTimer(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mHandler:Lcom/sec/android/app/camera/shootingmode/Food$MainHandler;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/Food$MainHandler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->hideEffectGuide()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Food;->enableBlurEffect(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Food;->enableMaskingEffect(Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideShootingModeHelpText()V

    :goto_0
    return-void
.end method

.method public onCaptureEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;)V
    .locals 0

    return-void
.end method

.method public onConnectMakerPrepared(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;)V
    .locals 0

    const/4 p0, 0x5

    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;->setEffectProcessorMode(I)V

    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 7

    const-string v0, "Food"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    new-instance p3, Lcom/samsung/android/glview/GLViewGroup;

    iget-object p4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mDrawingArea:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    new-instance p3, Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_FRAME_POS_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_FRAME_POS_Y:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_DEFAULT_FRAME_SIZE:F

    const v6, 0x7f080712

    move-object v0, p3

    move-object v1, p1

    move v4, v5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p1, p0}, Lcom/samsung/android/glview/GLNinePatch;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/samsung/android/glview/GLNinePatch;->setClickable(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p3

    const p4, 0x7f110130

    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/glview/GLNinePatch;->setTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mDrawingArea:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p1, p3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget p3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float p3, p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    div-float/2addr v0, p4

    invoke-virtual {p1, p3, v0}, Landroid/graphics/PointF;->set(FF)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mDrawingArea:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method public onFoodResultRegion([I)V
    .locals 2
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mHandler:Lcom/sec/android/app/camera/shootingmode/Food$MainHandler;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Food$8PNU5_i6j_qSwobnPvfymR_pBCk;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Food$8PNU5_i6j_qSwobnPvfymR_pBCk;-><init>(Lcom/sec/android/app/camera/shootingmode/Food;[I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Food$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInactivate()V
    .locals 3

    const-string v0, "Food"

    const-string v1, "onInactivate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->enableEngineCallbacks(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->enableEngineEventListeners(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mHandler:Lcom/sec/android/app/camera/shootingmode/Food$MainHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/Food$MainHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->enableMenuListeners(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FOOD_BLUR_EFFECT:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterPreviewLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$PreviewLayoutChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->resetEffectGuide()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->hideEffectGuide()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onMenuCreated(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Food$2;->$SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    :goto_0
    return-void
.end method

.method public onPictureSaved()V
    .locals 0

    return-void
.end method

.method public onPreviewLayoutChanged()V
    .locals 4

    const-string v0, "Food"

    const-string v1, "onPreviewLayoutChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mDrawingArea:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mDrawingArea:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewCenter:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->resetEffectGuide()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurEffect()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->showEffectGuide()V

    :cond_0
    return-void
.end method

.method public onRecordKeyCanceled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onRecordKeyPressed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onRecordKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShow(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Food$2;->$SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->getMenuId()Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideShootingModeHelpText()V

    :goto_0
    return-void
.end method

.method public onShutterKeyCanceled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterKeyLongPressed(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurEffect()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onShutterKeyPullDown(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SINGLE_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodColorTuneValue()I

    move-result p1

    int-to-long v0, p1

    const-string p1, "1604"

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurEffect()I

    move-result p0

    int-to-long p0, p0

    const-string v0, "1605"

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterTimerEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Food$2;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 p1, 0x70

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->setTimerCountingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStartPreviewCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurEffect()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Food;->enableBlurEffect(Z)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Food;->enableMaskingEffect(Z)V

    const/16 v0, 0xbb8

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->startMaskingEffectHideTimer(I)V

    :cond_0
    return-void
.end method

.method public onStartPreviewPrepared(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V
    .locals 1

    const-string p2, "Food"

    const-string v0, "onStartPreviewPrepared"

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_WB_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodColorTuneValue()I

    move-result p0

    rsub-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public onStartPreviewRequested()V
    .locals 0

    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Food;->isValidTouchArea(F)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_a

    const v3, 0x7f080712

    if-eq p1, v2, :cond_8

    if-eq p1, v1, :cond_3

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    return v0

    :cond_1
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    if-nez p1, :cond_2

    return v0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p1, v3}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->enableMaskingEffect(Z)V

    goto/16 :goto_1

    :cond_3
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x40a00000    # 5.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    return v0

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {v4, v5, p2}, Landroid/graphics/PointF;->set(FF)V

    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    if-ne p2, v1, :cond_6

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr p2, p1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, v3

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Food;->moveEffectGuide(Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_6
    if-ne p2, v2, :cond_7

    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    invoke-direct {p0, p2, p1, v3}, Lcom/sec/android/app/camera/shootingmode/Food;->resizeEffectGuideWithDrag(IFF)V

    :cond_7
    :goto_0
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Food;->enableBlurEffect(Z)V

    return v0

    :cond_8
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p1, v3}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    new-instance p1, Landroid/graphics/Point;

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    float-to-int p2, p2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    invoke-direct {p1, p2, v0}, Landroid/graphics/Point;-><init>(II)V

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {p2, p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->startFoodFocus(Landroid/graphics/Point;)V

    const/16 p1, 0xbb8

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Food;->startMaskingEffectHideTimer(I)V

    goto :goto_1

    :cond_a
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLNinePatch;->getVisibility()I

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mHandler:Lcom/sec/android/app/camera/shootingmode/Food$MainHandler;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/shootingmode/Food$MainHandler;->removeMessages(I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/Food;->decideSelectedVertex(FF)V

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    const/4 p2, 0x7

    if-ne p1, p2, :cond_b

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Food;->enableMaskingEffect(Z)V

    goto :goto_1

    :cond_b
    if-eqz p1, :cond_c

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Food;->enableMaskingEffect(Z)V

    :cond_c
    :goto_1
    return v2

    :cond_d
    return v0
.end method

.method public onZoomChangeGroupClosed()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x100

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    return-void
.end method

.method public onZoomChangeGroupOpenPrepared()V
    .locals 0

    return-void
.end method

.method public onZoomChangeGroupOpened()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x100

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideViewWithAnimation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideShootingModeHelpText()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FOOD_COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)V

    return-void
.end method
