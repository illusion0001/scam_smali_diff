.class public Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;
.super Ljava/lang/Object;
.source "SingleTakePhoto.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;
.implements Lcom/samsung/android/camera/core2/MakerInterface$SceneDetectionInfoCallback;
.implements Lcom/samsung/android/camera/core2/MakerInterface$SceneDetectionEventCallback;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$BrightnessValueListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$HrmShutterListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;,
        Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;
    }
.end annotation


# static fields
.field private static final GUIDE_DURATION:I = 0xbb8

.field private static final MESSAGE_CENTER_RECT_ANIMATION:I = 0x4

.field private static final MESSAGE_INVALID_SCENE_DETECTION:I = 0x5

.field private static final MESSAGE_PROGRESS_BAR_ANIMATION:I = 0x7

.field private static final MESSAGE_SHOW_CAPTURE_GUIDE:I = 0x3

.field private static final MESSAGE_SHOW_HELP_GUIDE:I = 0x6

.field private static final MESSAGE_SHUTTER_ANIMATION:I = 0x2

.field private static final MESSAGE_STOP_AVAILABLE:I = 0x8

.field private static final MESSAGE_STOP_CAPTURE:I = 0x1

.field private static final SCENE_DETECTED_DURATION:I = 0x9c4

.field private static final SHOW_HELP_GUIDE_DELAY:I = 0xc8

.field private static final STOP_AVAILABLE_MIN_TIME:I = 0xb54

.field private static final TAG:Ljava/lang/String; = "SingleTakePhoto"


# instance fields
.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCaptureDuration:J

.field private mCaptureGuide:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoGuide;

.field private mCaptureTimeIndicator:Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeIndicator;

.field private mCaptureTimeSlider:Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeSlider;

.field private mCurrentSceneEvent:I

.field private mCurrentSceneInfo:I

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mGuideIndex:I

.field private final mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

.field private mHelpGuide:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoHelpGuide;

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mPreviousSceneDetectionMode:I

.field private mProgressBar:Lcom/samsung/android/glview/GLImage;

.field private mProgressBarAnimator:Landroid/animation/ValueAnimator;

.field private mSceneIndex:I

.field private mShutterButton:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;

.field private mStartCaptureTime:J

.field private mState:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

.field private mViewLayout:Lcom/samsung/android/glview/GLViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mGuideIndex:I

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;->IDLE:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mState:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mPreviousSceneDetectionMode:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mSceneIndex:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCurrentSceneEvent:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCurrentSceneInfo:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mStartCaptureTime:J

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureDuration:J

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$1;-><init>(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$2;-><init>(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->setInvalidSceneDetection()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->showSingleTakeHelpGuide()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->startProgressBarAnimation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->stopProgressBarAnimation()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->setState(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->setHrmSensor(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->getState()Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/interfaces/Engine;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/samsung/android/glview/GLImage;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mProgressBar:Lcom/samsung/android/glview/GLImage;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->showGuide()V

    return-void
.end method

.method private cancelProgressBarAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private decideDetectedScene(II)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Capability;->isSceneOptimizerSupported()Z

    move-result p0

    if-nez p0, :cond_2

    const/16 p0, 0x2a

    if-eq p2, p0, :cond_2

    const/16 p0, 0x2b

    if-eq p2, p0, :cond_2

    const/16 p0, 0x2c

    if-eq p2, p0, :cond_2

    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_STAR_BURST:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x29

    if-eq p2, p0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    const/16 p0, 0x27

    if-eq p2, p0, :cond_2

    const/16 p0, 0x28

    if-ne p2, p0, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    return p2
.end method

.method private enableEngineCallbacks(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableSingleTakePictureCallback(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setSceneDetectionCallback(Lcom/samsung/android/camera/core2/MakerInterface$SceneDetectionEventCallback;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setSceneDetectionInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$SceneDetectionInfoCallback;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_2

    move-object v2, p0

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move-object p0, v1

    :goto_3
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setBrightnessValueListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$BrightnessValueListener;)V

    :cond_4
    return-void
.end method

.method private enableSceneDetection(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->setSceneDetectionMode(Z)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDetectedSceneEvent(I)V

    :cond_0
    return-void
.end method

.method private getState()Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mState:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    return-object p0
.end method

.method private handleCaptureTimeIndicatorButtonClicked()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideTouchEvSlider()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->hideCaptureTimeIndicator()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureTimeSlider:Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeSlider;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeSlider;->show()V

    return-void
.end method

.method private handleSceneDetectionInfo(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSceneOptimizerEnabled()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/camera/util/IntelligentUtil;->convertToDetectedSceneEvent(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCurrentSceneInfo:I

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCurrentSceneEvent:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCurrentSceneInfo:I

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->decideDetectedScene(II)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHdr()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/16 v0, 0x27

    if-eq p1, v0, :cond_2

    const/16 v0, 0x28

    if-ne p1, v0, :cond_3

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSceneDetectionInfo : sceneEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCurrentSceneEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sceneInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCurrentSceneInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", detectedScene="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleTakePhoto"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/4 v1, 0x5

    if-eq p1, v0, :cond_5

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result v0

    if-eq v0, p1, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDetectedSceneEvent(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDetectedSceneEvent(I)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    const-wide/16 v2, 0x9c4

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    :goto_0
    return-void
.end method

.method private handleSingleTakeCancelled()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;->IDLE:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->setState(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;

    const v1, 0x7f1104ed

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;->setContentDescriptionForTTS(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->hideGuide()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;->stopCenterRectAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSingleTakeCaptureTime()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->showCaptureTimeIndicator(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;->resetShutterAttribute()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->handleStorageStatus()Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->enableSystemSound(Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/SoundManager;->abandonAudioFocus()V

    return-void
.end method

.method private handleSingleTakeCompleted()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->enableSystemSound(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/SoundManager;->abandonAudioFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startShutterAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;->RECORDING_STOP:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/camera/interfaces/SoundManager;->playSound(Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getHapticFeedback()Lcom/sec/android/app/camera/interfaces/HapticManager;

    move-result-object v0

    const/16 v1, 0x26

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/HapticManager;->playHaptic(I)V

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;->IDLE:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->setState(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;

    const v1, 0x7f1104ed

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;->setContentDescriptionForTTS(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->hideGuide()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSingleTakeCaptureTime()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->showCaptureTimeIndicator(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;->stopCenterRectAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x70

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_single_take_first_shot_guide_count"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->handleStorageStatus()Z

    return-void
.end method

.method private handleSingleTakeRequested()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;->RECORDING_START:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/camera/interfaces/SoundManager;->playSound(Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getHapticFeedback()Lcom/sec/android/app/camera/interfaces/HapticManager;

    move-result-object v0

    const/16 v2, 0x26

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/HapticManager;->playHaptic(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->enableSystemSound(Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/SoundManager;->requestAudioFocus()V

    return-void
.end method

.method private handleSingleTakeStarted()V
    .locals 4

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;->PREPARE_CAPTURING:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->setState(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;

    const v1, 0x7f1104ef

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;->setContentDescriptionForTTS(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0x21

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->isSliderActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureTimeSlider:Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeSlider;->hide()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->hideCaptureTimeIndicator()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mGuideIndex:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSingleTakeCaptureTime()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    const/16 v1, 0x8

    const-wide/16 v2, 0xb54

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mStartCaptureTime:J

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "8003"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    const-string p0, "804"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "8001"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    const-string p0, "802"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleSingleTakeStopped()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;->setDim(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mStartCaptureTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureDuration:J

    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureDuration:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    const-string v0, "8004"

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "803"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    const-string v0, "8002"

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "801"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleStorageStatus()Z
    .locals 4

    const-string v0, "SingleTakePhoto"

    const-string v1, "handleStorageStatus check start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->getStorageStatusForSingleTake()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleStorageStatus check end : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;->SINGLE_TAKE_STORAGE_STATUS:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;->SINGLE_TAKE_STORAGE_STATUS:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;)V

    :cond_1
    return v0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f110465

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    return v2
.end method

.method private hideCaptureTimeIndicator()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SINGLE_TAKE_EXTENDED_CAPTURE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureTimeIndicator:Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeIndicator;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeIndicator;->hide()V

    return-void
.end method

.method private hideGuide()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureGuide:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoGuide;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoGuide;->hide()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->removeMessages(I)V

    return-void
.end method

.method private hideHelpGuide(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->isHelpGuideVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHelpGuide:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoHelpGuide;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoHelpGuide;->hide(Z)V

    :cond_0
    return-void
.end method

.method private isHelpGuideVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHelpGuide:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoHelpGuide;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoHelpGuide;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSingleTakeCaptureRestricted()Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCallStatus()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "SingleTakePhoto"

    const-string v1, "isSingleTakeCaptureRestricted - calling"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSingleTakeHelpGuideEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "pref_single_take_help_guide_enabled"

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->UNPACK_BINARY:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSliderActive()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SINGLE_TAKE_EXTENDED_CAPTURE:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureTimeSlider:Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeSlider;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeSlider;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isStopSingleTakeAvailable()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mStartCaptureTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureDuration:J

    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureDuration:J

    const-wide/16 v2, 0xb54

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$X9WZZ-z3rBd1B8b6C0bbYs-6-1I(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->handleCaptureTimeIndicatorButtonClicked()V

    return-void
.end method

.method private registerLocalBroadcast()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.CALL_STATE_RINGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.CALL_STATE_OFFHOOK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.CALL_STATE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private setHrmSensor(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHrmShutter()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHrmShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HrmShutterListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHrmShutterListener()V

    :goto_0
    return-void
.end method

.method private setInvalidSceneDetection()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInvalidSceneDetection : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCurrentSceneEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleTakePhoto"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCurrentSceneEvent:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDetectedSceneEvent(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v0, 0x7

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private setSceneDetectionMode(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isSceneOptimizerSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    sget-boolean v1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SCENE_DETECTION_LITE:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mPreviousSceneDetectionMode:I

    if-ne v2, v1, :cond_3

    return-void

    :cond_3
    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v3, 0x7

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCurrentSceneEvent:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCurrentSceneInfo:I

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSceneDetectionMode - enable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mode: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SingleTakePhoto"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setSceneDetectionMode(I)V

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mPreviousSceneDetectionMode:I

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private setState(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleTakePhoto"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mState:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    return-void
.end method

.method private showCaptureTimeIndicator(I)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SINGLE_TAKE_EXTENDED_CAPTURE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureTimeIndicator:Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeIndicator;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeIndicator;->show(I)V

    return-void
.end method

.method private showGuide()V
    .locals 5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mGuideIndex:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureGuide:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoGuide;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoGuide;->startHideAnimation()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureGuide:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoGuide;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoGuide;->show()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->removeMessages(I)V

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mGuideIndex:I

    const-wide/16 v2, 0xbb8

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mGuideIndex:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mGuideIndex:I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_2
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mGuideIndex:I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void
.end method

.method private showSingleTakeHelpGuide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0x81

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHelpGuide:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoHelpGuide;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoHelpGuide;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoHelpGuide;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHelpGuide:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoHelpGuide;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHelpGuide:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoHelpGuide;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SingleTakePhoto$_hMKRN_Bx4tcf-iB1xjye1vlbfo;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SingleTakePhoto$_hMKRN_Bx4tcf-iB1xjye1vlbfo;-><init>(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoHelpGuide;->setSingleTakePhotoHelpGuideHideListener(Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoHelpGuide$SingleTakePhotoHelpGuideHideListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHelpGuide:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoHelpGuide;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHelpGuide:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoHelpGuide;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoHelpGuide;->show()V

    return-void
.end method

.method private startProgressBarAnimation()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x7f0704fb

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSingleTakeCaptureTime()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v0, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SingleTakePhoto$wQz57JmEluR592tBRPtPCQ1V360;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SingleTakePhoto$wQz57JmEluR592tBRPtPCQ1V360;-><init>(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$3;-><init>(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private stopProgressBarAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public isShootingAvailable()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->isHelpGuideVisible()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public synthetic lambda$onCreateView$0$SingleTakePhoto()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;->setDim(Z)V

    return-void
.end method

.method public synthetic lambda$onCreateView$1$SingleTakePhoto()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    return-void
.end method

.method public synthetic lambda$onSceneDetectionEvent$2$SingleTakePhoto(I[J)V
    .locals 2
    .param p2    # [J
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/IntelligentUtil;->convertToDetectedSceneEvent(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCurrentSceneEvent:I

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCurrentSceneEvent:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCurrentSceneInfo:I

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->decideDetectedScene(II)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSceneDetectionEvent : sceneEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCurrentSceneEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sceneInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCurrentSceneInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", detectedScene="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sceneDetectionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleTakePhoto"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/4 v1, 0x5

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result v0

    if-eq v0, p1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDetectedSceneEvent(I)V

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCurrentSceneEvent:I

    invoke-static {p1}, Lcom/sec/android/app/camera/util/IntelligentUtil;->checkSceneDetectIconDisplayByTime(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0, p2}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result v0

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDetectedSceneEvent(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0, p2}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    goto :goto_0

    :cond_2
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SCENE_DETECTION_LITE:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0, p2}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    const-wide/16 p1, 0x9c4

    invoke-virtual {p0, v1, p1, p2}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public synthetic lambda$onSceneDetectionInfo$3$SingleTakePhoto(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->handleSceneDetectionInfo(I)V

    return-void
.end method

.method public synthetic lambda$showSingleTakeHelpGuide$4$SingleTakePhoto()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    return-void
.end method

.method public synthetic lambda$startProgressBarAnimation$5$SingleTakePhoto(FLandroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mProgressBar:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    return-void
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 3

    const-string v0, "SingleTakePhoto"

    const-string v1, "onActivate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->handleStorageStatus()Z

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshMainButton(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->isSingleTakeHelpGuideEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x80

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    const/4 v0, 0x6

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeShortcutController()Lcom/sec/android/app/camera/interfaces/ShootingModeShortcutController;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeShortcutController;->translateList(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSingleTakeCaptureTime()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->showCaptureTimeIndicator(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->setHrmSensor(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->registerLocalBroadcast()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->isSingleTakeCaptureRestricted()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object p1

    const v1, 0x7f1104ed

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->enableEngineCallbacks(Z)V

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SINGLE_TAKE_EXTENDED_CAPTURE:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SINGLE_TAKE_CAPTURE_TIME:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {p1, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_2
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SINGLE_TAKE_USING_SCENE_OPTIMIZER:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->enableSceneDetection(Z)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->enableSceneDetection(Z)V

    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPalmDetection()I

    move-result p1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enablePalmDetectionCallback(Z)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enablePalmDetectionCallback(Z)V

    :goto_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontPhotoBeautyType()I

    move-result p1

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackPhotoBeautyType()I

    move-result p1

    :goto_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontBeautySmoothnessLevel()I

    move-result p0

    goto :goto_4

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackBeautySmoothnessLevel()I

    move-result p0

    :goto_4
    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setSkinSmoothnessLevel(I)V

    :cond_7
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->isSliderActive()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureTimeSlider:Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeSlider;->hide()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSingleTakeCaptureTime()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->showCaptureTimeIndicator(I)V

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->isSliderActive()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBrightnessValueChanged(I)V
    .locals 1

    int-to-float p1, p1

    const v0, -0x3b733333    # -1126.4f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureGuide:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoGuide;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoGuide;->setNightScene(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureGuide:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoGuide;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoGuide;->setNightScene(Z)V

    :goto_0
    return-void
.end method

.method public onCameraSettingChanged(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraSettingChanged : key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleTakePhoto"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$4;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureTimeSlider:Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeSlider;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeSlider;->setValueText(I)V

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

    const-string v1, "SingleTakePhoto"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$4;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$CaptureEvent:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->handleSingleTakeCancelled()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->handleSingleTakeCompleted()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->handleSingleTakeStopped()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->handleSingleTakeStarted()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->handleSingleTakeRequested()V

    :goto_0
    return-void
.end method

.method public onConnectMakerPrepared(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;)V
    .locals 1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Capability;->isSingleTakeSecondPictureConfigSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    sget p0, Lcom/samsung/android/camera/feature/Feature;->BACK_WIDE_CAMERA_ID:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;->setExtraPictureSize(Landroid/util/Size;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "SingleTakePhoto"

    const-string v3, "onCreateView"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getScreenWidth()I

    move-result v2

    int-to-float v7, v2

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v2

    int-to-float v8, v2

    const v2, 0x7f0704fd

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x7f070047

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    const v3, 0x7f07003b

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    add-float/2addr v3, v14

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v12, v2, v3

    new-instance v2, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sub-float v3, v7, v14

    div-float v11, v3, v4

    move-object v9, v2

    move v13, v14

    invoke-direct/range {v9 .. v14}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFF)V

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;

    const/4 v10, 0x4

    invoke-virtual {v2, v10}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;->setVisibility(I)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;

    new-instance v3, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SingleTakePhoto$SewMuAkzgY4XMRxQkSlw4YQVbwQ;

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SingleTakePhoto$SewMuAkzgY4XMRxQkSlw4YQVbwQ;-><init>(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;->setSingleTakeShutterAnimationListener(Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter$SingleTakeShutterAnimationListener;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;

    new-instance v3, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SingleTakePhoto$J8HiCrPq5MoPBVh9YphR8LR5k50;

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SingleTakePhoto$J8HiCrPq5MoPBVh9YphR8LR5k50;-><init>(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;->setSingleTakeShutterClickListener(Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter$SingleTakeShutterClickListener;)V

    new-instance v2, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoGuide;

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoGuide;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureGuide:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoGuide;

    const v2, 0x7f0704fb

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v16

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v2

    const v3, 0x7f0704fa

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float v14, v2, v3

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x1

    const v18, 0x7f080b6b

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mProgressBar:Lcom/samsung/android/glview/GLImage;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mProgressBar:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v10}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    sget-boolean v2, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SINGLE_TAKE_EXTENDED_CAPTURE:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeIndicator;

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeIndicator;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureTimeIndicator:Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeIndicator;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureTimeIndicator:Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeIndicator;

    invoke-virtual {v2, v10}, Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeIndicator;->setVisibility(I)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureTimeIndicator:Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeIndicator;

    new-instance v3, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SingleTakePhoto$X9WZZ-z3rBd1B8b6C0bbYs-6-1I;

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SingleTakePhoto$X9WZZ-z3rBd1B8b6C0bbYs-6-1I;-><init>(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeIndicator;->setButtonClickListener(Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeIndicator$CaptureTimeIndicatorButtonClickListener;)V

    new-instance v2, Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeSlider;

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v9, Lcom/sec/android/app/camera/interfaces/CommandId;->SINGLE_TAKE_CAPTURE_TIME:Lcom/sec/android/app/camera/interfaces/CommandId;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeSlider;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/interfaces/CommandId;)V

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureTimeSlider:Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeSlider;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureTimeSlider:Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeSlider;

    invoke-virtual {v2, v10}, Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeSlider;->setVisibility(I)V

    :cond_0
    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureGuide:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoGuide;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mProgressBar:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    sget-boolean v2, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SINGLE_TAKE_EXTENDED_CAPTURE:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureTimeIndicator:Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeIndicator;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureTimeSlider:Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeSlider;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_1
    return-void
.end method

.method public onFaceDetection([Landroid/graphics/Rect;)Z
    .locals 2
    .param p1    # [Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureGuide:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoGuide;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoGuide;->getFaceNum()I

    move-result v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureGuide:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoGuide;

    array-length p1, p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoGuide;->setFaceNum(I)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onHrmShutterDetected()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->HRM_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    return-void
.end method

.method public onInactivate()V
    .locals 4

    const-string v0, "SingleTakePhoto"

    const-string v1, "onInactivate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$4;->$SwitchMap$com$sec$android$app$camera$shootingmode$SingleTakePhoto$SingleTakePhotoState:[I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->getState()Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SINGLE_TAKE_PICTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->handleShutterEvent(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->enableSystemSound(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/SoundManager;->abandonAudioFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;->RECORDING_STOP:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/camera/interfaces/SoundManager;->playSound(Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getHapticFeedback()Lcom/sec/android/app/camera/interfaces/HapticManager;

    move-result-object v0

    const/16 v3, 0x26

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/HapticManager;->playHaptic(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SINGLE_TAKE_PICTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelCapture(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->enableSystemSound(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/SoundManager;->abandonAudioFocus()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SINGLE_TAKE_EXTENDED_CAPTURE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SINGLE_TAKE_CAPTURE_TIME:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v3, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_2
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->enableEngineCallbacks(Z)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->hideHelpGuide(Z)V

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mSceneIndex:I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCurrentSceneEvent:I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCurrentSceneInfo:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mPreviousSceneDetectionMode:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->cancelProgressBarAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;->cancelShutterAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;->resetShutterAttribute()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->isSliderActive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureTimeSlider:Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeSlider;->hide()V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->hideCaptureTimeIndicator()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->hideGuide()V

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;->IDLE:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->setState(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    const v1, 0x7f1104a3

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;->setDim(Z)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->isSliderActive()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureTimeSlider:Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeSlider;->hide()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSingleTakeCaptureTime()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->showCaptureTimeIndicator(I)V

    return p2

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->isHelpGuideVisible()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->hideHelpGuide(Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "pref_single_take_help_guide_enabled"

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    return p2

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->getState()Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;->PREPARE_CAPTURING:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    if-ne p1, p2, :cond_2

    const-string p0, "SingleTakePhoto"

    const-string p1, "onKeyUp : returned because single take cannot be stopped now"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->getState()Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;->CAPTURING:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    if-ne p1, p2, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SINGLE_TAKE_PICTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleShutterEvent(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    :cond_3
    :goto_0
    return v0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->isHelpGuideVisible()Z

    move-result p0

    return p0
.end method

.method public onPictureSaved()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mSceneIndex:I

    invoke-static {v0}, Lcom/sec/android/app/camera/util/IntelligentUtil;->convertToDetectedSceneEvent(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCurrentSceneInfo:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mSceneIndex:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->handleSceneDetectionInfo(I)V

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

.method public onSceneDetectionEvent(I[J)V
    .locals 2
    .param p2    # [J
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SingleTakePhoto$WZt56e4P1jU3Zqi03eoNeuld3WI;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SingleTakePhoto$WZt56e4P1jU3Zqi03eoNeuld3WI;-><init>(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;I[J)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSceneDetectionInfo(Ljava/lang/Long;I[J)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mSceneIndex:I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "SingleTakePhoto"

    const-string p1, "onSceneDetectionInfo - returned because capture is now in progress."

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mHandler:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;

    new-instance p3, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SingleTakePhoto$GdScc3NHevNRlUdjhSFgDsMCQO4;

    invoke-direct {p3, p0, p2}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$SingleTakePhoto$GdScc3NHevNRlUdjhSFgDsMCQO4;-><init>(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;I)V

    invoke-virtual {p1, p3}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$MainHandler;->post(Ljava/lang/Runnable;)Z

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
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/StorageUtils;->getCachedStorageStatus(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;->STORAGE_STATUS:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;->STORAGE_STATUS:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;)V

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->isVideoRecordRestricted(Landroid/content/Context;)Z

    move-result v0

    const-string v3, "SingleTakePhoto"

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->getVideoRecordingRestrictedStringId()I

    move-result p1

    invoke-static {p0, p1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    const-string p0, "onShutterKeyReleased : returned because video recording is restricted."

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->handleStorageStatus()Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "onShutterKeyReleased : returned because storage status is ultra low"

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->isHelpGuideVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "onShutterKeyReleased : returned because help guide is shown"

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->getState()Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    move-result-object v0

    sget-object v4, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;->IDLE:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mShutterButton:Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/SingleTakePhotoShutter;->isStopCaptureAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "onShutterKeyReleased : returned because stop capture animation is running"

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SINGLE_TAKE_PICTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->handleShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->getState()Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;->PREPARE_CAPTURING:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    if-ne p1, v0, :cond_7

    const-string p0, "onShutterKeyReleased : returned because single take cannot be stopped now"

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SINGLE_TAKE_PICTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleShutterEvent(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    :goto_0
    return v2
.end method

.method public onShutterTimerEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$4;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;->IDLE:Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->setState(Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto$SingleTakePhotoState;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 p1, 0x70

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->isSliderActive()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mCaptureTimeSlider:Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/SingleTakeCaptureTimeSlider;->hide()V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SingleTakePhoto;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->setTimerCountingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;)V

    :goto_0
    return-void
.end method

.method public onStartPreviewCompleted()V
    .locals 0

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
