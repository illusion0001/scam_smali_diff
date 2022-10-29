.class Lcom/sec/android/app/camera/shootingmode/SlowMotion;
.super Ljava/lang/Object;
.source "SlowMotion.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/RecordingMode;
.implements Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/camera/core2/MakerInterface$SlowMotionEventDetectionEventCallback;
.implements Lcom/samsung/android/glview/GLView$KeyListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# static fields
.field private static final MAX_NUM_OF_EVENT_POINTS:I = 0x4

.field private static final MAX_NUM_OF_EVENT_RESULTS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SlowMotion"


# instance fields
.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private final mEventResult:[J

.field private mEventResultSpeed:I

.field private mIsFacingSwitchable:Z

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mNumOfEventResults:I

.field private mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

.field private mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

.field private mSlowMotionEventLimitTime:J

.field private mSystemTime:I

.field private mSystemTimeScheduler:Ljava/util/Timer;

.field private mViewLayout:Lcom/samsung/android/glview/GLViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEventResult:[J

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEventResultSpeed:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mNumOfEventResults:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mSlowMotionEventLimitTime:J

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mSystemTime:I

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIsFacingSwitchable:Z

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/SlowMotion;)Lcom/sec/android/app/camera/interfaces/RecordingManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/SlowMotion;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$204(Lcom/sec/android/app/camera/shootingmode/SlowMotion;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mSystemTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mSystemTime:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/SlowMotion;)Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    return-object p0
.end method

.method private addSlowMotionEventResultToSEF()V
    .locals 7

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mNumOfEventResults:I

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mNumOfEventResults:I

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEventResult:[J

    aget-wide v3, v3, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEventResult:[J

    aget-wide v5, v5, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    add-int/2addr v2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEventResultSpeed:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mNumOfEventResults:I

    if-le v4, v3, :cond_0

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_0

    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSlowMotionEventResultToSEF : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SlowMotion"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/16 v2, 0x890

    const-string v3, "SlowMotion_Data"

    invoke-static {v1, v3, v0, v2}, Lcom/sec/android/app/camera/util/SemExtendedFormatUtils;->addData(Ljava/io/File;Ljava/lang/String;[BI)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->resetEventResult()V

    :cond_2
    return-void
.end method

.method private clear()V
    .locals 2

    const-string v0, "SlowMotion"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->resetEventResult()V

    return-void
.end method

.method private getSlowMotionFps(I)I
    .locals 0

    if-nez p1, :cond_0

    sget p0, Lcom/sec/android/app/camera/interfaces/RecordingManager;->SLOW_MOTION_RECORDING_FRONT_FPS:I

    return p0

    :cond_0
    const/16 p0, 0xf0

    return p0
.end method

.method private handleRecordingStopped()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x100

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIsFacingSwitchable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->stop()V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->STOP:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingRestricted()Z

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1103b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mSystemTimeScheduler:Ljava/util/Timer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mSystemTime:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mSystemTimeScheduler:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method private resetEventResult()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mNumOfEventResults:I

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEventResult:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startSystemTimeTick()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSystemTimeTick : elapsedTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mSystemTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlowMotion"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mSystemTimeScheduler:Ljava/util/Timer;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mSystemTimeScheduler:Ljava/util/Timer;

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/SlowMotion$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion$1;-><init>(Lcom/sec/android/app/camera/shootingmode/SlowMotion;)V

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRecordingLayout : cmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlowMotion"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion$2;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingCommand:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0xb

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingRestricted()Z

    move-result p0

    invoke-interface {p1, v1, p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x10

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startRecordingToShootingModeAnimation(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->showBackButton()V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->resetBottomBackground()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0xe2

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    const/16 v1, 0x8

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideBackButton()V

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->setBottomBackgroundHeight(F)V

    :goto_1
    return-void
.end method


# virtual methods
.method public cancelRecording()V
    .locals 3

    const-string v0, "SlowMotion"

    const-string v1, "cancelRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v1, v2, :cond_0

    const-string p0, "cancelRecording : Returned because recording is already stopping"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->CANCEL:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->resetAfTrigger()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

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

    const-string v0, "SlowMotion"

    const-string v1, "onActivate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->register(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshMainButton(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1103b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;->setTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->enableSlowMotionEventDetection(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->setShutterTimerCaptureTriggerListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;)V

    const/16 p1, 0xb

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isSupported(IZ)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {p1, v2}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isSupported(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIsFacingSwitchable:Z

    sget-object p1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onCancelRecordingRequested()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->cancelRecording()V

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

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->stopRecording()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByRecordingTime(J)Ljava/lang/String;

    move-result-object p1

    const-string v3, "0203"

    invoke-static {v3, v1, v2, p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;JLjava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-ne p0, v0, :cond_0

    const-string p0, "1228"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "1226"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onConnectMakerPrepared(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;)V
    .locals 1

    const-string p1, "SlowMotion"

    const-string v0, "onConnectMakerPrepared"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;->setPictureSize(Landroid/util/Size;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_0

    sget p0, Lcom/sec/android/app/camera/interfaces/RecordingManager;->SLOW_MOTION_RECORDING_FRONT_FPS:I

    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;->setVideoMaxFps(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0xf0

    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;->setVideoMaxFps(I)V

    :goto_0
    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 0

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    new-instance p1, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {p1, p2}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {p1, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method public onEventDetectionResult([Lcom/samsung/android/camera/core2/container/SlowMotionEvent;)V
    .locals 12
    .param p1    # [Lcom/samsung/android/camera/core2/container/SlowMotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SlowMotion"

    const-string v1, "onEventDetectionResult - E"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    array-length v1, p1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    array-length v2, p1

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->getSlowMotionFps(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x1e

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    iget-wide v4, v4, Lcom/samsung/android/camera/core2/container/SlowMotionEvent;->startMillisecond:J

    int-to-long v6, v1

    mul-long/2addr v4, v6

    iget-wide v8, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mSlowMotionEventLimitTime:J

    cmp-long v4, v4, v8

    if-ltz v4, :cond_1

    goto :goto_3

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEventResult:[J

    mul-int/lit8 v5, v3, 0x2

    aget-object v8, p1, v3

    iget-wide v8, v8, Lcom/samsung/android/camera/core2/container/SlowMotionEvent;->startMillisecond:J

    mul-long/2addr v8, v6

    aput-wide v8, v4, v5

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEventResult:[J

    add-int/lit8 v5, v5, 0x1

    aget-object v8, p1, v3

    iget-wide v8, v8, Lcom/samsung/android/camera/core2/container/SlowMotionEvent;->endMillisecond:J

    mul-long/2addr v8, v6

    iget-wide v10, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mSlowMotionEventLimitTime:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_2

    goto :goto_2

    :cond_2
    aget-object v8, p1, v3

    iget-wide v8, v8, Lcom/samsung/android/camera/core2/container/SlowMotionEvent;->endMillisecond:J

    mul-long v10, v8, v6

    :goto_2
    aput-wide v10, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v1, v4

    double-to-int p1, v1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEventResultSpeed:I

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mNumOfEventResults:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mSlowMotionEventLimitTime:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEventDetectionResult - X, result : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mNumOfEventResults:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInactivate()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->resetCenterView()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->stopRecording()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->cancelRecording()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->handleRecordingStopped()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableSlowMotionEventDetection(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->unregister()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->setShutterTimerCaptureTriggerListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->clear()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    const-string p0, "SlowMotion"

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
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

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

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result p2

    const/4 v0, 0x1

    const-string v1, "SlowMotion"

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

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->stopRecording()V

    :cond_3
    return v0

    :cond_4
    return v3
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string p0, "SlowMotion"

    const-string p1, "Recording control is not available at this moment, ignore key up event"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 v0, 0x17

    if-eq p2, v0, :cond_1

    const/16 v0, 0x42

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result p1

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->startRecording()V

    return v1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->stopRecording()V

    return v1

    :cond_3
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

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isDimmed(I)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isAnimationFinished(I)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->startRecording()V

    return v0
.end method

.method public onRecordingEvent(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion$2;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->handleRecordingStopped()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setSlowMotionEventDetectionEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$SlowMotionEventDetectionEventCallback;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->prepareVideoRecording()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setSlowMotionEventDetectionEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$SlowMotionEventDetectionEventCallback;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, 0x100

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mIsFacingSwitchable:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShootingModeToRecordingAnimation(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-ne p0, v1, :cond_3

    const-string p0, "1227"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p0, "1225"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onRecordingMaxDurationReached()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f11050e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->onStopRecordingRequested()V

    return-void
.end method

.method public onRecordingMaxFileSizeReached()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f11050d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->stopRecording()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->cancelRecording()V

    :goto_0
    return-void
.end method

.method public onRecordingRestricted(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->stopRecording()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->cancelRecording()V

    :cond_1
    :goto_0
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

    const-string p4, "SlowMotion"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setBoundary(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingTimeLimited()Z

    move-result p2

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getMaxRecordingTimeLimitInSecond()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->start(ZI)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->startSystemTimeTick()V

    :cond_0
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

    const-string v0, "SlowMotion"

    const-string v1, "onShutterTimerCaptureTriggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->startRecording()V

    return-void
.end method

.method public onShutterTimerEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/SlowMotion$2;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

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
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 p1, 0x70

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->setTimerCountingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 p1, 0x100

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStartPreviewPrepared(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V
    .locals 2

    const-string p2, "SlowMotion"

    const-string v0, "onStartPreviewPrepared"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->getSlowMotionFps(I)I

    move-result p0

    sget-object p2, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/util/Range;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, p2, v0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

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
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->stopRecording()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->cancelRecording()V

    :cond_1
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

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isDimmed(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

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
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleKeyCancelled(I)V

    return v1

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0, v2, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    return v1

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0, v2, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return v1

    :cond_5
    return v0
.end method

.method public onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->getSlowMotionFps(I)I

    move-result p0

    const-string v0, "recording_mode"

    const/16 v1, 0x78

    if-ne p0, v1, :cond_0

    const-string p0, "13"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "12"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onVideoSaved()V
    .locals 2

    const-string v0, "SlowMotion"

    const-string v1, "onVideoSaved"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->addSlowMotionEventResultToSEF()V

    return-void
.end method

.method public startRecording()V
    .locals 4

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->START:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->startAfTrigger()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->startVideoRecording()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110479

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->requestFocus(I)V

    :cond_0
    return-void
.end method

.method public stopRecording()V
    .locals 5

    const-string v0, "SlowMotion"

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mSlowMotionEventLimitTime:J

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->requestSlowMotionEventResult()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mSystemTime:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getMaxRecordingTimeLimitInSecond()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateRecordingTime(JI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->resetAfTrigger()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->stopVideoRecording(Z)V

    return-void
.end method
