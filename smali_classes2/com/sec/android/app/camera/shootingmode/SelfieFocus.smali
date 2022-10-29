.class Lcom/sec/android/app/camera/shootingmode/SelfieFocus;
.super Ljava/lang/Object;
.source "SelfieFocus.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$HrmShutterListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$SwFaceDetectionListener;
.implements Lcom/samsung/android/camera/core2/MakerInterface$SingleBokehEventCallback;
.implements Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController$QuickSettingToastVisibilityChangedListener;
.implements Lcom/sec/android/app/camera/widget/gl/BokehEffectList$HideAnimationEndListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;


# static fields
.field private static final DELAY_TIME_TO_CHANGE_GUIDE_TEXT:I = 0x3e8

.field private static final DELAY_TIME_TO_SHOW_FIRST_GUIDE_TEXT:I = 0x7d0

.field private static final DELAY_TIME_TO_SHOW_GUIDE_TEXT:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "SelfieFocus"

.field private static final mEventIdByFrontBokehEffectArray:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final BOKEH_EFFECT_LIST_HEIGHT:F

.field private final DIFF_EV_SLIDER_FROM_EFFECT_SLIDER:F

.field private final DIFF_NORMAL_PREVIEW_FROM_SQUARE_PREVIEW:F

.field private final GUIDE_BOTTOM_MARGIN_FROM_LIST:F

.field private final LENS_CHANGE_GROUP_HEIGHT:F

.field private final SCREEN_WIDTH:F

.field private final TOAST_TOP_MARGIN:F

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

.field private mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentShowingBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

.field private mEffectButton:Lcom/samsung/android/glview/GLButton;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

.field private final mHandler:Landroid/os/Handler;

.field private mIsFaceDetected:Z

.field private mIsFrontAngleChangeAvailable:Z

.field private mIsGuideSuccess:Z

.field private mIsGuideToastTimerExpired:Z

.field private mIsQuickSettingToastShowing:Z

.field private mIsScreenFlashStarted:Z

.field private mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

.field private final mUpdateGuideTextRunnable:Ljava/lang/Runnable;

.field private mViewLayout:Lcom/samsung/android/glview/GLViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEventIdByFrontBokehEffectArray:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->SCREEN_WIDTH:F

    const v0, 0x7f07005d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->BOKEH_EFFECT_LIST_HEIGHT:F

    const v0, 0x7f070296

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->LENS_CHANGE_GROUP_HEIGHT:F

    const v0, 0x7f070177

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->GUIDE_BOTTOM_MARGIN_FROM_LIST:F

    const v0, 0x7f07028d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->TOAST_TOP_MARGIN:F

    const v0, 0x7f070172

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->DIFF_NORMAL_PREVIEW_FROM_SQUARE_PREVIEW:F

    const v1, 0x7f070171

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->DIFF_EV_SLIDER_FROM_EFFECT_SLIDER:F

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    sget-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->NONE:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    sget-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->NONE:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCurrentShowingBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsScreenFlashStarted:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsFaceDetected:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsFrontAngleChangeAvailable:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsGuideToastTimerExpired:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsQuickSettingToastShowing:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsGuideSuccess:Z

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SelfieFocus$6lYQPE4dL2QLRdL0y55xDiEbhaw;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SelfieFocus$6lYQPE4dL2QLRdL0y55xDiEbhaw;-><init>(Lcom/sec/android/app/camera/shootingmode/SelfieFocus;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mUpdateGuideTextRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus$2;-><init>(Lcom/sec/android/app/camera/shootingmode/SelfieFocus;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/SelfieFocus;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/SelfieFocus;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->setHrmSensor(Z)V

    return-void
.end method

.method private enableEngineCallbacks(Z)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SINGLE_BOKEH_EFFECT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setSingleBokehEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$SingleBokehEventCallback;)V

    :cond_1
    return-void
.end method

.method private enableEngineEventListeners(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->registerPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->unregisterPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setSwFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$SwFaceDetectionListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz p1, :cond_2

    move-object v2, p0

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setScreenFlashEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz p1, :cond_3

    move-object v2, p0

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BOKEH_FOCUSED_REGION:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move-object p0, v1

    :goto_4
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;)V

    :cond_5
    return-void
.end method

.method private enableFrontAngleChangeGroup(Z)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->makeFrontAngleChangeGroup()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->refreshButton()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSmartSelfieAngle()I

    move-result v3

    if-ne v3, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->enableAutoAngleChange(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->isVisible()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x4

    :goto_2
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private enableMenuListeners(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->registerMenuCreateListener(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->unregisterMenuCreateListener(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->SELFIE_FOCUS_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->SELFIE_FOCUS_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->SELFIE_FOCUS_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->SELFIE_FOCUS_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

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

.method private getBokehEffectListPosY()F
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsFrontAngleChangeAvailable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->DIFF_NORMAL_PREVIEW_FROM_SQUARE_PREVIEW:F

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->BOKEH_EFFECT_LIST_HEIGHT:F

    :goto_0
    sub-float/2addr v0, p0

    return v0
.end method

.method private getLiveFocusGuideTop()F
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getTopBaseLinePositionY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->TOAST_TOP_MARGIN:F

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getTopBaseLinePositionY()F

    move-result v0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->TOAST_TOP_MARGIN:F

    :goto_0
    add-float/2addr v0, p0

    return v0
.end method

.method private hideEffectButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SelfieFocus$uIQgdssy4pgTr635tErHPa8uBJo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SelfieFocus$uIQgdssy4pgTr635tErHPa8uBJo;-><init>(Lcom/sec/android/app/camera/shootingmode/SelfieFocus;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private hideScreenFlash()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideScreenFlashAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x70

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsScreenFlashStarted:Z

    return-void
.end method

.method private isBeautyLevelEnabled()Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BEAUTY_BRIGHTEN:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfieFocusSkinToneLevel()I

    move-result p0

    if-lez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfieFocusSkinToneLevel()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfieFocusSkinColorLevel()I

    move-result p0

    if-lez p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private makeBokehEffectButton()V
    .locals 11

    const v0, 0x7f070175

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x7f070174

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    sub-float v3, v0, v6

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v0

    const v1, 0x7f070173

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    sub-float v4, v0, v6

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const v7, 0x7f080b75

    const v8, 0x7f080b76

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, v0

    move v5, v6

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f1100f8

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f11012c

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SelfieFocus$Z7r3VbtA5San2igNIJ-EK89GEBw;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SelfieFocus$Z7r3VbtA5San2igNIJ-EK89GEBw;-><init>(Lcom/sec/android/app/camera/shootingmode/SelfieFocus;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private makeBokehEffectList()V
    .locals 9

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->DIFF_NORMAL_PREVIEW_FROM_SQUARE_PREVIEW:F

    sub-float v5, v0, v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v0, v0

    sub-float v7, v0, v5

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->SCREEN_WIDTH:F

    sget-object v8, Lcom/sec/android/app/camera/interfaces/CommandId;->SINGLE_BOKEH_EFFECT_TYPE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    const/4 v4, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/interfaces/CommandId;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    return-void
.end method

.method private makeBokehEffectSlider()V
    .locals 8

    const v0, 0x7f070057

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    const v0, 0x7f07050f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    const v1, 0x7f07050c

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    add-float v6, v0, v1

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SINGLE_BOKEH_EFFECT:Z

    if-eqz v0, :cond_0

    const v0, 0x7f07005d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x7f070181

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v5

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v2

    sub-float/2addr v2, v0

    sub-float/2addr v2, v1

    sub-float v4, v2, v6

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v7, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehType;->SINGLE_BOKEH:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehType;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/util/LiveFocusUtil$BokehType;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    return-void
.end method

.method private makeFrontAngleChangeGroup()V
    .locals 8

    const v0, 0x7f0702ad

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v5

    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, v0, v1

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v0

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->LENS_CHANGE_GROUP_HEIGHT:F

    sub-float v4, v0, v6

    new-instance v0, Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v7, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMERA_ANGLE:Lcom/sec/android/app/camera/interfaces/CommandId;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/interfaces/CommandId;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private moveBokehEffectList(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->getTop()F

    move-result v0

    sub-float/2addr p1, v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->moveBaseLayout(FF)V

    :cond_0
    return-void
.end method

.method private moveBokehEffectSlider(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->getTop()F

    move-result v0

    sub-float/2addr p1, v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->moveBaseLayout(FF)V

    :cond_0
    return-void
.end method

.method private refreshBackground(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result p1

    int-to-float p1, p1

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v0

    sub-float/2addr p1, v0

    const v0, 0x7f070185

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    add-float/2addr p1, v0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->setBottomBackgroundHeight(F)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->resetBottomBackground()V

    :goto_0
    return-void
.end method

.method private registerCameraSettingChangedListeners()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SELFIE_FOCUS_SKIN_TONE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SINGLE_BOKEH_EFFECT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SINGLE_BOKEH_EFFECT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method private registerLocalBroadcast()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.ERROR_CAMERA_BUSY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.COVER_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.COVER_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private sendSALogForBokehPictureTaken()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSingleBokehEffectType()I

    move-result v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEventIdByFrontBokehEffectArray:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->getCurrentSliderLevel()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "2018"

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setBokehFocusedRectHighlight(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f06007a

    goto :goto_0

    :cond_0
    const p1, 0x7f060065

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->setFaceRectColor(I)V

    return-void
.end method

.method private setHrmSensor(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHrmShutter()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHrmShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HrmShutterListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHrmShutterListener()V

    :goto_0
    return-void
.end method

.method private showEffectButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SelfieFocus$ZTfQ1O1YUNQe35DdSEtTdE2r87g;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SelfieFocus$ZTfQ1O1YUNQe35DdSEtTdE2r87g;-><init>(Lcom/sec/android/app/camera/shootingmode/SelfieFocus;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private unregisterCameraSettingChangedListeners()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SELFIE_FOCUS_SKIN_TONE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SINGLE_BOKEH_EFFECT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SINGLE_BOKEH_EFFECT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method private updateEffectButtonResource(IZ)V
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/util/LiveFocusUtil;->getBokehEffectButtonResource(IZ)I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p1, p2, p2}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    :cond_0
    return-void
.end method

.method private updateLiveFocusGuide(Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsQuickSettingToastShowing:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLiveFocusGuide : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SelfieFocus"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->SUCCESS:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsGuideSuccess:Z

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SINGLE_BOKEH_EFFECT:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsGuideSuccess:Z

    sget-object v3, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->NONE:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    if-ne p1, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsGuideSuccess:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSingleBokehEffectType()I

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsGuideSuccess:Z

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->updateEffectButtonResource(IZ)V

    :cond_3
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BOKEH_FOCUSED_REGION:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsGuideSuccess:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->setBokehFocusedRectHighlight(Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/util/LiveFocusUtil;->getSingleBokehGuideText(Landroid/content/Context;Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsGuideSuccess:Z

    invoke-virtual {v1, v0, v3}, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;->updateGuide(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCurrentShowingBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsGuideToastTimerExpired:Z

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mUpdateGuideTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mUpdateGuideTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public isShootingAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$hideEffectButton$3$SelfieFocus()V
    .locals 3

    const/16 v0, 0x96

    invoke-static {v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    return-void
.end method

.method public synthetic lambda$makeBokehEffectButton$4$SelfieFocus(Lcom/samsung/android/glview/GLView;)Z
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x100

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideViewWithAnimation(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->show()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->refreshBackground(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->show()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->hideEffectButton(Z)V

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsFrontAngleChangeAvailable:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->setVisibility(I)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$new$0$SelfieFocus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCurrentShowingBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsGuideToastTimerExpired:Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->updateLiveFocusGuide(Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$onError$1$SelfieFocus(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SelfieFocus"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const p1, 0x7f110408

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onSingleBokehInfoChanged$2$SelfieFocus(I[Landroid/graphics/Rect;)V
    .locals 3
    .param p2    # [Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/LiveFocusUtil;->getBokehCallbackState(I)Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleBokehInfoChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SelfieFocus"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    if-eq p1, v0, :cond_1

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    :cond_1
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsGuideToastTimerExpired:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCurrentShowingBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    if-eq p1, v0, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->updateLiveFocusGuide(Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;)V

    :cond_2
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BOKEH_FOCUSED_REGION:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->handleFaceRect([Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->resetFaceRectView()V

    :cond_4
    :goto_0
    return-void
.end method

.method public synthetic lambda$showEffectButton$5$SelfieFocus()V
    .locals 3

    const/16 v0, 0x96

    invoke-static {v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    return-void
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 4

    const-string v0, "SelfieFocus"

    const-string v1, "onActivate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object p1, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->ERROR_NO_FACE_DETECTED:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SELFIE_FOCUS:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshMainButton(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SELFIE_FOCUS:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SELFIE_FOCUS_BEAUTY_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->isBeautyLevelEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setQuickSettingItemHighlight(Lcom/sec/android/app/camera/interfaces/CommandId;Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_HEART_RATE_SENSOR_SHUTTER:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->setHrmSensor(Z)V

    :cond_0
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BOKEH_FOCUSED_REGION:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->setFaceRectAutoHideEnabled(Z)V

    :cond_1
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SINGLE_BOKEH_EFFECT:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->getBokehEffectListPosY()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->moveBokehEffectList(F)V

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result p1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->GUIDE_BOTTOM_MARGIN_FROM_LIST:F

    add-float/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->moveBokehEffectSlider(F)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSingleBokehEffectType()I

    move-result p1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsGuideSuccess:Z

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->updateEffectButtonResource(IZ)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->setHideAnimationEndListener(Lcom/sec/android/app/camera/widget/gl/BokehEffectList$HideAnimationEndListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->DIFF_EV_SLIDER_FROM_EFFECT_SLIDER:F

    neg-float v2, v2

    invoke-interface {p1, v1, v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->moveTouchEvSliderGroup(FF)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->show()V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->getLiveFocusGuideTop()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;->setPortraitTop(F)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mUpdateGuideTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->registerLocalBroadcast()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->registerQuickSettingToastVisibilityChangedListener(Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController$QuickSettingToastVisibilityChangedListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->registerCameraSettingChangedListeners()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->enableMenuListeners(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->enableEngineEventListeners(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->enableEngineCallbacks(Z)V

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BEAUTY_BRIGHTEN:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfieFocusSkinColorLevel()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setSkinColorLevel(I)V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfieFocusSkinToneLevel()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setSkinToneLevel(I)V

    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SINGLE_BOKEH_EFFECT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->hide()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x100

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->hide()V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->refreshBackground(Z)V

    return v2

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public onCameraSettingChanged(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraSettingChanged : settingKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", settingValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SelfieFocus"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAngleChangeSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsFrontAngleChangeAvailable:Z

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsFrontAngleChangeAvailable:Z

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->enableFrontAngleChangeGroup(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->enableFrontAngleChangeGroup(Z)V

    :cond_2
    :goto_0
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BOKEH_FOCUSED_REGION:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->resetFaceRectView()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->refreshEffectSlider()V

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsGuideSuccess:Z

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->updateEffectButtonResource(IZ)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideTouchEvSlider()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCaptureEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus$3;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$CaptureEvent:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 p1, 0x0

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    :goto_0
    return-void
.end method

.method public onConnectMakerPrepared(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 0

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SINGLE_BOKEH_EFFECT:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->makeBokehEffectList()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    invoke-virtual {p2, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->makeBokehEffectButton()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p2, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->makeBokehEffectSlider()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p2, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance p1, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {p1, p3}, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    invoke-virtual {p2, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)V
    .locals 2

    const-string p0, "SelfieFocus"

    :try_start_0
    invoke-static {p2}, Lcom/samsung/android/media/SemExtendedFormat;->isValidFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb40

    invoke-static {p2, v0}, Lcom/samsung/android/media/SemExtendedFormat;->hasData(Ljava/io/File;I)Z

    move-result p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "2017"

    if-eqz p2, :cond_0

    :try_start_1
    const-string p2, "onDBUpdatePrepared : SINGLE_SHOT_BOKEH_INFO"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "sef_file_type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "1"

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "0"

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDBUpdatePrepared : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SelfieFocus$TNKL80Ws55v6YpDUlSVtzZ7XXYM;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SelfieFocus$TNKL80Ws55v6YpDUlSVtzZ7XXYM;-><init>(Lcom/sec/android/app/camera/shootingmode/SelfieFocus;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFaceDetection([Landroid/graphics/Rect;)Z
    .locals 0
    .param p1    # [Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BOKEH_FOCUSED_REGION:Z

    return p0
.end method

.method public onHide(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus$3;->$SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->getMenuId()Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsFrontAngleChangeAvailable:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->showWithAnimation()V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, 0x100

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SINGLE_BOKEH_EFFECT:Z

    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->showEffectButton(Z)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onHideAnimationEnd()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsFrontAngleChangeAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->showWithAnimation()V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->showEffectButton(Z)V

    return-void
.end method

.method public onHrmShutterDetected()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsFaceDetected:Z

    if-nez v0, :cond_0

    const-string p0, "SelfieFocus"

    const-string v0, "onHrmShutterDetected : Returned because face is not detected"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->HRM_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    return-void
.end method

.method public onInactivate()V
    .locals 5

    const-string v0, "SelfieFocus"

    const-string v1, "onInactivate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->enableEngineCallbacks(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->enableEngineEventListeners(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->enableMenuListeners(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->unregisterCameraSettingChangedListeners()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->unregisterQuickSettingToastVisibilityChangedListener(Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController$QuickSettingToastVisibilityChangedListener;)V

    sget-boolean v1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BOKEH_FOCUSED_REGION:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->setBokehFocusedRectHighlight(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->setFaceRectAutoHideEnabled(Z)V

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsScreenFlashStarted:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->hideScreenFlash()V

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->setHrmSensor(Z)V

    sget-boolean v1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SINGLE_BOKEH_EFFECT:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->resetPositionTouchEvSliderGroup()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->setHideAnimationEndListener(Lcom/sec/android/app/camera/widget/gl/BokehEffectList$HideAnimationEndListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->isVisible()Z

    move-result v1

    const/4 v3, 0x4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v4, 0x100

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->setVisibility(I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->refreshBackground(Z)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->hide()V

    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsFrontAngleChangeAvailable:Z

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->enableFrontAngleChangeGroup(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->cancelAnimation()V

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsFrontAngleChangeAvailable:Z

    :cond_4
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsQuickSettingToastShowing:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;->hide()V

    sget-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->NONE:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    sget-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->NONE:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCurrentShowingBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsScreenFlashStarted:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string p0, "SelfieFocus"

    const-string p1, "Ignore back key because screen flash is started"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SINGLE_BOKEH_EFFECT:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->hide()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x100

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->hide()V

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->refreshBackground(Z)V

    return v0

    :cond_1
    return p2
.end method

.method public onMenuCreated(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus$3;->$SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    :goto_0
    return-void
.end method

.method public onPictureSaved()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->sendSALogForBokehPictureTaken()V

    return-void
.end method

.method public onQuickSettingToastVisibilityChanged(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsQuickSettingToastShowing:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mUpdateGuideTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;->hide()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mUpdateGuideTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
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

.method public onScreenFlashStarted()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsScreenFlashStarted:Z

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SINGLE_BOKEH_EFFECT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->refreshBackground(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsFrontAngleChangeAvailable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->showWithAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x70

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startScreenFlashAnimation()V

    return-void
.end method

.method public onScreenFlashStopped()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->hideScreenFlash()V

    return-void
.end method

.method public onShow(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus$3;->$SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->getMenuId()Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideShootingModeHelpText()V

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SINGLE_BOKEH_EFFECT:Z

    const/4 v1, 0x4

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->refreshBackground(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, 0x100

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideViewWithAnimation(I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->hideEffectButton(Z)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideTouchEvSlider()V

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsFrontAngleChangeAvailable:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->hideWithAnimation()V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->setVisibility(I)V

    :goto_1
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
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterKeyPullDown(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SINGLE_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->handleShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onShutterTimerEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus$3;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

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
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 p1, 0x70

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->setTimerCountingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;)V

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SINGLE_BOKEH_EFFECT:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->refreshBackground(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    :cond_3
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsFrontAngleChangeAvailable:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->showWithAnimation()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onSingleBokehInfoChanged(I[Landroid/graphics/Rect;)V
    .locals 2
    .param p2    # [Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SelfieFocus$XmizDK6b97q0U5ua23VUF9B9Re0;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SelfieFocus$XmizDK6b97q0U5ua23VUF9B9Re0;-><init>(Lcom/sec/android/app/camera/shootingmode/SelfieFocus;I[Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStartPreviewCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->getLiveFocusGuideTop()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;->setPortraitTop(F)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;->updatePosition()V

    return-void
.end method

.method public onStartPreviewPrepared(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V
    .locals 0

    return-void
.end method

.method public onStartPreviewRequested()V
    .locals 0

    return-void
.end method

.method public onSwFaceDetection([Landroid/graphics/Rect;)Z
    .locals 1
    .param p1    # [Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SINGLE_BOKEH_EFFECT:Z

    if-nez v0, :cond_3

    array-length p1, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsFaceDetected:Z

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsFaceDetected:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->SUCCESS:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->ERROR_NO_FACE_DETECTED:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    :cond_2
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mIsGuideToastTimerExpired:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SelfieFocus;->updateLiveFocusGuide(Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;)V

    :cond_3
    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BOKEH_FOCUSED_REGION:Z

    return p0
.end method
