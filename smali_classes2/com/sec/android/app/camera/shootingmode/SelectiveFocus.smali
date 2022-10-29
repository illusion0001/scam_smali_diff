.class Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;
.super Ljava/lang/Object;
.source "SelectiveFocus.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$HrmShutterListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;


# static fields
.field private static final MAX_IMAGE_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SelectiveFocus"


# instance fields
.field private final CAPTURE_PROGRESSBAR_BOTTOM_PADDING_LANDSCAPE:I

.field private final CAPTURE_PROGRESSBAR_BOTTOM_PADDING_PORTRAIT:I

.field private final CAPTURE_PROGRESSBAR_STEP_GAP:I

.field private final CAPTURE_PROGRESSBAR_STEP_HEIGHT:I

.field private final CAPTURE_PROGRESSBAR_STEP_WIDTH:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private final mHandler:Landroid/os/Handler;

.field private mIsFaceDetected:Z

.field private final mIsProgressStepOn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSefRequired:Z

.field private mIsWaitingCaptureResult:Z

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private final mOutFocusEventCallback:Lcom/samsung/android/camera/core2/MakerInterface$OutFocusEventCallback;

.field private mProgressBarHeight:I

.field private mProgressBarWidth:I

.field private final mProgressStep:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/glview/GLNinePatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_HEIGHT:I

    const v0, 0x7f070378

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_LANDSCAPE:I

    const v0, 0x7f070379

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_PORTRAIT:I

    const v0, 0x7f07037c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_STEP_WIDTH:I

    const v0, 0x7f07037b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_STEP_HEIGHT:I

    const v0, 0x7f07037a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_STEP_GAP:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressStep:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsProgressStepOn:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsWaitingCaptureResult:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsSefRequired:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsFaceDetected:Z

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarWidth:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarHeight:I

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$1;-><init>(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$2;-><init>(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mOutFocusEventCallback:Lcom/samsung/android/camera/core2/MakerInterface$OutFocusEventCallback;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->showOutFocusErrorToast(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->reset()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->setCaptureProgress(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->setHrmSensor(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/Engine;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsWaitingCaptureResult:Z

    return p0
.end method

.method static synthetic access$602(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsWaitingCaptureResult:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    return-object p0
.end method

.method static synthetic access$802(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsSefRequired:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->hideCaptureLayout()V

    return-void
.end method

.method private enableEngineCallbacks(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mOutFocusEventCallback:Lcom/samsung/android/camera/core2/MakerInterface$OutFocusEventCallback;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setOutFocusEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$OutFocusEventCallback;)V

    return-void
.end method

.method private enableEngineEventListener(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;)V

    return-void
.end method

.method private hideCaptureLayout()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

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

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsWaitingCaptureResult:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->hideCaptureLayout()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvents(Z)V

    return-void
.end method

.method private setCaptureProgress(I)V
    .locals 5

    if-ltz p1, :cond_4

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressStep:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x1

    if-ge v1, p1, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsProgressStepOn:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressStep:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLNinePatch;

    const v4, 0x7f080784

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressStep:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3, v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(IZ)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsProgressStepOn:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-lt v1, p1, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsProgressStepOn:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressStep:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLNinePatch;

    const v4, 0x7f08077f

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressStep:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3, v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(IZ)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsProgressStepOn:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, -0xe1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideShootingModeHelpText()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->showCaptureLayout()V

    :cond_4
    :goto_2
    return-void
.end method

.method private setHrmSensor(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHrmShutter()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHrmShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HrmShutterListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHrmShutterListener()V

    :goto_0
    return-void
.end method

.method private showCaptureLayout()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideShootingModeHelpText()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    return-void
.end method

.method private showOutFocusErrorToast(I)V
    .locals 3

    const/4 v0, -0x4

    const v1, 0x7f110402

    if-eq p1, v0, :cond_3

    const/4 v0, -0x3

    const/16 v2, 0x3e8

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const p1, 0x7f110401

    invoke-static {p0, p1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const p1, 0x7f110403

    invoke-static {p0, p1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 p1, 0x0

    invoke-static {p0, v1, p1}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    :goto_0
    return-void
.end method

.method private updateCaptureLayout()V
    .locals 7

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_WIDTH:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarHeight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_LANDSCAPE:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarWidth:I

    int-to-float v5, v4

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_HEIGHT:I

    sub-int/2addr v6, v4

    int-to-float v4, v6

    div-float/2addr v4, v1

    add-float/2addr v5, v4

    sub-float/2addr v5, v0

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarHeight:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_LANDSCAPE:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_HEIGHT:I

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v1

    sub-float/2addr v4, v0

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout()V

    return-void
.end method


# virtual methods
.method public isShootingAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->hideCaptureLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->updateCaptureLayout()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SELECTIVE_FOCUS:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshMainButton(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SELECTIVE_FOCUS:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->showShootingModeHelpText()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_HEART_RATE_SENSOR_SHUTTER:Z

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->setHrmSensor(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->registerLocalBroadcast()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->enableEngineEventListener(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->enableEngineCallbacks(Z)V

    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCameraSettingChanged(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;I)V
    .locals 0

    return-void
.end method

.method public onCaptureEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;)V
    .locals 0

    return-void
.end method

.method public onConnectMakerPrepared(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_HEIGHT:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_STEP_WIDTH:I

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_STEP_GAP:I

    add-int/2addr v3, v4

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    iput v3, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarWidth:I

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_STEP_HEIGHT:I

    iput v3, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarHeight:I

    new-instance v3, Lcom/samsung/android/glview/GLViewGroup;

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarWidth:I

    int-to-float v9, v5

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarHeight:I

    int-to-float v10, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v3

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_WIDTH:I

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarWidth:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v2

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_HEIGHT:I

    iget v8, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarHeight:I

    sub-int/2addr v7, v8

    iget v8, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_PORTRAIT:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v6, v7}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarHeight:I

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_LANDSCAPE:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_HEIGHT:I

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarWidth:I

    sub-int/2addr v7, v9

    int-to-float v7, v7

    div-float/2addr v7, v2

    sub-float/2addr v7, v1

    const/4 v9, 0x3

    invoke-virtual {v3, v9, v6, v7}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_WIDTH:I

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarHeight:I

    sub-int/2addr v6, v7

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_BOTTOM_PADDING_LANDSCAPE:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressBarWidth:I

    int-to-float v9, v7

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->SCREEN_HEIGHT:I

    sub-int/2addr v10, v7

    int-to-float v7, v10

    div-float/2addr v7, v2

    add-float/2addr v9, v7

    sub-float/2addr v9, v1

    invoke-virtual {v3, v5, v6, v9}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move v1, v8

    :goto_0
    if-ge v1, v4, :cond_0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressStep:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/glview/GLNinePatch;

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_STEP_WIDTH:I

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_STEP_GAP:I

    add-int/2addr v6, v5

    mul-int/2addr v6, v1

    int-to-float v11, v6

    const/4 v12, 0x0

    int-to-float v13, v5

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->CAPTURE_PROGRESSBAR_STEP_HEIGHT:I

    int-to-float v14, v5

    const v15, 0x7f08077f

    move-object v9, v3

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v15}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsProgressStepOn:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mProgressStep:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCaptureProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)V
    .locals 1

    iget-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsSefRequired:Z

    if-eqz p2, :cond_0

    const/16 p2, 0x840

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "sef_file_type"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsSefRequired:Z

    :cond_0
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
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsFaceDetected:Z

    return v0
.end method

.method public onHrmShutterDetected()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mIsFaceDetected:Z

    if-nez v0, :cond_0

    const-string p0, "SelectiveFocus"

    const-string v0, "onHrmShutterDetected : Returned because face is not detected"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->HRM_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    return-void
.end method

.method public onInactivate()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->enableEngineCallbacks(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->enableEngineEventListener(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->setHrmSensor(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->reset()V

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
    .locals 2

    const-string v0, "SelectiveFocus"

    const-string v1, "onShutterKeyReleased"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "onShutterKeyReleased : returned because capture is now in progress."

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x100

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->POST_PROCESSING_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->handleShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterTimerEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$3;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 p1, 0x70

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x60

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 p1, 0x80

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideShootingModeHelpText()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->setTimerCountingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onStartPreviewPrepared(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V
    .locals 0

    return-void
.end method
