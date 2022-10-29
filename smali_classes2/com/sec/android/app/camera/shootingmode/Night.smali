.class Lcom/sec/android/app/camera/shootingmode/Night;
.super Ljava/lang/Object;
.source "Night.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/samsung/android/camera/core2/MakerInterface$StillCaptureProgressCallback;
.implements Lcom/sec/android/app/camera/interfaces/BaseMenuController$ShutterProgressWheelAnimationEndListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$EstimatedCaptureDurationListener;
.implements Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomChangeGroupOpenStateListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$HrmShutterListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;
.implements Lcom/sec/android/app/camera/widget/gl/NightShutter$NightShutterClickListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$PreviewSnapShotListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;


# static fields
.field private static final LOGGING_DIVIDE_FACTOR:I = 0x5

.field private static final PROGRESS_ANIMATION_DURATION:I = 0x12c

.field private static final SUPER_NIGHT_GUIDE_CAPTURE_STATE:I = 0x2

.field private static final SUPER_NIGHT_GUIDE_INVALID_STATE:I = 0x0

.field private static final SUPER_NIGHT_GUIDE_READY_STATE:I = 0x1

.field private static final SUPER_NIGHT_GUIDE_SAVING_STATE:I = 0x3

.field private static final SUPER_NIGHT_GUIDE_TIMEOUT:I = 0x1b58

.field private static final TAG:Ljava/lang/String; = "Night"


# instance fields
.field private final LENS_CHANGE_GROUP_HEIGHT:F

.field private final SCREEN_WIDTH:I

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCaptureSnapshotBitmap:Landroid/graphics/Bitmap;

.field private mCaptureTimeIndicator:Lcom/sec/android/app/camera/widget/gl/NightCaptureTimeIndicator;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mEstimatedCaptureDurationInSeconds:I

.field private mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

.field private final mHandler:Landroid/os/Handler;

.field private final mHideSuperNightGuideRunnable:Ljava/lang/Runnable;

.field private mIsFaceDetected:Z

.field private mIsFrontAngleChangeAvailable:Z

.field private mIsSuperNightProgressCompleted:Z

.field private mIsSuperNightProgressStarted:Z

.field private mIsSuperNightShot:Z

.field private mIsSuperNightShutterProgressComplete:Z

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

.field private mSuperNightGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mSuperNightGuideShowState:I

.field private mSuperNightGuideText:Lcom/samsung/android/glview/GLText;

.field private mSuperNightShotWaitToast:Lcom/sec/android/app/camera/widget/CameraToast;

.field private mSystemTimeInSeconds:I

.field private mSystemTimeScheduler:Ljava/util/Timer;

.field private mTimeDisplayTimer:Ljava/util/Timer;

.field private mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/NightShotTimerIndicator;

.field private mViewLayout:Lcom/samsung/android/glview/GLViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f070296

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->LENS_CHANGE_GROUP_HEIGHT:F

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->SCREEN_WIDTH:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsSuperNightShot:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsSuperNightProgressStarted:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsSuperNightProgressCompleted:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsSuperNightShutterProgressComplete:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsFrontAngleChangeAvailable:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsFaceDetected:Z

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideShowState:I

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEstimatedCaptureDurationInSeconds:I

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSystemTimeInSeconds:I

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCaptureSnapshotBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Night$sautOKg7W2RsMy1vLg3ZDv_HcVI;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Night$sautOKg7W2RsMy1vLg3ZDv_HcVI;-><init>(Lcom/sec/android/app/camera/shootingmode/Night;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mHideSuperNightGuideRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Night$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/Night$1;-><init>(Lcom/sec/android/app/camera/shootingmode/Night;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/Night;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/Night;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/Night;)Lcom/sec/android/app/camera/widget/gl/NightCaptureTimeIndicator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCaptureTimeIndicator:Lcom/sec/android/app/camera/widget/gl/NightCaptureTimeIndicator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/Night;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Night;->setHrmSensorListener(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/Night;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/Night;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mHideSuperNightGuideRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/Night;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/Night;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/Night;->hideSuperNightGuide(ZI)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/Night;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEstimatedCaptureDurationInSeconds:I

    return p0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/Night;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSystemTimeInSeconds:I

    return p0
.end method

.method static synthetic access$808(Lcom/sec/android/app/camera/shootingmode/Night;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSystemTimeInSeconds:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSystemTimeInSeconds:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/Night;)Lcom/sec/android/app/camera/widget/gl/NightShotTimerIndicator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/NightShotTimerIndicator;

    return-object p0
.end method

.method private clearCaptureSnapShotBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCaptureSnapshotBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCaptureSnapshotBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private enableEngineCallbacks(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setStillCaptureProgressCallback(Lcom/samsung/android/camera/core2/MakerInterface$StillCaptureProgressCallback;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableEstimatedCaptureDurationCallback(Z)V

    return-void
.end method

.method private enableEngineEventListener(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setEstimatedCaptureDurationListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$EstimatedCaptureDurationListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_2

    move-object v1, p0

    :cond_2
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setPreviewSnapShotListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$PreviewSnapShotListener;)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->registerPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->unregisterPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    :goto_2
    return-void
.end method

.method private enableFrontAngleChangeGroup(Z)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->makeFrontAngleChangeGroup()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->refreshButton()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSmartSelfieAngle()I

    move-result v3

    if-ne v3, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->enableAutoAngleChange(Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x4

    :goto_2
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->setVisibility(I)V

    return-void
.end method

.method private enableMenuListeners(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->setZoomChangeGroupOpenStateListener(Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomChangeGroupOpenStateListener;)V

    return-void
.end method

.method private handleCaptureCompleted()V
    .locals 2

    const-string v0, "Night"

    const-string v1, "handleCaptureCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsSuperNightProgressStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsSuperNightShutterProgressComplete:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsSuperNightProgressCompleted:Z

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x64

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->isZoomChangeGroupOpened()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x101

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    :cond_1
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_POST_PROCESSING_NIGHT_SHOT:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsSuperNightShot:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->cancelNightCaptureAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->cancelShutterAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->startHideAnimation()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->hideSuperNightScreen()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->resetTimerIndicator()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsSuperNightShot:Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->isZoomChangeGroupOpened()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->resetTimeDisplay()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->startTimeDisplayTimerTick()V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->clearCaptureSnapShotBitmap()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->hideSuperNightScreen()V

    :goto_0
    return-void
.end method

.method private handleCaptureStarted()V
    .locals 11

    const-string v0, "Night"

    const-string v1, "handleCaptureStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsSuperNightProgressCompleted:Z

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getEstimatedCaptureDuration()I

    move-result v2

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getEstimatedCaptureDuration()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEstimatedCaptureDurationInSeconds:I

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEstimatedCaptureDurationInSeconds:I

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCaptureStarted : mEstimatedCaptureDurationInSeconds = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEstimatedCaptureDurationInSeconds:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_POST_PROCESSING_NIGHT_SHOT:Z

    const/4 v2, 0x4

    const/4 v4, 0x2

    const/16 v5, 0x81

    const/16 v6, 0x100

    const/4 v7, -0x1

    const-string v8, "%d"

    const/4 v9, 0x1

    if-eqz v0, :cond_5

    iput-boolean v9, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsSuperNightShot:Z

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEstimatedCaptureDurationInSeconds:I

    const-string v10, "2095"

    if-lt v0, v9, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsFrontAngleChangeAvailable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v7}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v9, v9}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v9}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v6}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Night;->showSuperNightGuide(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/NightShotTimerIndicator;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEstimatedCaptureDurationInSeconds:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/NightShotTimerIndicator;->show(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->cancelShutterAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEstimatedCaptureDurationInSeconds:I

    mul-int/2addr v2, v3

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->startFillMoonAnimation(ILandroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCaptureSnapshotBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCaptureSnapshotBitmap:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEstimatedCaptureDurationInSeconds:I

    mul-int/2addr v4, v3

    invoke-interface {v0, v2, v4}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startNightCaptureAnimation(Landroid/graphics/Bitmap;I)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->startSystemTimeTick()V

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v2, v9, [Ljava/lang/Object;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEstimatedCaptureDurationInSeconds:I

    sub-int/2addr v3, v9

    div-int/lit8 v3, v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v8, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->isZoomChangeGroupOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, -0x101

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v7}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, 0x70

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsSuperNightShot:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->clearCaptureSnapShotBitmap()V

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v8, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->resetTimeDisplay()V

    goto :goto_3

    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsFrontAngleChangeAvailable:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v6}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v7}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v9, v9}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    invoke-direct {p0, v1, v9}, Lcom/sec/android/app/camera/shootingmode/Night;->hideSuperNightGuide(ZI)V

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Night;->showSuperNightGuide(I)V

    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v9, :cond_7

    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v2, v9, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result p0

    div-int/lit8 p0, p0, 0x64

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v0, v8, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1801"

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v2, v9, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result p0

    div-int/lit8 p0, p0, 0x64

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v0, v8, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "2091"

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private hideSuperNightGuide(ZI)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hideSuperNightGuide : guideIndex ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], SuperNightGuideShowState ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideShowState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Night"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideShowState:I

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideShowState:I

    :cond_0
    return-void
.end method

.method private hideSuperNightScreen()V
    .locals 3

    const-string v0, "Night"

    const-string v1, "hideSuperNightScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x70

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsFrontAngleChangeAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->setVisibility(I)V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideShowState:I

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/Night;->hideSuperNightGuide(ZI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsSuperNightProgressStarted:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isShutterProgressWheelVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    :cond_1
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

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Night;->LENS_CHANGE_GROUP_HEIGHT:F

    sub-float v4, v0, v6

    new-instance v0, Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v7, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMERA_ANGLE:Lcom/sec/android/app/camera/interfaces/CommandId;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/interfaces/CommandId;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private makeSuperNightGuide(Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 14

    const v0, 0x7f07055d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    const v0, 0x7f110350

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v0, 0x7f070561

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const v2, 0x7f080b7b

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setNinePatchBackground(I)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    new-instance v11, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v1

    mul-float v8, v0, v1

    const v0, 0x7f06020d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v11, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private registerCameraSettingChangedListeners()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

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

    const-string v1, "camera.action.ZOOM_TEXT_SHOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private resetTimeDisplay()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_POST_PROCESSING_NIGHT_SHOT:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Night"

    const-string v1, "resetTimeDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mTimeDisplayTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mTimeDisplayTimer:Ljava/util/Timer;

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCaptureTimeIndicator:Lcom/sec/android/app/camera/widget/gl/NightCaptureTimeIndicator;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/NightCaptureTimeIndicator;->setVisibility(I)V

    return-void
.end method

.method private resetTimerIndicator()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_POST_PROCESSING_NIGHT_SHOT:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Night"

    const-string v1, "resetTimerIndicator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSystemTimeScheduler:Ljava/util/Timer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSystemTimeScheduler:Ljava/util/Timer;

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSystemTimeInSeconds:I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/NightShotTimerIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/NightShotTimerIndicator;->hide()V

    return-void
.end method

.method private setHrmSensorListener(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHrmShutter()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHrmShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HrmShutterListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHrmShutterListener()V

    :goto_0
    return-void
.end method

.method private setSuperNightMode(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setSuperNightShotMode(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setSuperNightShotMode(I)V

    :goto_0
    return-void
.end method

.method private showSuperNightGuide(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const v2, 0x7f070561

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    const v3, 0x7f110341

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    if-ne v1, v6, :cond_2

    sget-boolean v6, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_POST_PROCESSING_NIGHT_SHOT:Z

    if-eqz v6, :cond_1

    const v3, 0x7f110342

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    if-ne v1, v4, :cond_3

    const v3, 0x7f110353

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const-string v3, ""

    :goto_0
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v6

    int-to-float v6, v6

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x7f07055f

    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v8

    const v9, 0x7f07055d

    invoke-static {v9}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v9

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v10

    mul-float/2addr v10, v2

    invoke-static {v3, v10}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v10

    iget-object v11, v0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v11

    mul-float/2addr v11, v2

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-static {v3, v11, v12}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v11

    iget-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v12}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v12

    mul-float/2addr v12, v2

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-static {v8, v3, v12, v13}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v12

    int-to-float v12, v12

    const-string v13, "\n"

    invoke-virtual {v3, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual {v3, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    array-length v14, v8

    move/from16 v16, v13

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v14, :cond_6

    aget-object v4, v8, v13

    iget-object v15, v0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v15}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v15

    mul-float/2addr v15, v2

    move-object/from16 v17, v8

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-static {v10, v4, v15, v8}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v8

    if-le v8, v5, :cond_4

    move v8, v10

    goto :goto_2

    :cond_4
    iget-object v8, v0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v8

    mul-float/2addr v8, v2

    invoke-static {v4, v8}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v8

    cmpl-float v8, v8, v16

    if-lez v8, :cond_5

    iget-object v8, v0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v8

    mul-float/2addr v8, v2

    invoke-static {v4, v8}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v4

    move/from16 v16, v4

    :cond_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, v17

    goto :goto_1

    :cond_6
    move/from16 v8, v16

    goto :goto_2

    :cond_7
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v10, v12, v4

    if-lez v10, :cond_8

    goto :goto_2

    :cond_8
    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v4

    mul-float/2addr v2, v4

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v8

    :goto_2
    mul-float/2addr v11, v12

    const v2, 0x7f0700b9

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v12, v4

    mul-float/2addr v2, v12

    add-float/2addr v11, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v9, v2

    add-float/2addr v11, v9

    add-float/2addr v9, v8

    const v4, 0x7f07055c

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    const v10, 0x7f07055e

    invoke-static {v10}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v10

    sub-float v12, v6, v9

    div-float/2addr v12, v2

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v13

    sub-float/2addr v13, v4

    sub-float/2addr v13, v11

    sget-boolean v4, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_POST_PROCESSING_NIGHT_SHOT:Z

    if-eqz v4, :cond_9

    const v4, 0x7f070562

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v13

    :cond_9
    div-float v4, v7, v2

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v14}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v4, v14

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v14, v1}, Lcom/samsung/android/glview/GLViewGroup;->setTag(I)V

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v14, v3}, Lcom/samsung/android/glview/GLViewGroup;->setContentDescription(Ljava/lang/String;)V

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v14, v9, v11}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v14, v0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v12, v13}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v12, v0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    add-float v13, v7, v9

    div-float/2addr v13, v2

    sub-float/2addr v13, v4

    invoke-virtual {v12, v5, v10, v13}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    sget-boolean v5, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_POST_PROCESSING_NIGHT_SHOT:Z

    if-eqz v5, :cond_a

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    sub-float/2addr v6, v10

    sub-float/2addr v7, v9

    div-float/2addr v7, v2

    sub-float/2addr v7, v4

    const/4 v12, 0x3

    invoke-virtual {v5, v12, v6, v7}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto :goto_3

    :cond_a
    const/4 v12, 0x3

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    add-float/2addr v10, v11

    sub-float/2addr v7, v9

    div-float/2addr v7, v2

    sub-float/2addr v7, v4

    invoke-virtual {v5, v12, v10, v7}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    :goto_3
    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v8, v11}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout()V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLText;->updateLayout()V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iput v1, v0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideShowState:I

    return-void
.end method

.method private showSuperNightShotWaitToast()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightShotWaitToast:Lcom/sec/android/app/camera/widget/CameraToast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/CameraToast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightShotWaitToast:Lcom/sec/android/app/camera/widget/CameraToast;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/CameraToast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f11031c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightShotWaitToast:Lcom/sec/android/app/camera/widget/CameraToast;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightShotWaitToast:Lcom/sec/android/app/camera/widget/CameraToast;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    :cond_1
    return-void
.end method

.method private startHideSuperNightGuideTimer()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_POST_PROCESSING_NIGHT_SHOT:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Night;->showSuperNightGuide(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mHideSuperNightGuideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mHideSuperNightGuideRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1b58

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private startSystemTimeTick()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSystemTimeTick : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSystemTimeInSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Night"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSystemTimeScheduler:Ljava/util/Timer;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSystemTimeScheduler:Ljava/util/Timer;

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/Night$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/Night$2;-><init>(Lcom/sec/android/app/camera/shootingmode/Night;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private startTimeDisplayTimerTick()V
    .locals 7

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_POST_PROCESSING_NIGHT_SHOT:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Night"

    const-string v1, "startTimeDisplayTimerTick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mTimeDisplayTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mTimeDisplayTimer:Ljava/util/Timer;

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/Night$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/Night$3;-><init>(Lcom/sec/android/app/camera/shootingmode/Night;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1f4

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private unregisterCameraSettingChangedListeners()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method


# virtual methods
.method public isShootingAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$new$0$Night()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/Night;->hideSuperNightGuide(ZI)V

    return-void
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 2

    const-string v0, "Night"

    const-string v1, "onActivate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Night;->setHrmSensorListener(Z)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_NIGHT:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshMainButton(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_NIGHT:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgressWheelAnimationEndListener(Lcom/sec/android/app/camera/interfaces/BaseMenuController$ShutterProgressWheelAnimationEndListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->setNightShutterClickListener(Lcom/sec/android/app/camera/widget/gl/NightShutter$NightShutterClickListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->registerLocalBroadcast()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->registerCameraSettingChangedListeners()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Night;->enableMenuListeners(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Night;->enableEngineCallbacks(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Night;->enableEngineEventListener(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Night;->setSuperNightMode(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->startHideSuperNightGuideTimer()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->startTimeDisplayTimerTick()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "Camera_night"

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/util/BroadcastUtil;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mSuperNightGuideShowState:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/Night;->hideSuperNightGuide(ZI)V

    :cond_1
    :goto_0
    return v0
.end method

.method public onCameraSettingChanged(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;I)V
    .locals 0

    sget-object p2, Lcom/sec/android/app/camera/shootingmode/Night$4;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAngleChangeSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsFrontAngleChangeAvailable:Z

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsFrontAngleChangeAvailable:Z

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/Night;->enableFrontAngleChangeGroup(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Night;->enableFrontAngleChangeGroup(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCaptureEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureEvent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Night"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Night$4;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$CaptureEvent:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    const/4 v1, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->handleCaptureCompleted()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restartInactivityTimer()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restartInactivityTimer()V

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_POST_PROCESSING_NIGHT_SHOT:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsSuperNightShot:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->cancelNightCaptureAnimation()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->cancelShutterAnimation()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->resetShutterAttribute()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsSuperNightShot:Z

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->clearCaptureSnapShotBitmap()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x101

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->resetTimerIndicator()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->hideSuperNightScreen()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->resetTimeDisplay()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopInactivityTimer()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->handleCaptureStarted()V

    :goto_0
    return-void
.end method

.method public onConnectMakerPrepared(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 6

    const-string v0, "Night"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    const p3, 0x7f070034

    invoke-static {p3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result p1

    int-to-float p1, p1

    const p3, 0x7f070047

    invoke-static {p3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result p3

    sub-float/2addr p1, p3

    const p3, 0x7f07003b

    invoke-static {p3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result p3

    add-float/2addr p3, v5

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    sub-float v3, p1, p3

    new-instance p1, Lcom/sec/android/app/camera/widget/gl/NightShutter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget p3, p0, Lcom/sec/android/app/camera/shootingmode/Night;->SCREEN_WIDTH:I

    int-to-float p3, p3

    sub-float/2addr p3, v5

    div-float v2, p3, p4

    move-object v0, p1

    move v4, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/widget/gl/NightShutter;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFF)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->setVisibility(I)V

    new-instance p1, Lcom/sec/android/app/camera/widget/gl/NightShotTimerIndicator;

    iget-object p4, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {p1, p4}, Lcom/sec/android/app/camera/widget/gl/NightShotTimerIndicator;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/NightShotTimerIndicator;

    new-instance p1, Lcom/sec/android/app/camera/widget/gl/NightCaptureTimeIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/widget/gl/NightCaptureTimeIndicator;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFF)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCaptureTimeIndicator:Lcom/sec/android/app/camera/widget/gl/NightCaptureTimeIndicator;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCaptureTimeIndicator:Lcom/sec/android/app/camera/widget/gl/NightCaptureTimeIndicator;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/camera/widget/gl/NightCaptureTimeIndicator;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCaptureTimeIndicator:Lcom/sec/android/app/camera/widget/gl/NightCaptureTimeIndicator;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/sec/android/app/camera/widget/gl/NightCaptureTimeIndicator;->setRotatable(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    invoke-virtual {p2, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/NightShotTimerIndicator;

    invoke-virtual {p2, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCaptureTimeIndicator:Lcom/sec/android/app/camera/widget/gl/NightCaptureTimeIndicator;

    invoke-virtual {p2, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Night;->makeSuperNightGuide(Lcom/samsung/android/glview/GLViewGroup;)V

    return-void
.end method

.method public onEstimatedCaptureDurationChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEstimatedCaptureDurationChanged : estimatedCaptureDurationTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Night"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEstimatedCaptureDurationInSeconds:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEstimatedCaptureDurationInSeconds:I

    :goto_0
    return-void
.end method

.method public onFaceDetection([Landroid/graphics/Rect;)Z
    .locals 1
    .param p1    # [Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length p1, p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsFaceDetected:Z

    return v0
.end method

.method public onHrmShutterDetected()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsFaceDetected:Z

    if-nez v0, :cond_0

    const-string p0, "Night"

    const-string v0, "onHrmShutterDetected : Returned because face is not detected"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->HRM_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Night;->onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    return-void
.end method

.method public onInactivate()V
    .locals 4

    const-string v0, "Night"

    const-string v1, "onInactivate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Night;->enableEngineCallbacks(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Night;->enableEngineEventListener(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->resetTimerIndicator()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->hideSuperNightScreen()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->clearCaptureSnapShotBitmap()V

    sget-boolean v1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_POST_PROCESSING_NIGHT_SHOT:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsSuperNightShot:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->cancelShutterAnimation()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->resetShutterAttribute()V

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsSuperNightShot:Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->setNightShutterClickListener(Lcom/sec/android/app/camera/widget/gl/NightShutter$NightShutterClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v3, 0x101

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->resetTimeDisplay()V

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEstimatedCaptureDurationInSeconds:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Night;->enableMenuListeners(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->unregisterCameraSettingChangedListeners()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v3}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "Camera_night"

    invoke-static {v1, v3, v0}, Lcom/sec/android/app/camera/util/BroadcastUtil;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v3, 0x200

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Night;->setHrmSensorListener(Z)V

    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsFrontAngleChangeAvailable:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Night;->enableFrontAngleChangeGroup(Z)V

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsFrontAngleChangeAvailable:Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isShutterProgressWheelVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgressWheelAnimationEndListener(Lcom/sec/android/app/camera/interfaces/BaseMenuController$ShutterProgressWheelAnimationEndListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsSuperNightShot:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->showSuperNightShotWaitToast()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onLayoutChanged(III)V
    .locals 0

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_POST_PROCESSING_NIGHT_SHOT:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mTimerIndicator:Lcom/sec/android/app/camera/widget/gl/NightShotTimerIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/NightShotTimerIndicator;->onLayoutChanged()V

    :cond_0
    return-void
.end method

.method public onNightShutterClicked()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Night;->onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    return-void
.end method

.method public onPictureSaved()V
    .locals 0

    return-void
.end method

.method public onPreviewSnapShotTaken(Landroid/graphics/Bitmap;Landroid/util/Size;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p2, "Night"

    const-string v0, "onPreviewSnapShotTaken"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mCaptureSnapshotBitmap:Landroid/graphics/Bitmap;

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

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SINGLE_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->handleShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onShutterProgressWheelAnimationEnd()V
    .locals 2

    const-string v0, "Night"

    const-string v1, "onShutterProgressWheelAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsSuperNightShutterProgressComplete:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsSuperNightProgressCompleted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x101

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->hideSuperNightScreen()V

    :cond_0
    return-void
.end method

.method public onShutterTimerEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterTimerEvent : timerEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Night"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Night$4;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    const/16 v2, 0x70

    const/4 v3, -0x1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_POST_PROCESSING_NIGHT_SHOT:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEstimatedCaptureDurationInSeconds:I

    if-ge p1, v0, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->setTimerCountingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onStartPreviewCompleted()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Night;->enableEngineCallbacks(Z)V

    return-void
.end method

.method public onStartPreviewPrepared(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V
    .locals 0

    const-string p0, "Night"

    const-string p1, "onStartPreviewPrepared"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartPreviewRequested()V
    .locals 0

    return-void
.end method

.method public onStillCaptureProgressChanged(Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStillCaptureProgressChanged : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " start : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsSuperNightProgressStarted:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Night"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsSuperNightProgressStarted:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsSuperNightProgressCompleted:Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsSuperNightShutterProgressComplete:Z

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x12c

    invoke-interface {p2, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel(I)V

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/Night;->hideSuperNightGuide(ZI)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Night;->showSuperNightGuide(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsSuperNightProgressStarted:Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    :goto_0
    return-void
.end method

.method public onZoomChangeGroupClosed()V
    .locals 2

    const-string v0, "Night"

    const-string v1, "onZoomChangeGroupClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->isTimerRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x100

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mIsSuperNightShot:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->startTimeDisplayTimerTick()V

    :cond_1
    return-void
.end method

.method public onZoomChangeGroupOpenPrepared()V
    .locals 0

    return-void
.end method

.method public onZoomChangeGroupOpened()V
    .locals 2

    const-string v0, "Night"

    const-string v1, "onZoomChangeGroupOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Night;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x100

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideViewWithAnimation(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Night;->resetTimeDisplay()V

    return-void
.end method
