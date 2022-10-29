.class Lcom/sec/android/app/camera/shootingmode/Panorama;
.super Ljava/lang/Object;
.source "Panorama.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/samsung/android/camera/core2/MakerInterface$PanoramaEventCallback;
.implements Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraIdChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/BaseMenuController$ShutterProgressWheelAnimationEndListener;
.implements Lcom/sec/android/app/camera/widget/gl/PanoramaGuide$GuideOrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;,
        Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;
    }
.end annotation


# static fields
.field private static final MAX_CAPTURE_COUNT:I = 0x320

.field private static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field private static final MIN_CAPTURE_COUNT_TO_STOP_CAPTURE:I = 0x2

.field private static final NORMAL_ANGLE_CAL_FACTOR:F

.field private static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

.field private static final SHUTTER_PROGRESS_ANIMATION_DURATION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "PanoramaApp"

.field private static final WIDE_ANGLE_CAL_FACTOR:F


# instance fields
.field private final ANGLE_CHANGE_GROUP_HEIGHT:F

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCaptureCount:I

.field private mCaptureImageRatio:F

.field private mCaptureResolutionHeight:I

.field private mCaptureResolutionId:I

.field private mCaptureResolutionWidth:I

.field private mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

.field private mCapturedLiveThumbnailMaxSize:Landroid/graphics/Point;

.field private mCapturedLiveThumbnailSize:Landroid/graphics/Point;

.field private mDetectedDirection:I

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mGLContext:Lcom/samsung/android/glview/GLContext;

.field private final mHandler:Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;

.field private mIsAngleChangeAvailable:Z

.field private mIsCaptureComplete:Z

.field private mIsNeedToShowGuideSizeChangeAnimation:Z

.field private mIsShutterProgressComplete:Z

.field private mLiveThumbnailPreallocatedBuffer:[I

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mPanoramaCaptureState:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

.field private mPanoramaGuide:Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;

.field private mPostProgress:I

.field private mStopButtonOffset:Landroid/graphics/PointF;

.field private mViewLayout:Lcom/samsung/android/glview/GLViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/samsung/android/camera/feature/Feature;->PANORAMA_WIDE_ANGLE_CAL_FACTOR:F

    sput v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->WIDE_ANGLE_CAL_FACTOR:F

    sget v0, Lcom/samsung/android/camera/feature/Feature;->PANORAMA_NORMAL_ANGLE_CAL_FACTOR:F

    sput v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->NORMAL_ANGLE_CAL_FACTOR:F

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->SCREEN_HEIGHT:I

    const p2, 0x7f070296

    invoke-static {p2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->ANGLE_CHANGE_GROUP_HEIGHT:F

    new-instance p2, Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/Panorama;Lcom/sec/android/app/camera/shootingmode/Panorama$1;)V

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mHandler:Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object p2, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->IDLE:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPanoramaCaptureState:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    const/4 p2, 0x0

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureCount:I

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mDetectedDirection:I

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPostProgress:I

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_PANORAMA:Ljava/util/Map;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getCaptureSize(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureResolutionId:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureResolutionId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureResolutionWidth:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureResolutionId:I

    invoke-static {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureResolutionHeight:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureResolutionWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureResolutionHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureImageRatio:F

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailSize:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailMaxSize:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mLiveThumbnailPreallocatedBuffer:[I

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPanoramaGuide:Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mIsNeedToShowGuideSizeChangeAnimation:Z

    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mIsCaptureComplete:Z

    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mIsAngleChangeAvailable:Z

    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mIsShutterProgressComplete:Z

    new-instance p2, Lcom/sec/android/app/camera/shootingmode/Panorama$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/shootingmode/Panorama$1;-><init>(Lcom/sec/android/app/camera/shootingmode/Panorama;)V

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/Panorama;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->isCapturing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/Panorama;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/Panorama;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->cancelPanoramaCapture()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/Panorama;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->reset()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/Panorama;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/Panorama;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/Panorama;Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Panorama;->playCameraSound(Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;)V

    return-void
.end method

.method private cancelPanoramaCapture()V
    .locals 2

    const-string v0, "PanoramaApp"

    const-string v1, "cancelPanoramaCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->STOPPING:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->setCaptureState(Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->STITCHING_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelCapture(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    return-void
.end method

.method private enableAngleChangeGroup()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->makeAngleChangeGroup()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->refreshButton()V

    :goto_0
    return-void
.end method

.method private enableEngineCallbacks(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setPanoramaEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$PanoramaEventCallback;)V

    return-void
.end method

.method private enableEngineEventListeners(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mIsAngleChangeAvailable:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->registerPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->unregisterPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    return-void
.end method

.method private getCapturedThumbnailBitmap([B)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x0

    const-string v1, "PanoramaApp"

    if-eqz p1, :cond_4

    array-length v2, p1

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v2, 0x0

    aget-byte v2, p1, v2

    const/16 v4, 0x52

    if-ne v2, v4, :cond_3

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    const/16 v4, 0x47

    if-ne v2, v4, :cond_3

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    const/16 v4, 0x42

    if-ne v2, v4, :cond_3

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    const/16 v4, 0x41

    if-eq v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    :try_start_0
    invoke-static {p1, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v6

    const/16 v4, 0x8

    invoke-static {p1, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v7

    const/16 v4, 0xc

    invoke-static {p1, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v8

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v9

    const/16 v3, 0x18

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v4, p1

    mul-int v5, v6, v7

    mul-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x20

    if-ge v4, v5, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getCapturedThumbnailBitmap : The buffer is too small to contain a image of "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    invoke-direct {p0, v6, v7, v3}, Lcom/sec/android/app/camera/shootingmode/Panorama;->updateCapturedLiveThumbnailSize(III)V

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/shootingmode/Panorama;->getMergedCaptureThumbnailBitmap([BIIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :catch_0
    const-string p0, "getCapturedThumbnailBitmap : Could not parse panorama bitmap header, return."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    :goto_0
    const-string p0, "getCapturedThumbnailBitmap : Data is invalid (RGBA tag not found), return."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_4
    :goto_1
    const-string p0, "getCapturedThumbnailBitmap : Received null or invalid data, return."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getMergedCaptureThumbnailBitmap([BIIII)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "PanoramaApp"

    const/4 v5, 0x0

    :try_start_0
    array-length v6, v1

    const/4 v7, 0x4

    div-int/2addr v6, v7

    const/16 v8, 0x8

    sub-int/2addr v6, v8

    new-array v6, v6, [I

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    array-length v11, v1

    div-int/2addr v11, v7

    sub-int/2addr v11, v8

    if-ge v10, v11, :cond_0

    add-int/lit8 v11, v10, 0x8

    mul-int/2addr v11, v7

    aget-byte v12, v1, v11

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    add-int/lit8 v13, v11, 0x1

    aget-byte v13, v1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v8

    add-int/2addr v12, v13

    add-int/lit8 v13, v11, 0x2

    aget-byte v13, v1, v13

    and-int/lit16 v13, v13, 0xff

    add-int/2addr v12, v13

    add-int/lit8 v11, v11, 0x3

    aget-byte v11, v1, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x18

    add-int/2addr v12, v11

    aput v12, v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mDetectedDirection:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v10, "getMergedCaptureThumbnailBitmap : Height is different!!"

    const/4 v11, 0x1

    if-eq v1, v11, :cond_8

    const/4 v11, 0x2

    if-eq v1, v11, :cond_5

    const-string v10, "getMergedCaptureThumbnailBitmap : Width is different!!"

    if-eq v1, v7, :cond_3

    if-eq v1, v8, :cond_1

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMergedCaptureThumbnailBitmap : Invalid direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mDetectedDirection:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", return."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_1
    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-eq v1, v2, :cond_2

    invoke-static {v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_2
    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mLiveThumbnailPreallocatedBuffer:[I

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailMaxSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    mul-int v2, v2, p5

    array-length v7, v6

    invoke-static {v6, v9, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailSize:Landroid/graphics/Point;

    add-int v2, p5, v3

    iput v2, v1, Landroid/graphics/Point;->y:I

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailMaxSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    goto/16 :goto_4

    :cond_3
    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-eq v1, v2, :cond_4

    invoke-static {v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mLiveThumbnailPreallocatedBuffer:[I

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailMaxSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailMaxSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int v7, v7, p5

    sub-int/2addr v7, v3

    mul-int/2addr v2, v7

    array-length v7, v6

    invoke-static {v6, v9, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailSize:Landroid/graphics/Point;

    add-int v2, p5, v3

    iput v2, v1, Landroid/graphics/Point;->y:I

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailMaxSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailMaxSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    mul-int v9, v1, v2

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailMaxSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    goto :goto_4

    :cond_5
    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-eq v1, v3, :cond_6

    invoke-static {v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge v9, v1, :cond_7

    mul-int v1, v9, v2

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mLiveThumbnailPreallocatedBuffer:[I

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailMaxSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    mul-int/2addr v7, v9

    iget-object v8, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailMaxSize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int v8, v8, p4

    sub-int/2addr v8, v2

    add-int/2addr v7, v8

    invoke-static {v6, v1, v3, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_7
    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailSize:Landroid/graphics/Point;

    add-int v2, p4, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailMaxSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int v9, v1, v2

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailMaxSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    goto :goto_4

    :cond_8
    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-eq v1, v3, :cond_9

    invoke-static {v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v1, v9

    goto :goto_4

    :cond_9
    move v1, v9

    :goto_3
    if-ge v1, v3, :cond_a

    mul-int v7, v1, v2

    iget-object v8, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mLiveThumbnailPreallocatedBuffer:[I

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailMaxSize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    mul-int/2addr v10, v1

    add-int v10, v10, p4

    invoke-static {v6, v7, v8, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailSize:Landroid/graphics/Point;

    add-int v2, p4, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailMaxSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    :try_start_2
    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mLiveThumbnailPreallocatedBuffer:[I

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 p0, v2

    move/from16 p1, v9

    move/from16 p2, v1

    move/from16 p3, v3

    move/from16 p4, v0

    move-object/from16 p5, v6

    invoke-static/range {p0 .. p5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v15, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    const/16 v16, 0x1

    move-object v10, v0

    invoke-static/range {v10 .. v16}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    const-string v0, "getMergedCaptureThumbnailBitmap : Out of memory, return."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :catch_1
    const-string v0, "getMergedCaptureThumbnailBitmap : Index control failed, return."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method private getPanoramaMaxCount(F)[F
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Capability;->getVerticalViewAngle(F)F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/Capability;->getHorizontalViewAngle(F)F

    move-result p1

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->isUsingUltraWideLens()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->WIDE_ANGLE_CAL_FACTOR:F

    goto :goto_0

    :cond_0
    sget p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->NORMAL_ANGLE_CAL_FACTOR:F

    :goto_0
    const/high16 v2, 0x43b40000    # 360.0f

    div-float v0, v2, v0

    mul-float/2addr v0, p0

    const/4 v3, 0x0

    aput v0, v1, v3

    div-float/2addr v2, p1

    mul-float/2addr v2, p0

    const/4 p0, 0x1

    aput v2, v1, p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPanoramaMaxCount : vertical count = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v1, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", horizontal count = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, v1, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PanoramaApp"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private handleLiveThumbnailImageData(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPanoramaGuide:Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;->updateLiveThumbnailImage(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->stopPanoramaCapturing()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleLiveThumbnailImageData : Returned because failed to create RGBA data. mCaptureCount = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PanoramaApp"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private hideAngleChangeGroup()V
    .locals 3

    const v0, 0x7f0b0011

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/SineInOut60;

    invoke-direct {v1}, Lcom/sec/android/app/camera/util/interpolator/SineInOut60;-><init>()V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->setAnimation(Landroid/view/animation/Animation;Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->startAnimation()V

    return-void
.end method

.method private hideStopButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    return-void
.end method

.method private initCaptureSize()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->isUsingUltraWideLens()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->PANORAMA_WIDE_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureResolutionId:I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->PANORAMA_NORMAL_RESOLUTION:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureResolutionId:I

    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureResolutionId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_PANORAMA:Ljava/util/Map;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getCaptureSize(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureResolutionId:I

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureResolutionId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureResolutionWidth:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureResolutionId:I

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureResolutionHeight:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureResolutionWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureResolutionHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureImageRatio:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initCaptureSize : isUsingUltraWideLens() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->isUsingUltraWideLens()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCaptureResolutionId size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureResolutionId:I

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PanoramaApp"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isCapturing()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->STARTING:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->CAPTURING:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPanoramaCaptureState:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isDirectionDetected()Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mDetectedDirection:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isUsingUltraWideLens()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraLensType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private makeAngleChangeGroup()V
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

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->ANGLE_CHANGE_GROUP_HEIGHT:F

    sub-float v4, v0, v6

    new-instance v0, Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v7, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_CAMERA_PANORAMA_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CommandId;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/interfaces/CommandId;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private makeCaptureStopButton()V
    .locals 13

    const v0, 0x7f070034

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    const v0, 0x7f07003b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v12, v6

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mStopButtonOffset:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mStopButtonOffset:Landroid/graphics/PointF;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->SCREEN_WIDTH:I

    int-to-float v2, v2

    sub-float/2addr v2, v6

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    const v4, 0x7f070047

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    sub-float/2addr v2, v4

    add-float/2addr v0, v6

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/PointF;->y:F

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mStopButtonOffset:Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mStopButtonOffset:Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->y:F

    const v7, 0x7f080923

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v1, v0

    move v5, v6

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110268

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    int-to-float v1, v12

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f08086b

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setBackground(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Panorama$RobeTDep9bAqUu-h2UoK2JUBb8Y;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Panorama$RobeTDep9bAqUu-h2UoK2JUBb8Y;-><init>(Lcom/sec/android/app/camera/shootingmode/Panorama;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private playCameraSound(Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/camera/interfaces/SoundManager;->playSound(Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;I)V

    return-void
.end method

.method private registerLocalBroadcast()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.ERROR_CAMERA_BUSY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private reset()V
    .locals 5

    const-string v0, "PanoramaApp"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->IDLE:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->setCaptureState(Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureCount:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mDetectedDirection:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPostProgress:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->stopCancelTimer()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->isVisible()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v1

    new-array v3, v2, [Lcom/samsung/android/glview/GLView;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v4, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v4

    aput-object v4, v3, v0

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PANORAMA:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startButtonAnimationStopToCapture([Lcom/samsung/android/glview/GLView;Lcom/sec/android/app/camera/interfaces/CommandId;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->hideStopButton()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isShutterProgressWheelVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v3, 0x70

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v3, -0x1

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->resetBottomBackground()V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Panorama;->startSideButtonAnimation(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPanoramaGuide:Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;->hideLiveThumbnail()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1, v2, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->showBackButton()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPanoramaGuide:Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;

    sget-object v1, Lcom/sec/android/app/camera/widget/gl/PanoramaGuide$PanoramaGuideAnimationType;->CAPTURE_TO_PREVIEW:Lcom/sec/android/app/camera/widget/gl/PanoramaGuide$PanoramaGuideAnimationType;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;->show(Lcom/sec/android/app/camera/widget/gl/PanoramaGuide$PanoramaGuideAnimationType;)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mIsAngleChangeAvailable:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->showAngleChangeGroup()V

    :cond_3
    return-void
.end method

.method private restartCancelTimer()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->stopCancelTimer()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->startCancelTimer()V

    return-void
.end method

.method private setCaptureState(Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCaptureState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaApp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPanoramaCaptureState:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    return-void
.end method

.method private showAngleChangeGroup()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->setVisibility(I)V

    const v0, 0x7f0b0011

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/SineInOut60;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/SineInOut60;-><init>()V

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->setAnimation(Landroid/view/animation/Animation;Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->startAnimation()V

    return-void
.end method

.method private showPanoramaToastPopup(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mHandler:Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Panorama$NoxtSNmGpkR6kfs1p45sILqwQt0;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Panorama$NoxtSNmGpkR6kfs1p45sILqwQt0;-><init>(Lcom/sec/android/app/camera/shootingmode/Panorama;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showStopButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    return-void
.end method

.method private startCancelTimer()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mHandler:Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mHandler:Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startSideButtonAnimation(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Panorama$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/Panorama$2;-><init>(Lcom/sec/android/app/camera/shootingmode/Panorama;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Panorama$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/Panorama$3;-><init>(Lcom/sec/android/app/camera/shootingmode/Panorama;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLView;->startAnimation()V

    return-void
.end method

.method private stopCancelTimer()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mHandler:Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;->removeMessages(I)V

    return-void
.end method

.method private stopPanoramaCapturing()V
    .locals 2

    const-string v0, "PanoramaApp"

    const-string v1, "stopPanoramaCapturing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "stopPanoramaCapturing : Camera is not running, return."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->reset()V

    return-void

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->CAPTURING:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Panorama;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "stopPanoramaCapturing : Current capture state is not capturing, return."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->STOPPING:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->setCaptureState(Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->STITCHING_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleShutterEvent(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureCount:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mDetectedDirection:I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object p0

    const v1, 0x7f110361

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v0}, Lcom/samsung/android/glview/GLContext;->speakTts(Ljava/lang/String;IZ)V

    return-void
.end method

.method private updateCapturedLiveThumbnailSize(III)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mLiveThumbnailPreallocatedBuffer:[I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mDetectedDirection:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p2, 0x4

    if-eq v0, p2, :cond_0

    const/16 p2, 0x8

    if-eq v0, p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateCapturedLiveThumbnailSize : Invalid direction = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mDetectedDirection:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", ignore."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PanoramaApp"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailMaxSize:Landroid/graphics/Point;

    iput p1, p2, Landroid/graphics/Point;->x:I

    iput p3, p2, Landroid/graphics/Point;->y:I

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailMaxSize:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->y:I

    mul-int/2addr p2, p3

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mLiveThumbnailPreallocatedBuffer:[I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailSize:Landroid/graphics/Point;

    iput p1, p0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailMaxSize:Landroid/graphics/Point;

    iput p3, p1, Landroid/graphics/Point;->x:I

    iput p2, p1, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailMaxSize:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->y:I

    mul-int/2addr p1, p3

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mLiveThumbnailPreallocatedBuffer:[I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailSize:Landroid/graphics/Point;

    iput p2, p0, Landroid/graphics/Point;->y:I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public isShootingAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$makeCaptureStopButton$10$Panorama(Lcom/samsung/android/glview/GLView;)Z
    .locals 3

    const-string p1, "PanoramaApp"

    const-string v0, "onClick : CaptureStopButton"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->isCapturing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureCount:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    const-string p0, "onClick : Panorama can be saved at least two shot, return."

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->stopPanoramaCapturing()V

    const-string p0, "1403"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public synthetic lambda$onCaptureResult$0$Panorama()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mIsCaptureComplete:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mIsShutterProgressComplete:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->reset()V

    :cond_1
    const-string p0, "141"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onCaptured$1$Panorama()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureCount:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptured : mCaptureCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaApp"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->restartCancelTimer()V

    return-void
.end method

.method public synthetic lambda$onCapturedMaxFrames$2$Panorama()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "PanoramaApp"

    const-string v1, "onCapturedMaxFrames"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->stopPanoramaCapturing()V

    return-void
.end method

.method public synthetic lambda$onDirectionChanged$3$Panorama(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureCount:I

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    sget-object p1, Lcom/sec/android/app/camera/widget/gl/PanoramaGuide$PanoramaGuideDirection;->UNKNOWN:Lcom/sec/android/app/camera/widget/gl/PanoramaGuide$PanoramaGuideDirection;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/sec/android/app/camera/widget/gl/PanoramaGuide$PanoramaGuideDirection;->LEFT:Lcom/sec/android/app/camera/widget/gl/PanoramaGuide$PanoramaGuideDirection;

    const-string v1, "1411"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/sec/android/app/camera/widget/gl/PanoramaGuide$PanoramaGuideDirection;->RIGHT:Lcom/sec/android/app/camera/widget/gl/PanoramaGuide$PanoramaGuideDirection;

    const-string v1, "1412"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/sec/android/app/camera/widget/gl/PanoramaGuide$PanoramaGuideDirection;->UP:Lcom/sec/android/app/camera/widget/gl/PanoramaGuide$PanoramaGuideDirection;

    const-string v1, "1413"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/sec/android/app/camera/widget/gl/PanoramaGuide$PanoramaGuideDirection;->DOWN:Lcom/sec/android/app/camera/widget/gl/PanoramaGuide$PanoramaGuideDirection;

    const-string v1, "1414"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPanoramaGuide:Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;->setCaptureDirection(Lcom/sec/android/app/camera/widget/gl/PanoramaGuide$PanoramaGuideDirection;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object p1

    new-array v1, v0, [Lcom/samsung/android/glview/GLView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    aput-object v3, v1, v2

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PANORAMA:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v1, v2}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startButtonAnimationCaptureToStop([Lcom/samsung/android/glview/GLView;Lcom/sec/android/app/camera/interfaces/CommandId;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->showStopButton()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    return-void
.end method

.method public synthetic lambda$onError$4$Panorama(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaApp"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->cancelPanoramaCapture()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->reset()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->STOPPING:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "onError : Already stopping, return"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->stopPanoramaCapturing()V

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Panorama;->showPanoramaToastPopup(I)V

    return-void
.end method

.method public synthetic lambda$onLivePreviewData$5$Panorama(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->IDLE:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Panorama;->handleLiveThumbnailImageData(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onMoveSlowly$6$Panorama()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "PanoramaApp"

    const-string v1, "onMoveSlowly"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->CAPTURING:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPanoramaGuide:Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;->showMoveSlowlyGuideText()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onProgressStitching$7$Panorama(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgressStitching : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaApp"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->STOPPING:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "onProgressStitching : Current capture state is not stopping, return."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPostProgress:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->stopCancelTimer()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 p1, 0x64

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onRectChanged$8$Panorama(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureCount:I

    if-nez v0, :cond_1

    return-void

    :cond_1
    int-to-float p1, p1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureResolutionWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr p1, v0

    int-to-float p2, p2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureResolutionHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr p2, v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPanoramaGuide:Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;->updateGuideRectPosition(FF)V

    return-void
.end method

.method public synthetic lambda$onUIImageData$9$Panorama(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->STOPPING:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "PanoramaApp"

    const-string p1, "onUIImageData : Already stopping, return."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureCount:I

    const/16 v1, 0x31f

    if-ge v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Panorama;->handleLiveThumbnailImageData(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->stopPanoramaCapturing()V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic lambda$showPanoramaToastPopup$11$Panorama(I)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const p1, 0x7f11035a

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const p1, 0x7f11035b

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    :goto_0
    return-void
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 3

    const-string v0, "PanoramaApp"

    const-string v1, "onActivate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAngleChangeSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mIsAngleChangeAvailable:Z

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PANORAMA:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshMainButton(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PANORAMA:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->showShootingModeHelpText()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgressWheelAnimationEndListener(Lcom/sec/android/app/camera/interfaces/BaseMenuController$ShutterProgressWheelAnimationEndListener;)V

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mIsAngleChangeAvailable:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->enableAngleChangeGroup()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->showAngleChangeGroup()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraIdChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraIdChangedListener;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mIsNeedToShowGuideSizeChangeAnimation:Z

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPanoramaGuide:Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->isUsingUltraWideLens()Z

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureImageRatio:F

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Panorama;->getPanoramaMaxCount(F)[F

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureImageRatio:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;->initGuideSize(Z[FF)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPanoramaGuide:Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;

    sget-object v0, Lcom/sec/android/app/camera/widget/gl/PanoramaGuide$PanoramaGuideAnimationType;->FIRST_SHOW:Lcom/sec/android/app/camera/widget/gl/PanoramaGuide$PanoramaGuideAnimationType;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;->show(Lcom/sec/android/app/camera/widget/gl/PanoramaGuide$PanoramaGuideAnimationType;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->registerLocalBroadcast()V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Panorama;->enableEngineEventListeners(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Panorama;->enableEngineCallbacks(Z)V

    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCameraIdChanged(IIZ)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mIsNeedToShowGuideSizeChangeAnimation:Z

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPanoramaGuide:Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;->hideLiveThumbnail()V

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

    const-string v1, "PanoramaApp"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Panorama$4;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$CaptureEvent:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/16 v1, 0x26

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getHapticFeedback()Lcom/sec/android/app/camera/interfaces/HapticManager;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/HapticManager;->playHaptic(I)V

    sget-object p1, Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;->PANORAMA_END:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Panorama;->playCameraSound(Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->CAPTURING:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Panorama;->setCaptureState(Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getHapticFeedback()Lcom/sec/android/app/camera/interfaces/HapticManager;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/HapticManager;->playHaptic(I)V

    sget-object p1, Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;->PANORAMA_START:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Panorama;->playCameraSound(Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;)V

    const-string p0, "142"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCaptureResult(Ljava/io/File;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureResult : resultFile.getPath() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaApp"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->STOPPING:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "onCaptureResult : it is not waiting to complete capture, return."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->processPicture(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mHandler:Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Panorama$V4DJw9_BRZafyCNSHvAG4RaY25o;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Panorama$V4DJw9_BRZafyCNSHvAG4RaY25o;-><init>(Lcom/sec/android/app/camera/shootingmode/Panorama;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCaptured()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mHandler:Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Panorama$UaRpzT8wQbZOGYP_4MDnm83vOYE;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Panorama$UaRpzT8wQbZOGYP_4MDnm83vOYE;-><init>(Lcom/sec/android/app/camera/shootingmode/Panorama;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCapturedMaxFrames()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mHandler:Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Panorama$IDcGxWF53STXEk8rlYbfsbThEho;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Panorama$IDcGxWF53STXEk8rlYbfsbThEho;-><init>(Lcom/sec/android/app/camera/shootingmode/Panorama;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConnectMakerPrepared(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;)V
    .locals 1

    const-string p1, "PanoramaApp"

    const-string v0, "onConnectMakerPrepared"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->initCaptureSize()V

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureResolutionId:I

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;->setPictureSize(Landroid/util/Size;)V

    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 6

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->makeCaptureStopButton()V

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureResolutionId:I

    invoke-static {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getPreviewTop(Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;)I

    move-result p1

    int-to-float v3, p1

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result p1

    sub-float v5, p1, v3

    new-instance p1, Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->SCREEN_WIDTH:I

    int-to-float v4, p2

    const/4 v2, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFF)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPanoramaGuide:Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPanoramaGuide:Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;->setGuideOrientationChangeListener(Lcom/sec/android/app/camera/widget/gl/PanoramaGuide$GuideOrientationChangeListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPanoramaGuide:Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;

    invoke-virtual {p1, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)V
    .locals 0

    const/16 p0, 0x8e0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "sef_file_type"

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public onDirectionChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDirectionChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaApp"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mDetectedDirection:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCapturedLiveThumbnailSize:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mLiveThumbnailPreallocatedBuffer:[I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mHandler:Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Panorama$iZt0W9gEmBPikmKXDO8N-W1JwZc;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Panorama$iZt0W9gEmBPikmKXDO8N-W1JwZc;-><init>(Lcom/sec/android/app/camera/shootingmode/Panorama;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mHandler:Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Panorama$h1X0tTH1mrNaLdizt35-JWWATyA;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Panorama$h1X0tTH1mrNaLdizt35-JWWATyA;-><init>(Lcom/sec/android/app/camera/shootingmode/Panorama;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGuideOrientationChanged()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->isDirectionDetected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->cancelPanoramaCapture()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->reset()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->showPanoramaToastPopup(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->stopPanoramaCapturing()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onInactivate()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInactivate : Capture count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaApp"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->isCapturing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->cancelPanoramaCapture()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->startSideButtonAnimation(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v2, v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgressWheelAnimationEndListener(Lcom/sec/android/app/camera/interfaces/BaseMenuController$ShutterProgressWheelAnimationEndListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Panorama;->enableEngineEventListeners(Z)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Panorama;->enableEngineCallbacks(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mHandler:Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->reset()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPanoramaGuide:Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;->hide()V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mIsAngleChangeAvailable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraIdChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraIdChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->cancelAnimation()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mAngleChangeGroup:Lcom/sec/android/app/camera/menu/AngleChangeGroup;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/AngleChangeGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPostProgress:I

    if-lez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onKeyDown : It is stitching ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPostProgress:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "], return."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PanoramaApp"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 p2, 0x4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, p2, :cond_3

    const/16 p2, 0x17

    if-eq p1, p2, :cond_0

    const/16 p2, 0x1b

    if-eq p1, p2, :cond_0

    const/16 p2, 0x42

    if-eq p1, p2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->isCapturing()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureCount:I

    if-ge p1, v0, :cond_2

    const-string p0, "PanoramaApp"

    const-string p1, "onKeyUp : Panorama can be saved at least two shot, return."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->stopPanoramaCapturing()V

    return v2

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->isCapturing()Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPostProgress:I

    if-lez p1, :cond_5

    return v2

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    :cond_6
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureCount:I

    if-ge p1, v0, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->cancelPanoramaCapture()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->reset()V

    return v2

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->stopPanoramaCapturing()V

    return v2
.end method

.method public onLivePreviewData([B)V
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/Util;->decodeExtendedRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mHandler:Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Panorama$iMGYaWSglp45f80eYREkidudg2o;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Panorama$iMGYaWSglp45f80eYREkidudg2o;-><init>(Lcom/sec/android/app/camera/shootingmode/Panorama;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMoveSlowly()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mHandler:Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Panorama$gmx-eiWDvH7Pk2DfMnDXd82mVik;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Panorama$gmx-eiWDvH7Pk2DfMnDXd82mVik;-><init>(Lcom/sec/android/app/camera/shootingmode/Panorama;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPictureSaved()V
    .locals 0

    return-void
.end method

.method public onProgressStitching(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mHandler:Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Panorama$t_p0WlPBt5hfylqsSuLo6_MdYao;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Panorama$t_p0WlPBt5hfylqsSuLo6_MdYao;-><init>(Lcom/sec/android/app/camera/shootingmode/Panorama;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;->post(Ljava/lang/Runnable;)Z

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

.method public onRectChanged(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mHandler:Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Panorama$4kikWi3uZPmMOLbfiZPkpSJurp0;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Panorama$4kikWi3uZPmMOLbfiZPkpSJurp0;-><init>(Lcom/sec/android/app/camera/shootingmode/Panorama;II)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;->post(Ljava/lang/Runnable;)Z

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
    .locals 4

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPostProgress:I

    const/4 v1, 0x1

    const-string v2, "PanoramaApp"

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterKeyPressed : It is stitching ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPostProgress:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "], return."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureCount:I

    const/16 v0, 0x320

    if-ne p0, v0, :cond_1

    const-string p0, "onShutterKeyPressed : Capture count is max, return."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onShutterKeyPullDown(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 4

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->IDLE:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;)Z

    move-result v0

    const-string v1, "PanoramaApp"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onShutterKeyReleased : Current capture state is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPanoramaCaptureState:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", return."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureCount:I

    const/16 v3, 0x320

    if-ne v0, v3, :cond_1

    const-string p0, "onShutterKeyReleased : Capture count is max, return."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideShootingModeHelpText()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->setBottomBackgroundHeight(F)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mIsAngleChangeAvailable:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->hideAngleChangeGroup()V

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->startSideButtonAnimation(Z)V

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mIsCaptureComplete:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mIsShutterProgressComplete:Z

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;->STARTING:Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->setCaptureState(Lcom/sec/android/app/camera/shootingmode/Panorama$PanoramaCaptureState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->STITCHING_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x110

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideBackButton()V

    :cond_3
    const-string p0, "1402"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    return v2
.end method

.method public onShutterProgressWheelAnimationEnd()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mIsShutterProgressComplete:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mIsCaptureComplete:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->reset()V

    :cond_0
    return-void
.end method

.method public onShutterTimerEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Panorama$4;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x100

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->reset()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 p1, 0x81

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x70

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x80

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mIsAngleChangeAvailable:Z

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->showAngleChangeGroup()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->setTimerCountingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mIsAngleChangeAvailable:Z

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->hideAngleChangeGroup()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onStartPreviewCompleted()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mIsNeedToShowGuideSizeChangeAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPanoramaGuide:Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Panorama;->isUsingUltraWideLens()Z

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureImageRatio:F

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Panorama;->getPanoramaMaxCount(F)[F

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mCaptureImageRatio:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;->initGuideSize(Z[FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mPanoramaGuide:Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;

    sget-object v1, Lcom/sec/android/app/camera/widget/gl/PanoramaGuide$PanoramaGuideAnimationType;->PREVIEW_GUIDE_SIZE_CHANGED:Lcom/sec/android/app/camera/widget/gl/PanoramaGuide$PanoramaGuideAnimationType;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/PanoramaGuide;->show(Lcom/sec/android/app/camera/widget/gl/PanoramaGuide$PanoramaGuideAnimationType;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mIsNeedToShowGuideSizeChangeAnimation:Z

    :cond_0
    return-void
.end method

.method public onStartPreviewPrepared(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V
    .locals 2

    const-string p0, "PanoramaApp"

    const-string p2, "onStartPreviewPrepared"

    invoke-static {p0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->BURST_PANORAMA_LOW_PERFORMANCE:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance p2, Landroid/util/Range;

    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p2, v1, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, p0, p2}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance p2, Landroid/util/Range;

    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p2, v1, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, p0, p2}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_METERING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 p2, 0x1

    invoke-static {p2}, Lcom/sec/android/app/camera/util/MakerParameter;->getExposureMetering(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public onStartPreviewRequested()V
    .locals 0

    return-void
.end method

.method public onUIImageData([B)V
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Panorama;->getCapturedThumbnailBitmap([B)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Panorama;->mHandler:Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Panorama$CgafPD_PAPeM7pYC9iD7yrD6H2w;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Panorama$CgafPD_PAPeM7pYC9iD7yrD6H2w;-><init>(Lcom/sec/android/app/camera/shootingmode/Panorama;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Panorama$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
