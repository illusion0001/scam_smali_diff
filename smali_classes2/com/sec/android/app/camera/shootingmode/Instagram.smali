.class public Lcom/sec/android/app/camera/shootingmode/Instagram;
.super Ljava/lang/Object;
.source "Instagram.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/RecordingMode;
.implements Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;
.implements Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomChangeGroupOpenStateListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$PreviewSnapShotListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;
.implements Lcom/sec/android/app/camera/interfaces/BaseMenuController$MainButtonChangeListener;
.implements Lcom/sec/android/app/camera/interfaces/BaseMenuController$SubQuickSettingVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;
    }
.end annotation


# static fields
.field private static final CENTER_BUTTON_SCALE_UP_RATE:F = 1.2f

.field private static final INSTAGRAM_LOGO_HIDE_ANIMATION_DURATION:I = 0xfa

.field private static final INSTAGRAM_LOGO_HIDE_TIME_OUT:I = 0x1388

.field private static final INSTAGRAM_PROGRESS_SHADOW_SHOW_ANIMATION_DURATION:I = 0x5dc

.field private static final MAX_RECORDING_TIME_IN_MS:I = 0xea60

.field private static final MESSAGE_HIDE_INSTAGRAM_LOGO:I = 0x3

.field private static final MESSAGE_PROGRESS:I = 0x1

.field private static final MESSAGE_START_RECORDING:I = 0x2

.field private static final MESSAGE_UPDATE_THUMBNAIL:I = 0x4

.field private static final MESSAGE_UPDATE_THUMBNAIL_DELAY:I = 0xa

.field private static final PROGRESS_TIMER_INTERVAL:I = 0xa

.field private static final PROGRESS_WHEEL_DEGREE_FOR_CLIPPING:I = 0xaa

.field private static final PROGRESS_WHEEL_DEGREE_FOR_SHOW_SHADOW:I = 0xf0

.field private static final RECORDING_TIME_FOR_1_CYCLE_OF_PROGRESS_WHEEL:I = 0x3a98

.field private static final START_RECORDING_PRESS_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "Instagram"


# instance fields
.field private final INSTAGRAM_LOGO_HEIGHT:F

.field private final INSTAGRAM_LOGO_POS_Y:F

.field private final INSTAGRAM_LOGO_WIDTH:F

.field private final ONE_HAND_ZOOM_MAX_LENGTH:F

.field private final ONE_HAND_ZOOM_THRESHOLD:F

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final THUMBNAIL_GROUP_HEIGHT:F

.field private final THUMBNAIL_IMAGE_INTERVAL:F

.field private final THUMBNAIL_IMAGE_WIDTH:F

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCenterButton:Lcom/samsung/android/glview/GLButton;

.field private mCenterButtonScaledSize:F

.field private mCenterButtonSize:F

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private final mHandler:Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;

.field private mInstagramLogo:Lcom/samsung/android/glview/GLImage;

.field private mIsScreenFlashStarted:Z

.field private mIsShutterKeyPressed:Z

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mProgressImage:Lcom/samsung/android/glview/GLImage;

.field private mProgressShadowGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mProgressShadowImage:Lcom/samsung/android/glview/GLImage;

.field private mRecordingCount:I

.field private mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

.field private mStartTimeMs:J

.field private mStartingZoomValue:I

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mThumbnailList:Lcom/sec/android/app/camera/widget/gl/InstagramThumbnailList;

.field private mThumbnailProgressStep:F


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->SCREEN_HEIGHT:I

    const v0, 0x7f07031c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->INSTAGRAM_LOGO_HEIGHT:F

    const v0, 0x7f070131

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->INSTAGRAM_LOGO_WIDTH:F

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getTopBaseLinePositionY()F

    move-result v0

    const v1, 0x7f07031a

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->INSTAGRAM_LOGO_HEIGHT:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->INSTAGRAM_LOGO_POS_Y:F

    const v0, 0x7f070134

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->THUMBNAIL_GROUP_HEIGHT:F

    const v0, 0x7f070138

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->THUMBNAIL_IMAGE_WIDTH:F

    const v0, 0x7f070136

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->THUMBNAIL_IMAGE_INTERVAL:F

    const v0, 0x7f070133

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->ONE_HAND_ZOOM_THRESHOLD:F

    const v0, 0x7f070132

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->ONE_HAND_ZOOM_MAX_LENGTH:F

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/Instagram;Lcom/sec/android/app/camera/shootingmode/Instagram$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mHandler:Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingCount:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mStartTimeMs:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mThumbnailProgressStep:F

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mIsShutterKeyPressed:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mIsScreenFlashStarted:Z

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/Instagram;)Lcom/samsung/android/glview/GLImage;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mInstagramLogo:Lcom/samsung/android/glview/GLImage;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/Instagram;Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Instagram;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/Instagram;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/Instagram;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->endProgressWheel()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/Instagram;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->handleProgressMessage()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/Instagram;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->hideInstagramLogoWithAnimation()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/Instagram;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->updateThumbnail()V

    return-void
.end method

.method private enableEngineEventListener(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

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

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setPreviewSnapShotListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$PreviewSnapShotListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-object p0, v1

    :goto_2
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setScreenFlashEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;)V

    return-void
.end method

.method private endProgressWheel()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->rotateDegree(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressShadowGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    return-void
.end method

.method private getFpsRange(Z)Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p1, :cond_0

    new-instance p0, Landroid/util/Range;

    invoke-direct {p0, v0, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Landroid/util/Range;

    const/4 p1, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p0

    :cond_1
    new-instance p0, Landroid/util/Range;

    const/16 p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p0
.end method

.method private getLightConditionMode(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private handleOneHandZoom(F)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->startZooming()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getTop()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButtonSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->ONE_HAND_ZOOM_THRESHOLD:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getMaxZoomLevel()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mStartingZoomValue:I

    sub-int/2addr v1, v2

    cmpl-float v3, p1, v0

    if-ltz v3, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    return-void

    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->ONE_HAND_ZOOM_MAX_LENGTH:F

    sub-float v2, v0, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getMaxZoomLevel()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    return-void

    :cond_1
    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->ONE_HAND_ZOOM_MAX_LENGTH:F

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mStartingZoomValue:I

    add-int/2addr p0, p1

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    return-void
.end method

.method private handleProgressMessage()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->updateProgressWheel()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mHandler:Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mHandler:Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private handleShutterKeyDown()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result v0

    const-string v1, "Instagram"

    if-nez v0, :cond_0

    const-string p0, "Recording control is not available at this moment, ignore key down event"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mIsShutterKeyPressed:Z

    if-eqz v0, :cond_1

    const-string p0, "Shutter key is already pressed, ignore key down event"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "handleShutterKeyDown"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mIsShutterKeyPressed:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mHandler:Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mHandler:Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private handleShutterKeyUp(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)V
    .locals 5

    const-string v0, "Instagram"

    const-string v1, "handleShutterKeyUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mIsShutterKeyPressed:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v1, v2, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->stopRecording()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long p1, v1, v3

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f1102d8

    invoke-static {p1, v1, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->cancelRecording()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mHandler:Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCaptureAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SINGLE_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "2072"

    goto :goto_0

    :cond_4
    const-string p0, "1702"

    :goto_0
    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private hideInstagramLogo()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mInstagramLogo:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mHandler:Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mInstagramLogo:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->isAnimationFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mInstagramLogo:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->cancelAnimation()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mInstagramLogo:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    return-void
.end method

.method private hideInstagramLogoWithAnimation()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/camera/util/interpolator/SineOut33;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/interpolator/SineOut33;-><init>()V

    const/16 v1, 0xfa

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Instagram$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/Instagram$1;-><init>(Lcom/sec/android/app/camera/shootingmode/Instagram;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mInstagramLogo:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mInstagramLogo:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    return-void
.end method

.method private hideScreenFlash()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideScreenFlashAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x170

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mIsScreenFlashStarted:Z

    return-void
.end method

.method private isStartRecordingAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecordingAvailable(Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isAnimationFinished()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method private launchInstagram(Z)Z
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.instagram.share.ADD_TO_STORY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v2, "video/*"

    goto :goto_0

    :cond_0
    const-string v2, "image/*"

    :goto_0
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "content_url"

    const-string v2, "instagram://user?username=samsungmobile"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/shootingmode/Instagram$2;

    invoke-direct {v4, p0, p1, v1}, Lcom/sec/android/app/camera/shootingmode/Instagram$2;-><init>(Lcom/sec/android/app/camera/shootingmode/Instagram;ZLandroid/content/Intent;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {v2, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "Instagram"

    const-string p1, "Activity is not found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return v0

    :cond_3
    return v4
.end method

.method private makeCenterButton()V
    .locals 14

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x7f070047

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    const v1, 0x7f07003b

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButtonSize:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v6, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButton:Lcom/samsung/android/glview/GLButton;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->SCREEN_WIDTH:I

    int-to-float v1, v1

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButtonSize:F

    sub-float/2addr v1, v8

    div-float v5, v1, v2

    const v9, 0x7f08086b

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v3, v0

    move v7, v8

    invoke-direct/range {v3 .. v13}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButton:Lcom/samsung/android/glview/GLButton;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1104a3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButton:Lcom/samsung/android/glview/GLButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    return-void
.end method

.method private makeCenterButtonProgress()V
    .locals 11

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x7f070047

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    const v1, 0x7f07003b

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButtonScaledSize:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v6, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->SCREEN_WIDTH:I

    int-to-float v1, v1

    div-float v5, v1, v2

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButtonScaledSize:F

    div-float v7, v8, v2

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressImage:Lcom/samsung/android/glview/GLImage;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButtonScaledSize:F

    neg-float v3, v8

    div-float v5, v3, v2

    const/4 v6, 0x0

    const/4 v9, 0x1

    const v10, 0x7f080746

    move-object v3, v0

    move v7, v8

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressImage:Lcom/samsung/android/glview/GLImage;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressImage:Lcom/samsung/android/glview/GLImage;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    return-void
.end method

.method private makeCenterButtonProgressShadow()V
    .locals 10

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x7f070047

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    const v1, 0x7f07003b

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButtonScaledSize:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v6, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressShadowGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->SCREEN_WIDTH:I

    int-to-float v1, v1

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButtonScaledSize:F

    sub-float/2addr v1, v8

    div-float v5, v1, v2

    move-object v3, v0

    move v7, v8

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressShadowGroup:Lcom/samsung/android/glview/GLViewGroup;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressShadowGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressShadowGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressShadowGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/16 v2, 0x5dc

    new-instance v3, Lcom/sec/android/app/camera/util/interpolator/SineInOut80;

    invoke-direct {v3}, Lcom/sec/android/app/camera/util/interpolator/SineInOut80;-><init>()V

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressShadowImage:Lcom/samsung/android/glview/GLImage;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButtonScaledSize:F

    const/4 v8, 0x1

    const v9, 0x7f080747

    move-object v2, v0

    move v6, v7

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressShadowImage:Lcom/samsung/android/glview/GLImage;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressShadowImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setBypassTouch(Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressShadowImage:Lcom/samsung/android/glview/GLImage;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    return-void
.end method

.method private makeInstagramLogo()V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mInstagramLogo:Lcom/samsung/android/glview/GLImage;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->SCREEN_WIDTH:I

    int-to-float v1, v1

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->INSTAGRAM_LOGO_WIDTH:F

    sub-float/2addr v1, v5

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->INSTAGRAM_LOGO_POS_Y:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->INSTAGRAM_LOGO_HEIGHT:F

    const/4 v7, 0x1

    const v8, 0x7f080722

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mInstagramLogo:Lcom/samsung/android/glview/GLImage;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mInstagramLogo:Lcom/samsung/android/glview/GLImage;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    return-void
.end method

.method private makeThumbnailList()V
    .locals 9

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v0

    const v1, 0x7f0704ac

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->THUMBNAIL_GROUP_HEIGHT:F

    sub-float v4, v0, v6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mThumbnailList:Lcom/sec/android/app/camera/widget/gl/InstagramThumbnailList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/InstagramThumbnailList;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v3, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->SCREEN_WIDTH:I

    int-to-float v5, v1

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->THUMBNAIL_IMAGE_INTERVAL:F

    const/4 v8, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/camera/widget/gl/InstagramThumbnailList;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mThumbnailList:Lcom/sec/android/app/camera/widget/gl/InstagramThumbnailList;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mThumbnailList:Lcom/sec/android/app/camera/widget/gl/InstagramThumbnailList;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/InstagramThumbnailList;->setVisibility(I)V

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mIsShutterKeyPressed:Z

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mThumbnailProgressStep:F

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mThumbnailList:Lcom/sec/android/app/camera/widget/gl/InstagramThumbnailList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/InstagramThumbnailList;->resetList()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mHandler:Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private showInstagramLogo()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mInstagramLogo:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mHandler:Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startCenterButtonScaleDownAnimation()V
    .locals 10

    const-string v0, "Instagram"

    const-string v1, "startCenterButtonScaleDownAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButton:Lcom/samsung/android/glview/GLButton;

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineInOut80;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineInOut80;-><init>()V

    const v2, 0x3f99999a    # 1.2f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f99999a    # 1.2f

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v8, 0x50

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Instagram$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/Instagram$3;-><init>(Lcom/sec/android/app/camera/shootingmode/Instagram;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    return-void
.end method

.method private startCenterButtonScaleUpAnimation()V
    .locals 10

    const-string v0, "Instagram"

    const-string v1, "startCenterButtonScaleUpAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->hideInstagramLogo()V

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButton:Lcom/samsung/android/glview/GLButton;

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineInOut80;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineInOut80;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f99999a    # 1.2f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f99999a    # 1.2f

    const/16 v8, 0x50

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Instagram$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/Instagram$4;-><init>(Lcom/sec/android/app/camera/shootingmode/Instagram;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    return-void
.end method

.method private startProgressWheel()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->rotateDegree(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressShadowGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    return-void
.end method

.method private updateProgressWheel()V
    .locals 5

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getCurrentTimeInMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mStartTimeMs:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x466a6000    # 15000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButtonScaledSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    add-double/2addr v3, v1

    double-to-float v1, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressShadowGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButtonScaledSize:F

    sub-float v1, v3, v1

    const/high16 v4, 0x41a00000    # 20.0f

    add-float/2addr v1, v4

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/16 v3, 0xf0

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressShadowGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressShadowGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressShadowGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    goto :goto_0

    :cond_0
    const/16 v3, 0x168

    if-ne v0, v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getCurrentTimeInMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mStartTimeMs:J

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressShadowGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    const/16 v2, 0xaa

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    :cond_2
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x5a

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x5a

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLImage;->rotateDegree(I)V

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

    const-string v1, "Instagram"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Instagram$5;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingCommand:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, -0x1

    const/16 v1, 0x1f

    const/16 v2, 0x110

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->showBackButton()V

    goto/16 :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->endProgressWheel()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, 0x100

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mThumbnailList:Lcom/sec/android/app/camera/widget/gl/InstagramThumbnailList;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/InstagramThumbnailList;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->showBackButton()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->resetBottomBackground()V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->startCenterButtonScaleUpAnimation()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, -0xe1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideBackButton()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->setBottomBackgroundHeight(F)V

    :cond_2
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

.method private updateThumbnail()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mThumbnailList:Lcom/sec/android/app/camera/widget/gl/InstagramThumbnailList;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mThumbnailProgressStep:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mThumbnailProgressStep:F

    const/high16 v2, 0x44af0000    # 1400.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/widget/gl/InstagramThumbnailList;->updateThumbnail(FI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mHandler:Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;->removeMessages(I)V

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mThumbnailProgressStep:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mThumbnailProgressStep:F

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mHandler:Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelRecording()V
    .locals 3

    const-string v0, "Instagram"

    const-string v1, "cancelRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v1, v2, :cond_0

    const-string p0, "cancelRecording : Returned because recording is already stopping"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->endProgressWheel()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->startCenterButtonScaleDownAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mHandler:Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->resetAfTrigger()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->stopZooming()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

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

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isSnapshotAvailable()Z

    move-result p0

    return p0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->register(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setMainButtonChangeListener(Lcom/sec/android/app/camera/interfaces/BaseMenuController$MainButtonChangeListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->registerSubQuickSettingVisibilityChangedListener(Lcom/sec/android/app/camera/interfaces/BaseMenuController$SubQuickSettingVisibilityChangedListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_INSTAGRAM:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshMainButton(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_INSTAGRAM:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->setZoomChangeGroupOpenStateListener(Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomChangeGroupOpenStateListener;)V

    sget-object p1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Instagram;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->showInstagramLogo()V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Instagram;->enableEngineEventListener(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isVideoBeautyFaceSupported(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoBeautyLevel()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setSkinToneLevel(I)V

    :cond_0
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onCancelRecordingRequested()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->cancelRecording()V

    return-void
.end method

.method public onCaptureEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;)V
    .locals 0

    return-void
.end method

.method public onChanged(Lcom/sec/android/app/camera/interfaces/CommandId;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_INSTAGRAM:Lcom/sec/android/app/camera/interfaces/CommandId;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    :goto_0
    return-void
.end method

.method public onConnectMakerPrepared(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;)V
    .locals 2

    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_INSTAGRAM:Ljava/util/Map;

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getCaptureSize(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    invoke-interface {p2, v0}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;->setPictureSize(Landroid/util/Size;)V

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Capability;->isSecondPictureConfigSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/samsung/android/camera/feature/Feature;->BACK_WIDE_CAMERA_ID:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;->setExtraPictureSize(Landroid/util/Size;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 0

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const p1, 0x7f070034

    invoke-static {p1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButtonSize:F

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButtonSize:F

    const p3, 0x3f99999a    # 1.2f

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButtonScaledSize:F

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->makeCenterButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->makeCenterButtonProgress()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->makeCenterButtonProgressShadow()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->makeInstagramLogo()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->makeThumbnailList()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p1, p3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressShadowGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressShadowImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p1, p3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p2, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressShadowGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mProgressGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mInstagramLogo:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p2, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mThumbnailList:Lcom/sec/android/app/camera/widget/gl/InstagramThumbnailList;

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

.method public onInactivate()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setMainButtonChangeListener(Lcom/sec/android/app/camera/interfaces/BaseMenuController$MainButtonChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->unregisterSubQuickSettingVisibilityChangedListener(Lcom/sec/android/app/camera/interfaces/BaseMenuController$SubQuickSettingVisibilityChangedListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->hideInstagramLogo()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->stopRecording()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->cancelRecording()V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mIsScreenFlashStarted:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->hideScreenFlash()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->unregister()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->enableEngineEventListener(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->reset()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setMainButtonClickListener(Lcom/sec/android/app/camera/interfaces/BaseMenuController$MainButtonClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, 0x200

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->resetCenterView()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->setZoomChangeGroupOpenStateListener(Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomChangeGroupOpenStateListener;)V

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

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mIsScreenFlashStarted:Z

    if-eqz p0, :cond_1

    const-string p0, "Instagram"

    const-string p1, "Ignore back key because screen flash is started"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPictureSaved()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->launchInstagram(Z)Z

    return-void
.end method

.method public onPreviewSnapShotTaken(Landroid/graphics/Bitmap;Landroid/util/Size;)V
    .locals 5
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Instagram"

    const-string v1, "onPreviewSnapShotTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    div-int/2addr p2, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSaveAsFlipped()I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSaveAsFlipped()I

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x10e

    goto :goto_1

    :cond_1
    const/16 v4, 0x5a

    :goto_1
    invoke-static {p1, v0, p2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, v4, v2}, Lcom/sec/android/app/camera/util/ImageUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x7f070137

    invoke-static {p2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result p2

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->THUMBNAIL_IMAGE_WIDTH:F

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-static {p2, p1}, Lcom/sec/android/app/camera/util/ImageUtils;->getRoundedBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mThumbnailList:Lcom/sec/android/app/camera/widget/gl/InstagramThumbnailList;

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingCount:I

    invoke-virtual {p1, p2, v0}, Lcom/sec/android/app/camera/widget/gl/InstagramThumbnailList;->setThumbnailImage(Landroid/graphics/Bitmap;I)V

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingCount:I

    if-ne p1, v3, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mThumbnailList:Lcom/sec/android/app/camera/widget/gl/InstagramThumbnailList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/InstagramThumbnailList;->showList()V

    goto :goto_2

    :cond_2
    if-le p1, v3, :cond_3

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mThumbnailList:Lcom/sec/android/app/camera/widget/gl/InstagramThumbnailList;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/camera/widget/gl/InstagramThumbnailList;->showThumbnailBackground(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mThumbnailList:Lcom/sec/android/app/camera/widget/gl/InstagramThumbnailList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/InstagramThumbnailList;->focusNextItem()V

    :cond_3
    :goto_2
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingCount:I

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingCount:I

    if-le p1, v3, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mHandler:Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;->removeMessages(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mThumbnailProgressStep:F

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mHandler:Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;->sendEmptyMessage(I)Z

    :cond_4
    return-void
.end method

.method public onRecordKeyCanceled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onRecordKeyPressed()Z
    .locals 2

    const-string v0, "Instagram"

    const-string v1, "onRecordKeyPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->handleShutterKeyDown()V

    const/4 p0, 0x1

    return p0
.end method

.method public onRecordKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordKeyReleased : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Instagram"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Instagram;->handleShutterKeyUp(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onRecordingEvent(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;)V
    .locals 4

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Instagram$5;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object p1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->CANCEL:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Instagram;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Instagram;->getLightConditionMode(Z)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->setLightConditionMode(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Instagram;->getFpsRange(Z)Landroid/util/Range;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->setFpsRange(Landroid/util/Range;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setAutoFocusEventListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->reset()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->prepareVideoRecording()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Instagram;->getLightConditionMode(Z)I

    move-result v3

    invoke-interface {p1, v3}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->setLightConditionMode(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Instagram;->getFpsRange(Z)Landroid/util/Range;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->setFpsRange(Landroid/util/Range;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setAutoFocusEventListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->reset()V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Instagram;->launchInstagram(Z)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->STOP:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Instagram;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->prepareVideoRecording()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onRecordingMaxDurationReached()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f11050e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->onStopRecordingRequested()V

    return-void
.end method

.method public onRecordingMaxFileSizeReached()V
    .locals 0

    return-void
.end method

.method public onRecordingRestricted(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->onStopRecordingRequested()V

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

    const-string p4, "Instagram"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getCurrentTimeInMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mStartTimeMs:J

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->takePreviewSnapshot()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->startProgressWheel()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mHandler:Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;

    const/4 p1, 0x1

    const-wide/16 p2, 0xa

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0xea60

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->stopRecording()V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    const-wide/16 v0, 0xf

    rem-long/2addr p1, v0

    cmp-long p1, p1, p3

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->takePreviewSnapshot()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onScreenFlashStarted()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mIsScreenFlashStarted:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x170

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startScreenFlashAnimation()V

    return-void
.end method

.method public onScreenFlashStopped()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->hideScreenFlash()V

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

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->handleShutterKeyDown()V

    const/4 p0, 0x1

    return p0
.end method

.method public onShutterKeyPullDown(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterKeyReleased : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Instagram"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Instagram;->handleShutterKeyUp(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onShutterTimerEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Instagram$5;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

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
    sget-object p1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Instagram;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->setTimerCountingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;)V

    :goto_0
    return-void
.end method

.method public onStartPreviewPrepared(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    const/16 p2, 0x1e

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, p0, v0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/util/Range;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, p0, v0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_METERING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_LIGHT_CONDITION_ENABLE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public onStopRecordingRequested()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->stopRecording()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->cancelRecording()V

    :goto_0
    return-void
.end method

.method public onSubQuickSettingVisibilityChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mInstagramLogo:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLImage;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->hideInstagramLogo()V

    :cond_0
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "Instagram"

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 p2, 0x3

    if-eq v0, p2, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p1, v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Instagram;->handleOneHandZoom(F)V

    return v2

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "onTouch up - CenterButton"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Instagram;->handleShutterKeyUp(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCenterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "onTouch down - CenterButton"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->handleShutterKeyDown()V

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

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

.method public onZoomChangeGroupClosed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x100

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    :cond_0
    return-void
.end method

.method public onZoomChangeGroupOpenPrepared()V
    .locals 0

    return-void
.end method

.method public onZoomChangeGroupOpened()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x100

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideViewWithAnimation(I)V

    return-void
.end method

.method public startRecording()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->isStartRecordingAvailable()Z

    move-result v0

    const-string v1, "Instagram"

    if-nez v0, :cond_0

    const-string p0, "startRecording : Returned, because start recording is not available."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "startRecording"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->START:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mStartingZoomValue:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Instagram;->getLightConditionMode(Z)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->setLightConditionMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Instagram;->getFpsRange(Z)Landroid/util/Range;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->setFpsRange(Landroid/util/Range;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->startVideoRecording()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "2073"

    goto :goto_0

    :cond_1
    const-string p0, "1703"

    :goto_0
    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    return-void
.end method

.method public stopRecording()V
    .locals 2

    const-string v0, "Instagram"

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->endProgressWheel()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Instagram;->startCenterButtonScaleDownAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mHandler:Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Instagram$MainHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->stopZooming()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Instagram;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->stopVideoRecording(Z)V

    return-void
.end method
