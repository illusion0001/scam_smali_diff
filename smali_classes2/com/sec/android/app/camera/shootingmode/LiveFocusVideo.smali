.class public Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;
.super Ljava/lang/Object;
.source "LiveFocusVideo.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback;
.implements Lcom/sec/android/app/camera/interfaces/RecordingMode;
.implements Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/BaseMenuController$MainButtonClickListener;
.implements Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController$QuickSettingToastVisibilityChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController$TouchEvSliderVisibilityChangedListener;
.implements Lcom/sec/android/app/camera/widget/gl/BokehEffectList$HideAnimationEndListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;


# static fields
.field private static final DELAY_TIME_SHOW_GUIDE_TEXT:I = 0xc8

.field private static final DELAY_TIME_TO_CHANGE_GUIDE_TEXT:I = 0x3e8

.field private static final DELAY_TIME_TO_SHOW_FIRST_GUIDE_TEXT:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "LiveFocusVideo"

.field private static final mEventIdByBackVideoBokehEffectArray:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mEventIdByFrontVideoBokehEffectArray:Ljava/util/Map;
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
.field private final AF_UNLOCK_BUTTON_HEIGHT:F

.field private final AF_UNLOCK_BUTTON_LEFT:F

.field private final AF_UNLOCK_BUTTON_LEFT_LANDSCAPE:F

.field private final AF_UNLOCK_BUTTON_TOP:F

.field private final AF_UNLOCK_BUTTON_TOP_LANDSCAPE:F

.field private final AF_UNLOCK_BUTTON_WIDTH:F

.field private final BOKEH_EFFECT_LIST_HEIGHT:F

.field private final BOKEH_EFFECT_SLIDER_HEIGHT:F

.field private final DIFF_EV_SLIDER_FROM_EFFECT_SLIDER:F

.field private final DIFF_NORMAL_PREVIEW_FROM_SQUARE_PREVIEW:F

.field private final GUIDE_BOTTOM_MARGIN_FROM_LIST:F

.field private final QUICK_SETTING_HEIGHT:F

.field private final QUICK_SETTING_Y:F

.field private final RECORDING_REC_TIME_GROUP_HEIGHT:F

.field private final SCREEN_WIDTH:I

.field private final TOAST_TOP_MARGIN:F

.field private mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

.field private mBackBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

.field private final mBackVideoBokehEffectKeyArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

.field private mEffectButton:Lcom/samsung/android/glview/GLButton;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mFrontBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

.field private final mFrontVideoBokehEffectKeyArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsGuideSuccess:Z

.field private mIsLiveFocusVideoGuideTimerExpired:Z

.field private mIsQuickSettingToastShowing:Z

.field private mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

.field private mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

.field private mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

.field private final mUpdateGuideTextRunnable:Ljava/lang/Runnable;

.field private mViewLayout:Lcom/samsung/android/glview/GLViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEventIdByFrontVideoBokehEffectArray:Ljava/util/Map;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$2;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEventIdByBackVideoBokehEffectArray:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->SCREEN_WIDTH:I

    const v0, 0x7f07050f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    const v1, 0x7f07050c

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->BOKEH_EFFECT_SLIDER_HEIGHT:F

    const v0, 0x7f07005d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->BOKEH_EFFECT_LIST_HEIGHT:F

    const v0, 0x7f07028d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->TOAST_TOP_MARGIN:F

    const v0, 0x7f070171

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    const v1, 0x7f070172

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->DIFF_EV_SLIDER_FROM_EFFECT_SLIDER:F

    const v0, 0x7f070177

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->GUIDE_BOTTOM_MARGIN_FROM_LIST:F

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->DIFF_NORMAL_PREVIEW_FROM_SQUARE_PREVIEW:F

    const v0, 0x7f070320

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->AF_UNLOCK_BUTTON_TOP:F

    const v0, 0x7f07031f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->AF_UNLOCK_BUTTON_LEFT:F

    const v1, 0x7f070321

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->AF_UNLOCK_BUTTON_TOP_LANDSCAPE:F

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->AF_UNLOCK_BUTTON_LEFT_LANDSCAPE:F

    const v0, 0x7f070323

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->AF_UNLOCK_BUTTON_WIDTH:F

    const v0, 0x7f07031e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->AF_UNLOCK_BUTTON_HEIGHT:F

    const v0, 0x7f07012e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->RECORDING_REC_TIME_GROUP_HEIGHT:F

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getTopBaseLinePositionY()F

    move-result v0

    const v1, 0x7f07031a

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->QUICK_SETTING_Y:F

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->QUICK_SETTING_HEIGHT:F

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mFrontVideoBokehEffectKeyArray:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBackVideoBokehEffectKeyArray:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBackBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mFrontBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    sget-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->NONE:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCurrentBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    sget-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->NONE:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mIsLiveFocusVideoGuideTimerExpired:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mIsGuideSuccess:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mIsQuickSettingToastShowing:Z

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$LiveFocusVideo$JMmHTzK3fkt75VE7tlhZAwQRZwk;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$LiveFocusVideo$JMmHTzK3fkt75VE7tlhZAwQRZwk;-><init>(Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mUpdateGuideTextRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method private enableEngineCallbacks(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

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

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->registerPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->unregisterPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setAutoFocusEventListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    if-eqz p1, :cond_2

    move-object v2, p0

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->setShutterTimerCaptureTriggerListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move-object p0, v1

    :goto_3
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;)V

    return-void
.end method

.method private enableMenuListeners(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->registerMenuCreateListener(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->unregisterMenuCreateListener(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->BACK_LIVE_FOCUS_VIDEO_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_LIVE_FOCUS_VIDEO_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->BACK_LIVE_FOCUS_VIDEO_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->BACK_LIVE_FOCUS_VIDEO_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    if-eqz p1, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->BACK_LIVE_FOCUS_VIDEO_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

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
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_LIVE_FOCUS_VIDEO_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_LIVE_FOCUS_VIDEO_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    if-eqz p1, :cond_4

    move-object v2, p0

    goto :goto_3

    :cond_4
    move-object v2, v1

    :goto_3
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_LIVE_FOCUS_VIDEO_BEAUTY:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

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

.method private getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mFrontBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBackBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    :goto_0
    return-object p0
.end method

.method private getLiveFocusGuideTop()F
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getTopBaseLinePositionY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->TOAST_TOP_MARGIN:F

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getTopBaseLinePositionY()F

    move-result v0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->TOAST_TOP_MARGIN:F

    :goto_0
    add-float/2addr v0, p0

    return v0
.end method

.method private handleRecordingStopped()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->STOP:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->hideAfUnlockButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingRestricted()Z

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1103b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_RECORDING_MULTI_MIC_ZOOM_FOCUS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->enableMultiMicZoomFocus(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->releaseMultiMicZoomFocus()V

    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->notifyRecordingInfo(Z)V

    return-void
.end method

.method private hideAfUnlockButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LiveFocusVideo"

    const-string v1, "hideAfUnlockButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideEffectButton(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$LiveFocusVideo$VnNi9ijn90ZIA4GdAXuZ0NjMsVk;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$LiveFocusVideo$VnNi9ijn90ZIA4GdAXuZ0NjMsVk;-><init>(Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private isBeautyLevelEnabled()Z
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->isFrontCamera()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontLiveFocusVideoSkinToneLevel()I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackLiveFocusVideoSkinToneLevel()I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method private isFrontCamera()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

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

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlash()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlash()I

    move-result p0

    if-ne p0, v2, :cond_2

    :cond_1
    move v1, v2

    :cond_2
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

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const v7, 0x7f080b75

    const v8, 0x7f080b76

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, v0

    move v5, v6

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEffectButton:Lcom/samsung/android/glview/GLButton;

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

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$LiveFocusVideo$cB8n49C6IXOMGQ5JodP6Msy3PJU;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$LiveFocusVideo$cB8n49C6IXOMGQ5JodP6Msy3PJU;-><init>(Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private makeBokehEffectList()V
    .locals 10

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->DIFF_NORMAL_PREVIEW_FROM_SQUARE_PREVIEW:F

    sub-float/2addr v0, v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    new-instance v9, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->SCREEN_WIDTH:I

    int-to-float v6, v2

    sget-object v8, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_BOKEH_EFFECT_TYPE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    const/4 v4, 0x0

    move-object v2, v9

    move v5, v0

    move v7, v1

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/interfaces/CommandId;)V

    iput-object v9, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBackBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    new-instance v9, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->SCREEN_WIDTH:I

    int-to-float v6, v2

    sget-object v8, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_VIDEO_BOKEH_EFFECT_TYPE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/interfaces/CommandId;)V

    iput-object v9, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mFrontBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    return-void
.end method

.method private makeBokehEffectSlider()V
    .locals 8

    const v0, 0x7f070057

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    const v0, 0x7f070181

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v5

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v1

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->BOKEH_EFFECT_SLIDER_HEIGHT:F

    sub-float/2addr v1, v0

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_VIDEO_BOKEH_EFFECT:Z

    if-eqz v0, :cond_0

    const v0, 0x7f07005d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sub-float v4, v1, v0

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->BOKEH_EFFECT_SLIDER_HEIGHT:F

    sget-object v7, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehType;->VIDEO_BOKEH:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehType;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/util/LiveFocusUtil$BokehType;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    return-void
.end method

.method private moveBokehEffectList(F)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->getTop()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->moveBaseLayout(FF)V

    :cond_0
    return-void
.end method

.method private moveBokehEffectSlider(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->getTop()F

    move-result v0

    sub-float/2addr p1, v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->moveBaseLayout(FF)V

    return-void
.end method

.method private notifyCameraInfo(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCameraInfo : isStarting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveFocusVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "Camera_preview_LiveFocusVideo"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/camera/util/BroadcastUtil;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private notifyRecordingInfo(Z)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRecordingInfo : isStarting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveFocusVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHdr()I

    move-result v5

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoStabilisation()I

    move-result v6

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result p1

    invoke-static {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getString()Ljava/lang/String;

    move-result-object v7

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v8, 0x0

    const-string v2, "Camera_recording_LiveFocusVideo"

    invoke-static/range {v1 .. v8}, Lcom/sec/android/app/camera/util/BroadcastUtil;->notifyRecordingInfo(Landroid/content/Context;Ljava/lang/String;ZIIILjava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "Camera_recording_LiveFocusVideo"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/camera/util/BroadcastUtil;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private pauseRecording()V
    .locals 2

    const-string v0, "LiveFocusVideo"

    const-string v1, "pauseRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->PAUSE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->pauseVideoRecording()V

    return-void
.end method

.method private refreshBackground(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

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
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

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

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_VIDEO_BOKEH_EFFECT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_VIDEO_BOKEH_EFFECT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_VIDEO_BOKEH_EFFECT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    :goto_0
    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_1
    return-void
.end method

.method private resumeRecording()V
    .locals 2

    const-string v0, "LiveFocusVideo"

    const-string v1, "resumeRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->RESUME:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->resumeVideoRecording()V

    return-void
.end method

.method private sendSALogForRecordingCompleted()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontVideoBokehEffectType()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoBokehEffectType()I

    move-result v0

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEventIdByFrontVideoBokehEffectArray:Ljava/util/Map;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEventIdByBackVideoBokehEffectArray:Ljava/util/Map;

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->getCurrentSliderLevel()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendSALogForVideoBokehSlider()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mFrontVideoBokehEffectKeyArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontVideoBokehEffectType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBackVideoBokehEffectKeyArray:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoBokehEffectType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSettingValue(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;)I

    move-result p0

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getEventIdByCameraSetting(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showAfUnlockButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "LiveFocusVideo"

    const-string v1, "showAfUnlockButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showEffectButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$LiveFocusVideo$6TxqhYof4R5T8g7R4_CGkNlbFOk;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$LiveFocusVideo$6TxqhYof4R5T8g7R4_CGkNlbFOk;-><init>(Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private unregisterCameraSettingChangedListeners()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_VIDEO_BOKEH_EFFECT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_VIDEO_BOKEH_EFFECT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_VIDEO_BOKEH_EFFECT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    :goto_0
    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_1
    return-void
.end method

.method private updateEffectButtonResource(IZ)V
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/util/LiveFocusUtil;->getVideoBokehEffectButtonResource(IZ)I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p1, p2, p2}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    :cond_0
    return-void
.end method

.method private updateLiveFocusVideoGuide(Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mIsQuickSettingToastShowing:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLiveFocusGuide : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveFocusVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->ERROR_LOW_LIGHT_CONDITION:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->isLowLightConditionGuideNotRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "updateLiveFocusGuide : low light condition state is considered as ready state, when torch flash is enabled"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->SUCCESS:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->SUCCESS:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mIsGuideSuccess:Z

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_VIDEO_BOKEH_EFFECT:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontVideoBokehEffectType()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoBokehEffectType()I

    move-result v0

    :goto_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mIsGuideSuccess:Z

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->updateEffectButtonResource(IZ)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-static {v0, p1, v2}, Lcom/sec/android/app/camera/util/LiveFocusUtil;->getVideoBokehGuideText(Landroid/content/Context;Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mIsGuideSuccess:Z

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;->updateGuide(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCurrentBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mIsLiveFocusVideoGuideTimerExpired:Z

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mUpdateGuideTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mUpdateGuideTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_2
    return-void
.end method

.method private updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRecordingLayout : cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveFocusVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingCommand:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x100

    const/16 v1, 0x20

    const/16 v2, 0x110

    const/16 v3, -0x201

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingRestricted()Z

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_VIDEO_BOKEH_EFFECT:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCurrentBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->updateLiveFocusVideoGuide(Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;)V

    goto/16 :goto_4

    :pswitch_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->showPauseIcon()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto/16 :goto_4

    :pswitch_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->showResumeIcon()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto/16 :goto_4

    :pswitch_3
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_VIDEO_BOKEH_EFFECT:Z

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_CONTROL_VIDEO_BOKEH_EFFECT_IN_RECORDING:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v6}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->setVisibility(I)V

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->refreshBackground(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1, v5}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->setVisibility(I)V

    :cond_1
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->showEffectButton(Z)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startRecordingToShootingModeAnimation(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->hideIcon()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->stop()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingRestricted()Z

    move-result v2

    invoke-interface {p1, v4, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCurrentBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->updateLiveFocusVideoGuide(Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->showBackButton()V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->resetBottomBackground()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    goto/16 :goto_4

    :pswitch_4
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_VIDEO_BOKEH_EFFECT:Z

    if-eqz p1, :cond_5

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_CONTROL_VIDEO_BOKEH_EFFECT_IN_RECORDING:Z

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v6}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->setVisibility(I)V

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->refreshBackground(Z)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1, v5}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->setVisibility(I)V

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->hideEffectButton(Z)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1, v5}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->setVisibility(I)V

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, -0xe8

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    :goto_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShootingModeToRecordingAnimation(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideBackButton()V

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->setBottomBackgroundHeight(F)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cancelRecording()V
    .locals 3

    const-string v0, "LiveFocusVideo"

    const-string v1, "cancelRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v1, v2, :cond_0

    const-string p0, "cancelRecording : Returned because recording is already stopping"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->CANCEL:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->resetAfTrigger()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->cancelVideoRecording()V

    return-void
.end method

.method public isShootingAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSnapShotAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$hideEffectButton$2$LiveFocusVideo()V
    .locals 3

    const/16 v0, 0x96

    invoke-static {v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    return-void
.end method

.method public synthetic lambda$makeBokehEffectButton$3$LiveFocusVideo(Lcom/samsung/android/glview/GLView;)Z
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x100

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideViewWithAnimation(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->show()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->refreshBackground(Z)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->show()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->hideEffectButton(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$new$0$LiveFocusVideo()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCurrentBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mIsLiveFocusVideoGuideTimerExpired:Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->updateLiveFocusVideoGuide(Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$onBokehInfoChanged$1$LiveFocusVideo(Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback$BokehInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBokehInfoChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback$BokehInfo;->getBokehState()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveFocusVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback$BokehInfo;->getBokehState()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/LiveFocusUtil;->getBokehCallbackState(I)Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    :cond_1
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mIsLiveFocusVideoGuideTimerExpired:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCurrentBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    if-eq p1, v0, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->updateLiveFocusVideoGuide(Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$showEffectButton$4$LiveFocusVideo()V
    .locals 3

    const/16 v0, 0x96

    invoke-static {v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    return-void
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 4

    const-string v0, "LiveFocusVideo"

    const-string v1, "onActivate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->NONE:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCurrentBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->register(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshMainButton(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_LIVE_FOCUS_VIDEO_BEAUTY_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_LIVE_FOCUS_VIDEO_BEAUTY_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->isBeautyLevelEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setQuickSettingItemHighlight(Lcom/sec/android/app/camera/interfaces/CommandId;Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setMainButtonClickListener(Lcom/sec/android/app/camera/interfaces/BaseMenuController$MainButtonClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->registerQuickSettingToastVisibilityChangedListener(Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController$QuickSettingToastVisibilityChangedListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1103b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;->setTitle(Ljava/lang/String;)V

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_VIDEO_BOKEH_EFFECT:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result p1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->BOKEH_EFFECT_LIST_HEIGHT:F

    sub-float/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->moveBokehEffectList(F)V

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result p1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->GUIDE_BOTTOM_MARGIN_FROM_LIST:F

    add-float/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->moveBokehEffectSlider(F)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontVideoBokehEffectType()I

    move-result p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoBokehEffectType()I

    move-result p1

    :goto_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mIsGuideSuccess:Z

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->updateEffectButtonResource(IZ)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->setHideAnimationEndListener(Lcom/sec/android/app/camera/widget/gl/BokehEffectList$HideAnimationEndListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->DIFF_EV_SLIDER_FROM_EFFECT_SLIDER:F

    neg-float v2, v2

    invoke-interface {p1, v1, v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->moveTouchEvSliderGroup(FF)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->registerTouchEvSliderVisibilityChangedListener(Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController$TouchEvSliderVisibilityChangedListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->show()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->refreshEffectSlider()V

    :goto_2
    sget-object p1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->getLiveFocusGuideTop()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;->setPortraitTop(F)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;->updatePosition()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mUpdateGuideTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->registerCameraSettingChangedListeners()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->enableEngineEventListeners(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->enableEngineCallbacks(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->enableMenuListeners(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->notifyCameraInfo(Z)V

    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_VIDEO_BOKEH_EFFECT:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_VIDEO_BOKEH_EFFECT:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->hide()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, 0x100

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->hide()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->refreshBackground(Z)V

    :cond_2
    return v1

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->isVisible()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getCurrentMode()I

    move-result p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideTouchEvSlider()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->show()V

    return v1

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    :goto_0
    return v0
.end method

.method public onAeAfLocked()V
    .locals 0

    return-void
.end method

.method public onBokehInfoChanged(Ljava/lang/Long;Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback$BokehInfo;)V
    .locals 1

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback$BokehInfo;->getBokehState()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$LiveFocusVideo$XjKqQjISbH_AtRQ7OEjuixr0HbY;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$LiveFocusVideo$XjKqQjISbH_AtRQ7OEjuixr0HbY;-><init>(Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback$BokehInfo;)V

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

    const-string v1, "LiveFocusVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->refreshEffectSlider()V

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mIsGuideSuccess:Z

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->updateEffectButtonResource(IZ)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideTouchEvSlider()V

    :cond_1
    if-nez p2, :cond_2

    const/16 p1, 0x1e

    goto :goto_0

    :cond_2
    const/16 p1, 0x18

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    new-instance p2, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p0, p2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->setFpsRange(Landroid/util/Range;)V

    :goto_1
    return-void
.end method

.method public onCancelRecordingRequested()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->cancelRecording()V

    return-void
.end method

.method public onCaptureEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;)V
    .locals 0

    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "LiveFocusVideo"

    const-string v0, "onClick : mAfUnlockButton"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    const-string p1, "0218"

    invoke-static {p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onConnectMakerPrepared(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderSnapshotWidthFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderSnapshotHeightFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)I

    move-result p0

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p0}, Landroid/util/Size;-><init>(II)V

    invoke-interface {p2, v0}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;->setPictureSize(Landroid/util/Size;)V

    return-void
.end method

.method public onContinuousAfFocused()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->hideAfUnlockButton()V

    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 8

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    new-instance p3, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object p4, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {p3, p4}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {p2, p3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    sget-boolean p3, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_RECORDING_CONTINUOUS_AF:Z

    if-eqz p3, :cond_0

    new-instance p3, Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0809ef

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    iget-object p4, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p4

    const v0, 0x7f1101a8

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    const/4 p4, 0x4

    invoke-virtual {p1, p4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->QUICK_SETTING_Y:F

    iget p4, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->RECORDING_REC_TIME_GROUP_HEIGHT:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->QUICK_SETTING_HEIGHT:F

    sub-float v0, p4, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->AF_UNLOCK_BUTTON_LEFT:F

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v4

    sub-float/2addr p4, v4

    div-float/2addr p4, v1

    add-float/2addr p1, p4

    invoke-virtual {v0, v2, v3, p1}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    iget p4, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->AF_UNLOCK_BUTTON_LEFT_LANDSCAPE:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->AF_UNLOCK_BUTTON_TOP_LANDSCAPE:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->AF_UNLOCK_BUTTON_WIDTH:F

    add-float/2addr v0, v1

    invoke-virtual {p1, p3, p4, v0}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    const/4 p3, 0x3

    iget p4, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->AF_UNLOCK_BUTTON_LEFT_LANDSCAPE:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->AF_UNLOCK_BUTTON_HEIGHT:F

    add-float/2addr p4, v0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->AF_UNLOCK_BUTTON_TOP_LANDSCAPE:F

    invoke-virtual {p1, p3, p4, v0}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLButton;->updateLayout()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p2, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_0
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_VIDEO_BOKEH_EFFECT:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->makeBokehEffectList()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->makeBokehEffectButton()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p2, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mFrontBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    invoke-virtual {p2, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBackBokehEffectList:Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    invoke-virtual {p2, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->makeBokehEffectSlider()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p2, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance p1, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {p1, p3}, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    invoke-virtual {p2, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method public onFaceDetection([Landroid/graphics/Rect;)Z
    .locals 0
    .param p1    # [Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x1

    return p0
.end method

.method public onHide(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

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
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, 0x100

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_VIDEO_BOKEH_EFFECT:Z

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->showEffectButton(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onHideAnimationEnd()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->showEffectButton(Z)V

    return-void
.end method

.method public onInactivate()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->resetCenterView()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->stopRecording()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->cancelRecording()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->handleRecordingStopped()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    :cond_2
    :goto_1
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_RECORDING_MULTI_MIC_ZOOM_FOCUS:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->enableMultiMicZoomFocus(Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->unregister()V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->enableEngineCallbacks(Z)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->enableEngineEventListeners(Z)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->enableMenuListeners(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->unregisterCameraSettingChangedListeners()V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->notifyCameraInfo(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->unregisterQuickSettingToastVisibilityChangedListener(Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController$QuickSettingToastVisibilityChangedListener;)V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_VIDEO_BOKEH_EFFECT:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->resetPositionTouchEvSliderGroup()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->isVisible()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v3, 0x100

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->refreshBackground(Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEffectButton:Lcom/samsung/android/glview/GLButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->unregisterTouchEvSliderVisibilityChangedListener(Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController$TouchEvSliderVisibilityChangedListener;)V

    :goto_2
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mIsQuickSettingToastShowing:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->hideAfUnlockButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->hide()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;->hide()V

    sget-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->NONE:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRequestedBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    sget-object v0, Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;->NONE:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCurrentBokehState:Lcom/sec/android/app/camera/util/LiveFocusUtil$BokehCallbackState;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setMainButtonClickListener(Lcom/sec/android/app/camera/interfaces/BaseMenuController$MainButtonClickListener;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    const-string p0, "LiveFocusVideo"

    const-string p1, "Recording control is not available at this moment, ignore key down event"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/16 p2, 0x17

    if-eq p1, p2, :cond_3

    const/16 p2, 0x1b

    if-eq p1, p2, :cond_3

    const/16 p2, 0x42

    if-eq p1, p2, :cond_3

    const/16 p2, 0x82

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result p2

    const-string v0, "LiveFocusVideo"

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const-string p0, "Recording control is not available at this moment, ignore key up event"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 p2, 0x4

    const-string v2, "onKeyUp : keyCode - "

    const/4 v3, 0x0

    if-eq p1, p2, :cond_4

    const/16 p2, 0x17

    if-eq p1, p2, :cond_3

    const/16 p2, 0x1b

    if-eq p1, p2, :cond_3

    const/16 p2, 0x42

    if-eq p1, p2, :cond_3

    const/16 p2, 0x82

    if-eq p1, p2, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->stopRecording()V

    :cond_2
    return v1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_VIDEO_BOKEH_EFFECT:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->hide()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 p2, 0x100

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->hide()V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->refreshBackground(Z)V

    return v1

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->stopRecording()V

    :cond_6
    return v1

    :cond_7
    :goto_0
    return v3
.end method

.method public onMenuCreated(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

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

.method public onPauseButtonClick()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isPauseRecordingAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->pauseRecording()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    const-wide/16 v0, 0x1

    if-nez p0, :cond_1

    const-string p0, "2081"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const-string p0, "2078"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPictureSaved()V
    .locals 0

    return-void
.end method

.method public onQuickSettingToastVisibilityChanged(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mIsQuickSettingToastShowing:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mUpdateGuideTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;->hide()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mUpdateGuideTextRunnable:Ljava/lang/Runnable;

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
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isDimmed(I)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isAnimationFinished(I)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->startRecording()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoBokehEffectType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "2080"

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontVideoBokehEffectType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "2074"

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method public onRecordingEvent(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->handleRecordingStopped()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->prepareVideoRecording()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->sendSALogForRecordingCompleted()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_FOCUSED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-ne p1, v1, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->showAfUnlockButton()V

    :cond_4
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->notifyRecordingInfo(Z)V

    :goto_0
    return-void
.end method

.method public onRecordingMaxDurationReached()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f11050e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->onStopRecordingRequested()V

    return-void
.end method

.method public onRecordingMaxFileSizeReached()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f1101b4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->stopRecording()V

    return-void
.end method

.method public onRecordingRestricted(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->onStopRecordingRequested()V

    :cond_0
    return-void
.end method

.method public onRecordingTick(JJ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordingTick : elapsedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "LiveFocusVideo"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-nez p3, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingTimeLimited()Z

    move-result p2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getMaxRecordingTimeLimitInSecond()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->start(ZI)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getMaxRecordingTimeLimitInSecond()I

    move-result p0

    invoke-virtual {p3, p1, p2, p0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateRecordingTime(JI)V

    :goto_0
    return-void
.end method

.method public onResumeButtonClick()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    const-string p0, "LiveFocusVideo"

    const-string v0, "onResumeButtonClick : wrong recording state, return"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->resumeRecording()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    const-wide/16 v0, 0x0

    if-nez p0, :cond_1

    const-string p0, "2081"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const-string p0, "2078"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onShow(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

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
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_VIDEO_BOKEH_EFFECT:Z

    const/4 v1, 0x4

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->getBokehEffectList()Lcom/sec/android/app/camera/widget/gl/BokehEffectList;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/widget/gl/BokehEffectList;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->refreshBackground(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, 0x100

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideViewWithAnimation(I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->hideEffectButton(Z)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideTouchEvSlider()V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

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

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onShutterKeyReleased : inputType="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LiveFocusVideo"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public onShutterTimerCaptureTriggered()V
    .locals 2

    const-string v0, "LiveFocusVideo"

    const-string v1, "onShutterTimerCaptureTriggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->startRecording()V

    return-void
.end method

.method public onShutterTimerEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/16 v1, 0x100

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0xe0

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x70

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    sget-object p1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0xe7

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x60

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->setTimerCountingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onSnapshotButtonClick()V
    .locals 0

    return-void
.end method

.method public onStartPreviewCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->getLiveFocusGuideTop()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;->setPortraitTop(F)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mLiveFocusGuide:Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/LiveFocusGuide;->updatePosition()V

    return-void
.end method

.method public onStartPreviewPrepared(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->isFrontCamera()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontVideoBokehEffectType()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoBokehEffectType()I

    move-result p0

    :goto_0
    if-nez p0, :cond_1

    const/16 p0, 0x1e

    goto :goto_1

    :cond_1
    const/16 p0, 0x18

    :goto_1
    sget-object p2, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/util/Range;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, p2, v0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public onStartPreviewRequested()V
    .locals 0

    return-void
.end method

.method public onStopButtonClick()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->stopRecording()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontVideoBokehEffectType()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoBokehEffectType()I

    move-result v0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "2082"

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "2079"

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopButtonClick : stop recording is not available, recordingTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LiveFocusVideo"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStopRecordingRequested()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->stopRecording()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->cancelRecording()V

    :goto_0
    return-void
.end method

.method public onTouchAfFocused()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_RECORDING_TOUCH_AF:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->showRecordingAfLockedIndicator()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->isZoomChangeGroupOpened()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->showAfUnlockButton()V

    return-void
.end method

.method public onTouchEvSliderVisibilityChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->hide()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getCurrentMode()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBokehEffectSlider:Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/BokehEffectSlider;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTrackingAfRequested()V
    .locals 0

    return-void
.end method

.method public onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isHdr10RecordingEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "is_hdr10_video"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onVideoSaved()V
    .locals 0

    return-void
.end method

.method public startRecording()V
    .locals 3

    const-string v0, "LiveFocusVideo"

    const-string v1, "startRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCurrentMode(I)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->START:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_RECORDING_MULTI_MIC_ZOOM_FOCUS:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->prepareMultiMicZoomFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomInMic()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->enableMultiMicZoomFocus(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->startVideoRecording()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f110479

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public stopRecording()V
    .locals 4

    const-string v0, "LiveFocusVideo"

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getMaxRecordingTimeLimitInSecond()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateRecordingTime(JI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/LiveFocusVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->stopVideoRecording(Z)V

    return-void
.end method
