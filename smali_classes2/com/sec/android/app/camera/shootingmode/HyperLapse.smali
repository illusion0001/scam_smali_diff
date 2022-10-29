.class Lcom/sec/android/app/camera/shootingmode/HyperLapse;
.super Ljava/lang/Object;
.source "HyperLapse.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/RecordingMode;
.implements Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/glview/GLView$KeyListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/HyperLapse$MainHandler;
    }
.end annotation


# static fields
.field private static final BLINK_REC_INDICATOR_INTERVAL:I = 0x1f4

.field private static final CHECK_NIGHT_HELP_GUIDE_TIMER_DELAY:I = 0x7d0

.field private static final GUIDE_TRANSLATE_ANIMATION_DURATION:I = 0x78

.field private static final HIDE_NIGHT_HELP_GUIDE_TIMER_DELAY:I = 0x1770

.field private static final HIDE_NIGHT_HELP_GUIDE_TIME_OUT_MSG:I = 0x2

.field private static final NIGHT_HELP_GUIDE_FOR_IDLE:I = 0x0

.field private static final NIGHT_HELP_GUIDE_RANDOM_FOR_RECORDING:I = 0x2

.field private static final NIGHT_HELP_GUIDE_STARTING_RECORDING:I = 0x1

.field private static final RECORDING_MSG_BLINK_INDICATOR_REC_ICON:I = 0x1

.field private static final START_NIGHT_HELP_GUIDE_TIME_CHECK_MSG:I = 0x3

.field private static final TAG:Ljava/lang/String; = "HyperLapse"


# instance fields
.field private final NIGHT_HELP_DESCRIPTION_BOTTOM_MARGIN:F

.field private final NIGHT_HELP_DESCRIPTION_INSIDE_SIDE_MARGIN:F

.field private final NIGHT_HELP_DESCRIPTION_INSIDE_TOP_BOTTOM_MARGIN:F

.field private final NIGHT_HELP_DESCRIPTION_LANDSCAPE_BOTTOM_MARGIN:F

.field private final NIGHT_HELP_DESCRIPTION_TRANSITION_MARGIN:F

.field private final NIGHT_HELP_TEXT_SIDE_MARGIN:F

.field private final NIGHT_HELP_TEXT_SIZE:F

.field private final QUICK_SETTING_HEIGHT:F

.field private final QUICK_SETTING_Y:F

.field private final RECORDING_REC_ICON_SIZE:F

.field private final RECORDING_REC_TIME_GROUP_HEIGHT:I

.field private final RECORDING_REC_TIME_GROUP_LANDSCAPE_POS_X:I

.field private final RECORDING_REC_TIME_TEXT_HEIGHT:I

.field private final RECORDING_REC_TIME_TEXT_POS_X:I

.field private final RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

.field private final RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

.field private final REC_INDICATOR_TEXT_SIZE:F

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentSuperSteady:I

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private final mHandler:Lcom/sec/android/app/camera/shootingmode/HyperLapse$MainHandler;

.field private mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

.field private mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

.field private mIndicatorSystemTimeText:Lcom/samsung/android/glview/GLText;

.field private mIsFacingSwitchable:Z

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mNightGuideState:I

.field private mNightHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mNightHelpGuideText:Lcom/samsung/android/glview/GLText;

.field private mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

.field private mSystemTime:I

.field private mSystemTimeScheduler:Ljava/util/Timer;

.field private mTextAnimation:Landroid/view/animation/AlphaAnimation;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->SCREEN_HEIGHT:I

    const v0, 0x7f070334

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->NIGHT_HELP_TEXT_SIDE_MARGIN:F

    const v0, 0x7f070124

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->NIGHT_HELP_TEXT_SIZE:F

    const v0, 0x7f070332

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->NIGHT_HELP_DESCRIPTION_BOTTOM_MARGIN:F

    const v0, 0x7f070333

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->NIGHT_HELP_DESCRIPTION_LANDSCAPE_BOTTOM_MARGIN:F

    const v0, 0x7f07011f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->NIGHT_HELP_DESCRIPTION_INSIDE_SIDE_MARGIN:F

    const v0, 0x7f070120

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->NIGHT_HELP_DESCRIPTION_INSIDE_TOP_BOTTOM_MARGIN:F

    const v0, 0x7f070335

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->NIGHT_HELP_DESCRIPTION_TRANSITION_MARGIN:F

    const v0, 0x7f070336

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->REC_INDICATOR_TEXT_SIZE:F

    const v0, 0x7f07012e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    const v0, 0x7f07012f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_TIME_GROUP_LANDSCAPE_POS_X:I

    const v0, 0x7f07035b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_ICON_SIZE:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_ICON_SIZE:F

    const v1, 0x7f07035e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_TIME_TEXT_POS_X:I

    const v0, 0x7f07035d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    const v0, 0x7f0b008e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    const v0, 0x7f060073

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    const v0, 0x7f07031a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->QUICK_SETTING_HEIGHT:F

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getTopBaseLinePositionY()F

    move-result v1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->QUICK_SETTING_Y:F

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse$MainHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse$MainHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/HyperLapse;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mHandler:Lcom/sec/android/app/camera/shootingmode/HyperLapse$MainHandler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mSystemTime:I

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIsFacingSwitchable:Z

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightGuideState:I

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCurrentSuperSteady:I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/HyperLapse;)Lcom/samsung/android/glview/GLViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/HyperLapse;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/HyperLapse;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->showNightHelpGuide(I)V

    return-void
.end method

.method static synthetic access$204(Lcom/sec/android/app/camera/shootingmode/HyperLapse;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mSystemTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mSystemTime:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/HyperLapse;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->updateSystemTimeIndicator(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/HyperLapse;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->startRecIconIndicatorBlinking()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/HyperLapse;)Lcom/sec/android/app/camera/interfaces/RecordingManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/HyperLapse;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->blinkRecIconIndicator(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/HyperLapse;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->hideNightHelpGuide()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/HyperLapse;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightGuideState:I

    return p0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/HyperLapse;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->starNightHelpGuideCheckTimer()V

    return-void
.end method

.method private blinkRecIconIndicator(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mHandler:Lcom/sec/android/app/camera/shootingmode/HyperLapse$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/HyperLapse$MainHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private enableEngineEventListener(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

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

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->setShutterTimerCaptureTriggerListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;)V

    return-void
.end method

.method private handleRecordingStopped()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x108

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIsFacingSwitchable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->STOP:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingRestricted()Z

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1103b1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method private hideNightHelpGuide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->stopNightHelpGuideTimer()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->resetNightGuidePosition()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->stopNightHelpGuideCheckTimer()V

    :goto_0
    return-void
.end method

.method private isNightHyperlapseOn()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHyperLapseNight()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isStopRecordingAvailable()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mSystemTime:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$startNightHelpGuideAnimation$0(Lcom/samsung/android/glview/GLView;FFFFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    sub-float/2addr p2, p1

    mul-float/2addr p2, p5

    add-float/2addr p1, p2

    sub-float/2addr p4, p3

    mul-float/2addr p4, p5

    add-float/2addr p3, p4

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FF)V

    return-void
.end method

.method private makeNightHelpGuide(Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 10

    const v0, 0x7f1102d4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v6, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v6, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const v1, 0x7f080b7b

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setNinePatchBackground(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->NIGHT_HELP_DESCRIPTION_INSIDE_SIDE_MARGIN:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->NIGHT_HELP_DESCRIPTION_INSIDE_TOP_BOTTOM_MARGIN:F

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->NIGHT_HELP_TEXT_SIZE:F

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setFontSize(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideText:Lcom/samsung/android/glview/GLText;

    const v1, 0x7f0b005e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x7f060073

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v9, v1, v2}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private moveNightHelpGuideForRecording()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_4x3:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getPreviewTop(Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->NIGHT_HELP_DESCRIPTION_TRANSITION_MARGIN:F

    goto :goto_0

    :cond_1
    add-float/2addr v1, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-direct {p0, v2, v0, v1}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->startNightHelpGuideAnimation(Lcom/samsung/android/glview/GLView;FF)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    :goto_1
    return-void
.end method

.method private resetNightGuidePosition()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->startNightHelpGuideAnimation(Lcom/samsung/android/glview/GLView;FF)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->resetTranslate()V

    :goto_0
    return-void
.end method

.method private restartNightHelpGuideTimer()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mHandler:Lcom/sec/android/app/camera/shootingmode/HyperLapse$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/HyperLapse$MainHandler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mHandler:Lcom/sec/android/app/camera/shootingmode/HyperLapse$MainHandler;

    const-wide/16 v2, 0x1770

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/HyperLapse$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private showNightHelpGuide(I)V
    .locals 2

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightGuideState:I

    const v0, 0x7f1102d4

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f1102d5

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->updateNightHelpGuideToast(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->moveNightHelpGuideForRecording()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->updateNightHelpGuideToast(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->moveNightHelpGuideForRecording()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->updateNightHelpGuideToast(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->restartNightHelpGuideTimer()V

    return-void
.end method

.method private showRecordingTimeIndicator()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/camera/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorSystemTimeText:Lcom/samsung/android/glview/GLText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->LOW_PERFORMANCE_RECORDING_VI:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->startRecordingTimeIndicatorShowAnimation(Lcom/samsung/android/glview/GLViewGroup;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private starNightHelpGuideCheckTimer()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mHandler:Lcom/sec/android/app/camera/shootingmode/HyperLapse$MainHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/HyperLapse$MainHandler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mHandler:Lcom/sec/android/app/camera/shootingmode/HyperLapse$MainHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/HyperLapse$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startNightHelpGuideAnimation(Lcom/samsung/android/glview/GLView;FF)V
    .locals 7

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTranslateX()F

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTranslateY()F

    move-result v4

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    const-wide/16 v0, 0x78

    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/samsung/android/view/animation/SineInOut70;

    invoke-direct {v0}, Lcom/samsung/android/view/animation/SineInOut70;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/app/camera/shootingmode/HyperLapse$1;-><init>(Lcom/sec/android/app/camera/shootingmode/HyperLapse;Lcom/samsung/android/glview/GLView;FF)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p0, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$HyperLapse$lEANspcLCgFryQ6GeCetqoM_g8Y;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$HyperLapse$lEANspcLCgFryQ6GeCetqoM_g8Y;-><init>(Lcom/samsung/android/glview/GLView;FFFF)V

    invoke-virtual {v6, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startRecIconIndicatorBlinking()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->blinkRecIconIndicator(Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mHandler:Lcom/sec/android/app/camera/shootingmode/HyperLapse$MainHandler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/HyperLapse$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startRecordingTimeIndicatorShowAnimation(Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mTextAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, p0}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    return-void
.end method

.method private startSystemTimeTick()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSystemTimeTick : elapsedTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mSystemTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HyperLapse"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mSystemTimeScheduler:Ljava/util/Timer;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mSystemTimeScheduler:Ljava/util/Timer;

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/HyperLapse$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse$2;-><init>(Lcom/sec/android/app/camera/shootingmode/HyperLapse;)V

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private stopNightHelpGuideCheckTimer()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mHandler:Lcom/sec/android/app/camera/shootingmode/HyperLapse$MainHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse$MainHandler;->removeMessages(I)V

    return-void
.end method

.method private stopNightHelpGuideTimer()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mHandler:Lcom/sec/android/app/camera/shootingmode/HyperLapse$MainHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse$MainHandler;->removeMessages(I)V

    return-void
.end method

.method private updateNightHelpGuideToast(I)V
    .locals 14

    invoke-static {p1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->NIGHT_HELP_TEXT_SIDE_MARGIN:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->NIGHT_HELP_DESCRIPTION_INSIDE_SIDE_MARGIN:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->NIGHT_HELP_TEXT_SIZE:F

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v3

    mul-float/2addr v1, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v1

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->NIGHT_HELP_TEXT_SIZE:F

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v0, p1, v3, v4}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v3

    int-to-float v3, v3

    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    if-eqz v5, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    array-length v9, v4

    move v10, v5

    move v5, v6

    :goto_0
    if-ge v5, v9, :cond_2

    aget-object v11, v4, v5

    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->NIGHT_HELP_TEXT_SIZE:F

    iget-object v13, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v13}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v13

    mul-float/2addr v12, v13

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-static {v0, v11, v12, v13}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v12

    if-le v12, v8, :cond_0

    goto :goto_1

    :cond_0
    iget v12, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->NIGHT_HELP_TEXT_SIZE:F

    iget-object v13, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v13}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v13

    mul-float/2addr v12, v13

    invoke-static {v11, v12}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v12

    cmpl-float v12, v12, v10

    if-lez v12, :cond_1

    iget v10, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->NIGHT_HELP_TEXT_SIZE:F

    iget-object v12, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v12}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v12

    mul-float/2addr v10, v12

    invoke-static {v11, v10}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v10

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v0, v10

    goto :goto_1

    :cond_3
    cmpl-float v0, v3, v7

    if-lez v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->NIGHT_HELP_TEXT_SIDE_MARGIN:F

    mul-float/2addr v4, v2

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->NIGHT_HELP_DESCRIPTION_INSIDE_SIDE_MARGIN:F

    mul-float/2addr v4, v2

    sub-float/2addr v0, v4

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->NIGHT_HELP_TEXT_SIZE:F

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v4

    mul-float/2addr v0, v4

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {p1, v0, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v0

    :goto_1
    mul-float/2addr v1, v3

    const v4, 0x7f0700b9

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v7

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->NIGHT_HELP_DESCRIPTION_INSIDE_SIDE_MARGIN:F

    mul-float/2addr v3, v2

    add-float/2addr v3, v0

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->NIGHT_HELP_DESCRIPTION_INSIDE_TOP_BOTTOM_MARGIN:F

    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->SCREEN_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v5, v3

    div-float/2addr v5, v2

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v7

    sub-float/2addr v7, v4

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->NIGHT_HELP_DESCRIPTION_BOTTOM_MARGIN:F

    sub-float/2addr v7, v9

    sget-object v9, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_4x3:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v9}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getPreviewTop(Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;)I

    move-result v9

    int-to-float v9, v9

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v10

    iget-object v11, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v11, v0, v1}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1, v6, v5, v7}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->NIGHT_HELP_DESCRIPTION_LANDSCAPE_BOTTOM_MARGIN:F

    sub-float v1, v10, v9

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    sub-float/2addr v10, v1

    invoke-virtual {p1, v8, v0, v10}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v0, 0x3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->NIGHT_HELP_DESCRIPTION_LANDSCAPE_BOTTOM_MARGIN:F

    add-float/2addr v2, v4

    add-float/2addr v9, v1

    invoke-virtual {p1, v0, v2, v9}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout()V

    return-void
.end method

.method private updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRecordingLayout : cmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HyperLapse"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingCommand:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0xc

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x4

    if-eq p1, v4, :cond_1

    if-eq p1, v1, :cond_1

    if-eq p1, v6, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingRestricted()Z

    move-result v0

    invoke-interface {p1, v3, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p1, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p1, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorSystemTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x10

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startRecordingToShootingModeAnimation(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->showBackButton()V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->resetBottomBackground()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    goto/16 :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->isNightHyperlapseOn()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->showNightHelpGuide(I)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v4, -0xe2

    invoke-interface {p1, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShootingModeToRecordingAnimation(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    const/16 v4, 0x8

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperVideoStabilization()I

    move-result p1

    if-eq p1, v3, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->isNightHyperlapseOn()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    goto :goto_1

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->REC_INDICATOR_TEXT_SIZE:F

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v4

    mul-float/2addr p1, v4

    invoke-static {p1}, Lcom/sec/android/app/camera/util/RecordingUtil;->getHMSFormatStringWidth(F)F

    move-result p1

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->REC_INDICATOR_TEXT_SIZE:F

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v5

    mul-float/2addr v4, v5

    const-string v5, " ()"

    invoke-static {v5, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v4

    add-float/2addr v4, p1

    add-float/2addr p1, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, p1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->SCREEN_WIDTH:I

    int-to-float v7, v7

    sub-float/2addr v7, p1

    div-float/2addr v7, v6

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_ICON_SIZE:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->QUICK_SETTING_Y:F

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->QUICK_SETTING_HEIGHT:F

    sub-float/2addr v9, v10

    div-float/2addr v9, v6

    sub-float/2addr v8, v9

    invoke-virtual {v5, v2, v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_TIME_GROUP_LANDSCAPE_POS_X:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_ICON_SIZE:F

    add-float/2addr v6, v4

    add-float/2addr v6, p1

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_TIME_GROUP_LANDSCAPE_POS_X:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_ICON_SIZE:F

    sub-float/2addr v4, v3

    invoke-virtual {p1, v1, v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideBackButton()V

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->setBottomBackgroundHeight(F)V

    :goto_2
    return-void
.end method

.method private updateRecordingTimeIndicator(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    long-to-int p1, p1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {p1}, Lcom/sec/android/app/camera/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private updateSystemTimeIndicator(I)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorSystemTimeText:Lcom/samsung/android/glview/GLText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/android/app/camera/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancelRecording()V
    .locals 3

    const-string v0, "HyperLapse"

    const-string v1, "cancelRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v1, v2, :cond_0

    const-string p0, "cancelRecording : Returned because recording is already stopping"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->CANCEL:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mSystemTimeScheduler:Ljava/util/Timer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mSystemTimeScheduler:Ljava/util/Timer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mSystemTime:I

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->hideNightHelpGuide()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->resetAfTrigger()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

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

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->register(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshMainButton(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1103b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;->setTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->RECORDING_MOTION_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {p1, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SUPER_VIDEO_STABILIZATION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {p1, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->HYPER_LAPSE_NIGHT:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {p1, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_0
    const/16 p1, 0xc

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isSupported(IZ)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {p1, v2}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isSupported(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIsFacingSwitchable:Z

    sget-object p1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->enableEngineEventListener(Z)V

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mNightGuideState:I

    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHyperLapseNight()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
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

    const-string v1, "HyperLapse"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->showNightHelpGuide(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    const/16 p1, 0x64

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->setRecordingMotionSpeed(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->hideNightHelpGuide()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRecordingMotionSpeed()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->setRecordingMotionSpeed(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCurrentSuperSteady:I

    if-eq p1, p2, :cond_5

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCurrentSuperSteady:I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->handleCamcorderSettingChanged()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHyperLapseNight()I

    move-result p1

    if-ne p1, v0, :cond_4

    return-void

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0, p2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->setRecordingMotionSpeed(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onCancelRecordingRequested()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->cancelRecording()V

    return-void
.end method

.method public onCaptureEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;)V
    .locals 0

    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isDimmed(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->isStopRecordingAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->stopRecording()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByRecordingTime(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0203"

    invoke-static {p1, v1, v2, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;JLjava/lang/String;)V

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onConnectMakerPrepared(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperVideoStabilization()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCurrentSuperSteady:I

    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v2

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->REC_INDICATOR_TEXT_SIZE:F

    mul-float/2addr v3, v2

    invoke-static {v3}, Lcom/sec/android/app/camera/util/RecordingUtil;->getHMSFormatStringWidth(F)F

    move-result v3

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->REC_INDICATOR_TEXT_SIZE:F

    mul-float/2addr v4, v2

    const-string v5, " ()"

    invoke-static {v5, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v4

    add-float v12, v3, v4

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_ICON_SIZE:F

    add-float/2addr v4, v3

    add-float v9, v4, v12

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v13, v4, v2

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    int-to-float v5, v4

    sub-float/2addr v5, v13

    const/high16 v11, 0x40000000    # 2.0f

    div-float v14, v5, v11

    new-instance v15, Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v10, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v15

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v15, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_TIME_GROUP_HEIGHT:I

    int-to-float v4, v4

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_ICON_SIZE:F

    sub-float/2addr v4, v6

    div-float/2addr v4, v11

    new-instance v6, Lcom/samsung/android/glview/GLImage;

    const v8, 0x7f080793

    move-object/from16 v11, p1

    invoke-direct {v6, v11, v7, v4, v8}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v6, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v9, Lcom/samsung/android/glview/GLText;

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_TIME_TEXT_POS_X:I

    int-to-float v4, v4

    add-float v6, v4, v12

    invoke-static {v10}, Lcom/sec/android/app/camera/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v16

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->REC_INDICATOR_TEXT_SIZE:F

    mul-float v17, v4, v2

    move-object v4, v9

    move-object/from16 v5, p1

    move v7, v14

    move v8, v3

    move-object v15, v9

    move v9, v13

    move/from16 p4, v10

    move-object/from16 v10, v16

    move/from16 v11, v17

    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    iput-object v15, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    goto :goto_0

    :cond_0
    move/from16 p4, v10

    new-instance v15, Lcom/samsung/android/glview/GLText;

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_TIME_TEXT_POS_X:I

    int-to-float v6, v4

    invoke-static/range {p4 .. p4}, Lcom/sec/android/app/camera/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v10

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->REC_INDICATOR_TEXT_SIZE:F

    mul-float v11, v4, v2

    move-object v4, v15

    move-object/from16 v5, p1

    move v7, v14

    move v8, v3

    move v9, v13

    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    iput-object v15, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    :goto_0
    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v15, 0x2

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v15}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v6, v6

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    move/from16 v11, p4

    invoke-virtual {v4, v11}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v3, Lcom/samsung/android/glview/GLText;

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_TIME_TEXT_POS_X:I

    int-to-float v7, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lcom/sec/android/app/camera/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->REC_INDICATOR_TEXT_SIZE:F

    mul-float/2addr v2, v5

    move-object v5, v3

    move-object/from16 v6, p1

    move v8, v14

    move v9, v12

    move v10, v13

    move v13, v11

    move-object v11, v4

    move v12, v2

    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    iput-object v3, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorSystemTimeText:Lcom/samsung/android/glview/GLText;

    move v4, v13

    goto :goto_1

    :cond_1
    move v4, v11

    new-instance v11, Lcom/samsung/android/glview/GLText;

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_TIME_TEXT_POS_X:I

    int-to-float v5, v5

    add-float v7, v5, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/android/app/camera/util/RecordingUtil;->convertToHMSFormat(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->REC_INDICATOR_TEXT_SIZE:F

    mul-float/2addr v2, v5

    move-object v5, v11

    move-object/from16 v6, p1

    move v8, v14

    move v9, v12

    move v10, v13

    move-object v13, v11

    move-object v11, v3

    move v12, v2

    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    iput-object v13, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorSystemTimeText:Lcom/samsung/android/glview/GLText;

    :goto_1
    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorSystemTimeText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorSystemTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v15}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorSystemTimeText:Lcom/samsung/android/glview/GLText;

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v5, v5

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->RECORDING_REC_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorSystemTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorSystemTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->makeNightHelpGuide(Lcom/samsung/android/glview/GLViewGroup;)V

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

.method public onInactivate()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->resetCenterView()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->isStopRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->stopRecording()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->cancelRecording()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->handleRecordingStopped()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->unregister()V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->enableEngineEventListener(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->RECORDING_MOTION_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SUPER_VIDEO_STABILIZATION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->HYPER_LAPSE_NIGHT:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mHandler:Lcom/sec/android/app/camera/shootingmode/HyperLapse$MainHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/HyperLapse$MainHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->hideNightHelpGuide()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    const-string p0, "HyperLapse"

    const-string p1, "Recording control is not available at this moment, ignore key down event"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

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
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

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

.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result p2

    const/4 v0, 0x1

    const-string v1, "HyperLapse"

    if-nez p2, :cond_0

    const-string p0, "Recording control is not available at this moment, ignore key up event"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 p2, 0x4

    const-string v2, "onKeyUp : keyCode - "

    const/4 v3, 0x0

    if-eq p1, p2, :cond_2

    const/16 p2, 0x17

    if-eq p1, p2, :cond_1

    const/16 p2, 0x1b

    if-eq p1, p2, :cond_1

    const/16 p2, 0x42

    if-eq p1, p2, :cond_1

    const/16 p2, 0x82

    if-eq p1, p2, :cond_2

    return v3

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->isStopRecordingAvailable()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->stopRecording()V

    :cond_3
    return v0

    :cond_4
    return v3
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "HyperLapse"

    const-string p1, "Recording control is not available at this moment, ignore key up event"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 v1, 0x17

    if-eq p2, v1, :cond_2

    const/16 v1, 0x42

    if-eq p2, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result p1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p1, p2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->startRecording()V

    return v0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->isStopRecordingAvailable()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->stopRecording()V

    return v0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPictureSaved()V
    .locals 0

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

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isDimmed(I)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isAnimationFinished(I)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->startRecording()V

    return v0
.end method

.method public onRecordingEvent(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->handleRecordingStopped()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->prepareVideoRecording()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-ne p0, v1, :cond_2

    const-string p0, "151"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "153"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, 0x100

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIsFacingSwitchable:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRecordingMotionSpeed()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1503"

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHyperLapseNight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "1508"

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRecordingMotionSpeed()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "1505"

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onRecordingMaxDurationReached()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f11050e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->onStopRecordingRequested()V

    return-void
.end method

.method public onRecordingMaxFileSizeReached()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f11050d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->isStopRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->stopRecording()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->cancelRecording()V

    :goto_0
    return-void
.end method

.method public onRecordingRestricted(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->onStopRecordingRequested()V

    :cond_0
    return-void
.end method

.method public onRecordingTick(JJ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordingTick : elapsedTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fileSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "HyperLapse"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-nez p3, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->showRecordingTimeIndicator()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->startSystemTimeTick()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->updateRecordingTimeIndicator(J)V

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
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterTimerCaptureTriggered()V
    .locals 2

    const-string v0, "HyperLapse"

    const-string v1, "onShutterTimerCaptureTriggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->startRecording()V

    return-void
.end method

.method public onShutterTimerEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/HyperLapse$3;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

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
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 p1, 0x70

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->setTimerCountingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 p1, 0x100

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStartPreviewPrepared(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V
    .locals 0

    sget-object p2, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_RECORDING_MOTION_SPEED_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRecordingMotionSpeed()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/MakerParameter;->getRecordingMotionSpeed(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_METERING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 p2, 0x1

    invoke-static {p2}, Lcom/sec/android/app/camera/util/MakerParameter;->getExposureMetering(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public onStopRecordingRequested()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->isStopRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->stopRecording()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->cancelRecording()V

    :goto_0
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isDimmed(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/16 v2, 0x82

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    return v0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleKeyCancelled(I)V

    return v1

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0, v2, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    return v1

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0, v2, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return v1

    :cond_5
    return v0
.end method

.method public onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
    .locals 1

    const-string p0, "recording_mode"

    const-string v0, "5"

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onVideoSaved()V
    .locals 0

    return-void
.end method

.method public startRecording()V
    .locals 4

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->START:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->startAfTrigger()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->startVideoRecording()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110479

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->requestFocus(I)V

    :cond_0
    return-void
.end method

.method public stopRecording()V
    .locals 2

    const-string v0, "HyperLapse"

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->updateRecordingTimeIndicator(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mSystemTimeScheduler:Ljava/util/Timer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mSystemTimeScheduler:Ljava/util/Timer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mSystemTime:I

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->hideNightHelpGuide()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->resetAfTrigger()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/HyperLapse;->isNightHyperlapseOn()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->stopVideoRecording(Z)V

    return-void
.end method
