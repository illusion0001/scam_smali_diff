.class Lcom/sec/android/app/camera/shootingmode/Photo;
.super Ljava/lang/Object;
.source "Photo.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$HrmShutterListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$DimChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;,
        Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;,
        Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;,
        Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;,
        Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;,
        Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;
    }
.end annotation


# static fields
.field private static final CHECK_QR_DETECTED_TIMEOUT:I = 0x7d0

.field private static final HIDE_QR_RECT_TIMEOUT:I = 0x3e8

.field private static final MESSAGE_CHECK_QR_DETECTED:I = 0x4

.field private static final MESSAGE_HIDE_QR_RECT:I = 0x3

.field private static final MESSAGE_INTELLIGENT_HIDE_SCENE_DETECTION:I = 0x1

.field private static final NIGHT_SHUTTER_START_ANIMATION_DURATION:I = 0xbb8

.field private static final QR_CODE_DETECTION_MAX_INTERVAL:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "Photo"


# instance fields
.field private final SCREEN_WIDTH:I

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private final mBeautyManager:Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;

.field private mBeautyOffImage:Lcom/samsung/android/glview/GLImage;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

.field private final mHandler:Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

.field private final mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

.field private mIsBeautyAvailable:Z

.field private mIsBurstCapturing:Z

.field private mIsBurstShutterPressed:Z

.field private mIsFrontAngleChangeAvailable:Z

.field private mIsNeedToShowBurstShotGuideOnQuickTake:Z

.field private mIsScreenFlashStarted:Z

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mPhotoNightShotWaitToast:Lcom/sec/android/app/camera/widget/CameraToast;

.field private mQrCodeDetectionManager:Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

.field private mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

.field private final mZoomMapViewManager:Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->SCREEN_WIDTH:I

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/Photo;Lcom/sec/android/app/camera/shootingmode/Photo$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mHandler:Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mQrCodeDetectionManager:Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsBeautyAvailable:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsBurstCapturing:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsBurstShutterPressed:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsFrontAngleChangeAvailable:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsScreenFlashStarted:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsNeedToShowBurstShotGuideOnQuickTake:Z

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Photo$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/Photo$1;-><init>(Lcom/sec/android/app/camera/shootingmode/Photo;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    new-instance p1, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;-><init>(Lcom/sec/android/app/camera/shootingmode/Photo;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    new-instance p1, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;-><init>(Lcom/sec/android/app/camera/shootingmode/Photo;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBeautyManager:Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_QR_CODE_DETECTION:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;-><init>(Lcom/sec/android/app/camera/shootingmode/Photo;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mQrCodeDetectionManager:Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    :cond_0
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;-><init>(Lcom/sec/android/app/camera/shootingmode/Photo;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mZoomMapViewManager:Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/Photo;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->setHrmSensor(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/Photo;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mHandler:Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mQrCodeDetectionManager:Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/sec/android/app/camera/shootingmode/Photo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsBurstCapturing:Z

    return p0
.end method

.method static synthetic access$6100(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->getFilterPreviewType()Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6200(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/MenuManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/sec/android/app/camera/shootingmode/Photo;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->isEffectMenuEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6500(Lcom/sec/android/app/camera/shootingmode/Photo;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->isQrCodeDetectionAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6600(Lcom/sec/android/app/camera/shootingmode/Photo;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->hideEffectMenu()V

    return-void
.end method

.method static synthetic access$6700(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBeautyManager:Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mZoomMapViewManager:Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/sec/android/app/camera/shootingmode/Photo;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->SCREEN_WIDTH:I

    return p0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/Photo;)Lcom/sec/android/app/camera/interfaces/Engine;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-object p0
.end method

.method private enableEngineCallbacks(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->isQrCodeDetectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mQrCodeDetectionManager:Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setQrCodeDetectionEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$QRCodeDetectionEventCallback;)V

    :cond_1
    return-void
.end method

.method private enableEngineEventListeners(Z)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->registerPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHoldCameraButtonTo()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->registerBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHoldCameraButtonTo()I

    move-result v1

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->registerAgifBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->unregisterPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHoldCameraButtonTo()I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->unregisterBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHoldCameraButtonTo()I

    move-result v1

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->unregisterAgifBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    move-object v2, p0

    goto :goto_1

    :cond_4
    move-object v2, v1

    :goto_1
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz p1, :cond_5

    move-object v2, p0

    goto :goto_2

    :cond_5
    move-object v2, v1

    :goto_2
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setScreenFlashEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    move-object p0, v1

    :goto_3
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    :cond_7
    return-void
.end method

.method private enableFrontAngleChangeGroup(Z)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->makeFrontAngleChangeGroup()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->refreshButton()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSmartSelfieAngle()I

    move-result v3

    if-ne v3, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->enableAutoAngleChange(Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x4

    :goto_2
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->setVisibility(I)V

    return-void
.end method

.method private enableMenuListeners(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->BACK_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->BACK_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    if-eqz p1, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->BACK_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    if-eqz p1, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    goto :goto_4

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    if-eqz p1, :cond_3

    move-object v2, p0

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    if-eqz p1, :cond_4

    move-object v2, p0

    goto :goto_3

    :cond_4
    move-object v2, v1

    :goto_3
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->SELFIE_TONE:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->SELFIE_TONE:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    if-eqz p1, :cond_6

    move-object v1, p0

    :cond_6
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    :cond_7
    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->registerMenuCreateListener(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;)V

    goto :goto_5

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->unregisterMenuCreateListener(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;)V

    :goto_5
    return-void
.end method

.method private getFilterPreviewType()Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontPhotoFiltersTab()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackPhotoFiltersTab()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPhotoFilter()I

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    sget-object p0, Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;->FILTER:Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPhotoMyFilter()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    if-ne v0, p0, :cond_2

    sget-object p0, Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;->MY_FILTER:Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;->NONE:Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;

    return-object p0
.end method

.method private getQuickTakeRecordingRestrictionString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSimpleMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f11021b

    invoke-static {p0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method private hideEffectMenu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->BACK_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)V

    :goto_0
    return-void
.end method

.method private hideScreenFlash()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideScreenFlashAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x170

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsScreenFlashStarted:Z

    return-void
.end method

.method private isBurstShotGuideOnQuickTakeAvailable()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->UNPACK_BINARY:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_BURST_SHOT_GUIDE_ON_QUICK_TAKE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->isSmartTipsPopupEnabled(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isEffectMenuEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBeautyManager:Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->access$1900(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->getFilterPreviewType()Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;->FILTER:Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->getFilterPreviewType()Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;->MY_FILTER:Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isQrCodeDetectionAvailable()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mQrCodeDetectionManager:Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSimpleMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->CREATE_MY_FILTER:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->SELFIE_TONE:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQrCodeDetection()I

    move-result v0

    if-eq v0, v2, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getQrScannerMode()I

    move-result p0

    if-ne p0, v2, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    :goto_0
    return v1
.end method

.method private isQuickTakeRecordingAvailable()Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_QUICK_TAKE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSimpleMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecordingAvailable(Z)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method private isSelfieToneGuideAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isSelfieToneModeSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SELFIE_TONE_MODE:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSimpleMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SELFIE_TONE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-ge v0, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SELFIE_TONE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->setSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SELFIE_TONE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->isSmartTipsPopupEnabled(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method private makeBeautyOffImage()V
    .locals 10

    const v0, 0x7f07031c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getTopBaseLinePositionY()F

    move-result v0

    const v1, 0x7f07031a

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v1, v6

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v4, v0, v1

    const v0, 0x7f07031d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    new-instance v9, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    sub-float v3, v1, v6

    const/4 v7, 0x1

    const v8, 0x7f08099d

    move-object v1, v9

    move v5, v6

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v9, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBeautyOffImage:Lcom/samsung/android/glview/GLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBeautyOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBeautyOffImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBeautyOffImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBeautyOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBeautyOffImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private makeFrontAngleChangeGroup()V
    .locals 8

    const v0, 0x7f070296

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    const v1, 0x7f0702ad

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v5

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sub-float v4, v1, v0

    new-instance v0, Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v7, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_CAMERA_ANGLE:Lcom/sec/android/app/camera/interfaces/CommandId;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/interfaces/CommandId;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private onBurstCaptureRequested(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBeautyManager:Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->access$2600(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setSwFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$SwFaceDetectionListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCompositionGuide()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$5500(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Lcom/sec/android/app/camera/widget/gl/CompositionGuide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/CompositionGuide;->hide()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v2, Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideCommand;->COMMAND_CHECK_STABLE_TO_RESET:Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideCommand;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setCompositionGuideCommand(Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideCommand;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->isQrCodeDetectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mQrCodeDetectionManager:Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->access$2200(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mQrCodeDetectionManager:Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->access$2100(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterPressed(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsBurstShutterPressed:Z

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private registerCameraSettingChangedListeners()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->MOTION_PHOTO:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SENSOR_CROP:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

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

    const-string v1, "camera.action.ZOOM_TEXT_SHOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private sendSALogForPictureTaken()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsFrontAngleChangeAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSensorCrop()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getEventFrontAngleType(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2039"

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSaveAsFlipped()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getSaveAsFlipped(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2060"

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->getFilterPreviewType()Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;->FILTER:Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPhotoFilter()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/plugin/PlugInFilterStorage;->getFilterNameByFilterId(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "2019"

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getSeamlessZoomValueArray()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getLensType([II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0031"

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->getFilterPreviewType()Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;->FILTER:Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPhotoFilter()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/plugin/PlugInFilterStorage;->getFilterNameByFilterId(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0032"

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setHrmSensor(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHrmShutter()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHrmShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HrmShutterListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHrmShutterListener()V

    :goto_0
    return-void
.end method

.method private showBurstShotGuideOnQuickTakePopup()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsNeedToShowBurstShotGuideOnQuickTake:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsNeedToShowBurstShotGuideOnQuickTake:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->isQrCodeDetectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mQrCodeDetectionManager:Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->access$4400(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showBurstShotGuideTips()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_BURST_SHOT_GUIDE_ON_QUICK_TAKE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_BURST_SHOT_GUIDE_ON_QUICK_TAKE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->setSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_BURST_SHOT_GUIDE_ON_QUICK_TAKE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_BURST_SHOT_GUIDE_ON_QUICK_TAKE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->setSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;I)V

    :cond_2
    return-void
.end method

.method private showMyFilterMenu()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CREATE_MY_FILTER_SELECTED_IMAGE_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->CREATE_MY_FILTER:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableLiveThumbnailPreviewCallback(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->BACK_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    :goto_1
    return-void
.end method

.method private showPhotoNightShotWaitToast()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mPhotoNightShotWaitToast:Lcom/sec/android/app/camera/widget/CameraToast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/CameraToast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mPhotoNightShotWaitToast:Lcom/sec/android/app/camera/widget/CameraToast;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/CameraToast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f11031c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mPhotoNightShotWaitToast:Lcom/sec/android/app/camera/widget/CameraToast;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mPhotoNightShotWaitToast:Lcom/sec/android/app/camera/widget/CameraToast;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    :cond_1
    return-void
.end method

.method private showSelfieToneMenu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideTouchEvSlider()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->SELFIE_TONE:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    return-void
.end method

.method private showSmartTipsSelfieCapture()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->UNPACK_BINARY:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SELFIE_CAPTURE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->isSmartTipsPopupEnabled(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->CREATE_MY_FILTER:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->BACK_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->SELFIE_TONE:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_SELFIE_CAPTURE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SELFIE_CAPTURE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SELFIE_CAPTURE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->setSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method private startQuickTakeRecording()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->isBurstShotGuideOnQuickTakeAvailable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsNeedToShowBurstShotGuideOnQuickTake:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/SoundManager;->requestAudioFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;->RECORDING_START:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/camera/interfaces/SoundManager;->playSound(Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getHapticFeedback()Lcom/sec/android/app/camera/interfaces/HapticManager;

    move-result-object v0

    const/16 v2, 0x26

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/HapticManager;->playHaptic(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->prepareQuickTakeRecording()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setOverriddenVideoSettingType(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->hideEffectMenu()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->changeShootingMode(IZ)Z

    const-string p0, "0008"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    return-void
.end method

.method private unregisterCameraSettingChangedListeners()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->MOTION_PHOTO:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SENSOR_CROP:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method private updateLatestFilter()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPhotoMyFilter()I

    move-result v0

    const/16 v1, 0x2712

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackPhotoFiltersTab()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackPhotoFilter()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInFilterStorage;->getFilterIndexByDBId(I)I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBackPhotoFilter(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackPhotoMyFilter()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInMyFilterStorage;->getFilterIndexByDBId(I)I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBackPhotoMyFilter(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontPhotoFiltersTab()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontPhotoFilter()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInFilterStorage;->getFilterIndexByDBId(I)I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontPhotoFilter(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontPhotoMyFilter()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInMyFilterStorage;->getFilterIndexByDBId(I)I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontPhotoMyFilter(I)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public isShootingAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 5

    const-string v0, "Photo"

    const-string v1, "onActivate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshMainButton(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    if-eqz p1, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->setHrmSensor(Z)V

    sget-boolean v2, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_MY_FILTER:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isFilterSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_PHOTO_EFFECTS_TAB:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v2, v3, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerDimChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$DimChangedListener;)V

    goto :goto_1

    :cond_1
    sget-boolean v2, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_MY_FILTER:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isFilterSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_EFFECTS_TAB:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v2, v3, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerDimChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$DimChangedListener;)V

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->registerLocalBroadcast()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->registerCameraSettingChangedListeners()V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->enableMenuListeners(Z)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->enableEngineEventListeners(Z)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo;->enableEngineCallbacks(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "CREATE_MY_FILTER_SELECTED_IMAGE_URI"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->showMyFilterMenu()V

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "selfie_tone_camera"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->showSelfieToneMenu()V

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    if-ne v2, v1, :cond_5

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_EFFECTS_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    goto :goto_2

    :cond_5
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PHOTO_EFFECTS_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->isEffectMenuEnabled()Z

    move-result v4

    invoke-interface {v3, v2, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setQuickSettingItemHighlight(Lcom/sec/android/app/camera/interfaces/CommandId;Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->isQrCodeDetectionAvailable()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->enableQrCodeDetection(Z)V

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBeautyManager:Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->access$900(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$1000(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mZoomMapViewManager:Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->access$1100(Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;)V

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsBurstCapturing:Z

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Camera_photo"

    invoke-static {v2, v3, v1}, Lcom/sec/android/app/camera/util/BroadcastUtil;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setOverriddenVideoSettingType(I)V

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->showBurstShotGuideOnQuickTakePopup()V

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->showSmartTipsSelfieCapture()V

    :cond_8
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->isQrCodeDetectionAvailable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mQrCodeDetectionManager:Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->access$1200(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$1300(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public onBurstCaptureCompleted()V
    .locals 5

    const-string v0, "Photo"

    const-string v1, "onBurstCaptureCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsBurstCapturing:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideCaptureProgressText()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCapturingProgress(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$1400(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$1500(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;I)V

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsBeautyAvailable:Z

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBeautyOffImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBeautyOffImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBeautyFilterEffectEnabled(I)V

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsFrontAngleChangeAvailable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mZoomMapViewManager:Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->access$1600(Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHoldCameraButtonTo()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, 0x30a

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, 0x100

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->isQrCodeDetectionAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableQrCodeDetection(Z)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v1

    if-ne v1, v3, :cond_6

    sget-boolean v1, Lcom/samsung/android/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f11023f

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHoldCameraButtonTo()I

    move-result v1

    if-ne v1, v4, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f1103cb

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f1103c9

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    :cond_6
    :goto_0
    return-void
.end method

.method public onBurstCaptureProgress(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBurstCaptureProgress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Photo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCapturingProgress(I)V

    return-void
.end method

.method public onBurstCaptureStarted()V
    .locals 3

    const-string v0, "Photo"

    const-string v1, "onBurstCaptureStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsBurstCapturing:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$1700(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Lcom/sec/android/app/camera/widget/gl/SceneDetectView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/SceneDetectView;->hide()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mZoomMapViewManager:Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->access$1800(Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x100

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideViewWithAnimation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x30a

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0x86

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHoldCameraButtonTo()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hideAllPopup()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showCaptureProgressText()V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsBeautyAvailable:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->hideEffectMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBeautyManager:Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->access$1900(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBeautyOffImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBeautyManager:Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->access$2000(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;)V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsFrontAngleChangeAvailable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->setVisibility(I)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->isQrCodeDetectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableQrCodeDetection(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mQrCodeDetectionManager:Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->access$2100(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mQrCodeDetectionManager:Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->access$2200(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;)V

    :cond_3
    return-void
.end method

.method public onCameraSettingChanged(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;I)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBeautyManager:Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->access$2600(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->enableShapeCorrection(Z)V

    goto/16 :goto_2

    :cond_1
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_LIVE_BEAUTY_SHAPE_CORRECTION:Z

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableShapeCorrection(Z)V

    goto/16 :goto_2

    :cond_2
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_POST_PROCESSING_MOTION_PHOTO:Z

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-ne p2, v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->enablePostProcessingMotionPhoto(Z)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAngleChangeSupported()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->isSuperResolution(I)Z

    move-result p1

    if-nez p1, :cond_5

    move p1, v0

    goto :goto_1

    :cond_5
    move p1, v2

    :goto_1
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsFrontAngleChangeAvailable:Z

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsFrontAngleChangeAvailable:Z

    if-eqz p1, :cond_6

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->enableFrontAngleChangeGroup(Z)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    if-eqz p1, :cond_9

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Photo;->enableFrontAngleChangeGroup(Z)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$2300(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$2400(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;->getState()Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;->ZOOM_STATE_2X:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;

    if-ne p1, p2, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$2400(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;->ZOOM_STATE_1X:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;->setState(Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 p2, 0x64

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    :cond_8
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$2500(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public onCaptureEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureEvent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Photo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$CaptureEvent:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const-wide/16 v2, 0x1f4

    if-eq p1, v1, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->isQrCodeDetectionAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1, v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setQrCodeDetectionInterval(J)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$3100(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$3300(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Lcom/sec/android/app/camera/widget/gl/NightShutter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/NightShutter;->cancelShutterAnimation()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$3400(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->isSelfieToneGuideAvailable()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_SELFIE_TONE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_SELFIE_TONE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->setSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;I)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->isQrCodeDetectionAvailable()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0, v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setQrCodeDetectionInterval(J)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$3100(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$3200(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$2700(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {p1, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$2802(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;I)I

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$2900(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$3000(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onConnectMakerPrepared(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;)V
    .locals 3

    const-string p1, "Photo"

    const-string v0, "onConnectMakerPrepared"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->updateLatestFilter()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPhotoFilter()I

    move-result p1

    const/4 v0, 0x6

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPhotoMyFilter()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontPhotoFiltersTab()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackPhotoFiltersTab()I

    move-result p0

    :goto_0
    if-nez p0, :cond_4

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->getFilterPreviewType()Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;

    move-result-object p1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;->FILTER:Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_1
    move v0, v1

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->getFilterPreviewType()Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;->MY_FILTER:Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$FilterPreviewType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_2
    invoke-interface {p2, v0}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;->setEffectProcessorMode(I)V

    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 1

    const-string p1, "Photo"

    const-string v0, "onCreateView"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$3500(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;Lcom/samsung/android/glview/GLViewGroup;)V

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_LIVE_BEAUTY:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSimpleMode()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsBeautyAvailable:Z

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsBeautyAvailable:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->makeBeautyOffImage()V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mZoomMapViewManager:Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->access$3600(Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;Lcom/samsung/android/glview/GLViewGroup;)V

    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)V
    .locals 2

    const/16 p0, 0x910

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "sef_file_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    const-string v0, "Front_Cam_Selfie_Info"

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p2, v0, p1, p0}, Lcom/sec/android/app/camera/util/SemExtendedFormatUtils;->addData(Ljava/io/File;Ljava/lang/String;[BI)I

    return-void
.end method

.method public onDimChanged(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Z)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_EFFECTS_TAB:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_PHOTO_EFFECTS_TAB:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    if-ne p1, v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDimChanged : key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Dim = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Photo"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_EFFECTS_TAB:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_EFFECTS_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PHOTO_EFFECTS_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    :goto_0
    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->isEffectMenuEnabled()Z

    move-result p0

    invoke-interface {p2, p1, p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setQuickSettingItemHighlight(Lcom/sec/android/app/camera/interfaces/CommandId;Z)V

    :cond_2
    return-void
.end method

.method public onFaceDetection([Landroid/graphics/Rect;)Z
    .locals 4
    .param p1    # [Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBeautyManager:Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->access$3700(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;[Landroid/graphics/Rect;)V

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-boolean v3, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_ADDITIONAL_EFFECTS_WITH_SCENE_DETECTION:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {v3, p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$3800(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;[Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCompositionGuide()I

    move-result p0

    if-ne p0, v2, :cond_1

    move v1, v2

    :cond_1
    or-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public onHide(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 4

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->getMenuId()Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/16 v1, 0x100

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsFrontAngleChangeAvailable:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->showWithAnimation()V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableLiveThumbnailPreviewCallback(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PHOTO_EFFECTS_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->isEffectMenuEnabled()Z

    move-result v3

    invoke-interface {p1, v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setQuickSettingItemHighlight(Lcom/sec/android/app/camera/interfaces/CommandId;Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$1400(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$1500(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableLiveThumbnailPreviewCallback(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_EFFECTS_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->isEffectMenuEnabled()Z

    move-result v3

    invoke-interface {p1, v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setQuickSettingItemHighlight(Lcom/sec/android/app/camera/interfaces/CommandId;Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    :goto_0
    return-void
.end method

.method public onHrmShutterDetected()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsBurstCapturing:Z

    const-string v1, "Photo"

    if-eqz v0, :cond_0

    const-string p0, "onHrmShutterDetected returned - BurstCapturing"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBeautyManager:Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->access$3900(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "onHrmShutterDetected returned - face is not detected"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->HRM_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    return-void
.end method

.method public onInactivate()V
    .locals 3

    const-string v0, "Photo"

    const-string v1, "onInactivate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPhotoMyFilter()I

    move-result v0

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->enableEngineCallbacks(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->enableEngineEventListeners(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBeautyManager:Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->access$4000(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$4100(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mZoomMapViewManager:Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->access$4200(Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mHandler:Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/Photo$MainHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->enableMenuListeners(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->unregisterCameraSettingChangedListeners()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Camera_photo"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/BroadcastUtil;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->isQrCodeDetectionAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->enableQrCodeDetection(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mQrCodeDetectionManager:Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->access$2100(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mQrCodeDetectionManager:Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->access$2200(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mQrCodeDetectionManager:Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->access$4300(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, 0x200

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_PHOTO_EFFECTS_TAB:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterDimChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$DimChangedListener;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->setHrmSensor(Z)V

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsScreenFlashStarted:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->hideScreenFlash()V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_PHOTO_EFFECTS_TAB:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterDimChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$DimChangedListener;)V

    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsFrontAngleChangeAvailable:Z

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Photo;->enableFrontAngleChangeGroup(Z)V

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsFrontAngleChangeAvailable:Z

    :cond_4
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsBurstShutterPressed:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPhotoMyFilter()I

    move-result v1

    const/16 v2, 0x2712

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    if-nez v1, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontPhotoMyFilter(I)V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBackPhotoMyFilter(I)V

    :cond_6
    :goto_1
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

    if-ne p1, p2, :cond_2

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsScreenFlashStarted:Z

    const/4 p2, 0x1

    const-string v0, "Photo"

    if-eqz p1, :cond_0

    const-string p0, "Ignore back key because screen flash is started"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$3100(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Ignore back key because photo night shot capturing"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->showPhotoNightShotWaitToast()V

    return p2

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->isQrCodeDetectionAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mQrCodeDetectionManager:Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->access$4400(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Ignore back key because QR popup is visible"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mQrCodeDetectionManager:Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->access$2100(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mQrCodeDetectionManager:Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->access$2200(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;)V

    return p2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onMenuCreated(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    :goto_0
    return-void
.end method

.method public onPictureSaved()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$4500(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$4600(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$4700(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/IntelligentUtil;->convertToDetectedSceneEvent(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$4800(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$4700(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$4900(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;I)V

    :cond_1
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SMART_SCAN_MANUAL_CROP:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$5000(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$5100(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Ljava/util/ArrayList;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraResolution;->isSuperResolution(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v3

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v3}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    :cond_2
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/sec/android/app/camera/cropper/CropActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v4, Lcom/sec/android/app/camera/cropper/CropConstants$CropMode;->DOCUMENT_SCAN:Lcom/sec/android/app/camera/cropper/CropConstants$CropMode;

    const-string v5, "cropMode"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "imagePath"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cropCoordinate"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    const-string v1, "isSecure"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "targetScaleRatio"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    const/16 v1, 0x7f6

    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$5002(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;Z)Z

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->sendSALogForPictureTaken()V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsBeautyAvailable:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBeautyManager:Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->access$5200(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;)V

    :cond_5
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_INTELLIGENT_RECOGNITION_TIPS:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$5300(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V

    :cond_6
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

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsScreenFlashStarted:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->hideEffectMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x170

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startScreenFlashAnimation()V

    return-void
.end method

.method public onScreenFlashStopped()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->hideScreenFlash()V

    return-void
.end method

.method public onShow(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShow : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->getMenuId()Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Photo"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->getMenuId()Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableLiveThumbnailPreviewCallback(Z)V

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsFrontAngleChangeAvailable:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mFrontAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->hideWithAnimation()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableLiveThumbnailPreviewCallback(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$1700(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Lcom/sec/android/app/camera/widget/gl/SceneDetectView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/SceneDetectView;->hide()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$700(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Lcom/sec/android/app/camera/widget/gl/SceneOptimizerToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/SceneOptimizerToast;->hide()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$5400(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCompositionGuide()I

    move-result p1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$5500(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Lcom/sec/android/app/camera/widget/gl/CompositionGuide;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/CompositionGuide;->hide()V

    :cond_2
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_CLOSE_UP_SUGGESTION:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$2400(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;->getState()Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;->ZOOM_STATE_2X:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$2400(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;->ZOOM_STATE_1X:Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton;->setState(Lcom/sec/android/app/camera/widget/gl/CloseUpSuggestionButton$State;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v0, 0x64

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$2500(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onShutterKeyCanceled()Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsBurstShutterPressed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsBurstCapturing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterReleased()Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsBurstShutterPressed:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBeautyManager:Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->access$2600(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBeautyManager:Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setSwFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$SwFaceDetectionListener;)V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public onShutterKeyLongPressed(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_QUICK_TAKE:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->BLE_SPEN:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VOLUME_KEY:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VOLUME_KEY:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const-string p0, "Photo"

    const-string p1, "onShutterKeyLongPressed : volume key does not support quick take, return."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->isQuickTakeRecordingAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->startQuickTakeRecording()V

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->getQuickTakeRecordingRestrictionString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {p0, p1, v1}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;Ljava/lang/String;I)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    :cond_2
    return v1

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->onBurstCaptureRequested(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onShutterKeyPressed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterKeyPullDown(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Photo;->onBurstCaptureRequested(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsBurstCapturing:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsBurstShutterPressed:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_NIGHT_MODE_SUGGESTION:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupVisible(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$2900(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$5400(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->INTELLIGENT_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupVisible(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->INTELLIGENT_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCompositionGuide()I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$5500(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Lcom/sec/android/app/camera/widget/gl/CompositionGuide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/CompositionGuide;->hide()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideCommand;->COMMAND_CHECK_STABLE_TO_RESET:Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideCommand;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setCompositionGuideCommand(Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideCommand;)V

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->isQrCodeDetectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const-wide/16 v3, 0x1388

    invoke-interface {v0, v3, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setQrCodeDetectionInterval(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mQrCodeDetectionManager:Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->access$2200(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mQrCodeDetectionManager:Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;->access$2100(Lcom/sec/android/app/camera/shootingmode/Photo$QrCodeDetectionManager;)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$5000(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SMART_SCAN_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    goto :goto_0

    :cond_7
    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SINGLE_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    :goto_0
    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->handleShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    goto :goto_2

    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterReleased()Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIsBurstShutterPressed:Z

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBeautyManager:Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->access$2600(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBeautyManager:Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setSwFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$SwFaceDetectionListener;)V

    :cond_9
    :goto_2
    return v2
.end method

.method public onShutterTimerEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Photo$2;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const/16 v1, 0x70

    const/4 v2, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$2900(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->setTimerCountingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onStartPreviewCompleted()V
    .locals 2

    const-string v0, "Photo"

    const-string v1, "onStartPreviewCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_POST_PROCESSING_MOTION_PHOTO:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPhoto()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->enablePostProcessingMotionPhoto(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Photo;->isQrCodeDetectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->enableQrCodeDetection(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mBeautyManager:Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;->access$5600(Lcom/sec/android/app/camera/shootingmode/Photo$BeautyManager;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mIntelligentManager:Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;->access$5700(Lcom/sec/android/app/camera/shootingmode/Photo$IntelligentManager;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mZoomMapViewManager:Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->access$1600(Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;)V

    return-void
.end method

.method public onStartPreviewPrepared(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V
    .locals 2

    const-string v0, "Photo"

    const-string v1, "onStartPreviewPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mZoomMapViewManager:Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;->access$1800(Lcom/sec/android/app/camera/shootingmode/Photo$ZoomMapViewManager;)V

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->isSelfieToneModeSupported()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-boolean p2, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SELFIE_TONE_MODE:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "selfie_tone_camera"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_PERSONAL_PRESET_INDEX:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfieToneMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_PERSONAL_PRESET_INDEX:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Photo;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfieToneMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onStartPreviewRequested()V
    .locals 0

    return-void
.end method
