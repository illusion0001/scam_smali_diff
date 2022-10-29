.class Lcom/sec/android/app/camera/shootingmode/ProVideo;
.super Ljava/lang/Object;
.source "ProVideo.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/RecordingMode;
.implements Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;
.implements Lcom/sec/android/app/camera/interfaces/BaseMenuController$MainButtonClickListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;
.implements Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomChangeGroupOpenStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/ProVideo$SensorInfoEventManager;,
        Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;,
        Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;,
        Lcom/sec/android/app/camera/shootingmode/ProVideo$ProColorTuneEventManager;,
        Lcom/sec/android/app/camera/shootingmode/ProVideo$DetailSettingUpdater;
    }
.end annotation


# static fields
.field private static final AUTO_MODE:I = 0x1

.field private static final ISO_VALUE_OFFSET:I

.field private static final MANUAL_FOCUS_ZOOM_STEP:I = 0x190

.field private static final MANUAL_MODE:I = 0x0

.field private static final PRO_ITEM_ID_COLOR_TUNE:I = 0x2

.field private static final PRO_ITEM_ID_EV:I = 0x5

.field private static final PRO_ITEM_ID_ISO:I = 0x0

.field private static final PRO_ITEM_ID_MF:I = 0x3

.field private static final PRO_ITEM_ID_SHUTTER_SPEED:I = 0x1

.field private static final PRO_ITEM_ID_WB:I = 0x4

.field private static final PRO_ITEM_NUM:I = 0x6

.field private static final SHUTTER_SPEED_VALUE_OFFSET:I

.field private static final TAG:Ljava/lang/String; = "ProVideo"

.field private static final mColorTunePrefMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final PRO_ITEM_GROUP_HEIGHT:I

.field private final PRO_ITEM_SIDE_MARGIN:I

.field private final PRO_ITEM_SIZE:I

.field private final PRO_ITEM_TEXT_COLOR:I

.field private final PRO_ITEM_TEXT_EV_LIMIT_COLOR:I

.field private final PRO_ITEM_TOP_MARGIN:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private final mColorTuneEventManager:Lcom/sec/android/app/camera/shootingmode/ProVideo$ProColorTuneEventManager;

.field private mColorTuneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;",
            ">;"
        }
    .end annotation
.end field

.field private mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

.field private mCurrentResolution:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mEvState:I

.field private mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mExposureValueSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

.field private final mHandler:Landroid/os/Handler;

.field private mIsBaseMenuMovedDown:Z

.field private mIsMultiAfEnabled:Z

.field private mIsShownTemperatureWarning:Z

.field private mIsoButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mIsoSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

.field private mLastNearestColorTemperature:I

.field private mLastNearestIso:I

.field private mLastNearestShutterSpeed:I

.field private mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mManualFocusSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private final mProDetailSettingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;",
            "Lcom/sec/android/app/camera/shootingmode/ProVideo$DetailSettingUpdater;",
            ">;"
        }
    .end annotation
.end field

.field private final mProItemSelectListener:Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;

.field private final mProSliderEventManager:Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;

.field private mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mProgressBar:Lcom/sec/android/app/camera/widget/gl/RecordingProgressBar;

.field private final mReconnectMakerRunnable:Ljava/lang/Runnable;

.field private mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

.field private mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

.field private mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mSelectedSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

.field private final mSensorInfoEventManager:Lcom/sec/android/app/camera/shootingmode/ProVideo$SensorInfoEventManager;

.field private mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mShutterSpeedSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

.field private mVideoColorTune:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mWBButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mWBSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/ProVideo$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTunePrefMap:Ljava/util/Map;

    const v0, 0x7f0b008c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->SHUTTER_SPEED_VALUE_OFFSET:I

    const v0, 0x7f0b0089

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->ISO_VALUE_OFFSET:I

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->SCREEN_HEIGHT:I

    const v0, 0x7f0702d3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->PRO_ITEM_GROUP_HEIGHT:I

    const v0, 0x7f0702d5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->PRO_ITEM_SIZE:I

    const v0, 0x7f0702db

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->PRO_ITEM_TOP_MARGIN:I

    const v0, 0x7f0702d4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->PRO_ITEM_SIDE_MARGIN:I

    const v0, 0x7f06008d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->PRO_ITEM_TEXT_COLOR:I

    const v0, 0x7f0600ce

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->PRO_ITEM_TEXT_EV_LIMIT_COLOR:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;-><init>(Lcom/sec/android/app/camera/shootingmode/ProVideo;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProItemSelectListener:Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProColorTuneEventManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProColorTuneEventManager;-><init>(Lcom/sec/android/app/camera/shootingmode/ProVideo;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTuneEventManager:Lcom/sec/android/app/camera/shootingmode/ProVideo$ProColorTuneEventManager;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;-><init>(Lcom/sec/android/app/camera/shootingmode/ProVideo;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProSliderEventManager:Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/ProVideo$SensorInfoEventManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo$SensorInfoEventManager;-><init>(Lcom/sec/android/app/camera/shootingmode/ProVideo;Lcom/sec/android/app/camera/shootingmode/ProVideo$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mSensorInfoEventManager:Lcom/sec/android/app/camera/shootingmode/ProVideo$SensorInfoEventManager;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mLastNearestIso:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mLastNearestShutterSpeed:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mLastNearestColorTemperature:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mEvState:I

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsBaseMenuMovedDown:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsMultiAfEnabled:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsShownTemperatureWarning:Z

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCurrentResolution:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mVideoColorTune:I

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$ProVideo$Y762zNn-MhjWm6MKUb82t5V3szk;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$ProVideo$Y762zNn-MhjWm6MKUb82t5V3szk;-><init>(Lcom/sec/android/app/camera/shootingmode/ProVideo;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mReconnectMakerRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/ProVideo$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo$2;-><init>(Lcom/sec/android/app/camera/shootingmode/ProVideo;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProDetailSettingMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/ProVideo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->updateShutterSpeedValue(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/ProVideo;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->startBaseMenuMoveAnimation(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/ProVideo;Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->updateColorTuneMenuBarButtonDim(Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTuneMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->isSliderActive()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/shootingmode/ProVideo;Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->hideSlider(Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/AeAfManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/Engine;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/shootingmode/ProVideo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->showColorTuneSettingMenu(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/camera/shootingmode/ProVideo;Lcom/sec/android/app/camera/widget/gl/ProItem;)Lcom/sec/android/app/camera/widget/gl/ProItem;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/ProVideo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->updateKelvinValue(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProSlider;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mExposureValueSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/shootingmode/ProVideo;Lcom/sec/android/app/camera/widget/gl/ProSlider;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->showSlider(Lcom/sec/android/app/camera/widget/gl/ProSlider;I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProSlider;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsoSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsoButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProSlider;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mManualFocusSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProSlider;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mShutterSpeedSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProSlider;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mWBSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/ProVideo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->updateISOValue(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mWBButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/sec/android/app/camera/shootingmode/ProVideo;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getApertureText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3200(Lcom/sec/android/app/camera/shootingmode/ProVideo;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mLastNearestIso:I

    return p0
.end method

.method static synthetic access$3202(Lcom/sec/android/app/camera/shootingmode/ProVideo;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mLastNearestIso:I

    return p1
.end method

.method static synthetic access$3300(Lcom/sec/android/app/camera/shootingmode/ProVideo;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mLastNearestShutterSpeed:I

    return p0
.end method

.method static synthetic access$3302(Lcom/sec/android/app/camera/shootingmode/ProVideo;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mLastNearestShutterSpeed:I

    return p1
.end method

.method static synthetic access$3400(Lcom/sec/android/app/camera/shootingmode/ProVideo;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mLastNearestColorTemperature:I

    return p0
.end method

.method static synthetic access$3402(Lcom/sec/android/app/camera/shootingmode/ProVideo;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mLastNearestColorTemperature:I

    return p1
.end method

.method static synthetic access$3500(Lcom/sec/android/app/camera/shootingmode/ProVideo;II)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getButtonText(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/widget/gl/ProSlider;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mSelectedSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/sec/android/app/camera/shootingmode/ProVideo;Lcom/sec/android/app/camera/widget/gl/ProSlider;)Lcom/sec/android/app/camera/widget/gl/ProSlider;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mSelectedSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/sec/android/app/camera/shootingmode/ProVideo;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getIsoState()I

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Lcom/sec/android/app/camera/shootingmode/ProVideo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->setIsoState(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/sec/android/app/camera/shootingmode/ProVideo;II)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getButtonTtsString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/ProVideo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->updateFocusLengthValue(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/sec/android/app/camera/shootingmode/ProVideo;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->setShutterPriorityActivate(Z)V

    return-void
.end method

.method static synthetic access$4100(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/sec/android/app/camera/shootingmode/ProVideo;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->findNearestColorTemperature(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lcom/sec/android/app/camera/shootingmode/ProVideo;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->findNearestShutter(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$4400(Lcom/sec/android/app/camera/shootingmode/ProVideo;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mEvState:I

    return p0
.end method

.method static synthetic access$4500(Lcom/sec/android/app/camera/shootingmode/ProVideo;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->PRO_ITEM_TEXT_EV_LIMIT_COLOR:I

    return p0
.end method

.method static synthetic access$4600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->PRO_ITEM_TEXT_COLOR:I

    return p0
.end method

.method static synthetic access$4700(Lcom/sec/android/app/camera/shootingmode/ProVideo;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->findNearestIso(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/ProVideo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->updateExposureValue(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/ProVideo;I)Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/ProVideo;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/ProVideo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->setColorTuneParameter(I)V

    return-void
.end method

.method private changeToColorTuneMode(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeToColorTuneMode : colorTune="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTuneType()I

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setColorTuneType(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->setColorTuneParameter(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setColorTuneType(I)V

    :goto_1
    return-void
.end method

.method private clear()V
    .locals 3

    const-string v0, "ProVideo"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTuneMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTuneMap:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setSelected(Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->isSliderActive()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->hideSlider(Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;)V

    :cond_2
    return-void
.end method

.method private enableEngineCallbacks(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableSensorInfoCallback(Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableDofMultiInfoCallback(Z)V

    return-void
.end method

.method private enableEngineEventListeners(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->registerPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->unregisterPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;)V

    return-void
.end method

.method private enableMenuListeners(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->setZoomChangeGroupOpenStateListener(Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomChangeGroupOpenStateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTuneEventManager:Lcom/sec/android/app/camera/shootingmode/ProVideo$ProColorTuneEventManager;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setColorTuneSettingMenuButtonListener(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingMenuButtonListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTuneEventManager:Lcom/sec/android/app/camera/shootingmode/ProVideo$ProColorTuneEventManager;

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setColorTuneSettingSliderChangeListener(Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu$ColorTuneSettingSliderChangeListener;)V

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move-object p0, v1

    :goto_3
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    return-void
.end method

.method private enableMultiAF(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsMultiAfEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsMultiAfEnabled:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->enableMultiAf(Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->enableMultiAfView(Z)V

    :cond_0
    return-void
.end method

.method private findNearestColorTemperature(I)I
    .locals 6

    const p0, 0x7f0b008a

    invoke-static {p0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result p0

    rsub-int/lit8 v0, p0, 0x64

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const v2, 0x7fffffff

    move v3, v2

    move v2, v1

    :goto_0
    if-ge v1, p0, :cond_1

    add-int v4, v1, v0

    invoke-static {v4}, Lcom/sec/android/app/camera/util/MakerParameter;->getColorTemperature(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x64

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v3, v5, :cond_0

    move v2, v4

    move v3, v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private findNearestIso(I)I
    .locals 3

    const/4 p0, 0x1

    const v0, 0x7fffffff

    move v1, v0

    move v0, p0

    :goto_0
    const/16 v2, 0xf

    if-gt p0, v2, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/camera/util/MakerParameter;->getSensorSensitivity(I)I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v1, v2, :cond_0

    move v0, p0

    move v1, v2

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private findNearestShutter(I)I
    .locals 7

    const/4 v0, 0x1

    const v1, 0x7fffffff

    move v2, v1

    move v1, v0

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getMaxShutterSpeed()I

    move-result v3

    if-gt v0, v3, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/camera/util/MakerParameter;->getExposureTime(I)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v2, v3, :cond_0

    move v1, v0

    move v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getApertureText(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "F1.8"

    return-object p0

    :cond_1
    const-string p0, "F2.4"

    return-object p0

    :cond_2
    const-string p0, "F1.5"

    return-object p0
.end method

.method private getButtonText(II)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getExposureValueString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getWhiteBalanceString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getFocusString(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getColorTuneString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getShutterSpeedString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getIsoString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getButtonTtsString(II)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getFocusString(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_COLOR_TUNE_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;I)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/resourcedata/ResourceIdMap;->get(Lcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/resourcedata/ResourceIdMap$ResourceIdSet;

    move-result-object p1

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-eq p2, v2, :cond_3

    const/4 v2, 0x7

    if-eq p2, v2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/ResourceIdMap$ResourceIdSet;->getContentDescriptionId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/ResourceIdMap$ResourceIdSet;->getContentDescriptionId()I

    move-result p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/ResourceIdMap$ResourceIdSet;->getContentDescriptionId()I

    move-result p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getColorTuneString(I)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_COLOR_TUNE_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;I)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIdMap;->get(Lcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/resourcedata/ResourceIdMap$ResourceIdSet;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIdMap$ResourceIdSet;->getTitleId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIdMap$ResourceIdSet;->getTitleId()I

    move-result p1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIdMap$ResourceIdSet;->getTitleId()I

    move-result p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getExposureValueString(I)Ljava/lang/String;
    .locals 3

    if-lez p1, :cond_0

    const-string p0, "+%.1f"

    goto :goto_0

    :cond_0
    const-string p0, "%.1f"

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    int-to-float p1, p1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFocusString(IZ)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-gez p1, :cond_1

    if-eqz p2, :cond_0

    const p1, 0x7f110373

    goto :goto_0

    :cond_0
    const p1, 0x7f11000a

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const p1, 0x7f110374

    goto :goto_0

    :cond_2
    const p1, 0x7f11000c

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getIsoState()I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "pref_pro_video_previous_iso_value_key"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getIsoString(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f110001

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->ISO_VALUE_OFFSET:I

    sub-int/2addr p1, v0

    aget-object p0, p0, p1

    return-object p0
.end method

.method private getMaxShutterSpeed()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getFps()I

    move-result p0

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_0

    const/16 p0, 0x15

    goto :goto_0

    :cond_0
    const/16 p0, 0x12

    :goto_0
    return p0
.end method

.method private getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTuneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "colorTune is null! : colorTuneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getShutterSpeedString(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f110001

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->SHUTTER_SPEED_VALUE_OFFSET:I

    sub-int/2addr p1, v0

    aget-object p0, p0, p1

    return-object p0
.end method

.method private getWhiteBalanceString(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f110001

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "K"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleRecordingStopped()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->STOP:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->setRecordingOverheatLevel(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingRestricted()Z

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1103b1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method private hideProView()V
    .locals 2

    const-string v0, "ProVideo"

    const-string v1, "hideProView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->isSliderActive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->hideSlider(Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    return-void
.end method

.method private hideSlider(Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mSelectedSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->hide(Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;)V

    :cond_0
    return-void
.end method

.method private hideTorchHighTemperatureWarning()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_TORCH_HIGH_TEMPERATURE_WARNING:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupVisible(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_TORCH_HIGH_TEMPERATURE_WARNING:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_TORCH_HIGH_TEMPERATURE_WARNING_DURING_RECORDING:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupVisible(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_TORCH_HIGH_TEMPERATURE_WARNING_DURING_RECORDING:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)V

    :cond_1
    return-void
.end method

.method private initApertureList()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->getAvailableLensApertures()[F

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initApertureList : Aperture list = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProVideo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAperture()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getApertureText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setSubText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setSubText(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mShutterSpeedSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->setApertureList([F)V

    return-void
.end method

.method private initColorTune()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTuneMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTuneMap:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTunePrefMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->load(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTuneMap:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initIsoSliderRange()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->getSensorInfoSensitivityRange()Landroid/util/Range;

    move-result-object v0

    const-string v1, "ProVideo"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_ISO:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->findNearestIso(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;I)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_ISO:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->findNearestIso(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;I)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsoSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    new-instance v4, Landroid/util/Range;

    invoke-direct {v4, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->setRange(Landroid/util/Range;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initIsoSliderRange : range="

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " change to ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "initIsoSliderRange : range is null. use default range"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private initPro()V
    .locals 6

    const-string v0, "ProVideo"

    const-string v1, "initPro"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->initColorTune()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v1

    const/4 v2, 0x5

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsoButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getIso()I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mWBButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getKelvinValue()I

    move-result v1

    const/4 v4, 0x4

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v1

    const/4 v4, 0x3

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getButtonTtsString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTuneType()I

    move-result v1

    const/4 v4, 0x2

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTuneType()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getButtonTtsString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->setShutterPriorityActivate(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->setShutterPriorityActivate(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->initApertureList()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->initIsoSliderRange()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->initShutterSpeedSliderRange()V

    return-void
.end method

.method private initShutterSpeedSliderRange()V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->getSensorInfoExposureTimeRange()Landroid/util/Range;

    move-result-object v0

    const-string v1, "ProVideo"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_SHUTTER_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->findNearestShutter(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;I)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_SHUTTER_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    div-long/2addr v7, v5

    long-to-int v4, v7

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->findNearestShutter(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;I)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mShutterSpeedSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    new-instance v4, Landroid/util/Range;

    invoke-direct {v4, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->setRange(Landroid/util/Range;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initShutterSpeedSliderRange : range="

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " change to ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "initShutterSpeedSliderRange : range is null. use default range"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private isColorTuneDimRequired()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHdr10Recording()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderEffectAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->isSuperResolution(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method

.method private isPreviousTorchValueAuto()Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "pref_pro_video_previous_torch_value_key"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private isSliderActive()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mExposureValueSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mShutterSpeedSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mWBSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsoSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mManualFocusSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

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

.method private isTorchHighTemperatureWarningRequired()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTorch()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->isTorchHighTemperatureWarningResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result p0

    return p0
.end method

.method private makeProButton(Ljava/util/ArrayList;Ljava/util/ArrayList;I)Lcom/sec/android/app/camera/widget/gl/ProItem;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/camera/resourcedata/ResourceIdMap$ResourceIdSet;",
            ">;I)",
            "Lcom/sec/android/app/camera/widget/gl/ProItem;"
        }
    .end annotation

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->SCREEN_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->PRO_ITEM_SIDE_MARGIN:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->PRO_ITEM_SIZE:I

    mul-int/lit8 v1, v1, 0x6

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x5

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Lcom/sec/android/app/camera/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lcom/sec/android/app/camera/interfaces/CommandId;

    new-instance p1, Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->PRO_ITEM_SIDE_MARGIN:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->PRO_ITEM_SIZE:I

    add-int/2addr v0, v1

    mul-int/2addr v0, p3

    add-int/2addr p2, v0

    int-to-float v3, p2

    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->PRO_ITEM_TOP_MARGIN:I

    int-to-float v4, p2

    int-to-float v5, v1

    int-to-float v6, v1

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/camera/widget/gl/ProItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/ResourceIdMap$ResourceIdSet;Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/command/MenuCommand;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotatable(Z)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotateAnimation(Z)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setCenterPivot(Z)V

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProItemSelectListener:Lcom/sec/android/app/camera/shootingmode/ProVideo$ProItemSelectListener;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setItemSelectListener(Lcom/sec/android/app/camera/widget/gl/ProItem$ItemSelectListener;)V

    return-object p1
.end method

.method private makeProButtonGroup()V
    .locals 11

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->PRO_VIDEO_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->getSubCommandIdList(Lcom/sec/android/app/camera/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/resourcedata/ResourceIdMap;->get(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v8, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v2

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->PRO_ITEM_GROUP_HEIGHT:I

    int-to-float v5, v4

    sub-float v5, v2, v5

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->SCREEN_WIDTH:I

    int-to-float v6, v2

    int-to-float v7, v4

    const/4 v4, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v8, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    new-instance v2, Lcom/sec/android/app/camera/widget/gl/TouchConsumeBackgroundView;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->SCREEN_WIDTH:I

    int-to-float v9, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->PRO_ITEM_GROUP_HEIGHT:I

    int-to-float v10, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/camera/widget/gl/TouchConsumeBackgroundView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->makeProButton(Ljava/util/ArrayList;Ljava/util/ArrayList;I)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->makeProButton(Ljava/util/ArrayList;Ljava/util/ArrayList;I)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-direct {p0, v0, v1, v4}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->makeProButton(Ljava/util/ArrayList;Ljava/util/ArrayList;I)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsoButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsoButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-direct {p0, v0, v1, v3}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->makeProButton(Ljava/util/ArrayList;Ljava/util/ArrayList;I)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mWBButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mWBButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->makeProButton(Ljava/util/ArrayList;Ljava/util/ArrayList;I)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mManualFocusButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->makeProButton(Ljava/util/ArrayList;Ljava/util/ArrayList;I)Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private makeProSlider(ILcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/widget/gl/ProSlider;
    .locals 9

    const v0, 0x7f0702e3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v4

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ProSlider;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->SCREEN_WIDTH:I

    int-to-float v5, v1

    const/4 v3, 0x0

    move-object v1, v0

    move v7, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/camera/widget/gl/ProSlider;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFILcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProSliderEventManager:Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->setProSliderValueChangedListener(Lcom/sec/android/app/camera/widget/gl/ProSlider$ProSliderValueChangeListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProSliderEventManager:Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->setOnHideSliderListener(Lcom/sec/android/app/camera/widget/gl/ProSlider$ProSliderHideListener;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProSliderEventManager:Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->setProSliderLoggingListener(Lcom/sec/android/app/camera/widget/gl/ProSlider$ProSliderLoggingListener;)V

    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->setVisibility(I)V

    return-object v0
.end method

.method private makeProSliderGroup()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->makeProSlider(ILcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/widget/gl/ProSlider;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mExposureValueSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->makeProSlider(ILcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/widget/gl/ProSlider;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mShutterSpeedSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->VIDEO_ISO_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->makeProSlider(ILcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/widget/gl/ProSlider;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsoSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->VIDEO_KELVIN_VALUE_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->makeProSlider(ILcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/widget/gl/ProSlider;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mWBSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->VIDEO_MANUAL_FOCUS_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->makeProSlider(ILcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/widget/gl/ProSlider;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mManualFocusSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mShutterSpeedSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProSliderEventManager:Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->setOnAutoButtonClickedListener(Lcom/sec/android/app/camera/widget/gl/ProSlider$ProSliderAutoButtonClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsoSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProSliderEventManager:Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->setOnAutoButtonClickedListener(Lcom/sec/android/app/camera/widget/gl/ProSlider$ProSliderAutoButtonClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mWBSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProSliderEventManager:Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->setOnAutoButtonClickedListener(Lcom/sec/android/app/camera/widget/gl/ProSlider$ProSliderAutoButtonClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mExposureValueSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mShutterSpeedSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsoSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mWBSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mManualFocusSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private pauseRecording()V
    .locals 2

    const-string v0, "ProVideo"

    const-string v1, "pauseRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->PAUSE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->pauseVideoRecording()V

    return-void
.end method

.method private reconnectMakerRunnable()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mReconnectMakerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mReconnectMakerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private registerCameraSettingChangedListeners()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_FOCUS_LENGTH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_ISO:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_SHUTTER_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_EXPOSURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_KELVIN_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_COLOR_TUNE_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->MULTI_AF_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method private resumeRecording()V
    .locals 2

    const-string v0, "ProVideo"

    const-string v1, "resumeRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->RESUME:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->resumeVideoRecording()V

    return-void
.end method

.method private sendSALogProButtonSettings()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "2309"

    if-nez v0, :cond_0

    const-string v0, "AUTO"

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getButtonText(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTuneType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->getSliderValues()[I

    move-result-object v0

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-long v2, v2

    const-string v4, "2313"

    invoke-static {v4, v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    aget v1, v0, v1

    int-to-long v1, v1

    const-string v3, "2314"

    invoke-static {v3, v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    const/4 v1, 0x2

    aget v1, v0, v1

    int-to-long v1, v1

    const-string v3, "2315"

    invoke-static {v3, v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    const/4 v1, 0x3

    aget v1, v0, v1

    int-to-long v1, v1

    const-string v3, "2316"

    invoke-static {v3, v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    const/4 v1, 0x4

    aget v1, v0, v1

    int-to-long v1, v1

    const-string v3, "2317"

    invoke-static {v3, v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    const/4 v1, 0x5

    aget v0, v0, v1

    int-to-long v0, v0

    const-string v2, "2318"

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTorch()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0220"

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getSeamlessZoomValueArray()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getLensType([II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0222"

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0224"

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getIso()I

    move-result v1

    const-string v2, "0_"

    const-string v3, "1_"

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTuneType()I

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_3

    :cond_3
    move-object v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_4

    move-object v1, v2

    goto :goto_4

    :cond_4
    move-object v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    move-object v2, v3

    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "0"

    goto :goto_6

    :cond_6
    const-string p0, "1"

    :goto_6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "2320"

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setColorTuneParameter(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->getColorTuneParameterString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    return-void
.end method

.method private setIsoState(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "pref_pro_video_previous_iso_value_key"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private setPreviousTorchValueAuto(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->isPreviousTorchValueAuto()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "pref_pro_video_previous_torch_value_key"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private setShutterPriorityActivate(Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShutterPriorityActivate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mEvState:I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getIso()I

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->setIsoState(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mLastNearestIso:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setIso(I)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsoButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getIso()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getButtonText(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsoSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->setAutoDim(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTorch()I

    move-result v2

    if-ne v2, v1, :cond_3

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->setPreviousTorchValueAuto(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTorch(I)V

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mEvState:I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getButtonText(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->PRO_ITEM_TEXT_COLOR:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setTextColor(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getIsoState()I

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->setIsoState(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setIso(I)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsoButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getIso()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getButtonText(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsoSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->setAutoDim(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->isPreviousTorchValueAuto()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTorch(I)V

    :cond_3
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mEvState:I

    if-eq v0, v1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getIsoState()I

    move-result v0

    if-eq v0, v1, :cond_5

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setSensorInfoEventListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$SensorInfoEventListener;)V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mSensorInfoEventManager:Lcom/sec/android/app/camera/shootingmode/ProVideo$SensorInfoEventManager;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setSensorInfoEventListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$SensorInfoEventListener;)V

    :goto_2
    return-void
.end method

.method private showColorTuneSettingMenu(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->load(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->updateColorTuneMenuBarButtonDim(Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->getSliderValues()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->updateSlider([I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->changeToColorTuneMode(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    :cond_0
    const-string p0, "135"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    return-void
.end method

.method private showProView()V
    .locals 2

    const-string v0, "ProVideo"

    const-string v1, "showProView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    :cond_0
    return-void
.end method

.method private showSlider(Lcom/sec/android/app/camera/widget/gl/ProSlider;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mSelectedSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->hide(Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setSelected(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->isSliderActive()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;->ALPHA:Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;

    :goto_0
    invoke-virtual {p1, p2, v0}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->show(ILcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mSelectedSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    return-void
.end method

.method private showTorchHighTemperatureWarning()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsShownTemperatureWarning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->isTorchHighTemperatureWarningRequired()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsShownTemperatureWarning:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_TORCH_HIGH_TEMPERATURE_WARNING_PRO_VIDEO:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_TORCH_HIGH_TEMPERATURE_WARNING_DURING_RECORDING:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    :goto_0
    return-void
.end method

.method private startBaseMenuMoveAnimation(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startBaseMenuMoveAnimation isMoveDown : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x100

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsBaseMenuMovedDown:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsBaseMenuMovedDown:Z

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p1, v1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideViewWithAnimation(I)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsBaseMenuMovedDown:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsBaseMenuMovedDown:Z

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, v1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideViewWithAnimation(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private unregisterCameraSettingChangedListeners()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_FOCUS_LENGTH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_ISO:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_SHUTTER_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_EXPOSURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_KELVIN_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_COLOR_TUNE_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->MULTI_AF_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method private updateColorTuneMenuBarButtonDim(Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setResetButtonDim(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setResetButtonDim(Z)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setResetButtonDim(Z)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;->setResetButtonDim(Z)V

    :goto_0
    return-void
.end method

.method private updateExposureValue(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p1, p1, 0x14

    aget-object p1, v0, p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mExposureValueSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->setValueText(Ljava/lang/String;)V

    return-void
.end method

.method private updateFocusLengthValue(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAfMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->enableMultiAF(Z)V

    :cond_1
    return-void
.end method

.method private updateISOValue(I)V
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsoButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsoSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->setValueText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateKelvinValue(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p1, -0x17

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mWBButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mWBSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->setValueText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mWBSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    mul-int/lit8 p1, p1, 0x64

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->changeWbIconImage(I)V

    :cond_0
    return-void
.end method

.method private updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRecordingLayout : cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->isSliderActive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->hideSlider(Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->startBaseMenuMoveAnimation(Z)V

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingCommand:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingRestricted()Z

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->showPauseIcon()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->showResumeIcon()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->updateStopRecordingLayout()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->updateStartRecordingLayout()V

    :goto_0
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

.method private updateShutterSpeedValue(I)V
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mShutterSpeedSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->setValueText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateStartRecordingLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x110

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0x2ee

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SWITCH_FACING_WHILE_RECORDING:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PRO_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShootingModeToRecordingAnimation(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideBackButton()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->setBottomBackgroundHeight(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PRO_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsoButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->isZoomChangeGroupOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->closeZoomChangeGroup()V

    :cond_2
    return-void
.end method

.method private updateStopRecordingLayout()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x110

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PRO_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startRecordingToShootingModeAnimation(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SWITCH_FACING_WHILE_RECORDING:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->hideIcon()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingRestricted()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->startBaseMenuMoveAnimation(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x24

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->showBackButton()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->resetBottomBackground()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PRO_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsoButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setDim(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mShutterSpeedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setDim(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->isColorTuneDimRequired()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setDim(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->isZoomChangeGroupOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->closeZoomChangeGroup()V

    :cond_3
    return-void
.end method


# virtual methods
.method public cancelRecording()V
    .locals 3

    const-string v0, "ProVideo"

    const-string v1, "cancelRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v1, v2, :cond_0

    const-string p0, "cancelRecording : Returned because recording is already stopping"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->CANCEL:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->resetAfTrigger()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->cancelVideoRecording()V

    return-void
.end method

.method public isShootingAvailable()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isSnapShotAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isSnapshotAvailable()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$ProVideo()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->handleCamcorderSettingChanged()V

    return-void
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 4

    const-string v0, "ProVideo"

    const-string v1, "onActivate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mIsShownTemperatureWarning:Z

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->register(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PRO_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshMainButton(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PRO_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->SCREEN_HEIGHT:I

    int-to-float v1, v1

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->PRO_ITEM_GROUP_HEIGHT:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->setBottomBackgroundHeight(F)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setMainButtonClickListener(Lcom/sec/android/app/camera/interfaces/BaseMenuController$MainButtonClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1103b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;->setTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->COLOR_TUNE:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTuneSettingMenu:Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->initPro()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->isZoomChangeGroupOpened()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->registerCameraSettingChangedListeners()V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->enableMenuListeners(Z)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->enableEngineEventListeners(Z)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->enableEngineCallbacks(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result p1

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAfMode()I

    move-result p1

    if-ne p1, v1, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->enableMultiAF(Z)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTuneType()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTuneType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->setColorTuneParameter(I)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mManualFocusSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProSliderEventManager:Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->setProSliderManualFocusAssistListener(Lcom/sec/android/app/camera/widget/gl/ProSlider$ProSliderManualFocusAssistListener;)V

    sget-object p1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->isSliderActive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mSelectedSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v3, p1}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->hideSlider(Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->startBaseMenuMoveAnimation(Z)V

    :cond_1
    return v2

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->isSliderActive()Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public onCameraSettingChanged(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;I)V
    .locals 4

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

    const-string v1, "ProVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProDetailSettingMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/ProVideo$DetailSettingUpdater;

    if-eqz p0, :cond_9

    invoke-interface {p0, p2}, Lcom/sec/android/app/camera/shootingmode/ProVideo$DetailSettingUpdater;->updateValue(I)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mVideoColorTune:I

    if-eq p1, p2, :cond_9

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mVideoColorTune:I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Capability;->isFilterRecordingUsingVideoMakerSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->reconnectMakerRunnable()V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->changeToRecordingPreview()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->changeToEffectRecordingPreview()V

    goto :goto_0

    :cond_3
    if-ne p2, v2, :cond_4

    move v1, v2

    :cond_4
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->enableMultiAF(Z)V

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->setPreviousTorchValueAuto(Z)V

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->showTorchHighTemperatureWarning()V

    goto :goto_0

    :cond_7
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCurrentResolution:I

    if-eq p1, p2, :cond_8

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCurrentResolution:I

    sget-object p1, Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->hideSlider(Lcom/sec/android/app/camera/widget/gl/ProSlider$SliderAnimationType;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->startBaseMenuMoveAnimation(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->reconnectMakerRunnable()V

    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->showTorchHighTemperatureWarning()V

    :cond_9
    :goto_0
    return-void
.end method

.method public onCancelRecordingRequested()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->cancelRecording()V

    return-void
.end method

.method public onCaptureEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;)V
    .locals 0

    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onConnectMakerPrepared(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTuneType()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2, p1}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;->setEffectProcessorMode(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCurrentResolution:I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTuneType()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mVideoColorTune:I

    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 6

    const-string v0, "ProVideo"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result p3

    const/4 p4, 0x1

    xor-int/2addr p3, p4

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/RecordingProgressBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RecordingProgressBar;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProgressBar:Lcom/sec/android/app/camera/widget/gl/RecordingProgressBar;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProgressBar:Lcom/sec/android/app/camera/widget/gl/RecordingProgressBar;

    invoke-virtual {v0, p3}, Lcom/sec/android/app/camera/widget/gl/RecordingProgressBar;->setRotatable(Z)V

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProgressBar:Lcom/sec/android/app/camera/widget/gl/RecordingProgressBar;

    invoke-virtual {p2, p3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance p3, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->SCREEN_WIDTH:I

    int-to-float v4, v0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->SCREEN_HEIGHT:I

    int-to-float v5, v0

    move-object v0, p3

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    new-instance p1, Landroid/view/animation/AnimationSet;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance p3, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p3, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x258

    invoke-virtual {p3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p3, p4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {p1, p4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {p1, p3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p3, p1}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->makeProButtonGroup()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->makeProSliderGroup()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

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

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->getMenuId()Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTuneType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getProColorTune(I)Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->load(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/util/ProColorTune;->isDefault()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setColorTuneType(I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->changeToColorTuneMode(I)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setSelected(Z)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mColorTuneButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTuneType()I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getButtonText(II)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTuneType()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getButtonTtsString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onInactivate()V
    .locals 4

    const-string v0, "ProVideo"

    const-string v1, "onInactivate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->resetCenterView()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->stopRecording()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->cancelRecording()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->handleRecordingStopped()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->resetBottomBackground()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setMainButtonClickListener(Lcom/sec/android/app/camera/interfaces/BaseMenuController$MainButtonClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->unregister()V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->startBaseMenuMoveAnimation(Z)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->enableEngineCallbacks(Z)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->enableEngineEventListeners(Z)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->enableMenuListeners(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->unregisterCameraSettingChangedListeners()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAfMode()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->enableMultiAF(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->isPreviousTorchValueAuto()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTorch(I)V

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->clear()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    const-string p0, "ProVideo"

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
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

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
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onKeyUp : keyCode - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ProVideo"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const-string p0, "Recording control is not available at this moment, ignore key up event"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/16 p2, 0x17

    if-eq p1, p2, :cond_1

    const/16 p2, 0x1b

    if-eq p1, p2, :cond_1

    const/16 p2, 0x42

    if-eq p1, p2, :cond_1

    const/16 p2, 0x82

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->stopRecording()V

    :cond_3
    return v1

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPauseButtonClick()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isPauseRecordingAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->pauseRecording()V

    const-wide/16 v0, 0x1

    const-string p0, "2352"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    const/4 p0, 0x1

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

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isDimmed(I)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isAnimationFinished(I)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->startRecording()V

    return v0
.end method

.method public onRecordingEvent(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordingEvent - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I

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
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->hideTorchHighTemperatureWarning()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->handleRecordingStopped()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->prepareVideoRecording()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->showTorchHighTemperatureWarning()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mManualFocusSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mProSliderEventManager:Lcom/sec/android/app/camera/shootingmode/ProVideo$ProSliderEventManager;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->setProSliderManualFocusAssistListener(Lcom/sec/android/app/camera/widget/gl/ProSlider$ProSliderManualFocusAssistListener;)V

    const-string p0, "134"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mManualFocusSlider:Lcom/sec/android/app/camera/widget/gl/ProSlider;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/ProSlider;->setProSliderManualFocusAssistListener(Lcom/sec/android/app/camera/widget/gl/ProSlider$ProSliderManualFocusAssistListener;)V

    const-string p0, "136"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onRecordingMaxDurationReached()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f11050e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->onStopRecordingRequested()V

    return-void
.end method

.method public onRecordingMaxFileSizeReached()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->stopRecording()V

    return-void
.end method

.method public onRecordingRestricted(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->onStopRecordingRequested()V

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

    const-string p4, "ProVideo"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-nez p3, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingTimeLimited()Z

    move-result p2

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getMaxRecordingTimeLimitInSecond()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->start(ZI)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object p4, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p4}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getMaxRecordingTimeLimitInSecond()I

    move-result p4

    invoke-virtual {p3, p1, p2, p4}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateRecordingTime(JI)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    div-long/2addr p1, p3

    sget p3, Lcom/samsung/android/camera/feature/Feature;->MIN_RECORDING_TIME_TO_ENABLE_LOW_POWER_MODE:I

    int-to-long p3, p3

    cmp-long p1, p1, p3

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->getRecordingOverheatLevel()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->setRecordingOverheatLevel(I)V

    :cond_1
    return-void
.end method

.method public onResumeButtonClick()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    const-string p0, "ProVideo"

    const-string v0, "onResumeButtonClick : Returned because wrong recording state"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->resumeRecording()V

    const-wide/16 v0, 0x0

    const-string p0, "2352"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    const/4 p0, 0x1

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
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterKeyReleased : inputType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProVideo"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p1, v0, :cond_4

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRemainRecordingTimeInMsByStorage()J

    move-result-wide v2

    const-wide/16 v4, 0x5

    cmp-long p1, v2, v4

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->isSnapShotAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->takeVideoSnapshot()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result p1

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderExternalStorageAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const p1, 0x7f1102da

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;->STORAGE_STATUS:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;)V

    :cond_4
    :goto_0
    return v1
.end method

.method public onShutterTimerCaptureTriggered()V
    .locals 2

    const-string v0, "ProVideo"

    const-string v1, "onShutterTimerCaptureTriggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->startRecording()V

    return-void
.end method

.method public onShutterTimerEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/ProVideo$3;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0xe0

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x70

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    sget-object p1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0xe5

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x60

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 p1, 0x100

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->setTimerCountingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;)V

    :goto_0
    return-void
.end method

.method public onSnapshotButtonClick()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    const-string p0, "2350"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    return-void
.end method

.method public onStartPreviewCompleted()V
    .locals 2

    const-string v0, "ProVideo"

    const-string v1, "onStartPreviewCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->enableEngineCallbacks(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiAfMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->enableMultiAF(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTuneType()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->setColorTuneParameter(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getMaxShutterSpeed()I

    move-result v1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->getMaxShutterSpeed()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setShutterSpeed(I)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->initShutterSpeedSliderRange()V

    return-void
.end method

.method public onStartPreviewPrepared(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V
    .locals 8

    const-string v0, "ProVideo"

    const-string v1, "onStartPreviewPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/MakerParameter;->getExposureTime(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTorch()I

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/MakerParameter;->getAeModeByTorchSetting(IZ)I

    move-result v2

    sget-object v3, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v3, v6}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v3, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-nez v2, :cond_1

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const-wide/32 v1, 0x3b9aca00

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/interfaces/Resolution;->getFps()I

    move-result v3

    int-to-long v6, v3

    div-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getIso()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/MakerParameter;->getSensorSensitivity(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v0

    if-ne v0, v4, :cond_2

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_COLOR_TEMPERATURE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getKelvinValue()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/MakerParameter;->getColorTemperature(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2
    sget-object v1, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/MakerParameter;->getAwbMode(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v0

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    :cond_4
    :goto_1
    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/MakerParameter;->getAfMode(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v0

    if-ltz v0, :cond_5

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/MakerParameter;->getLensFocusDistance(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_5
    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->isVariableLensApertureSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAperture()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/MakerParameter;->getAperture(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTuneType()I

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->getAvailableEffectRecordingFpsRange()Landroid/util/Range;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public onStartPreviewRequested()V
    .locals 0

    return-void
.end method

.method public onStopButtonClick()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopButtonClick : stop recording is not available, recordingTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ProVideo"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->stopRecording()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByRecordingTime(J)Ljava/lang/String;

    move-result-object p0

    const-string v2, "2351"

    invoke-static {v2, v0, v1, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public onStopRecordingRequested()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->stopRecording()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->cancelRecording()V

    :goto_0
    return-void
.end method

.method public onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isHdr10RecordingEnabled()Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "is_hdr10_video"

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p0, "recording_mode"

    const-string v1, "10"

    invoke-virtual {p1, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :goto_0
    return v0
.end method

.method public onVideoSaved()V
    .locals 0

    return-void
.end method

.method public onZoomChangeGroupClosed()V
    .locals 3

    const-string v0, "ProVideo"

    const-string v1, "onZoomChangeGroupClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->startBaseMenuMoveAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->SCREEN_HEIGHT:I

    int-to-float v1, v1

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->PRO_ITEM_GROUP_HEIGHT:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->setBottomBackgroundHeight(F)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->showProView()V

    return-void
.end method

.method public onZoomChangeGroupOpenPrepared()V
    .locals 0

    return-void
.end method

.method public onZoomChangeGroupOpened()V
    .locals 2

    const-string v0, "ProVideo"

    const-string v1, "onZoomChangeGroupOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->resetBottomBackground()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->startBaseMenuMoveAnimation(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->hideProView()V

    return-void
.end method

.method public startRecording()V
    .locals 3

    const-string v0, "ProVideo"

    const-string v1, "startRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCurrentMode(I)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->START:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->startVideoRecording()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110479

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProVideo;->sendSALogProButtonSettings()V

    return-void
.end method

.method public stopRecording()V
    .locals 4

    const-string v0, "ProVideo"

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getMaxRecordingTimeLimitInSecond()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateRecordingTime(JI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/ProVideo;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->stopVideoRecording(Z)V

    return-void
.end method
