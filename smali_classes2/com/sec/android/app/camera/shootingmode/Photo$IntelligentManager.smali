.class Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;
.super Ljava/lang/Object;
.source "Photo.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/MakerInterface$IntelligentGuideEventCallback;
.implements Lcom/samsung/android/camera/core2/MakerInterface$SceneDetectionInfoCallback;
.implements Lcom/samsung/android/camera/core2/MakerInterface$SceneDetectionEventCallback;
.implements Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController$TouchEvSliderVisibilityChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomChangeGroupOpenStateListener;
.implements Lcom/samsung/android/camera/core2/MakerInterface$SmartScanEventCallback;
.implements Lcom/samsung/android/camera/core2/MakerInterface$CompositionGuideEventCallback;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$PreviewLayoutChangedListener;
.implements Lcom/sec/android/app/camera/widget/gl/SmartScan$SmartScanButtonClickListener;
.implements Lcom/sec/android/app/camera/widget/gl/SceneDetectView$SceneDetectButtonClickListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$DimChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$BrightnessValueListener;
.implements Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupVisibilityChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/BaseMenuController$HelpViewHideListener;
.implements Lcom/samsung/android/camera/core2/MakerInterface$DistanceMeasureCallback;
.implements Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController$QuickSettingToastVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Photo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntelligentManager"
.end annotation


# static fields
.field private static final DELAY_TIME_TO_CHANGE_DISTANCE_GUIDE:I = 0x3e8

.field private static final NIGHT_SUGGESTION_GUIDE_TIMEOUT:I = 0x1b58

.field private static final SCENE_DETECTED_DURATION:I = 0x9c4

.field private static final SCENE_OPTIMIZER_EFFECT_SA_LOGGING_BRIGHT_NIGHT_STATE:I = 0x1

.field private static final SCENE_OPTIMIZER_EFFECT_SA_LOGGING_DOCUMENT_SCAN_STATE:I = 0x2

.field private static final SCENE_OPTIMIZER_EFFECT_SA_LOGGING_OFF_STATE:I = 0x0

.field private static final SCENE_OPTIMIZER_EFFECT_SA_LOGGING_STAR_BURST_STATE:I = 0x3

.field private static final SCENE_OPTIMIZER_OFF:I = -0x2

.field private static final SCENE_OPTIMIZER_TIMEOUT:I = 0x7d0

.field private static final ULTRA_WIDE_RECOMMEND_GUIDE_TIMEOUT:I = 0x1f40

.field private static final VERTEX_COUNT:I = 0x4


# instance fields
.field private final SUPER_RESOLUTION_SUGGESTION_POPUP_INTERVAL:J

.field private mBrightnessValue:I

.field private mCloseUpSuggestionButton:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;

.field private mCompositionGuide:Lcom/sec/android/app/camera/widget/gl/CompositionGuide;

.field private mCurrentSceneEvent:I

.field private mCurrentSceneInfo:I

.field private final mHideNightSuggestionGuideRunnable:Ljava/lang/Runnable;

.field private final mHideSceneOptimizerToastRunnable:Ljava/lang/Runnable;

.field private final mHideUltraWideRecommendGuideRunnable:Ljava/lang/Runnable;

.field private mIsCompositionGuideEnabled:Z

.field private mIsCurrentShortDistance:Z

.field private mIsIntelligentGuideEnabled:Z

.field private mIsNightSuggestionGuideEnabled:Z

.field private mIsPhotoNightCapturing:Z

.field private mIsQuickSettingToastShowing:Z

.field private mIsSceneDetectionEnabled:Z

.field private mIsSceneDetectionLiteEnabled:Z

.field private mIsSmartScanRunning:Z

.field private mIsTouchEVSliderShowing:Z

.field private mNightShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

.field private mPreviousSceneDetectionMode:I

.field private mPreviousSceneInfo:I

.field private mSceneDetectView:Lcom/sec/android/app/camera/widget/gl/SceneDetectView;

.field private mSceneIndex:I

.field private mSceneOptimizerEffectSALoggingState:I

.field private mSceneOptimizerToast:Lcom/sec/android/app/camera/widget/gl/SceneOptimizerToast;

.field private final mShowSceneOptimizerRunnable:Ljava/lang/Runnable;

.field private mSmartScan:Lcom/sec/android/app/camera/widget/gl/SmartScan;

.field private mSmartScanResult:[F

.field private mSmartScanVertex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mUltraWideFocusImage:Lcom/samsung/android/glview/GLImage;

.field private final mUpdateDistanceMeasureGuideRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Photo;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Photo;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->SUPER_RESOLUTION_SUGGESTION_POPUP_INTERVAL:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSceneDetectionEnabled:Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSceneDetectionLiteEnabled:Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsIntelligentGuideEnabled:Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsCompositionGuideEnabled:Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsPhotoNightCapturing:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsNightSuggestionGuideEnabled:Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSmartScanRunning:Z

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneIndex:I

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCurrentSceneEvent:I

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCurrentSceneInfo:I

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mPreviousSceneInfo:I

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneOptimizerEffectSALoggingState:I

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsTouchEVSliderShowing:Z

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSmartScanResult:[F

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mPreviousSceneDetectionMode:I

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mBrightnessValue:I

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsCurrentShortDistance:Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsQuickSettingToastShowing:Z

    new-instance p1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$oA2PZtWPd3Goe-00XwJTPbGRx9w;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$oA2PZtWPd3Goe-00XwJTPbGRx9w;-><init>(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mShowSceneOptimizerRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$Nv0XjyjD6gZ_zrz7JWWWnw6Tml0;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$Nv0XjyjD6gZ_zrz7JWWWnw6Tml0;-><init>(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mHideSceneOptimizerToastRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$iOV-nuyfXEIXgzk4jM7v5VoZdYI;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$iOV-nuyfXEIXgzk4jM7v5VoZdYI;-><init>(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mHideUltraWideRecommendGuideRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$ciS9EpXw9JdNMvjn2OSXBVvxFUw;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$ciS9EpXw9JdNMvjn2OSXBVvxFUw;-><init>(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mHideNightSuggestionGuideRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$YAUpiuzhMNvVNZxtKw7w444rzNM;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$YAUpiuzhMNvVNZxtKw7w444rzNM;-><init>(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mUpdateDistanceMeasureGuideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->start()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showSceneDetectionView()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->applySceneDetectEffect(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Lcom/sec/android/app/camera/widget/gl/SceneDetectView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneDetectView:Lcom/sec/android/app/camera/widget/gl/SceneDetectView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->isCloseUpSuggestionAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCloseUpSuggestionButton:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->hideCloseUpSuggestionButton()V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->isStarBurst()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2802(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneOptimizerEffectSALoggingState:I

    return p1
.end method

.method static synthetic access$2900(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->isPhotoNightScene()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->handleNightCaptureStarted()V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsPhotoNightCapturing:Z

    return p0
.end method

.method static synthetic access$3200(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->handleNightCaptureCompleted()V

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Lcom/sec/android/app/camera/widget/gl/NightShutter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mNightShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->hideNightShutter()V

    return-void
.end method

.method static synthetic access$3500(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->initializeView(Lcom/samsung/android/glview/GLViewGroup;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;[Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->handleHwFaceDetectionCallback([Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->stop()V

    return-void
.end method

.method static synthetic access$4500(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSceneDetectionEnabled:Z

    return p0
.end method

.method static synthetic access$4600(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSceneDetectionLiteEnabled:Z

    return p0
.end method

.method static synthetic access$4700(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneIndex:I

    return p0
.end method

.method static synthetic access$4800(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCurrentSceneInfo:I

    return p0
.end method

.method static synthetic access$4900(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->handleSceneDetectionInfo(I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSmartScanRunning:Z

    return p0
.end method

.method static synthetic access$5002(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSmartScanRunning:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->getSmartVertex()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5300(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->sendSALogForSceneOptimizerPictureTaken()V

    return-void
.end method

.method static synthetic access$5400(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->hideNightModeSuggestionGuide(Z)V

    return-void
.end method

.method static synthetic access$5500(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Lcom/sec/android/app/camera/widget/gl/CompositionGuide;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCompositionGuide:Lcom/sec/android/app/camera/widget/gl/CompositionGuide;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->handleStartPreviewCompleted()V

    return-void
.end method

.method static synthetic access$5800(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->hideSceneDetection()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Lcom/sec/android/app/camera/widget/gl/SceneOptimizerToast;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneOptimizerToast:Lcom/sec/android/app/camera/widget/gl/SceneOptimizerToast;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Lcom/sec/android/app/camera/widget/gl/SmartScan;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSmartScan:Lcom/sec/android/app/camera/widget/gl/SmartScan;

    return-object p0
.end method

.method private applySceneDetectEffect(I)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_ADDITIONAL_EFFECTS_WITH_SCENE_DETECTION:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->turnOffSceneDetectEffect(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->isSuperResolutionSuggestionScene(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showSuperResolutionSuggestionPopup()V

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->isUltraWideSuggestionScene(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BACK_WIDE_CAMERA:Z

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/sec/android/app/camera/util/IntelligentUtil;->checkSceneDetectIconDisplayByTime(I)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result p1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->INTELLIGENT_ULTRA_WIDE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showUltraWideRecommendGuidePopup()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->INTELLIGENT_ULTRA_WIDE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->setPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;->MODE_NONE:Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setLabsCaptureMode(Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showUltraWideLensFocusedImage()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x29

    if-ne p1, v1, :cond_4

    invoke-static {p1}, Lcom/sec/android/app/camera/util/IntelligentUtil;->checkSceneDetectIconDisplayByTime(I)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->INTELLIGENT_ULTRA_WIDE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAdditionalSceneStarBurst()I

    move-result p1

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRemoveStarEffectEnabled()I

    move-result p1

    if-ne p1, v0, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;->MODE_STAR_EFFECT:Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setLabsCaptureMode(Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAdditionalSceneDocumentScan()I

    move-result p1

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCompositionGuide()I

    move-result p1

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCompositionGuide:Lcom/sec/android/app/camera/widget/gl/CompositionGuide;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/CompositionGuide;->hide()V

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;->MODE_SMART_SCAN:Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setLabsCaptureMode(Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private decideDetectedScene(II)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

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

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSceneDetectionEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSceneDetectionLiteEnabled:Z

    if-eqz v0, :cond_7

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_1

    move-object v2, p0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setSceneDetectionCallback(Lcom/samsung/android/camera/core2/MakerInterface$SceneDetectionEventCallback;)V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_INTELLIGENT_RECOGNITION_TIPS_MANUAL_SCENE:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_2

    move-object v2, p0

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setSceneDetectionInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$SceneDetectionInfoCallback;)V

    :cond_3
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_ADDITIONAL_EFFECTS_WITH_SCENE_DETECTION:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_4

    move-object v2, p0

    goto :goto_2

    :cond_4
    move-object v2, v1

    :goto_2
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setSmartScanEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$SmartScanEventCallback;)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_6

    move-object v2, p0

    goto :goto_3

    :cond_6
    move-object v2, v1

    :goto_3
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setBrightnessValueListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$BrightnessValueListener;)V

    :cond_7
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsIntelligentGuideEnabled:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_8

    move-object v2, p0

    goto :goto_4

    :cond_8
    move-object v2, v1

    :goto_4
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setIntelligentGuideCallback(Lcom/samsung/android/camera/core2/MakerInterface$IntelligentGuideEventCallback;)V

    :cond_9
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsCompositionGuideEnabled:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_a

    move-object v2, p0

    goto :goto_5

    :cond_a
    move-object v2, v1

    :goto_5
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setCompositionGuideEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$CompositionGuideEventCallback;)V

    :cond_b
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->isCloseUpSuggestionAvailable()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_c

    goto :goto_6

    :cond_c
    move-object p0, v1

    :goto_6
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setDistanceMeasureCallback(Lcom/samsung/android/camera/core2/MakerInterface$DistanceMeasureCallback;)V

    :cond_d
    return-void
.end method

.method private enableSceneDetection(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->turnOffSceneDetectEffect(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->setSceneDetectionMode(Z)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDetectedSceneEvent(I)V

    :cond_0
    return-void
.end method

.method private getSmartVertex()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSmartScanVertex:Ljava/util/ArrayList;

    return-object p0
.end method

.method private handleCloseUpSuggestionButtonClicked()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_CLOSE_UP_SUGGESTION:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_DISTANCE_WARNING:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCloseUpSuggestionButton:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;->getState()Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;->ZOOM_STATE_1X:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCloseUpSuggestionButton:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;

    sget-object v2, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;->ZOOM_STATE_2X:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;->setState(Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomMethodType;->BIXBY_COMMAND:Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomMethodType;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->onZoomChanged(ILcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomMethodType;)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsCurrentShortDistance:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_DISTANCE_WARNING:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCloseUpSuggestionButton:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;

    sget-object v1, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;->ZOOM_STATE_1X:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;->setState(Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    const/16 v1, 0x64

    sget-object v2, Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomMethodType;->BIXBY_COMMAND:Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomMethodType;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->onZoomChanged(ILcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomMethodType;)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsCurrentShortDistance:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showCloseUpSuggestionButton()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->hideCloseUpSuggestionButton()V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleHwFaceDetectionCallback([Landroid/graphics/Rect;)V
    .locals 5
    .param p1    # [Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSceneOptimizer()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSceneOptimizerEnabled()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    array-length p1, p1

    const/4 v0, 0x3

    if-lt p1, v1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeMessages(I)V

    move p1, v0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object v2

    const-wide/16 v3, 0x9c4

    invoke-virtual {v2, v1, v3, v4}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    :goto_0
    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result v0

    if-eq v0, p1, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDetectedSceneEvent(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showSceneDetectionView()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->applySceneDetectEffect(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result v0

    if-eq v0, p1, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDetectedSceneEvent(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showSceneDetectionView()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->applySceneDetectEffect(I)V

    :cond_7
    :goto_1
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

.method private handleNightCaptureCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mNightShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->isFillMoonAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mNightShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->cancelShutterAnimation()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mNightShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->startFastFillMoonAnimation()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->hideNightShutter()V

    :goto_0
    return-void
.end method

.method private handleNightCaptureStarted()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsPhotoNightCapturing:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6600(Lcom/sec/android/app/camera/shootingmode/Photo;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneDetectView:Lcom/sec/android/app/camera/widget/gl/SceneDetectView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/SceneDetectView;->hide()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    const/16 v2, -0x81

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mNightShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    const/16 v2, 0x80

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    invoke-interface {v1, v0, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mNightShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->cancelShutterAnimation()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mNightShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    new-instance v0, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    const/16 v1, 0xbb8

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->startFillMoonAnimation(ILandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private handleSceneDetectionInfo(I)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSceneOptimizerEnabled()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCurrentSceneInfo:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mPreviousSceneInfo:I

    invoke-static {p1}, Lcom/sec/android/app/camera/util/IntelligentUtil;->convertToDetectedSceneEvent(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCurrentSceneInfo:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCurrentSceneEvent:I

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->decideDetectedScene(II)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHdr()I

    move-result v0

    const/16 v1, 0x28

    const/16 v2, 0x27

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSceneDetectionInfo : sceneEvent="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCurrentSceneEvent:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", sceneInfo = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCurrentSceneInfo:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", detectedScene="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Photo"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/camera/util/IntelligentUtil;->checkSceneDetectIconDisplayByTime(I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string p1, "handleSceneDetectionInfo : not available scene type"

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_4
    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    if-eqz p1, :cond_b

    const/16 v0, 0xe

    if-eq p1, v0, :cond_a

    if-eq p1, v2, :cond_9

    if-eq p1, v1, :cond_9

    const/16 v0, 0x2c

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result v0

    if-eq v0, p1, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDetectedSceneEvent(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showSceneDetectionView()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->applySceneDetectEffect(I)V

    goto/16 :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result v1

    if-eq v1, p1, :cond_d

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDetectedSceneEvent(I)V

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mPreviousSceneInfo:I

    if-eq v1, v0, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showSceneDetectionView()V

    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->applySceneDetectEffect(I)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result v1

    if-eq v1, p1, :cond_d

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDetectedSceneEvent(I)V

    sget-boolean v1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_ADDITIONAL_EFFECTS_WITH_SCENE_DETECTION:Z

    if-eqz v1, :cond_6

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->turnOffSceneDetectEffect(Z)V

    :cond_6
    sget-boolean v1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_PHOTO_NIGHT:Z

    if-eqz v1, :cond_7

    if-ne p1, v0, :cond_8

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mPreviousSceneInfo:I

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showSceneDetectionView()V

    goto :goto_0

    :cond_7
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showSceneDetectionView()V

    :cond_8
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showNightModeSuggestionGuidePopup()V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result v0

    if-eq v0, p1, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDetectedSceneEvent(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showSceneDetectionView()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->applySceneDetectEffect(I)V

    goto :goto_1

    :cond_a
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_PHOTO_NIGHT:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showSceneDetectionView()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->applySceneDetectEffect(I)V

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDetectedSceneEvent(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showSceneDetectionView()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->applySceneDetectEffect(I)V

    goto :goto_1

    :cond_c
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object p0

    const-wide/16 v0, 0x9c4

    invoke-virtual {p0, v3, v0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_d
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleStartPreviewCompleted()V
    .locals 3

    const-string v0, "Photo"

    const-string v1, "handleStartPreviewCompleted -- Intelligent Controller"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mPreviousSceneDetectionMode:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDetectedSceneEvent(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSceneDetectionEnabled:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSceneDetectionLiteEnabled:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSceneOptimizerEnabled()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->enableSceneDetection(Z)V

    :cond_2
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_CLOSE_UP_SUGGESTION:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableDistanceMeasure(Z)V

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsIntelligentGuideEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableIntelligentGuide(Z)V

    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsCompositionGuideEnabled:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;->MODE_NORMAL:Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setCompositionGuideMode(Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;)V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;->MODE_LITE:Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setCompositionGuideMode(Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private hideCloseUpSuggestionButton()V
    .locals 2

    const-string v0, "Photo"

    const-string v1, "hideCloseUpSuggestionButton : "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCloseUpSuggestionButton:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCloseUpSuggestionButton:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_CLOSE_UP_SUGGESTION:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_DISTANCE_WARNING:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)V

    return-void
.end method

.method private hideNightModeSuggestionGuide(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideNightModeSuggestionGuide : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Photo"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mHideNightSuggestionGuideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_NIGHT_MODE_SUGGESTION:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsNightSuggestionGuideEnabled:Z

    return-void
.end method

.method private hideNightShutter()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsPhotoNightCapturing:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneDetectView:Lcom/sec/android/app/camera/widget/gl/SceneDetectView;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/SceneDetectView;->show(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mNightShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    const/16 v2, -0x81

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mNightShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->resetShutterAttribute()V

    return-void
.end method

.method private hideSceneDetection()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideSceneDetection : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCurrentSceneEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Photo"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCurrentSceneEvent:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDetectedSceneEvent(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showSceneDetectionView()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

    const/4 v0, 0x7

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    :cond_0
    return-void

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

.method private hideUltraWideRecommendGuide(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->INTELLIGENT_ULTRA_WIDE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mHideUltraWideRecommendGuideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private initializeView(Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 14

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_INTELLIGENT_RECOGNITION_TIPS:Z

    if-eqz v0, :cond_0

    const v0, 0x7f070371

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    const v1, 0x7f070372

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v7

    const v1, 0x7f070296

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v1, v7

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    sub-float v4, v2, v7

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v0

    sub-float/2addr v0, v1

    sub-float v5, v0, v7

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/SceneDetectView;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v3

    move-object v2, v0

    move v6, v7

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/widget/gl/SceneDetectView;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneDetectView:Lcom/sec/android/app/camera/widget/gl/SceneDetectView;

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/SceneOptimizerToast;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v1

    int-to-float v12, v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v1

    int-to-float v13, v1

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/app/camera/widget/gl/SceneOptimizerToast;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneOptimizerToast:Lcom/sec/android/app/camera/widget/gl/SceneOptimizerToast;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneDetectView:Lcom/sec/android/app/camera/widget/gl/SceneDetectView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneOptimizerToast:Lcom/sec/android/app/camera/widget/gl/SceneOptimizerToast;

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_COMPOSITION_GUIDE:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/CompositionGuide;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/gl/CompositionGuide;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCompositionGuide:Lcom/sec/android/app/camera/widget/gl/CompositionGuide;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCompositionGuide:Lcom/sec/android/app/camera/widget/gl/CompositionGuide;

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_1
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_ADDITIONAL_EFFECTS_WITH_SCENE_DETECTION:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/SmartScan;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/widget/gl/SmartScan;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSmartScan:Lcom/sec/android/app/camera/widget/gl/SmartScan;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSmartScan:Lcom/sec/android/app/camera/widget/gl/SmartScan;

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const v3, 0x7f080864

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mUltraWideFocusImage:Lcom/samsung/android/glview/GLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mUltraWideFocusImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    :cond_2
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_CLOSE_UP_SUGGESTION:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCloseUpSuggestionButton:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCloseUpSuggestionButton:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$8F6-JqtHrl2-KmFNe6jOcQMHTS0;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$8F6-JqtHrl2-KmFNe6jOcQMHTS0;-><init>(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;->setCloseUpSuggestionButtonClickListener(Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$CloseUpSuggestionButtonClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCloseUpSuggestionButton:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCloseUpSuggestionButton:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->makeNightShutter()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mNightShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    invoke-virtual {p1, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private isBeautyLevelEnabled()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackPhotoBeautyType()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackSmartBeautyLevel()I

    move-result p0

    if-lez p0, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackPhotoBeautyType()I

    move-result v0

    if-ne v0, v1, :cond_e

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BEAUTY_BRIGHTEN:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackBeautySmoothnessLevel()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackBeautyBrightenLevel()I

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackSkinColorLevel()I

    move-result p0

    if-lez p0, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    return v2

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackSkinToneLevel()I

    move-result v0

    if-gtz v0, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackSkinColorLevel()I

    move-result p0

    if-lez p0, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    return v2

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontPhotoBeautyType()I

    move-result v0

    if-ne v0, v3, :cond_9

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontSmartBeautyLevel()I

    move-result p0

    if-lez p0, :cond_8

    move v2, v3

    :cond_8
    return v2

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontPhotoBeautyType()I

    move-result v0

    if-ne v0, v1, :cond_e

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BEAUTY_BRIGHTEN:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontBeautySmoothnessLevel()I

    move-result v0

    if-gtz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontBeautyBrightenLevel()I

    move-result v0

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontSkinColorLevel()I

    move-result p0

    if-lez p0, :cond_b

    :cond_a
    move v2, v3

    :cond_b
    return v2

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontSkinToneLevel()I

    move-result v0

    if-gtz v0, :cond_d

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontSkinColorLevel()I

    move-result p0

    if-lez p0, :cond_e

    :cond_d
    move v2, v3

    :cond_e
    return v2
.end method

.method private isCloseUpGuideDisplayAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayHelp()Lcom/sec/android/app/camera/interfaces/OverlayHelpController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayHelp()Lcom/sec/android/app/camera/interfaces/OverlayHelpController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayHelpController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->CREATE_MY_FILTER:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->BACK_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->SELFIE_TONE:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsTouchEVSliderShowing:Z

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6700(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->access$6800(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->isZoomChangeGroupOpened()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6000(Lcom/sec/android/app/camera/shootingmode/Photo;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsPhotoNightCapturing:Z

    if-eqz v0, :cond_7

    return v1

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6500(Lcom/sec/android/app/camera/shootingmode/Photo;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$5900(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->access$4400(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref_help_first_page"

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    :cond_9
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCloseUpSuggestionButton:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;->isVisible()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_a
    :goto_0
    return v1
.end method

.method private isCloseUpSuggestionAvailable()Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_CLOSE_UP_SUGGESTION:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private isCompositionGuideAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6000(Lcom/sec/android/app/camera/shootingmode/Photo;)Z

    move-result v0

    const-string v2, "Photo"

    if-eqz v0, :cond_1

    const-string p0, "isCompositionGuideAvailable : return IsBurstCapturing.."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "isCompositionGuideAvailable : return isCapturing.."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isPictureSaving()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "isCompositionGuideAvailable : return isPictureSaving.."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->isZoomChangeGroupOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "isCompositionGuideAvailable : return zoom slider showing.."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->isSmartScan()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "isCompositionGuideAvailable : return smart scan.."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayHelp()Lcom/sec/android/app/camera/interfaces/OverlayHelpController;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayHelp()Lcom/sec/android/app/camera/interfaces/OverlayHelpController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayHelpController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->CREATE_MY_FILTER:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->BACK_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->SELFIE_TONE:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6500(Lcom/sec/android/app/camera/shootingmode/Photo;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$5900(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->access$4400(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;)Z

    move-result v0

    if-eqz v0, :cond_b

    return v1

    :cond_b
    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsCompositionGuideEnabled:Z

    return p0

    :cond_c
    :goto_0
    return v1
.end method

.method private isNightModeSuggestionGuideAvailable()Z
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->isPopupDisplayAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->isSceneOptimizerShowRequired()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_NIGHT:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isEnable(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CommandId;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsNightSuggestionGuideEnabled:Z

    return p0
.end method

.method private isPhotoNightScene()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result p0

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_0

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

.method private isPopupDisplayAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayHelp()Lcom/sec/android/app/camera/interfaces/OverlayHelpController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayHelp()Lcom/sec/android/app/camera/interfaces/OverlayHelpController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayHelpController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->UNPACK_BINARY:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->CREATE_MY_FILTER:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->BACK_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->SELFIE_TONE:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_0
    return v1
.end method

.method private isSceneOptimizerShowRequired()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSimpleMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSceneOptimizer()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->BACK_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->CREATE_MY_FILTER:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->SELFIE_TONE:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSceneDetectionEnabled:Z

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v2, :cond_3

    return v1

    :cond_3
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_ADDITIONAL_EFFECTS_WITH_SCENE_DETECTION:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsTouchEVSliderShowing:Z

    if-eqz v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->isZoomChangeGroupOpened()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6000(Lcom/sec/android/app/camera/shootingmode/Photo;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsPhotoNightCapturing:Z

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6500(Lcom/sec/android/app/camera/shootingmode/Photo;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$5900(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->access$4400(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_NIGHT_MODE_SUGGESTION:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupVisible(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "pref_help_first_page"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_b

    return v1

    :cond_b
    return v2

    :cond_c
    :goto_0
    return v1
.end method

.method private isShotSuggestionGuideAvailable()Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->isPopupDisplayAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SHOT_SUGGESTION_GUIDE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->isSmartTipsPopupEnabled(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)Z

    move-result p0

    return p0
.end method

.method private isSmartScan()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isStarBurst()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_STAR_BURST:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result p0

    const/16 v0, 0x29

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSuperResolutionSuggestionGuideAvailable()Z
    .locals 6

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->isPopupDisplayAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isSuperResolution(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SUPER_RESOLUTION_SMART_TIPS:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BACK_SUPER_RESOLUTION_CAMERA:Z

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mBrightnessValue:I

    int-to-float v0, v0

    const/high16 v2, 0x43800000    # 256.0f

    div-float/2addr v0, v2

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->isZoomSliderShowing()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6900(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->access$7000(Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v2, 0x0

    const-string v4, "pref_super_resolution_suggestion_popup_timer"

    invoke-static {v0, v4, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->SUPER_RESOLUTION_SUGGESTION_POPUP_INTERVAL:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SUPER_RESOLUTION_SUGGESTION:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->isSmartTipsPopupEnabled(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    :cond_5
    :goto_0
    return v1
.end method

.method private isSuperResolutionSuggestionScene(I)Z
    .locals 1

    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SUPER_RESOLUTION_SMART_TIPS:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/16 p0, 0x1b

    if-eq p1, p0, :cond_0

    const/4 p0, 0x6

    if-eq p1, p0, :cond_0

    const/4 p0, 0x7

    if-eq p1, p0, :cond_0

    const/16 p0, 0x8

    if-eq p1, p0, :cond_0

    const/16 p0, 0x14

    if-eq p1, p0, :cond_0

    const/16 p0, 0x15

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    return v0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isUltraWideSuggestionScene(I)Z
    .locals 3

    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SUPER_RESOLUTION_SMART_TIPS:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x22

    if-eqz p0, :cond_1

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    return v1

    :cond_0
    :pswitch_0
    return v0

    :cond_1
    const/4 p0, 0x6

    if-eq p1, p0, :cond_2

    const/4 p0, 0x7

    if-eq p1, p0, :cond_2

    const/16 p0, 0x8

    if-eq p1, p0, :cond_2

    if-eq p1, v2, :cond_2

    packed-switch p1, :pswitch_data_1

    return v1

    :cond_2
    :pswitch_1
    return v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic lambda$8F6-JqtHrl2-KmFNe6jOcQMHTS0(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->handleCloseUpSuggestionButtonClicked()V

    return-void
.end method

.method private makeNightShutter()V
    .locals 7

    const v0, 0x7f070034

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x7f070047

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    const v1, 0x7f07003b

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    add-float/2addr v1, v6

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v4, v0, v1

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/NightShutter;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$7100(Lcom/sec/android/app/camera/shootingmode/Photo;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v6

    div-float v5, v1, v2

    move-object v1, v0

    move-object v2, v3

    move v3, v5

    move v5, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/widget/gl/NightShutter;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mNightShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mNightShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mNightShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$pJ52GegzKoUTIi29nqGzzk4A1rs;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$pJ52GegzKoUTIi29nqGzzk4A1rs;-><init>(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->setNightShutterAnimationListener(Lcom/sec/android/app/camera/widget/gl/NightShutter$NightShutterAnimationListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mNightShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$YTG8Ay6uuIVeuLxaoRTRJTby_D0;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$YTG8Ay6uuIVeuLxaoRTRJTby_D0;-><init>(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->setNightShutterClickListener(Lcom/sec/android/app/camera/widget/gl/NightShutter$NightShutterClickListener;)V

    return-void
.end method

.method private onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneOptimizerToast:Lcom/sec/android/app/camera/widget/gl/SceneOptimizerToast;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/SceneOptimizerToast;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneOptimizerToast:Lcom/sec/android/app/camera/widget/gl/SceneOptimizerToast;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/SceneOptimizerToast;->hide()V

    return v1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_NIGHT_MODE_SUGGESTION:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupVisible(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->hideNightModeSuggestionGuide(Z)V

    return v1

    :cond_2
    return v0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneOptimizerToast:Lcom/sec/android/app/camera/widget/gl/SceneOptimizerToast;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/SceneOptimizerToast;->isVisible()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_NIGHT_MODE_SUGGESTION:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupVisible(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    return v0
.end method

.method private sendSALogForSceneOptimizerPictureTaken()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSimpleMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSceneOptimizer()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "0034"

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSceneOptimizerEnabled()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailBySceneEvent(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0024"

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1"

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_ADDITIONAL_EFFECTS_WITH_SCENE_DETECTION:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneOptimizerEffectSALoggingState:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0048"

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneOptimizerEffectSALoggingState:I

    goto :goto_0

    :cond_1
    const-string p0, "2"

    invoke-static {v2, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "0"

    invoke-static {v2, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setSceneDetectionMode(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isSceneOptimizerSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSceneDetectionEnabled:Z

    if-eqz v2, :cond_2

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SCENE_DETECTION_LITE:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v2, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SCENE_DETECTION_LITE:Z

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSceneDetectionLiteEnabled:Z

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mPreviousSceneDetectionMode:I

    if-ne v2, v0, :cond_5

    return-void

    :cond_5
    const/4 v2, 0x7

    if-nez v0, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v3

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-interface {v3, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCurrentSceneEvent:I

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCurrentSceneInfo:I

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mPreviousSceneInfo:I

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v1

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSceneDetectionMode - enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mode: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Photo"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setSceneDetectionMode(I)V

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mPreviousSceneDetectionMode:I

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        -0x2
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
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

.method private setSmartScanVertex()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSmartScanVertex:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSmartScanVertex:Ljava/util/ArrayList;

    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSmartScanResult:[F

    mul-int/lit8 v5, v0, 0x2

    aget v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    invoke-direct {v3, v6, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private showCloseUpSuggestionButton()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->isCloseUpGuideDisplayAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCloseUpSuggestionButton:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;->show()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showCloseUpSuggestionPopup()V

    return-void
.end method

.method private showCloseUpSuggestionPopup()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_CLOSE_UP_SUGGESTION:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->isSmartTipsPopupEnabled(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_CLOSE_UP_SUGGESTION:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupVisible(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_CLOSE_UP_SUGGESTION:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_CLOSE_UP_SUGGESTION:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_CLOSE_UP_SUGGESTION:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->setSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_CLOSE_UP_SUGGESTION:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_CLOSE_UP_SUGGESTION:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->setSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;I)V

    :cond_2
    return-void
.end method

.method private showNightModeSuggestionGuidePopup()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->isNightModeSuggestionGuideAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_NIGHT_MODE_SUGGESTION:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mHideNightSuggestionGuideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mHideNightSuggestionGuideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsNightSuggestionGuideEnabled:Z

    return-void
.end method

.method private showSceneDetectionView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mShowSceneOptimizerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mShowSceneOptimizerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showShotSuggestionGuidePopup()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->isShotSuggestionGuideAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->INTELLIGENT_SHOT_SUGGESTION_GUIDE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SHOT_SUGGESTION_GUIDE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SHOT_SUGGESTION_GUIDE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->setSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x14

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SHOT_SUGGESTION_GUIDE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->setSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private showSuperResolutionSuggestionPopup()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->isSuperResolutionSuggestionGuideAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_SUPER_RESOLUTION_SUGGESTION:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_super_resolution_suggestion_popup_timer"

    invoke-static {v2, v3, v0, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SUPER_RESOLUTION_SUGGESTION:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SUPER_RESOLUTION_SUGGESTION:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->setSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SUPER_RESOLUTION_SUGGESTION:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SUPER_RESOLUTION_SUGGESTION:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->setSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;I)V

    :cond_2
    return-void
.end method

.method private showUltraWideLensFocusedImage()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_ULTRA_WIDE_FOCUSED:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->isSmartTipsPopupEnabled(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_ZOOM_WIDE:Lcom/sec/android/app/camera/interfaces/CommandId;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mUltraWideFocusImage:Lcom/samsung/android/glview/GLImage;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->setOverlayView(Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mUltraWideFocusImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_ULTRA_WIDE_FOCUSED:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_ULTRA_WIDE_FOCUSED:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->setSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_ULTRA_WIDE_FOCUSED:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_ULTRA_WIDE_FOCUSED:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->setSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;I)V

    :cond_0
    return-void
.end method

.method private showUltraWideRecommendGuidePopup()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->INTELLIGENT_ULTRA_WIDE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mHideUltraWideRecommendGuideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mHideUltraWideRecommendGuideRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f40

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private start()V
    .locals 4

    const-string v0, "Photo"

    const-string v1, "IntelligentManager start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_INTELLIGENT_RECOGNITION_TIPS:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSceneOptimizer()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSimpleMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSceneDetectionEnabled:Z

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SCENE_DETECTION_LITE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSimpleMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSceneDetectionLiteEnabled:Z

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_INTELLIGENT_GUIDE_TIPS:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlawDetection()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSimpleMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsIntelligentGuideEnabled:Z

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_COMPOSITION_GUIDE:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCompositionGuide()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSimpleMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsCompositionGuideEnabled:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->registerTouchEvSliderVisibilityChangedListener(Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController$TouchEvSliderVisibilityChangedListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->isCloseUpSuggestionAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableDistanceMeasure(Z)V

    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsIntelligentGuideEnabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableIntelligentGuide(Z)V

    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsCompositionGuideEnabled:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;->MODE_NORMAL:Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setCompositionGuideMode(Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;->MODE_LITE:Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setCompositionGuideMode(Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;)V

    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerPreviewLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$PreviewLayoutChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->COMPOSITION_GUIDE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v3, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_7
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BODY_BEAUTY:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v3, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_8
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSceneDetectionEnabled:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSceneDetectionLiteEnabled:Z

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->setSceneDetectionMode(Z)V

    goto :goto_6

    :cond_a
    :goto_5
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsNightSuggestionGuideEnabled:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6400(Lcom/sec/android/app/camera/shootingmode/Photo;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSceneOptimizerEnabled()I

    move-result v0

    if-ne v0, v2, :cond_b

    move v1, v2

    :cond_b
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->enableSceneDetection(Z)V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_ADDITIONAL_EFFECTS_WITH_SCENE_DETECTION:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSmartScan:Lcom/sec/android/app/camera/widget/gl/SmartScan;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/SmartScan;->setSmartScanButtonClickListener(Lcom/sec/android/app/camera/widget/gl/SmartScan$SmartScanButtonClickListener;)V

    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->isSceneOptimizerShowRequired()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showSceneDetectionView()V

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneDetectView:Lcom/sec/android/app/camera/widget/gl/SceneDetectView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/SceneDetectView;->setSceneDetectButtonClickListener(Lcom/sec/android/app/camera/widget/gl/SceneDetectView$SceneDetectButtonClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SCENE_OPTIMIZER_ENABLED:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SCENE_OPTIMIZER_ENABLED:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerDimChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$DimChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->registerPopupVisibilityChangedListener(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupVisibilityChangedListener;)V

    :goto_6
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_ZOOM:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->setZoomChangeGroupOpenStateListener(Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomChangeGroupOpenStateListener;)V

    :cond_e
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_CLOSE_UP_SUGGESTION:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->registerQuickSettingToastVisibilityChangedListener(Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController$QuickSettingToastVisibilityChangedListener;)V

    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setHelpViewHideListener(Lcom/sec/android/app/camera/interfaces/BaseMenuController$HelpViewHideListener;)V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_COMPOSITION_GUIDE:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showShotSuggestionGuidePopup()V

    :cond_10
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->enableEngineCallbacks(Z)V

    return-void
.end method

.method private startHideSceneOptimizerTimer()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mHideSceneOptimizerToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mHideSceneOptimizerToastRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private stop()V
    .locals 4

    const-string v0, "Photo"

    const-string v1, "IntelligentManager stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->enableEngineCallbacks(Z)V

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsPhotoNightCapturing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mNightShutterButton:Lcom/sec/android/app/camera/widget/gl/NightShutter;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->cancelShutterAnimation()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->hideNightShutter()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->isCloseUpSuggestionAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCloseUpSuggestionButton:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;->getState()Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;->ZOOM_STATE_2X:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCloseUpSuggestionButton:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;

    sget-object v2, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;->ZOOM_STATE_1X:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;->setState(Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    const/16 v2, 0x64

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->hideCloseUpSuggestionButton()V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->unregisterTouchEvSliderVisibilityChangedListener(Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController$TouchEvSliderVisibilityChangedListener;)V

    sget-boolean v1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_CLOSE_UP_SUGGESTION:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->unregisterQuickSettingToastVisibilityChangedListener(Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController$QuickSettingToastVisibilityChangedListener;)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDetectedSceneEvent(I)V

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsCompositionGuideEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCompositionGuide:Lcom/sec/android/app/camera/widget/gl/CompositionGuide;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/CompositionGuide;->hide()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setCompositionGuideEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$CompositionGuideEventCallback;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterPreviewLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$PreviewLayoutChangedListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->COMPOSITION_GUIDE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v1, v3, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_4
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSceneDetectionEnabled:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSceneDetectionLiteEnabled:Z

    if-eqz v1, :cond_7

    :cond_5
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSceneDetectionEnabled:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSceneDetectionLiteEnabled:Z

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneIndex:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCurrentSceneEvent:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCurrentSceneInfo:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mPreviousSceneInfo:I

    sget-boolean v1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_ADDITIONAL_EFFECTS_WITH_SCENE_DETECTION:Z

    if-eqz v1, :cond_6

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->turnOffSceneDetectEffect(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSmartScan:Lcom/sec/android/app/camera/widget/gl/SmartScan;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/SmartScan;->setSmartScanButtonClickListener(Lcom/sec/android/app/camera/widget/gl/SmartScan$SmartScanButtonClickListener;)V

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->unregisterPopupVisibilityChangedListener(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupVisibilityChangedListener;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->hideNightModeSuggestionGuide(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneDetectView:Lcom/sec/android/app/camera/widget/gl/SceneDetectView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/SceneDetectView;->cancelRunningAnimation()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mShowSceneOptimizerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneDetectView:Lcom/sec/android/app/camera/widget/gl/SceneDetectView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/SceneDetectView;->hide()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneDetectView:Lcom/sec/android/app/camera/widget/gl/SceneDetectView;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/SceneDetectView;->setSceneDetectButtonClickListener(Lcom/sec/android/app/camera/widget/gl/SceneDetectView$SceneDetectButtonClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneOptimizerToast:Lcom/sec/android/app/camera/widget/gl/SceneOptimizerToast;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/SceneOptimizerToast;->hide()V

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SCENE_OPTIMIZER_ENABLED:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v1, v3, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v1, v3, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v1, v3, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SCENE_OPTIMIZER_ENABLED:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v1, v3, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterDimChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$DimChangedListener;)V

    sget-boolean v1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BODY_BEAUTY:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v1, v3, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_8
    sget-boolean v1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_ZOOM:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->setZoomChangeGroupOpenStateListener(Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomChangeGroupOpenStateListener;)V

    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setHelpViewHideListener(Lcom/sec/android/app/camera/interfaces/BaseMenuController$HelpViewHideListener;)V

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsTouchEVSliderShowing:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsQuickSettingToastShowing:Z

    return-void
.end method

.method private turnOffSceneDetectEffect(Z)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_ADDITIONAL_EFFECTS_WITH_SCENE_DETECTION:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;->MODE_NONE:Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setLabsCaptureMode(Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setSmartScanCorner([F)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->hideUltraWideRecommendGuide(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_ZOOM_WIDE:Lcom/sec/android/app/camera/interfaces/CommandId;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->setOverlayView(Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/samsung/android/glview/GLView;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mUltraWideFocusImage:Lcom/samsung/android/glview/GLImage;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSmartScan:Lcom/sec/android/app/camera/widget/gl/SmartScan;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/SmartScan;->hide()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_DOCUMENT_SCAN:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public synthetic lambda$makeNightShutter$11$Photo$IntelligentManager()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->hideNightShutter()V

    return-void
.end method

.method public synthetic lambda$makeNightShutter$12$Photo$IntelligentManager()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    return-void
.end method

.method public synthetic lambda$new$0$Photo$IntelligentManager()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->isSceneOptimizerShowRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneDetectView:Lcom/sec/android/app/camera/widget/gl/SceneDetectView;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/SceneDetectView;->show(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$1$Photo$IntelligentManager()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneOptimizerToast:Lcom/sec/android/app/camera/widget/gl/SceneOptimizerToast;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/SceneOptimizerToast;->hide()V

    return-void
.end method

.method public synthetic lambda$new$2$Photo$IntelligentManager()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->hideUltraWideRecommendGuide(Z)V

    return-void
.end method

.method public synthetic lambda$new$3$Photo$IntelligentManager()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->hideNightModeSuggestionGuide(Z)V

    const-string p0, "2094"

    const-string v0, "Dismiss"

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$new$4$Photo$IntelligentManager()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsCurrentShortDistance:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCloseUpSuggestionButton:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;->getState()Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;->ZOOM_STATE_2X:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsQuickSettingToastShowing:Z

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_DISTANCE_WARNING:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showCloseUpSuggestionButton()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCloseUpSuggestionButton:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;->getState()Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;->ZOOM_STATE_2X:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_DISTANCE_WARNING:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->hideCloseUpSuggestionButton()V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic lambda$onCompositionGuideEvent$5$Photo$IntelligentManager(Lcom/samsung/android/camera/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;)V
    .locals 4
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->isCompositionGuideAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCompositionGuideEvent - MoveX ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/camera/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;->moveX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] MoveY ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/camera/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;->moveY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] CGInfo.status ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/camera/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] CGInfo.angle ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/camera/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;->angle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Photo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Lcom/samsung/android/camera/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;->moveX:F

    iget v2, p1, Lcom/samsung/android/camera/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;->moveY:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCompositionGuide:Lcom/sec/android/app/camera/widget/gl/CompositionGuide;

    iget v2, p1, Lcom/samsung/android/camera/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;->angle:F

    iget p1, p1, Lcom/samsung/android/camera/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;->status:I

    invoke-static {p1}, Lcom/sec/android/app/camera/util/IntelligentUtil;->convertToCompositionGuideStatus(I)I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v3

    invoke-interface {p0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getPreviewDisplayMatrix(I)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v1, v0, v2, p1, p0}, Lcom/sec/android/app/camera/widget/gl/CompositionGuide;->update(Landroid/graphics/PointF;FILandroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onDistanceMeasureResult$6$Photo$IntelligentManager(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDistanceResult :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Photo"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsCurrentShortDistance:Z

    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsCurrentShortDistance:Z

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mUpdateDistanceMeasureGuideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mUpdateDistanceMeasureGuideRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$onIntelligentEvent$7$Photo$IntelligentManager(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->isBeautyLevelEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Photo"

    const-string p1, "onIntelligentEvent[BLURRED_FACE] : Return, because smart beauty or skin tone is on."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/camera/util/IntelligentUtil;->getIntelligentTipsId(I)Lcom/sec/android/app/camera/interfaces/PopupLayoutController$IntelligentTipsId;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showIntelligentGuideTips(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$IntelligentTipsId;)V

    return-void
.end method

.method public synthetic lambda$onSceneDetectionEvent$8$Photo$IntelligentManager([JI)V
    .locals 5
    .param p1    # [J
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSceneOptimizerEnabled()I

    move-result v0

    if-nez v0, :cond_2

    sget-boolean p2, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SCENE_DETECTION_LITE:Z

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    :cond_1
    return-void

    :cond_2
    invoke-static {p2}, Lcom/sec/android/app/camera/util/IntelligentUtil;->convertToDetectedSceneEvent(I)I

    move-result p2

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_INTELLIGENT_RECOGNITION_TIPS_MANUAL_SCENE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSceneOptimizerManualScene()I

    move-result v0

    if-eqz v0, :cond_4

    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCurrentSceneEvent:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSceneOptimizerManualScene()I

    move-result v0

    if-ne p2, v0, :cond_3

    return-void

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p2

    invoke-interface {p2, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDetectedSceneEvent(I)V

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSceneOptimizerManualScene()I

    move-result p2

    int-to-long v3, p2

    aput-wide v3, p1, v2

    :cond_4
    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCurrentSceneEvent:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCurrentSceneInfo:I

    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->decideDetectedScene(II)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSceneDetectionEvent : sceneEvent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCurrentSceneEvent:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", sceneInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCurrentSceneInfo:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", detectedScene="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", sceneDetectionInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Photo"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/sec/android/app/camera/util/IntelligentUtil;->checkSceneDetectIconDisplayByTime(I)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "onSceneDetectionEvent : not available scene type"

    invoke-static {v4, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :cond_5
    const/4 p2, -0x1

    if-eq v0, p2, :cond_e

    if-eqz v0, :cond_c

    const/16 p2, 0xe

    if-eq v0, p2, :cond_b

    const/16 p2, 0x27

    if-eq v0, p2, :cond_a

    const/16 p2, 0x28

    if-eq v0, p2, :cond_a

    const/16 p2, 0x2c

    packed-switch v0, :pswitch_data_0

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeMessages(I)V

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result p2

    if-eq p2, v0, :cond_f

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDetectedSceneEvent(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showSceneDetectionView()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->applySceneDetectEffect(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeMessages(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result p1

    if-eq p1, v0, :cond_f

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDetectedSceneEvent(I)V

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mPreviousSceneInfo:I

    if-eq p1, p2, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showSceneDetectionView()V

    :cond_6
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->applySceneDetectEffect(I)V

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeMessages(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result p1

    if-eq p1, v0, :cond_f

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDetectedSceneEvent(I)V

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_ADDITIONAL_EFFECTS_WITH_SCENE_DETECTION:Z

    if-eqz p1, :cond_7

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->turnOffSceneDetectEffect(Z)V

    :cond_7
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_PHOTO_NIGHT:Z

    if-eqz p1, :cond_8

    if-ne v0, p2, :cond_9

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mPreviousSceneInfo:I

    const/16 p2, 0x2b

    if-eq p1, p2, :cond_9

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showSceneDetectionView()V

    goto :goto_0

    :cond_8
    const/16 p1, 0x2a

    if-ne v0, p1, :cond_9

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showSceneDetectionView()V

    :cond_9
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showNightModeSuggestionGuidePopup()V

    goto/16 :goto_1

    :cond_a
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeMessages(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result p1

    if-eq p1, v0, :cond_f

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDetectedSceneEvent(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showSceneDetectionView()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->applySceneDetectEffect(I)V

    goto/16 :goto_1

    :cond_b
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeMessages(I)V

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result p2

    if-eq p2, v0, :cond_f

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDetectedSceneEvent(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    goto :goto_1

    :cond_c
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeMessages(I)V

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result p2

    if-eq p2, v0, :cond_d

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDetectedSceneEvent(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showSceneDetectionView()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->applySceneDetectEffect(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    goto :goto_1

    :cond_d
    sget-boolean p2, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SCENE_DETECTION_LITE:Z

    if-eqz p2, :cond_f

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setDetectedSceneInfo([J)V

    goto :goto_1

    :cond_e
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object p0

    const-wide/16 p1, 0x9c4

    invoke-virtual {p0, v2, p1, p2}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_f
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic lambda$onSceneDetectionInfo$9$Photo$IntelligentManager(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->handleSceneDetectionInfo(I)V

    return-void
.end method

.method public synthetic lambda$onSmartScanResult$10$Photo$IntelligentManager(Z[F)V
    .locals 4
    .param p2    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6500(Lcom/sec/android/app/camera/shootingmode/Photo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$5900(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->access$4400(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->isSmartScan()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSceneOptimizerEnabled()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSmartScan:Lcom/sec/android/app/camera/widget/gl/SmartScan;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/SmartScan;->isVisible()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object p1

    const v2, 0x7f110266

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1, v0}, Lcom/samsung/android/glview/GLContext;->speakTts(Ljava/lang/String;IZ)V

    const-string p1, "0136"

    invoke-static {p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSmartScan:Lcom/sec/android/app/camera/widget/gl/SmartScan;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getPreviewDisplayMatrix(I)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p1, v1, p2, v2, v0}, Lcom/sec/android/app/camera/widget/gl/SmartScan;->update(I[FLandroid/graphics/Matrix;Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_DOCUMENT_SCAN:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_DOCUMENT_SCAN:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_DOCUMENT_SCAN:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->setSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;I)V

    :cond_3
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSmartScanResult:[F

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSmartScan:Lcom/sec/android/app/camera/widget/gl/SmartScan;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/SmartScan;->hide()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p1

    const/4 p2, 0x7

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/interfaces/Engine;->setSmartScanCorner([F)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSmartScanResult:[F

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([FF)V

    :cond_5
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public onBrightnessValueChanged(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mBrightnessValue:I

    return-void
.end method

.method public onCameraSettingChanged(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;I)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-ne p2, v1, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SHOT_SUGGESTION_GUIDE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const/4 p2, -0x1

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->setSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;I)V

    goto :goto_0

    :pswitch_1
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSceneDetectionEnabled:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSceneDetectionLiteEnabled:Z

    if-eqz p1, :cond_2

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSceneOptimizerEnabled()I

    move-result p1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->enableSceneDetection(Z)V

    :cond_2
    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    const/16 p1, 0x64

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    goto :goto_0

    :pswitch_2
    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSceneOptimizerEnabled()I

    move-result p1

    if-ne p1, v1, :cond_3

    move v0, v1

    :cond_3
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->enableSceneDetection(Z)V

    goto :goto_0

    :pswitch_3
    if-nez p2, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSceneOptimizerEnabled()I

    move-result p1

    if-ne p1, v1, :cond_4

    move v0, v1

    :cond_4
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->enableSceneDetection(Z)V

    goto :goto_0

    :pswitch_4
    if-ne p2, v1, :cond_5

    move v0, v1

    :cond_5
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->enableSceneDetection(Z)V

    :cond_6
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCompositionGuideEvent(Lcom/samsung/android/camera/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;)V
    .locals 2
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$yOIJvYoGGNiyJ6cfBINwKGlbxPg;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$yOIJvYoGGNiyJ6cfBINwKGlbxPg;-><init>(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;Lcom/samsung/android/camera/core2/MakerInterface$CompositionGuideEventCallback$CompositionGuideInfo;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDimChanged(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Z)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SCENE_OPTIMIZER_ENABLED:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    if-ne p1, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDimChanged : value ::  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSceneOptimizerEnabled()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - Dim : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Photo"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSceneOptimizerEnabled()I

    move-result p2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->enableSceneDetection(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showSceneDetectionView()V

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BODY_BEAUTY:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackPhotoBodyBeautyType()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->BACK_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    const/16 p1, 0x200

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    :cond_1
    return-void
.end method

.method public onDistanceMeasureResult(JZ)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$TJek6RtfolS4DTxy7Ua-j8hMNag;

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$TJek6RtfolS4DTxy7Ua-j8hMNag;-><init>(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;Z)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHelpViewHide()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->isSceneOptimizerShowRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneDetectView:Lcom/sec/android/app/camera/widget/gl/SceneDetectView;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/SceneDetectView;->show(I)V

    :cond_0
    return-void
.end method

.method public onIntelligentEvent(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$ufjIfl_9GQoPNseCzoeLYYyDLjI;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$ufjIfl_9GQoPNseCzoeLYYyDLjI;-><init>(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPopupVisibilityChanged(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;Z)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_NIGHT_MODE_SUGGESTION:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    if-ne p1, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPopupVisibilityChanged : visibility = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Photo"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneDetectView:Lcom/sec/android/app/camera/widget/gl/SceneDetectView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/SceneDetectView;->hide()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneDetectView:Lcom/sec/android/app/camera/widget/gl/SceneDetectView;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/gl/SceneDetectView;->show(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPreviewLayoutChanged()V
    .locals 2

    const-string v0, "Photo"

    const-string v1, "onPreviewLayoutChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCompositionGuide:Lcom/sec/android/app/camera/widget/gl/CompositionGuide;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/CompositionGuide;->refreshPosition(I)V

    return-void
.end method

.method public onQuickSettingToastVisibilityChanged(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsQuickSettingToastShowing:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mUpdateDistanceMeasureGuideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_DISTANCE_WARNING:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupVisible(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_DISTANCE_WARNING:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsCurrentShortDistance:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCloseUpSuggestionButton:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;->getState()Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;->ZOOM_STATE_2X:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mUpdateDistanceMeasureGuideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mUpdateDistanceMeasureGuideRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onSceneDetectButtonClicked(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_EFFECTS_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6400(Lcom/sec/android/app/camera/shootingmode/Photo;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setQuickSettingItemHighlight(Lcom/sec/android/app/camera/interfaces/CommandId;Z)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1103f7

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1103f6

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneOptimizerToast:Lcom/sec/android/app/camera/widget/gl/SceneOptimizerToast;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/SceneOptimizerToast;->show(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->hideZoomText()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->startHideSceneOptimizerTimer()V

    return-void
.end method

.method public onSceneDetectionEvent(I[J)V
    .locals 2
    .param p2    # [J
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$OAVl3W4unSIR9Krl1oXPf4V8RGg;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$OAVl3W4unSIR9Krl1oXPf4V8RGg;-><init>(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;[JI)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->post(Ljava/lang/Runnable;)Z

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

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneIndex:I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "Photo"

    const-string p1, "onSceneDetectionInfo - returned because capture is now in progress."

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object p1

    new-instance p3, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$U_9RZrW_D0NhngD1puHx7S6rHaQ;

    invoke-direct {p3, p0, p2}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$U_9RZrW_D0NhngD1puHx7S6rHaQ;-><init>(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;I)V

    invoke-virtual {p1, p3}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSmartScanButtonClicked()V
    .locals 3

    const-string v0, "Photo"

    const-string v1, "onSmartScanButtonClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "onSmartScanButtonClicked : Returned because capture is now in progress."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSmartScanRunning:Z

    if-eqz v1, :cond_1

    const-string p0, "onSmartScanButtonClicked : Returned because smart scan capture is now in progress."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "0134"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSmartScan:Lcom/sec/android/app/camera/widget/gl/SmartScan;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/SmartScan;->hide()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSmartScanRunning:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSmartScanResult:[F

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setSmartScanCorner([F)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->setSmartScanVertex()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x1b

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneOptimizerEffectSALoggingState:I

    return-void
.end method

.method public onSmartScanResult(Z[F)V
    .locals 2
    .param p2    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSmartScanResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Photo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$LnHmJzszUchI3JM3UA4DA_atVlk;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Photo$IntelligentManager$LnHmJzszUchI3JM3UA4DA_atVlk;-><init>(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;Z[F)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvSliderVisibilityChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsTouchEVSliderShowing:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneDetectView:Lcom/sec/android/app/camera/widget/gl/SceneDetectView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/SceneDetectView;->hide()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showSceneDetectionView()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->applySceneDetectEffect(I)V

    :goto_0
    return-void
.end method

.method public onZoomChangeGroupClosed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x100

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSceneDetectionEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->showSceneDetectionView()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->applySceneDetectEffect(I)V

    :cond_0
    return-void
.end method

.method public onZoomChangeGroupOpenPrepared()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_NIGHT_MODE_SUGGESTION:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupVisible(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_NIGHT_MODE_SUGGESTION:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_CLOSE_UP_SUGGESTION:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->hideCloseUpSuggestionButton()V

    :cond_1
    return-void
.end method

.method public onZoomChangeGroupOpened()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x100

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideViewWithAnimation(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mIsSceneDetectionEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mSceneDetectView:Lcom/sec/android/app/camera/widget/gl/SceneDetectView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/SceneDetectView;->hide()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCompositionGuide()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$600(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->mCompositionGuide:Lcom/sec/android/app/camera/widget/gl/CompositionGuide;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Y29Llb2C-qPEnDZ4L7vI4s0ZfTM;

    invoke-direct {v2, v1}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Y29Llb2C-qPEnDZ4L7vI4s0ZfTM;-><init>(Lcom/sec/android/app/camera/widget/gl/CompositionGuide;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$6500(Lcom/sec/android/app/camera/shootingmode/Photo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$5900(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->access$2200(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->this$0:Lcom/sec/android/app/camera/shootingmode/Photo;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->access$5900(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->access$2100(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;)V

    :cond_1
    return-void
.end method
