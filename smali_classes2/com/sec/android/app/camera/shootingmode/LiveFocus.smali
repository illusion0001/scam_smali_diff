.class Lcom/sec/android/app/camera/shootingmode/LiveFocus;
.super Ljava/lang/Object;
.source "LiveFocus.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureResultListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;
.implements Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;
.implements Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController$QuickSettingToastVisibilityChangedListener;
.implements Lcom/sec/android/app/camera/widget/gl/BokehEffectList$HideAnimationEndListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;
.implements Lcom/samsung/android/camera/core2/MakerInterface$SceneDetectionEventCallback;


# static fields
.field private static final DELAY_TIME_TO_CHANGE_GUIDE_TEXT:I = 0x3e8

.field private static final DELAY_TIME_TO_SHOW_FIRST_GUIDE_TEXT:I = 0x7d0

.field private static final DELAY_TIME_TO_SHOW_GUIDE_TEXT:I = 0xc8

.field private static final MESSAGE_INVALID_SCENE_DETECTION:I = 0x5

.field private static final SCENE_DETECTED_DURATION:I = 0x9c4

.field protected static final TAG:Ljava/lang/String; = "LiveFocus"

.field private static final mEventIdByBackBokehEffectArray:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private final BOKEH_EFFECT_SLIDER_HEIGHT:F

.field private final DIFF_EV_SLIDER_FROM_EFFECT_SLIDER:F

.field private final DIFF_NORMAL_PREVIEW_FROM_SQUARE_PREVIEW:F

.field private final GUIDE_BOTTOM_MARGIN_FROM_LIST:F

.field private final LENS_CHANGE_GROUP_HEIGHT:F

.field private final SCREEN_WIDTH:F

.field private final TOAST_TOP_MARGIN:F

.field private mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

.field private mBackBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentSceneEvent:I

.field private mCurrentShowingBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

.field private mEffectButton:Lcom/samsung/android/glview/GLButton;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mFrontBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

.field private final mHandler:Landroid/os/Handler;

.field private mIsAngleChangeAvailable:Z

.field private mIsGuideSuccess:Z

.field private mIsGuideToastTimerExpired:Z

.field private mIsQuickSettingToastShowing:Z

.field private mIsScreenFlashStarted:Z

.field private mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mRequestedBokehFocusedRect:[Landroid/graphics/Rect;

.field private mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

.field private mTimerCountingMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

.field private final mUpdateGuideTextRunnable:Ljava/lang/Runnable;

.field private mViewLayout:Lcom/samsung/android/glview/GLViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/LiveFocus$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEventIdByBackBokehEffectArray:Ljava/util/Map;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/LiveFocus$2;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEventIdByFrontBokehEffectArray:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->SCREEN_WIDTH:F

    const v0, 0x7f07050f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    const v1, 0x7f07050c

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->BOKEH_EFFECT_SLIDER_HEIGHT:F

    const v0, 0x7f07005d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->BOKEH_EFFECT_LIST_HEIGHT:F

    const v0, 0x7f070296

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->LENS_CHANGE_GROUP_HEIGHT:F

    const v0, 0x7f070177

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->GUIDE_BOTTOM_MARGIN_FROM_LIST:F

    const v0, 0x7f07028d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->TOAST_TOP_MARGIN:F

    const v0, 0x7f070172

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->DIFF_NORMAL_PREVIEW_FROM_SQUARE_PREVIEW:F

    const v1, 0x7f070171

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->DIFF_EV_SLIDER_FROM_EFFECT_SLIDER:F

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mTimerCountingMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mRequestedBokehFocusedRect:[Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBackBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mFrontBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    sget-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->NONE:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    sget-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->NONE:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCurrentShowingBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsScreenFlashStarted:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsAngleChangeAvailable:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsGuideToastTimerExpired:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsQuickSettingToastShowing:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsGuideSuccess:Z

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCurrentSceneEvent:I

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$LiveFocus$jRzH4cCCCM3RLxO8hEuUbPF3JlM;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$LiveFocus$jRzH4cCCCM3RLxO8hEuUbPF3JlM;-><init>(Lcom/sec/android/app/camera/shootingmode/LiveFocus;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mUpdateGuideTextRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method private enableAngleChangeGroup(Z)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->makeAngleChangeGroup()V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMERA_ANGLE:Lcom/sec/android/app/camera/interfaces/CommandId;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_LIVE_FOCUS_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CommandId;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->refreshButton(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->isFrontCamera()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSmartSelfieAngle()I

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->enableAutoAngleChange(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->isVisible()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x4

    :goto_3
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method private enableEngineCallbacks(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setBokehInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback;)V

    return-void
.end method

.method private enableEngineEventListeners(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isRequestPartialResultSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz p1, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setSingleCaptureResultListener(Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureResultListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz p1, :cond_2

    move-object v2, p0

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setScreenFlashEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz p1, :cond_3

    move-object v2, p0

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->registerPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->unregisterPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    :goto_3
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BOKEH_FOCUSED_REGION:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_5

    move-object v2, p0

    goto :goto_4

    :cond_5
    move-object v2, v1

    :goto_4
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    if-eqz p1, :cond_6

    move-object v2, p0

    goto :goto_5

    :cond_6
    move-object v2, v1

    :goto_5
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setAutoFocusEventListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;)V

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_LIVE_FOCUS_SCENE_DETECTION_MODE:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_8

    goto :goto_6

    :cond_8
    move-object p0, v1

    :goto_6
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setSceneDetectionCallback(Lcom/samsung/android/camera/core2/MakerInterface$SceneDetectionEventCallback;)V

    :cond_9
    return-void
.end method

.method private enableMenuListeners(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->registerMenuCreateListener(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->unregisterMenuCreateListener(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->BACK_LIVE_FOCUS_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_LIVE_FOCUS_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->BACK_LIVE_FOCUS_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->BACK_LIVE_FOCUS_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    if-eqz p1, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->BACK_LIVE_FOCUS_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    if-eqz p1, :cond_2

    move-object v2, p0

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_LIVE_FOCUS_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_LIVE_FOCUS_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    if-eqz p1, :cond_4

    move-object v2, p0

    goto :goto_3

    :cond_4
    move-object v2, v1

    :goto_3
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_LIVE_FOCUS_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move-object p0, v1

    :goto_4
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    :cond_6
    return-void
.end method

.method private enableSceneDetectionMode()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isSceneOptimizerSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableSceneDetectionMode - mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LiveFocus"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setSceneDetectionMode(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mFrontBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBackBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    :goto_0
    return-object p0
.end method

.method private getBokehEffectListPosY()F
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsAngleChangeAvailable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->DIFF_NORMAL_PREVIEW_FROM_SQUARE_PREVIEW:F

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->BOKEH_EFFECT_LIST_HEIGHT:F

    :goto_0
    sub-float/2addr v0, p0

    return v0
.end method

.method private getLiveFocusGuideTop()F
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getTopBaseLinePositionY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->TOAST_TOP_MARGIN:F

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getTopBaseLinePositionY()F

    move-result v0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->TOAST_TOP_MARGIN:F

    :goto_0
    add-float/2addr v0, p0

    return v0
.end method

.method private getTranslatedBokehFocusedRects([Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;)[Landroid/graphics/Rect;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p2, v0, p0}, Lcom/sec/android/app/camera/util/Util;->getNormalizedMatrix(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Matrix;

    move-result-object p0

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    array-length v0, p1

    new-array v1, v0, [Landroid/graphics/Rect;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    aput-object v3, v1, v2

    aget-object v3, v1, v2

    invoke-virtual {p2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    aget-object v3, v1, v2

    invoke-virtual {p2, v3}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private hideEffectButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$LiveFocus$yIJmM5-bO3UMLDEb4WVBxkhXqQ8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$LiveFocus$yIJmM5-bO3UMLDEb4WVBxkhXqQ8;-><init>(Lcom/sec/android/app/camera/shootingmode/LiveFocus;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private hideScreenFlash()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideScreenFlashAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x70

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsScreenFlashStarted:Z

    return-void
.end method

.method private isBeautyLevelEnabled()Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BEAUTY_BRIGHTEN:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontLiveFocusSkinToneLevel()I

    move-result p0

    if-lez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackLiveFocusSkinToneLevel()I

    move-result p0

    if-lez p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontLiveFocusSkinToneLevel()I

    move-result v0

    if-gtz v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontLiveFocusSkinColorLevel()I

    move-result p0

    if-lez p0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackLiveFocusSkinToneLevel()I

    move-result v0

    if-gtz v0, :cond_7

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackLiveFocusSkinColorLevel()I

    move-result p0

    if-lez p0, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    return v1
.end method

.method private isFrontCamera()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLowLightConditionGuideNotRequired()Z
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->isFrontCamera()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlash()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlash()I

    move-result p0

    if-ne p0, v3, :cond_2

    :cond_1
    move v1, v3

    :cond_2
    return v1
.end method

.method private makeAngleChangeGroup()V
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

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->LENS_CHANGE_GROUP_HEIGHT:F

    sub-float v4, v0, v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMERA_ANGLE:Lcom/sec/android/app/camera/interfaces/CommandId;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_LIVE_FOCUS_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CommandId;

    :goto_0
    move-object v7, v0

    new-instance v0, Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->LENS_CHANGE_GROUP_HEIGHT:F

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/interfaces/CommandId;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
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

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const v7, 0x7f080b75

    const v8, 0x7f080b76

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, v0

    move v5, v6

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

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

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$LiveFocus$UkxM99dmdYsTYW1tkxz7izSiIR8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$LiveFocus$UkxM99dmdYsTYW1tkxz7izSiIR8;-><init>(Lcom/sec/android/app/camera/shootingmode/LiveFocus;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private makeBokehEffectList()V
    .locals 10

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->DIFF_NORMAL_PREVIEW_FROM_SQUARE_PREVIEW:F

    sub-float/2addr v0, v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    new-instance v9, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->SCREEN_WIDTH:F

    sget-object v8, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_BOKEH_EFFECT_TYPE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    const/4 v4, 0x0

    move-object v2, v9

    move v5, v0

    move v7, v1

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/interfaces/CommandId;)V

    iput-object v9, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBackBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    new-instance v9, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->SCREEN_WIDTH:F

    sget-object v8, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_BOKEH_EFFECT_TYPE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/interfaces/CommandId;)V

    iput-object v9, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mFrontBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    return-void
.end method

.method private makeBokehEffectSlider()V
    .locals 8

    const v0, 0x7f070057

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_DUAL_BOKEH_EFFECT:Z

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

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->BOKEH_EFFECT_SLIDER_HEIGHT:F

    sub-float v4, v2, v6

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v7, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehType;->DUAL_BOKEH:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehType;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/util/LiveFocusUtil$BokehType;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    return-void
.end method

.method private moveBokehEffectList(F)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->getTop()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->moveBaseLayout(FF)V

    :cond_0
    return-void
.end method

.method private moveBokehEffectSlider(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->getTop()F

    move-result v0

    sub-float/2addr p1, v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->moveBaseLayout(FF)V

    return-void
.end method

.method private refreshBackground(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

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
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

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

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_DUAL_BOKEH_EFFECT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    :goto_0
    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method private sendSALogForBokehPictureTaken()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontBokehEffectType()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackBokehEffectType()I

    move-result v0

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEventIdByFrontBokehEffectArray:Ljava/util/Map;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEventIdByBackBokehEffectArray:Ljava/util/Map;

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->getCurrentSliderLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "2018"

    goto :goto_2

    :cond_2
    const-string v1, "1105"

    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_LIVE_FOCUS_DUAL_CAPTURE:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDualCaptureInLiveFocus()I

    move-result p0

    int-to-long v0, p0

    const-string p0, "1106"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    :cond_3
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

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->setFaceRectColor(I)V

    return-void
.end method

.method private showEffectButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$LiveFocus$tpXeKqzvxNvf5uKVsPYj4MzWP98;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$LiveFocus$tpXeKqzvxNvf5uKVsPYj4MzWP98;-><init>(Lcom/sec/android/app/camera/shootingmode/LiveFocus;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private unregisterCameraSettingChangedListeners()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_DUAL_BOKEH_EFFECT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_BOKEH_EFFECT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_BOKEH_EFFECT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    :goto_0
    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method private updateEffectButtonResource(IZ)V
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/util/LiveFocusUtil;->getBokehEffectButtonResource(IZ)I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p1, p2, p2}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    :cond_0
    return-void
.end method

.method private updateLiveFocusGuide(Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsQuickSettingToastShowing:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLiveFocusGuide : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveFocus"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->ERROR_LOW_LIGHT_CONDITION:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->isLowLightConditionGuideNotRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "updateLiveFocusGuide : low light condition state is considered as ready state, when torch flash is enabled"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->SUCCESS:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->SUCCESS:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsGuideSuccess:Z

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_DUAL_BOKEH_EFFECT:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsGuideSuccess:Z

    sget-object v3, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->NONE:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    if-ne p1, v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsGuideSuccess:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontBokehEffectType()I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackBokehEffectType()I

    move-result v0

    :goto_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsGuideSuccess:Z

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->updateEffectButtonResource(IZ)V

    :cond_5
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BOKEH_FOCUSED_REGION:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsGuideSuccess:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->setBokehFocusedRectHighlight(Z)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/sec/android/app/camera/util/LiveFocusUtil;->getDualBokehGuideText(Landroid/content/Context;Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsGuideSuccess:Z

    invoke-virtual {v1, v0, v3}, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;->updateGuide(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCurrentShowingBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsGuideToastTimerExpired:Z

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mUpdateGuideTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mUpdateGuideTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public isShootingAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$hideEffectButton$4$LiveFocus()V
    .locals 3

    const/16 v0, 0x96

    invoke-static {v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    return-void
.end method

.method public synthetic lambda$makeBokehEffectButton$5$LiveFocus(Lcom/samsung/android/glview/GLView;)Z
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x100

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideViewWithAnimation(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->show()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->show()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->refreshBackground(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->hideEffectButton(Z)V

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsAngleChangeAvailable:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->setVisibility(I)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$new$0$LiveFocus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCurrentShowingBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsGuideToastTimerExpired:Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->updateLiveFocusGuide(Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$onBokehInfoChanged$1$LiveFocus(Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback$BokehInfo;)V
    .locals 3
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback$BokehInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isRequestPartialResultSupported()Z

    move-result v0

    const-string v1, "LiveFocus"

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback$BokehInfo;->getBokehState()Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "onBokehInfoChanged : CONTROL_BOKEH_STATE_CAPTURE_PROCESSING_FAIL"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const p1, 0x7f11026f

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback$BokehInfo;->getBokehState()Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBokehInfoChanged : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback$BokehInfo;->getBokehState()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback$BokehInfo;->getBokehState()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/LiveFocusUtil;->getBokehCallbackState(I)Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    if-eq v1, v0, :cond_3

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsGuideToastTimerExpired:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCurrentShowingBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    if-eq v0, v1, :cond_4

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->updateLiveFocusGuide(Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;)V

    :cond_4
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BOKEH_FOCUSED_REGION:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback$BokehInfo;->getBokehFocusedRects()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback$BokehInfo;->getBokehFocusedRects()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback$BokehInfo;->getBokehCropRegion()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->getTranslatedBokehFocusedRects([Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mRequestedBokehFocusedRect:[Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mRequestedBokehFocusedRect:[Landroid/graphics/Rect;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->handleFaceRect([Landroid/graphics/Rect;)V

    :cond_5
    return-void
.end method

.method public synthetic lambda$onSceneDetectionEvent$2$LiveFocus(I[J)V
    .locals 2
    .param p2    # [J
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/IntelligentUtil;->convertToDetectedSceneEvent(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCurrentSceneEvent:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSceneDetectionEvent : sceneEvent="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCurrentSceneEvent:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sceneDetectionInfo="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LiveFocus"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCurrentSceneEvent:I

    const/4 v0, -0x1

    const/4 v1, 0x5

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result p1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCurrentSceneEvent:I

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDetectedSceneEvent(I)V

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCurrentSceneEvent:I

    invoke-static {p1}, Lcom/sec/android/app/camera/util/IntelligentUtil;->checkSceneDetectIconDisplayByTime(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0, p2}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result p1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCurrentSceneEvent:I

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDetectedSceneEvent(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0, p2}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    goto :goto_0

    :cond_2
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SCENE_DETECTION_LITE:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0, p2}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x9c4

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public synthetic lambda$onSingleCaptureResult$3$LiveFocus()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v0, 0x7f11026f

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    return-void
.end method

.method public synthetic lambda$showEffectButton$6$LiveFocus()V
    .locals 3

    const/16 v0, 0x96

    invoke-static {v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    return-void
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 3

    const-string v0, "LiveFocus"

    const-string v1, "onActivate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object p1, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->NONE:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCurrentShowingBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshMainButton(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_LIVE_FOCUS_BEAUTY_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_LIVE_FOCUS_BEAUTY_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->isBeautyLevelEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setQuickSettingItemHighlight(Lcom/sec/android/app/camera/interfaces/CommandId;Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BOKEH_FOCUSED_REGION:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->setFaceRectAutoHideEnabled(Z)V

    :cond_1
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_DUAL_BOKEH_EFFECT:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->getBokehEffectListPosY()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->moveBokehEffectList(F)V

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result p1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->GUIDE_BOTTOM_MARGIN_FROM_LIST:F

    add-float/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->moveBokehEffectSlider(F)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontBokehEffectType()I

    move-result p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackBokehEffectType()I

    move-result p1

    :goto_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsGuideSuccess:Z

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->updateEffectButtonResource(IZ)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->setHideAnimationEndListener(Lcom/sec/android/app/camera/widget/gl/BokehEffectList$HideAnimationEndListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->DIFF_EV_SLIDER_FROM_EFFECT_SLIDER:F

    neg-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->moveTouchEvSliderGroup(FF)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->show()V

    :goto_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->getLiveFocusGuideTop()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;->setPortraitTop(F)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mUpdateGuideTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->registerQuickSettingToastVisibilityChangedListener(Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController$QuickSettingToastVisibilityChangedListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->registerCameraSettingChangedListeners()V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->enableMenuListeners(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->enableEngineEventListeners(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->enableEngineCallbacks(Z)V

    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_DUAL_BOKEH_EFFECT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object v0

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
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->hide()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x100

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->hide()V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->refreshBackground(Z)V

    return v2

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public onAeAfLocked()V
    .locals 0

    return-void
.end method

.method public onBokehInfoChanged(Ljava/lang/Long;Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback$BokehInfo;)V
    .locals 1
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback$BokehInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback$BokehInfo;->getBokehState()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$LiveFocus$zlsr3zfSO2CLuGiKsyv-jGhSc_s;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$LiveFocus$zlsr3zfSO2CLuGiKsyv-jGhSc_s;-><init>(Lcom/sec/android/app/camera/shootingmode/LiveFocus;Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback$BokehInfo;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCameraSettingChanged(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraSettingChanged: key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveFocus"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/LiveFocus$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 p2, 0x4

    const/4 v1, 0x0

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAngleChangeSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsAngleChangeAvailable:Z

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsAngleChangeAvailable:Z

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->enableAngleChangeGroup(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    if-eqz p1, :cond_6

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->enableAngleChangeGroup(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->isFrontCamera()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAngleChangeSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsAngleChangeAvailable:Z

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsAngleChangeAvailable:Z

    if-eqz p1, :cond_3

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->enableAngleChangeGroup(Z)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    if-eqz p1, :cond_6

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->enableAngleChangeGroup(Z)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->refreshEffectSlider()V

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsGuideSuccess:Z

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->updateEffectButtonResource(IZ)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideTouchEvSlider()V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCurrentShowingBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    sget-object p2, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->ERROR_LOW_LIGHT_CONDITION:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCurrentShowingBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->updateLiveFocusGuide(Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onCaptureEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/LiveFocus$3;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$CaptureEvent:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 p1, 0x0

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 p1, 0xbb8

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFSLock(I)V

    :goto_0
    return-void
.end method

.method public onConnectMakerPrepared(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;)V
    .locals 0

    return-void
.end method

.method public onContinuousAfFocused()V
    .locals 0

    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 1

    const-string p1, "LiveFocus"

    const-string v0, "onCreateView"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_DUAL_BOKEH_EFFECT:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->makeBokehEffectList()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mFrontBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    invoke-virtual {p2, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBackBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    invoke-virtual {p2, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->makeBokehEffectButton()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p2, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->makeBokehEffectSlider()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p2, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance p1, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {p1, p3}, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    invoke-virtual {p2, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)V
    .locals 6

    const-string v0, "LiveFocus"

    :try_start_0
    invoke-static {p2}, Lcom/samsung/android/media/SemExtendedFormat;->isValidFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0xab0

    invoke-static {p2, v1}, Lcom/samsung/android/media/SemExtendedFormat;->hasData(Ljava/io/File;I)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "sef_file_type"

    if-eqz v2, :cond_0

    :try_start_1
    const-string p2, "onDBUpdatePrepared : DUAL_SHOT_INFO"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    move v4, v3

    goto :goto_1

    :cond_0
    const/16 v1, 0xac0

    invoke-static {p2, v1}, Lcom/samsung/android/media/SemExtendedFormat;->hasData(Ljava/io/File;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p2, "onDBUpdatePrepared : DUAL_SHOT_ZOOMINOUT"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xad0

    invoke-static {p2, v1}, Lcom/samsung/android/media/SemExtendedFormat;->hasData(Ljava/io/File;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p2, "onDBUpdatePrepared : DUAL_SHOT_ONLY"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_2
    const/16 v1, 0xae0

    invoke-static {p2, v1}, Lcom/samsung/android/media/SemExtendedFormat;->hasData(Ljava/io/File;I)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "onDBUpdatePrepared : DUAL_SHOT_BOKEH_INFO"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->isFrontCamera()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "2017"

    goto :goto_2

    :cond_4
    const-string p0, "1104"

    :goto_2
    if-eqz v4, :cond_5

    const-string p1, "1"

    goto :goto_3

    :cond_5
    const-string p1, "0"

    :goto_3
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onDBUpdatePrepared : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
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

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/LiveFocus$3;->$SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->getMenuId()Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsAngleChangeAvailable:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->showWithAnimation()V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, 0x100

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_DUAL_BOKEH_EFFECT:Z

    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->showEffectButton(Z)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onHideAnimationEnd()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsAngleChangeAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->showWithAnimation()V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->showEffectButton(Z)V

    return-void
.end method

.method public onInactivate()V
    .locals 5

    const-string v0, "LiveFocus"

    const-string v1, "onInactivate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->enableEngineCallbacks(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->enableEngineEventListeners(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->enableMenuListeners(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->unregisterCameraSettingChangedListeners()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->unregisterQuickSettingToastVisibilityChangedListener(Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController$QuickSettingToastVisibilityChangedListener;)V

    sget-boolean v1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BOKEH_FOCUSED_REGION:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->setBokehFocusedRectHighlight(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->setFaceRectAutoHideEnabled(Z)V

    :cond_0
    sget-boolean v1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_DUAL_BOKEH_EFFECT:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->resetPositionTouchEvSliderGroup()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->setHideAnimationEndListener(Lcom/sec/android/app/camera/widget/gl/BokehEffectList$HideAnimationEndListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->isVisible()Z

    move-result v1

    const/4 v3, 0x4

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v4, 0x100

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->setVisibility(I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->refreshBackground(Z)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsAngleChangeAvailable:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->enableAngleChangeGroup(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->cancelAnimation()V

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsAngleChangeAvailable:Z

    :cond_3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsQuickSettingToastShowing:Z

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCurrentSceneEvent:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->hide()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;->hide()V

    sget-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->NONE:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    sget-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->NONE:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCurrentShowingBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mHandler:Landroid/os/Handler;

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

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsScreenFlashStarted:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string p0, "LiveFocus"

    const-string p1, "Ignore back key because screen flash is started"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_DUAL_BOKEH_EFFECT:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->hide()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x100

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->hide()V

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->refreshBackground(Z)V

    return v0

    :cond_1
    return p2
.end method

.method public onMenuCreated(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/LiveFocus$3;->$SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    :goto_0
    return-void
.end method

.method public onPictureSaved()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->sendSALogForBokehPictureTaken()V

    return-void
.end method

.method public onQuickSettingToastVisibilityChanged(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsQuickSettingToastShowing:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mUpdateGuideTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;->hide()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mUpdateGuideTextRunnable:Ljava/lang/Runnable;

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

    const/4 p0, 0x1

    return p0
.end method

.method public onRecordKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSceneDetectionEvent(I[J)V
    .locals 2
    .param p2    # [J
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$LiveFocus$lMrMN9EyNTf0AQgeS7613xOlf04;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$LiveFocus$lMrMN9EyNTf0AQgeS7613xOlf04;-><init>(Lcom/sec/android/app/camera/shootingmode/LiveFocus;I[J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScreenFlashStarted()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsScreenFlashStarted:Z

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_DUAL_BOKEH_EFFECT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->refreshBackground(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsAngleChangeAvailable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->showWithAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x70

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startScreenFlashAnimation()V

    return-void
.end method

.method public onScreenFlashStopped()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->hideScreenFlash()V

    return-void
.end method

.method public onShow(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/LiveFocus$3;->$SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->getMenuId()Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_DUAL_BOKEH_EFFECT:Z

    const/4 v1, 0x4

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->refreshBackground(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, 0x100

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideViewWithAnimation(I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->hideEffectButton(Z)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideTouchEvSlider()V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsAngleChangeAvailable:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->hideWithAnimation()V

    :cond_3
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

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SINGLE_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->handleShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onShutterTimerEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/LiveFocus$3;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

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
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 p1, 0x70

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mTimerCountingMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mTimerCountingMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->setTimerCountingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;)V

    :cond_2
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_DUAL_BOKEH_EFFECT:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->refreshBackground(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    :cond_3
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mIsAngleChangeAvailable:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->showWithAnimation()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onSingleCaptureResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    const-string v0, "LiveFocus"

    :try_start_0
    sget-object v1, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_RESULT_CONTROL_BOKEH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0x65

    if-ne p1, v1, :cond_0

    const-string p1, "onSingleCaptureResult : CONTROL_BOKEH_STATE_CAPTURE_PROCESSING_FAIL"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$LiveFocus$QIIzlmmq02yYBKaD9YysOWAMzVk;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$LiveFocus$QIIzlmmq02yYBKaD9YysOWAMzVk;-><init>(Lcom/sec/android/app/camera/shootingmode/LiveFocus;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SEM_RESULT_CONTROL_BOKEH_STATE key is not supported"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onStartPreviewCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->getLiveFocusGuideTop()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;->setPortraitTop(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;->updatePosition()V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_LIVE_FOCUS_SCENE_DETECTION_MODE:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->enableSceneDetectionMode()V

    :cond_0
    return-void
.end method

.method public onStartPreviewPrepared(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V
    .locals 2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->isZoomInOutPhotoSupported()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_ZOOM_IN_OUT_PHOTO:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDualCaptureInLiveFocus()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance p2, Landroid/util/Range;

    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, p0, p2}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public onStartPreviewRequested()V
    .locals 0

    return-void
.end method

.method public onTouchAfFocused()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BOKEH_FOCUSED_REGION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mCurrentShowingBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    sget-object v1, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->SUCCESS:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mRequestedBokehFocusedRect:[Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->enableFaceRectView(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocus;->mRequestedBokehFocusedRect:[Landroid/graphics/Rect;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->handleFaceRect([Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onTrackingAfRequested()V
    .locals 0

    return-void
.end method
