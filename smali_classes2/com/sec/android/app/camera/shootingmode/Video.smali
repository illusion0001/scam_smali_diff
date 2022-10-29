.class public Lcom/sec/android/app/camera/shootingmode/Video;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/RecordingMode;
.implements Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;
.implements Lcom/sec/android/app/camera/interfaces/BaseMenuController$MainButtonClickListener;
.implements Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController$TouchEvSliderVisibilityChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomChangeGroupOpenStateListener;
.implements Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomSliderTranslatedListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$BrightnessValueListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;,
        Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;
    }
.end annotation


# static fields
.field private static final MESSAGE_MULTI_MIC_ZOOM_HIDE_EFFECT:I = 0x2

.field private static final MESSAGE_SUPER_RESOLUTION_TEMPERATURE_WARNING_HIDE:I = 0x3

.field private static final MULTI_MIC_EFFECT_TIMEOUT:I = 0x514

.field private static final QUICK_TAKE_SHUTTER_SCALE_ANIMATION_DURATION:I = 0xc8

.field private static final QUICK_TAKE_SHUTTER_SCALE_FACTOR:F = 1.15f

.field private static final SUPER_RESOLUTION_TEMPERATURE_WARNING_CHECK_TIME:I = 0x10e

.field private static final SUPER_RESOLUTION_TEMPERATURE_WARNING_TIMEOUT:I = 0x1770

.field private static final TAG:Ljava/lang/String; = "VideoMode"


# instance fields
.field private final AF_UNLOCK_BUTTON_HEIGHT:F

.field private final AF_UNLOCK_BUTTON_LEFT:F

.field private final AF_UNLOCK_BUTTON_LEFT_LANDSCAPE:F

.field private final AF_UNLOCK_BUTTON_TOP:F

.field private final AF_UNLOCK_BUTTON_TOP_LANDSCAPE:F

.field private final AF_UNLOCK_BUTTON_WIDTH:F

.field private final QUICK_SETTING_HEIGHT:F

.field private final QUICK_SETTING_Y:F

.field private final RECORDING_REC_TIME_GROUP_HEIGHT:F

.field private final RESIZABLE_QUICK_SETTING_Y:F

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SUPER_RESOLUTION_TEMPERATURE_WARNING_BOTTOM_MARGIN:F

.field private final SUPER_RESOLUTION_TEMPERATURE_WARNING_INSIDE_SIDE_MARGIN:F

.field private final SUPER_RESOLUTION_TEMPERATURE_WARNING_INSIDE_TOP_BOTTOM_MARGIN:F

.field private final SUPER_RESOLUTION_TEMPERATURE_WARNING_LANDSCAPE_BOTTOM_MARGIN:F

.field private final SUPER_RESOLUTION_TEMPERATURE_WARNING_TEXT_SIDE_MARGIN:F

.field private final SUPER_RESOLUTION_TEMPERATURE_WARNING_TEXT_SIZE:F

.field private final ZOOM_CHANGE_GROUP_BASE_Y:F

.field private final ZOOM_CHANGE_GROUP_MOVE_BASE_Y:F

.field private final ZOOM_CHANGE_GROUP_TRANSLATE:F

.field private mAeUnlockButton:Lcom/samsung/android/glview/GLButton;

.field private mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

.field private mAudioZoomView:Lcom/sec/android/app/camera/widget/gl/AudioZoomView;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mBrightnessValue:J

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCenterButton:Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;

.field private mCurrentResolution:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mCurrentSuperSteady:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mEffectTab:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private final mHandler:Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;

.field private mIsBaseMenuMovedDown:Z

.field private mIsShownTemperatureWarning:Z

.field private mLastWindowOrientation:I

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mPreviousTorchForSwitchCamera:I

.field private mProgressBar:Lcom/sec/android/app/camera/widget/gl/RecordingProgressBar;

.field private final mReconnectMakerRunnable:Ljava/lang/Runnable;

.field private mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

.field private mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

.field private mTemperatureWarningGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mTemperatureWarningText:Lcom/samsung/android/glview/GLText;

.field private mTouchAfCount:I

.field private mTrackingAfCount:I

.field private mVideoBodyBeautyType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mVideoFilter:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mVideoMyFilter:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/Video;Lcom/sec/android/app/camera/shootingmode/Video$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mHandler:Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SCREEN_HEIGHT:I

    const v0, 0x7f070320

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->AF_UNLOCK_BUTTON_TOP:F

    const v0, 0x7f07031f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->AF_UNLOCK_BUTTON_LEFT:F

    const v2, 0x7f070321

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->AF_UNLOCK_BUTTON_TOP_LANDSCAPE:F

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->AF_UNLOCK_BUTTON_LEFT_LANDSCAPE:F

    const v0, 0x7f070323

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->AF_UNLOCK_BUTTON_WIDTH:F

    const v0, 0x7f07031e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->AF_UNLOCK_BUTTON_HEIGHT:F

    const v0, 0x7f07012e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->RECORDING_REC_TIME_GROUP_HEIGHT:F

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getTopBaseLinePositionY()F

    move-result v0

    const v2, 0x7f07031a

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->QUICK_SETTING_Y:F

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->QUICK_SETTING_HEIGHT:F

    const v0, 0x7f07036e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->RESIZABLE_QUICK_SETTING_Y:F

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v0

    const v2, 0x7f070296

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->ZOOM_CHANGE_GROUP_BASE_Y:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    const v3, 0x7f07003b

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v0, v3

    const v3, 0x7f070047

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->ZOOM_CHANGE_GROUP_MOVE_BASE_Y:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->ZOOM_CHANGE_GROUP_MOVE_BASE_Y:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->ZOOM_CHANGE_GROUP_BASE_Y:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->ZOOM_CHANGE_GROUP_TRANSLATE:F

    const v0, 0x7f070123

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SUPER_RESOLUTION_TEMPERATURE_WARNING_TEXT_SIDE_MARGIN:F

    const v0, 0x7f070124

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SUPER_RESOLUTION_TEMPERATURE_WARNING_TEXT_SIZE:F

    const v0, 0x7f070332

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SUPER_RESOLUTION_TEMPERATURE_WARNING_BOTTOM_MARGIN:F

    const v0, 0x7f070122

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SUPER_RESOLUTION_TEMPERATURE_WARNING_LANDSCAPE_BOTTOM_MARGIN:F

    const v0, 0x7f07011f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SUPER_RESOLUTION_TEMPERATURE_WARNING_INSIDE_SIDE_MARGIN:F

    const v0, 0x7f070120

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SUPER_RESOLUTION_TEMPERATURE_WARNING_INSIDE_TOP_BOTTOM_MARGIN:F

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mPreviousTorchForSwitchCamera:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTouchAfCount:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTrackingAfCount:I

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mIsShownTemperatureWarning:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBrightnessValue:J

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mIsBaseMenuMovedDown:Z

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCurrentResolution:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCurrentSuperSteady:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mVideoFilter:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mVideoMyFilter:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mVideoBodyBeautyType:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEffectTab:I

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Video$mXPyJQvGdrXrmLzgfwD7HEM7xD0;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$Video$mXPyJQvGdrXrmLzgfwD7HEM7xD0;-><init>(Lcom/sec/android/app/camera/shootingmode/Video;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mReconnectMakerRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/Video;)Lcom/sec/android/app/camera/widget/gl/AudioZoomView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAudioZoomView:Lcom/sec/android/app/camera/widget/gl/AudioZoomView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/Video;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->hideZoomInMicPopup()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/Video;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->hideSuperResolutionTemperatureWarning()V

    return-void
.end method

.method private enableEngineEventListeners(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->registerPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->unregisterPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    if-eqz p1, :cond_2

    move-object v2, p0

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->setShutterTimerCaptureTriggerListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    if-eqz p1, :cond_3

    move-object v2, p0

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setAutoFocusEventListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move-object p0, v1

    :goto_4
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setBrightnessValueListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$BrightnessValueListener;)V

    return-void
.end method

.method private enableMenuListeners(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->registerMenuCreateListener(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->unregisterMenuCreateListener(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->BACK_VIDEO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->BACK_VIDEO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    if-eqz p1, :cond_1

    move-object v1, p0

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->BACK_VIDEO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    if-eqz p1, :cond_2

    move-object v1, p0

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    :cond_3
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_ZOOM:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    if-eqz p1, :cond_4

    move-object v1, p0

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->setZoomChangeGroupOpenStateListener(Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomChangeGroupOpenStateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move-object p0, v2

    :goto_4
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->setSliderTranslatedListener(Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomSliderTranslatedListener;)V

    goto :goto_7

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_VIDEO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_VIDEO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    if-eqz p1, :cond_7

    move-object v1, p0

    goto :goto_5

    :cond_7
    move-object v1, v2

    :goto_5
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_VIDEO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    if-eqz p1, :cond_8

    goto :goto_6

    :cond_8
    move-object p0, v2

    :goto_6
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    :cond_9
    :goto_7
    return-void
.end method

.method private getFilterPreviewType()Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontVideoFiltersTab()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoFiltersTab()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoFilter()I

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    sget-object p0, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;->FILTER:Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoMyFilter()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    if-ne v0, p0, :cond_2

    sget-object p0, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;->MY_FILTER:Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;->NONE:Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    return-object p0
.end method

.method private handleRecordingStarted()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_FOCUSED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCK_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCKED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderTouchAfAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->showAeUnlockButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchEvSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->showTouchEvSlider(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->startTouchEvSliderHideTimer()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->showAfUnlockButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchEvSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->showTouchEvSlider(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->startTouchEvSliderHideTimer()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->onQuickTakeRecordingFinished()V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->updateQuickTakeShutter()V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "006"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string p0, "004"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private handleRecordingStopped()V
    .locals 4

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->STOP:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Video;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->hideTorchHighTemperatureWarning()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchEv()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideTouchEvSlider()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->hideAfUnlockButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->hideAeUnlockButton()V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SEAMLESS_ZOOM:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->disableRecordingSeamlessZoom(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->setRecordingOverheatLevel(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingRestricted()Z

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1103b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_RECORDING_MULTI_MIC_ZOOM_FOCUS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->enableMultiMicZoomFocus(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->releaseMultiMicZoomFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAudioZoomView:Lcom/sec/android/app/camera/widget/gl/AudioZoomView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AudioZoomView;->hide()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->hideZoomInMicPopup()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->showTorchHighTemperatureWarning()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->hideSuperResolutionTemperatureWarning()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->onQuickTakeRecordingFinished()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->prepareVideoRecording()V

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "007"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p0, "003"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private hideAeUnlockButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAeUnlockButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VideoMode"

    const-string v1, "hideAeUnlockButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAeUnlockButton:Lcom/samsung/android/glview/GLButton;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideAfUnlockButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VideoMode"

    const-string v1, "hideAfUnlockButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideSuperResolutionTemperatureWarning()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTemperatureWarningGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTemperatureWarningGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mHandler:Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private hideTorchHighTemperatureWarning()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_TORCH_HIGH_TEMPERATURE_WARNING:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupVisible(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_TORCH_HIGH_TEMPERATURE_WARNING:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_TORCH_HIGH_TEMPERATURE_WARNING_DURING_RECORDING:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupVisible(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_TORCH_HIGH_TEMPERATURE_WARNING_DURING_RECORDING:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)V

    :cond_1
    return-void
.end method

.method private hideZoomInMicPopup()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_ZOOM_IN_MIC:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)V

    return-void
.end method

.method private isArDoodleGuideAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSimpleMode()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isAFWMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->UNPACK_BINARY:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v2, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_AR_DOODLE_GUIDE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->isSmartTipsPopupEnabled(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)Z

    move-result p0

    return p0

    :cond_5
    :goto_0
    return v1
.end method

.method private isAudioZoomViewRequired()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAudioZoomView:Lcom/sec/android/app/camera/widget/gl/AudioZoomView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AudioZoomView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperVideoStabilization()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isZoomAvailable()Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method private isBackVideoBodyBeautyLevelEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoBodyBeautyType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoBodyWholeBodyLevel()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoBodyHeadLevel()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoBodyShouldersLevel()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoBodyWaistLevel()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoBodyHipsLevel()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoBodyLegsThicknessLevel()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoBodyLegsLengthLevel()I

    move-result p0

    if-lez p0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method private isEffectRecordingRequired()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderEffectAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->getFilterPreviewType()Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;->NONE:Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isProgressBarRequired()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTorchHighTemperatureWarningRequired()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTorch()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->UNPACK_BINARY:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->isTorchHighTemperatureWarningResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method private isVideoEffectMenuEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoBeautyLevel()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->isBackVideoBodyBeautyLevelEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontVideoBeautyLevel()I

    move-result v0

    if-lez v0, :cond_2

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->getFilterPreviewType()Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;->FILTER:Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->getFilterPreviewType()Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;->MY_FILTER:Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private isZoomInMicGuideAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomInMic()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->UNPACK_BINARY:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v2, :cond_4

    return v1

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_ZOOM_IN_MIC:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->isSmartTipsPopupEnabled(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)Z

    move-result p0

    return p0

    :cond_5
    :goto_0
    return v1
.end method

.method private makeSuperResolutionTemperatureWarning(Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 13

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const v4, 0x7f0f0002

    invoke-virtual {v0, v4, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTemperatureWarningGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTemperatureWarningGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTemperatureWarningGroup:Lcom/samsung/android/glview/GLViewGroup;

    const v2, 0x7f080b7b

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setNinePatchBackground(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTemperatureWarningGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SUPER_RESOLUTION_TEMPERATURE_WARNING_INSIDE_SIDE_MARGIN:F

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SUPER_RESOLUTION_TEMPERATURE_WARNING_INSIDE_TOP_BOTTOM_MARGIN:F

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTemperatureWarningText:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTemperatureWarningText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTemperatureWarningText:Lcom/samsung/android/glview/GLText;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SUPER_RESOLUTION_TEMPERATURE_WARNING_TEXT_SIZE:F

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLText;->setFontSize(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTemperatureWarningText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTemperatureWarningText:Lcom/samsung/android/glview/GLText;

    const v2, 0x7f0b005e

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x7f060073

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTemperatureWarningGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTemperatureWarningText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTemperatureWarningGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private moveZoomInMicPopup(FF)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_ZOOM_IN_MIC:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p0, v0, p1, p2}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->translateAbsolute(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;FF)V

    return-void
.end method

.method private onQuickTakeRecordingFinished()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;->PREVIEW_CHANGE:Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->preparePreviewImageAnimation(Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->changeShootingMode(IZ)Z

    return-void
.end method

.method private pauseRecording()V
    .locals 2

    const-string v0, "VideoMode"

    const-string v1, "pauseRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->PAUSE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Video;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->pauseVideoRecording()V

    return-void
.end method

.method private refreshZoomBar()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isZoomBarAvailable()Z

    move-result v0

    const/16 v1, 0x200

    const-string v2, "VideoMode"

    if-eqz v0, :cond_0

    const-string v0, "refreshZoomBar : show"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    goto :goto_0

    :cond_0
    const-string v0, "refreshZoomBar : hide"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    :goto_0
    return-void
.end method

.method private registerCameraSettingChangedListeners()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SUPER_VIDEO_STABILIZATION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_VIDEO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_VIDEO_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BODY_BEAUTY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isFilterRecordingUsingVideoMakerSupported()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_VIDEO_EFFECTS_TAB:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_VIDEO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_VIDEO_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isFilterRecordingUsingVideoMakerSupported()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_VIDEO_EFFECTS_TAB:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method private resetZoomInMicPupup()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_ZOOM_IN_MIC:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->resetTranslate(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)V

    return-void
.end method

.method private resumeRecording()V
    .locals 2

    const-string v0, "VideoMode"

    const-string v1, "resumeRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->RESUME:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Video;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->resumeVideoRecording()V

    return-void
.end method

.method private showAeUnlockButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAeUnlockButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "VideoMode"

    const-string v1, "showAeUnlockButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAeUnlockButton:Lcom/samsung/android/glview/GLButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showAfUnlockButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "VideoMode"

    const-string v1, "showAfUnlockButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showArDoodleGuideTips()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->isArDoodleGuideAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_AR_DOODLE_GUIDE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_AR_DOODLE_GUIDE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_AR_DOODLE_GUIDE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->setSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;I)V

    :cond_2
    return-void
.end method

.method private showSuperResolutionTemperatureWarning()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isCamcorderSuperResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->UNPACK_BINARY:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->updateSuperResolutionTemperatureWarning()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTemperatureWarningGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mHandler:Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mHandler:Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;

    const-wide/16 v2, 0x1770

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private showTorchHighTemperatureWarning()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mIsShownTemperatureWarning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->isTorchHighTemperatureWarningRequired()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mIsShownTemperatureWarning:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_TORCH_HIGH_TEMPERATURE_WARNING:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_TORCH_HIGH_TEMPERATURE_WARNING_DURING_RECORDING:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    :goto_0
    return-void
.end method

.method private showZoomInMicPopup()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->isZoomInMicGuideAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_ZOOM_IN_MIC:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_ZOOM_IN_MIC:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_ZOOM_IN_MIC:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->setSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_ZOOM_IN_MIC:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_ZOOM_IN_MIC:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->setSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;I)V

    :cond_2
    return-void
.end method

.method private startBaseMenuMoveAnimation(Z)V
    .locals 2

    const/16 v0, 0x100

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mIsBaseMenuMovedDown:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mIsBaseMenuMovedDown:Z

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p1, v1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideViewWithAnimation(I)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mIsBaseMenuMovedDown:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mIsBaseMenuMovedDown:Z

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, v1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideViewWithAnimation(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private startMultiMicZoomFocus()V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_RECORDING_MULTI_MIC_ZOOM_FOCUS:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->prepareMultiMicZoomFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomInMic()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->enableMultiMicZoomFocus(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomInMic()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->setMultiMicZoomValue(F)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAudioZoomView:Lcom/sec/android/app/camera/widget/gl/AudioZoomView;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getMinZoomLevel()I

    move-result p0

    const/16 v1, 0x64

    if-ge p0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/AudioZoomView;->setMediateValue(I)V

    :cond_3
    return-void
.end method

.method private unregisterCameraSettingChangedListeners()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SUPER_VIDEO_STABILIZATION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_VIDEO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_VIDEO_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BODY_BEAUTY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isFilterRecordingUsingVideoMakerSupported()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_VIDEO_EFFECTS_TAB:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_VIDEO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_VIDEO_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isFilterRecordingUsingVideoMakerSupported()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_VIDEO_EFFECTS_TAB:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method private updateAfUnlockButtonPosition()V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->AF_UNLOCK_BUTTON_LEFT:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->RESIZABLE_QUICK_SETTING_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Video;->AF_UNLOCK_BUTTON_HEIGHT:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Video;->QUICK_SETTING_HEIGHT:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAeUnlockButton:Lcom/samsung/android/glview/GLButton;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->AF_UNLOCK_BUTTON_LEFT:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->RESIZABLE_QUICK_SETTING_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Video;->AF_UNLOCK_BUTTON_HEIGHT:F

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->QUICK_SETTING_HEIGHT:F

    sub-float/2addr v4, p0

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->QUICK_SETTING_Y:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->RECORDING_REC_TIME_GROUP_HEIGHT:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->QUICK_SETTING_HEIGHT:F

    sub-float v3, v2, v3

    div-float/2addr v3, v1

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Video;->AF_UNLOCK_BUTTON_LEFT:F

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v5

    sub-float/2addr v2, v5

    div-float/2addr v2, v1

    add-float/2addr v2, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4, v2}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->AF_UNLOCK_BUTTON_LEFT_LANDSCAPE:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Video;->AF_UNLOCK_BUTTON_TOP_LANDSCAPE:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Video;->AF_UNLOCK_BUTTON_WIDTH:F

    add-float/2addr v4, v6

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->AF_UNLOCK_BUTTON_LEFT_LANDSCAPE:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Video;->AF_UNLOCK_BUTTON_HEIGHT:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Video;->AF_UNLOCK_BUTTON_TOP_LANDSCAPE:F

    const/4 v7, 0x3

    invoke-virtual {v2, v7, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->updateLayout()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAeUnlockButton:Lcom/samsung/android/glview/GLButton;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->AF_UNLOCK_BUTTON_LEFT:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Video;->RECORDING_REC_TIME_GROUP_HEIGHT:F

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v8

    sub-float/2addr v4, v8

    div-float/2addr v4, v1

    add-float/2addr v0, v4

    invoke-virtual {v2, v5, v3, v0}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAeUnlockButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->AF_UNLOCK_BUTTON_LEFT_LANDSCAPE:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->AF_UNLOCK_BUTTON_TOP_LANDSCAPE:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->AF_UNLOCK_BUTTON_WIDTH:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAeUnlockButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->AF_UNLOCK_BUTTON_LEFT_LANDSCAPE:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->AF_UNLOCK_BUTTON_HEIGHT:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->AF_UNLOCK_BUTTON_TOP_LANDSCAPE:F

    invoke-virtual {v0, v7, v1, v2}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAeUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->updateLayout()V

    :goto_0
    return-void
.end method

.method private updateArDoodleTipsCount()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->UNPACK_BINARY:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_AR_DOODLE_GUIDE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->getSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;->SMART_TIPS_AR_DOODLE_GUIDE:Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/camera/util/SmartTipsUtil;->setSmartTipsPopupCount(Landroid/content/Context;Lcom/sec/android/app/camera/util/SmartTipsUtil$SmartTipsPopupCount;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateLatestFilter()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoMyFilter()I

    move-result v0

    const/16 v1, 0x2712

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoFiltersTab()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoFilter()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInFilterStorage;->getFilterIndexByDBId(I)I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBackVideoFilter(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoMyFilter()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInMyFilterStorage;->getFilterIndexByDBId(I)I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBackVideoMyFilter(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontVideoFiltersTab()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontVideoFilter()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInFilterStorage;->getFilterIndexByDBId(I)I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontVideoFilter(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontVideoMyFilter()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInMyFilterStorage;->getFilterIndexByDBId(I)I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontVideoMyFilter(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateQuickTakeShutter()V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShootingModeToRecordingAnimation(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCenterButton:Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;->getShutterButton()Lcom/samsung/android/glview/GLButton;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/camera/util/interpolator/SineInOut60;

    invoke-direct {v6}, Lcom/sec/android/app/camera/util/interpolator/SineInOut60;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f933333    # 1.15f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f933333    # 1.15f

    const/16 v7, 0xc8

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCenterButton:Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;->getShutterButton()Lcom/samsung/android/glview/GLButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCenterButton:Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;->getShutterButton()Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingTimeLimited()Z

    move-result v1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getMaxRecordingTimeLimitInSecond()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->start(ZI)V

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

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Video$1;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingCommand:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, -0x201

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->refreshZoomBar()V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingRestricted()Z

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->showPauseIcon()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->showResumeIcon()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->updateStopRecordingLayout()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->updateStartRecordingLayout()V

    :goto_0
    return-void

    nop

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

.method private updateStartRecordingLayout()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x110

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, -0xe2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, -0x2f0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperVideoStabilization()I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShootingModeToRecordingAnimation(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->refreshZoomBar()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->ZOOM_CHANGE_GROUP_TRANSLATE:F

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->translateZoomChangeButton(FFZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderTouchAfAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideTouchEvSlider()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->stopTouchEvSliderHideTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->isZoomChangeGroupOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->closeZoomChangeGroup()V

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->setBottomBackgroundHeight(F)V

    return-void
.end method

.method private updateStopRecordingLayout()V
    .locals 11

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingRestricted()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCurrentMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startRecordingToShootingModeAnimation(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    const v3, 0x3f933333    # 1.15f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f933333    # 1.15f

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCenterButton:Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;->getShutterButton()Lcom/samsung/android/glview/GLButton;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/camera/util/interpolator/SineInOut60;

    invoke-direct {v8}, Lcom/sec/android/app/camera/util/interpolator/SineInOut60;-><init>()V

    const/16 v9, 0xc8

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCenterButton:Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;->getShutterButton()Lcom/samsung/android/glview/GLButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCenterButton:Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;->getShutterButton()Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->isProgressBarRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mProgressBar:Lcom/sec/android/app/camera/widget/gl/RecordingProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/RecordingProgressBar;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->resetTranslateZoomChangeButton(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, 0x200

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, 0x118

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, -0x201

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startRecordingToShootingModeAnimation(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_EFFECTS_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->isVideoEffectMenuEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setQuickSettingItemHighlight(Lcom/sec/android/app/camera/interfaces/CommandId;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_VIDEO_EFFECTS_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->isVideoEffectMenuEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setQuickSettingItemHighlight(Lcom/sec/android/app/camera/interfaces/CommandId;Z)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->refreshZoomBar()V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->hideIcon()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->stop()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->resetBottomBackground()V

    return-void
.end method

.method private updateSuperResolutionTemperatureWarning()V
    .locals 13

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const v4, 0x7f0f0002

    invoke-virtual {v0, v4, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SUPER_RESOLUTION_TEMPERATURE_WARNING_TEXT_SIDE_MARGIN:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SUPER_RESOLUTION_TEMPERATURE_WARNING_INSIDE_SIDE_MARGIN:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SUPER_RESOLUTION_TEMPERATURE_WARNING_TEXT_SIZE:F

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v6

    mul-float/2addr v3, v6

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-static {v0, v3, v6}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v3

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SUPER_RESOLUTION_TEMPERATURE_WARNING_TEXT_SIZE:F

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-static {v2, v0, v6, v7}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v7, v2, v6

    if-lez v7, :cond_0

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SCREEN_WIDTH:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SUPER_RESOLUTION_TEMPERATURE_WARNING_TEXT_SIDE_MARGIN:F

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SUPER_RESOLUTION_TEMPERATURE_WARNING_INSIDE_SIDE_MARGIN:F

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    goto :goto_0

    :cond_0
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SUPER_RESOLUTION_TEMPERATURE_WARNING_TEXT_SIZE:F

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v8

    mul-float/2addr v7, v8

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v7

    :goto_0
    mul-float/2addr v3, v2

    const v8, 0x7f0700b9

    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v8

    sub-float/2addr v2, v6

    mul-float/2addr v8, v2

    add-float/2addr v3, v8

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SUPER_RESOLUTION_TEMPERATURE_WARNING_INSIDE_SIDE_MARGIN:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v7

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SUPER_RESOLUTION_TEMPERATURE_WARNING_INSIDE_TOP_BOTTOM_MARGIN:F

    mul-float/2addr v6, v4

    add-float/2addr v6, v3

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SCREEN_WIDTH:I

    int-to-float v8, v8

    sub-float/2addr v8, v2

    div-float/2addr v8, v4

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v9

    sub-float/2addr v9, v6

    iget v10, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SUPER_RESOLUTION_TEMPERATURE_WARNING_BOTTOM_MARGIN:F

    sub-float/2addr v9, v10

    sget-object v10, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_4x3:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v10}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getPreviewTop(Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;)I

    move-result v10

    int-to-float v10, v10

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v11

    iget-object v12, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTemperatureWarningText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v12, v7, v3}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTemperatureWarningText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v3, v0}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTemperatureWarningGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2, v6}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTemperatureWarningGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v5, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTemperatureWarningGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SUPER_RESOLUTION_TEMPERATURE_WARNING_LANDSCAPE_BOTTOM_MARGIN:F

    sub-float v5, v11, v10

    sub-float/2addr v5, v2

    div-float/2addr v5, v4

    sub-float/2addr v11, v5

    invoke-virtual {v0, v1, v3, v11}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTemperatureWarningGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SUPER_RESOLUTION_TEMPERATURE_WARNING_LANDSCAPE_BOTTOM_MARGIN:F

    add-float/2addr v2, v6

    add-float/2addr v10, v5

    invoke-virtual {v0, v1, v2, v10}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTemperatureWarningGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout()V

    return-void
.end method


# virtual methods
.method public cancelRecording()V
    .locals 3

    const-string v0, "VideoMode"

    const-string v1, "cancelRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v1, v2, :cond_0

    const-string p0, "cancelRecording : Returned because recording is already stopping"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->CANCEL:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Video;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->resetTranslateZoomChangeButton(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->resetAfTrigger()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

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

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isSnapshotAvailable()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$Video()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->handleCamcorderSettingChanged()V

    return-void
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->register(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshMainButton(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setMainButtonClickListener(Lcom/sec/android/app/camera/interfaces/BaseMenuController$MainButtonClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCenterButton:Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCenterButton:Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1103b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;->setTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_EFFECTS_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->isVideoEffectMenuEnabled()Z

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setQuickSettingItemHighlight(Lcom/sec/android/app/camera/interfaces/CommandId;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_VIDEO_EFFECTS_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->isVideoEffectMenuEnabled()Z

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setQuickSettingItemHighlight(Lcom/sec/android/app/camera/interfaces/CommandId;Z)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getDisplayRotation()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/glview/GLUtil;->getGLOrientationByDisplayOrientation(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mLastWindowOrientation:I

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->registerCameraSettingChangedListeners()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Video;->enableMenuListeners(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Video;->enableEngineEventListeners(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->registerTouchEvSliderVisibilityChangedListener(Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController$TouchEvSliderVisibilityChangedListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "CREATE_MY_FILTER_SELECTED_IMAGE_URI"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableLiveThumbnailPreviewCallback(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_VIDEO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto/16 :goto_3

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->BACK_VIDEO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto/16 :goto_3

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->CREATE_MY_FILTER:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto/16 :goto_3

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p1, v1, :cond_6

    sget-object p1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->START:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Video;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->startMultiMicZoomFocus()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isNeedToRestoreTorchFlashMode()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mPreviousTorchForSwitchCamera:I

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTorch(I)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-ne p1, v0, :cond_7

    const-string p1, "002"

    goto :goto_1

    :cond_7
    const-string p1, "208"

    :goto_1
    invoke-static {p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCenterButton:Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCenterButton:Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->startRecording()V

    goto :goto_2

    :cond_8
    sget-object p1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Video;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mIsShownTemperatureWarning:Z

    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->updateArDoodleTipsCount()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->showArDoodleGuideTips()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingRestricted()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const p1, 0x7f11050a

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    :cond_a
    :goto_3
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchEvSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getTouchAutoFocusBoundary()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderTouchAfAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->showAeUnlockButton()V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->startTouchEvSliderHideTimer()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->showTouchEvSlider(Z)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public onAeAfLocked()V
    .locals 2

    const-string v0, "VideoMode"

    const-string v1, "onAeAfLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->isZoomChangeGroupOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    const-string v0, "0208"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->showAfUnlockButton()V

    return-void
.end method

.method public onBrightnessValueChanged(I)V
    .locals 2

    int-to-float p1, p1

    const/high16 v0, 0x43800000    # 256.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBrightnessValue:J

    return-void
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

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Video$1;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x64

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEffectTab:I

    if-eq p1, p2, :cond_f

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Capability;->isFilterRecordingUsingVideoMakerSupported()Z

    move-result p1

    if-nez p1, :cond_f

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEffectTab:I

    if-eqz p2, :cond_0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_f

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->changeToEffectRecordingPreview()V

    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->showTorchHighTemperatureWarning()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_f

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_f

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->refreshZoomBar()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->setBottomBackgroundHeight(F)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object p1

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->ZOOM_CHANGE_GROUP_TRANSLATE:F

    const/4 v0, 0x0

    invoke-interface {p1, p2, p0, v0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->translateZoomChangeButton(FFZ)V

    goto/16 :goto_1

    :pswitch_2
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result p1

    if-eqz p1, :cond_f

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mVideoBodyBeautyType:I

    if-eq p1, p2, :cond_f

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mVideoBodyBeautyType:I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mHandler:Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mReconnectMakerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mHandler:Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mReconnectMakerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mVideoMyFilter:I

    if-nez p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mVideoMyFilter:I

    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Capability;->isFilterRecordingUsingVideoMakerSupported()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;->PREVIEW_CHANGE:Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->preparePreviewImageAnimation(Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mHandler:Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mReconnectMakerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mHandler:Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mReconnectMakerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mVideoMyFilter:I

    goto/16 :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result p1

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mVideoFilter:I

    if-nez p1, :cond_6

    if-nez p2, :cond_7

    :cond_6
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mVideoFilter:I

    if-eqz p1, :cond_9

    if-nez p2, :cond_9

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Capability;->isFilterRecordingUsingVideoMakerSupported()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;->PREVIEW_CHANGE:Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->preparePreviewImageAnimation(Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;)V

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mHandler:Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mReconnectMakerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mHandler:Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mReconnectMakerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mVideoFilter:I

    goto/16 :goto_1

    :pswitch_5
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_RECORDING_MULTI_MIC_ZOOM_FOCUS:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomInMic()I

    move-result p1

    if-ne p1, v1, :cond_b

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isMultiMicZoomFocusEnabled()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->setMultiMicZoomValue(F)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAudioZoomView:Lcom/sec/android/app/camera/widget/gl/AudioZoomView;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getMaxZoomLevel()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getMinZoomLevel()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/AudioZoomView;->update(III)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->isAudioZoomViewRequired()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAudioZoomView:Lcom/sec/android/app/camera/widget/gl/AudioZoomView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/AudioZoomView;->show()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->showZoomInMicPopup()V

    :cond_a
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mHandler:Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;->removeMessages(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mHandler:Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;

    const-wide/16 v2, 0x514

    invoke-virtual {p1, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_b
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_FLASH_IN_WIDE_LENS:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_c

    if-ge p2, v0, :cond_c

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->cancelRestoreTorchFlashModeRecording()V

    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->hideSuperResolutionTemperatureWarning()V

    goto/16 :goto_1

    :pswitch_6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_EFFECTS_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->isVideoEffectMenuEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setQuickSettingItemHighlight(Lcom/sec/android/app/camera/interfaces/CommandId;Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result p1

    if-eqz p1, :cond_f

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCurrentSuperSteady:I

    if-eq p1, p2, :cond_f

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, v0, :cond_f

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCurrentSuperSteady:I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mHandler:Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mReconnectMakerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mHandler:Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mReconnectMakerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :pswitch_7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-ne p1, v1, :cond_d

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_EFFECTS_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->isVideoEffectMenuEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setQuickSettingItemHighlight(Lcom/sec/android/app/camera/interfaces/CommandId;Z)V

    goto :goto_0

    :cond_d
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_VIDEO_EFFECTS_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->isVideoEffectMenuEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setQuickSettingItemHighlight(Lcom/sec/android/app/camera/interfaces/CommandId;Z)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result p1

    if-eqz p1, :cond_e

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCurrentResolution:I

    if-eq p1, p2, :cond_e

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCurrentResolution:I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;->PREVIEW_CHANGE:Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->preparePreviewImageAnimation(Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mHandler:Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mReconnectMakerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mHandler:Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mReconnectMakerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->showTorchHighTemperatureWarning()V

    :cond_f
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCancelRecordingRequested()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->cancelRecording()V

    return-void
.end method

.method public onCaptureEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;)V
    .locals 0

    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const-string v3, "0218"

    const-string v4, "VideoMode"

    if-eqz v0, :cond_0

    const-string p1, "onClick : mAfUnlockButton"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    invoke-static {v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAeUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "onClick : mAeUnlockButton"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchEv()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideTouchEvSlider()V

    invoke-static {v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAeUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCenterButton:Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;->getShutterButton()Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->onStopButtonClick()V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onConnectMakerPrepared(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->updateLatestFilter()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->isEffectRecordingRequired()Z

    move-result p1

    const/4 v0, 0x7

    const/4 v1, 0x2

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoFilter()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoMyFilter()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontVideoFiltersTab()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoFiltersTab()I

    move-result p1

    :goto_0
    if-nez p1, :cond_4

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->getFilterPreviewType()Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    move-result-object p1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;->FILTER:Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_1
    move v0, v1

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->getFilterPreviewType()Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;->MY_FILTER:Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_2
    invoke-interface {p2, v0}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;->setEffectProcessorMode(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderSnapshotWidthFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderSnapshotHeightFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;->setPictureSize(Landroid/util/Size;)V

    goto :goto_3

    :cond_5
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p1, v0}, Landroid/util/Size;-><init>(II)V

    invoke-interface {p2, v1}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;->setPictureSize(Landroid/util/Size;)V

    :goto_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCurrentResolution:I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperVideoStabilization()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCurrentSuperSteady:I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoFilter()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mVideoFilter:I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoMyFilter()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mVideoMyFilter:I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoBodyBeautyType()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mVideoBodyBeautyType:I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoEffectsTab()I

    move-result p1

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontVideoEffectsTab()I

    move-result p1

    :goto_4
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEffectTab:I

    return-void
.end method

.method public onContinuousAfFocused()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->hideAfUnlockButton()V

    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 10

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result p3

    const/4 p4, 0x1

    xor-int/2addr p3, p4

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/RecordingProgressBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RecordingProgressBar;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mProgressBar:Lcom/sec/android/app/camera/widget/gl/RecordingProgressBar;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mProgressBar:Lcom/sec/android/app/camera/widget/gl/RecordingProgressBar;

    invoke-virtual {v0, p3}, Lcom/sec/android/app/camera/widget/gl/RecordingProgressBar;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mProgressBar:Lcom/sec/android/app/camera/widget/gl/RecordingProgressBar;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_RECORDING_CONTINUOUS_AF:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0809ef

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1101a8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    const v6, 0x7f0809ee

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAeUnlockButton:Lcom/samsung/android/glview/GLButton;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAeUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAeUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, p3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAeUnlockButton:Lcom/samsung/android/glview/GLButton;

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f1101a6

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAeUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAeUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p2, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_0
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_RECORDING_MULTI_MIC_ZOOM_FOCUS:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "x"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    new-array v0, p4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const-string v3, "%.1f"

    invoke-static {p3, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p3, 0x7f070519

    invoke-static {p3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result p3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v0

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {p1, p3, v3}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result p1

    iget p3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->SCREEN_WIDTH:I

    int-to-float p3, p3

    add-float/2addr p3, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v3

    const v5, 0x7f0702a4

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    sub-float/2addr v3, v5

    const v5, 0x7f0702ac

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    sub-float/2addr v3, v5

    sub-float/2addr v3, p1

    new-instance v5, Lcom/sec/android/app/camera/widget/gl/AudioZoomView;

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v5, v6, v2, v2}, Lcom/sec/android/app/camera/widget/gl/AudioZoomView;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FF)V

    iput-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAudioZoomView:Lcom/sec/android/app/camera/widget/gl/AudioZoomView;

    const v2, 0x7f070339

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    add-float/2addr p3, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAudioZoomView:Lcom/sec/android/app/camera/widget/gl/AudioZoomView;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/AudioZoomView;->getHeight()F

    move-result v2

    sub-float/2addr p1, v2

    div-float/2addr p1, v0

    add-float/2addr v3, p1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAudioZoomView:Lcom/sec/android/app/camera/widget/gl/AudioZoomView;

    invoke-virtual {p1, p3, v3}, Lcom/sec/android/app/camera/widget/gl/AudioZoomView;->moveBaseLayoutAbsolute(FF)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAudioZoomView:Lcom/sec/android/app/camera/widget/gl/AudioZoomView;

    invoke-virtual {p1, p4}, Lcom/sec/android/app/camera/widget/gl/AudioZoomView;->setRotatable(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAudioZoomView:Lcom/sec/android/app/camera/widget/gl/AudioZoomView;

    invoke-virtual {p1, p4}, Lcom/sec/android/app/camera/widget/gl/AudioZoomView;->setCenterPivot(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAudioZoomView:Lcom/sec/android/app/camera/widget/gl/AudioZoomView;

    invoke-virtual {p1, p4}, Lcom/sec/android/app/camera/widget/gl/AudioZoomView;->setRotateAnimation(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAudioZoomView:Lcom/sec/android/app/camera/widget/gl/AudioZoomView;

    invoke-virtual {p1, p4}, Lcom/sec/android/app/camera/widget/gl/AudioZoomView;->setBypassTouch(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAudioZoomView:Lcom/sec/android/app/camera/widget/gl/AudioZoomView;

    invoke-virtual {p1, v4}, Lcom/sec/android/app/camera/widget/gl/AudioZoomView;->setClipping(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAudioZoomView:Lcom/sec/android/app/camera/widget/gl/AudioZoomView;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/widget/gl/AudioZoomView;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAudioZoomView:Lcom/sec/android/app/camera/widget/gl/AudioZoomView;

    invoke-virtual {p2, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/Video;->makeSuperResolutionTemperatureWarning(Lcom/samsung/android/glview/GLViewGroup;)V

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

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Video$1;->$SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->getMenuId()Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Capability;->isFilterRecordingUsingVideoMakerSupported()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->getFilterPreviewType()Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;->NONE:Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/shootingmode/Video$FilterPreviewType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;->PREVIEW_CHANGE:Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->preparePreviewImageAnimation(Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->changeToRecordingPreview()V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableLiveThumbnailPreviewCallback(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_EFFECTS_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->isVideoEffectMenuEnabled()Z

    move-result v2

    invoke-interface {p1, v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setQuickSettingItemHighlight(Lcom/sec/android/app/camera/interfaces/CommandId;Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_VIDEO_EFFECTS_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->isVideoEffectMenuEnabled()Z

    move-result v2

    invoke-interface {p1, v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setQuickSettingItemHighlight(Lcom/sec/android/app/camera/interfaces/CommandId;Z)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuMoveAnimation(Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    const/16 p1, 0x100

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    :goto_1
    return-void
.end method

.method public onInactivate()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->resetCenterView()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoMyFilter()I

    move-result v0

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->stopRecording()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->cancelRecording()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->handleRecordingStopped()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isNeedToRestoreTorchFlashMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTorch()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mPreviousTorchForSwitchCamera:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTorch(I)V

    :cond_4
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_RECORDING_MULTI_MIC_ZOOM_FOCUS:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->enableMultiMicZoomFocus(Z)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->unregister()V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Video;->enableEngineEventListeners(Z)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Video;->enableMenuListeners(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->unregisterCameraSettingChangedListeners()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->unregisterTouchEvSliderVisibilityChangedListener(Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController$TouchEvSliderVisibilityChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V

    :cond_6
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SEAMLESS_ZOOM:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->disableRecordingSeamlessZoom(Z)V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->setRecordingOverheatLevel(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mHandler:Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Video$MainHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->hideAfUnlockButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->hideAeUnlockButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAudioZoomView:Lcom/sec/android/app/camera/widget/gl/AudioZoomView;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AudioZoomView;->hide()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->hideZoomInMicPopup()V

    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->hideSuperResolutionTemperatureWarning()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setMainButtonClickListener(Lcom/sec/android/app/camera/interfaces/BaseMenuController$MainButtonClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideTouchEvSlider()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoMyFilter()I

    move-result v0

    const/16 v1, 0x2712

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontVideoMyFilter(I)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBackVideoMyFilter(I)V

    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setOverriddenVideoSettingType(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->onQuickTakeRecordingFinished()V

    :cond_b
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    const-string p0, "VideoMode"

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
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

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
    .locals 4

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result p2

    const/4 v0, 0x1

    const-string v1, "VideoMode"

    if-nez p2, :cond_0

    const-string p0, "Recording control is not available at this moment, ignore key up event"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

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

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->onStopRecordingRequested()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByRecordingTime(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0009"

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->stopRecording()V

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v3
.end method

.method public onLayoutChanged(III)V
    .locals 1

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_RECORDING_CONTINUOUS_AF:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->updateAfUnlockButtonPosition()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->onLayoutChanged(III)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->isProgressBarRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mProgressBar:Lcom/sec/android/app/camera/widget/gl/RecordingProgressBar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/gl/RecordingProgressBar;->onLayoutChanged(III)V

    :cond_2
    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mLastWindowOrientation:I

    if-eq p2, p1, :cond_3

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mLastWindowOrientation:I

    :cond_3
    :goto_0
    return-void
.end method

.method public onMenuCreated(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Video$1;->$SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

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

.method public onPauseButtonClick()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isPauseRecordingAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->pauseRecording()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const-wide/16 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "0241"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontVideoBeautyLevel()I

    move-result p0

    if-lez p0, :cond_2

    const-string p0, "3047"

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const-string p0, "0202"

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    :cond_2
    :goto_0
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

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isDimmed(I)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isAnimationFinished(I)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->startRecording()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoFilter()I

    move-result p1

    invoke-static {p1}, Lcom/sec/android/app/camera/plugin/PlugInFilterStorage;->getFilterNameByFilterId(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "0251"

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "0253"

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoBeautyLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "0254"

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBrightnessValue:J

    const-string p1, "0252"

    invoke-static {p1, v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontVideoBeautyLevel()I

    move-result p0

    if-lez p0, :cond_4

    const-string p0, "3046"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTorch()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "0220"

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoFilter()I

    move-result p1

    invoke-static {p1}, Lcom/sec/android/app/camera/plugin/PlugInFilterStorage;->getFilterNameByFilterId(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "0221"

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getSeamlessZoomValueArray()[I

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getLensType([II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "0222"

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperVideoStabilization()I

    move-result p1

    int-to-long v1, p1

    const-string p1, "0223"

    invoke-static {p1, v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "0224"

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoBeautyLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "0225"

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomInMic()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "0227"

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBrightnessValue:J

    const-string v1, "0226"

    invoke-static {v1, p0, p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    :cond_4
    :goto_0
    return v0
.end method

.method public onRecordingEvent(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Video$1;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->ordinal()I

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
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->handleRecordingStopped()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->handleRecordingStarted()V

    :goto_0
    return-void
.end method

.method public onRecordingMaxDurationReached()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f11050e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->onStopRecordingRequested()V

    return-void
.end method

.method public onRecordingMaxFileSizeReached()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->isProgressBarRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mProgressBar:Lcom/sec/android/app/camera/widget/gl/RecordingProgressBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/RecordingProgressBar;->update(J)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f1101b4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->stopRecording()V

    return-void
.end method

.method public onRecordingRestricted(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->onStopRecordingRequested()V

    :cond_0
    return-void
.end method

.method public onRecordingTick(JJ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordingTick : elapsedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object p4, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p4}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getMaxRecordingTimeLimitInSecond()I

    move-result p4

    invoke-virtual {p3, p1, p2, p4}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateRecordingTime(JI)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object p4, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p4}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingTimeLimited()Z

    move-result p4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getMaxRecordingTimeLimitInSecond()I

    move-result v0

    invoke-virtual {p3, p4, v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->start(ZI)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->isProgressBarRequired()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mProgressBar:Lcom/sec/android/app/camera/widget/gl/RecordingProgressBar;

    invoke-virtual {p3}, Lcom/sec/android/app/camera/widget/gl/RecordingProgressBar;->start()V

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mProgressBar:Lcom/sec/android/app/camera/widget/gl/RecordingProgressBar;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Lcom/sec/android/app/camera/widget/gl/RecordingProgressBar;->setVisibility(I)V

    :cond_1
    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_3

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 p4, 0x8

    invoke-interface {p3, p4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object p4, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p3, p4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getMaxRecordingTimeLimitInSecond()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateRecordingTime(JI)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->isProgressBarRequired()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mProgressBar:Lcom/sec/android/app/camera/widget/gl/RecordingProgressBar;

    invoke-virtual {v0, p3, p4}, Lcom/sec/android/app/camera/widget/gl/RecordingProgressBar;->update(J)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->stopRecording()V

    :cond_3
    :goto_1
    sget-boolean p3, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SEAMLESS_ZOOM:Z

    const-wide/16 v0, 0x3e8

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide p3

    div-long/2addr p3, v0

    sget v2, Lcom/samsung/android/camera/feature/Feature;->MAX_SEAMLESS_ZOOM_RECORDING_TIME_LIMIT_IN_OVERHEAT_CONDITION:I

    int-to-long v2, v2

    cmp-long p3, p3, v2

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result p3

    const/16 p4, 0x14

    if-ne p3, p4, :cond_4

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object p4, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {p4}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->isTemperatureHighToDualRecord()Z

    move-result p4

    invoke-interface {p3, p4}, Lcom/sec/android/app/camera/interfaces/Engine;->disableRecordingSeamlessZoom(Z)V

    :cond_4
    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide p3

    div-long/2addr p3, v0

    sget v2, Lcom/samsung/android/camera/feature/Feature;->MIN_RECORDING_TIME_TO_ENABLE_LOW_POWER_MODE:I

    int-to-long v2, v2

    cmp-long p3, p3, v2

    if-nez p3, :cond_5

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iget-object p4, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {p4}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->getRecordingOverheatLevel()I

    move-result p4

    invoke-interface {p3, p4}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->setRecordingOverheatLevel(I)V

    :cond_5
    div-long/2addr p1, v0

    const-wide/16 p3, 0x10e

    cmp-long p1, p1, p3

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->showSuperResolutionTemperatureWarning()V

    :cond_6
    return-void
.end method

.method public onResumeButtonClick()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    const-string p0, "VideoMode"

    const-string v0, "onResumeButtonClick : Returned because wrong recording state"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->resumeRecording()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "0241"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontVideoBeautyLevel()I

    move-result p0

    if-lez p0, :cond_2

    const-string p0, "3047"

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const-string p0, "0202"

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onShow(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Video$1;->$SwitchMap$com$sec$android$app$camera$interfaces$MenuManager$MenuId:[I

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->getMenuId()Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableLiveThumbnailPreviewCallback(Z)V

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
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterKeyReleased : inputType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoMode"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p1, v0, :cond_4

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRemainRecordingTimeInMsByStorage()J

    move-result-wide v2

    const-wide/16 v4, 0x5

    cmp-long p1, v2, v4

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->isSnapShotAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->takeVideoSnapshot()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result p1

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderExternalStorageAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const p1, 0x7f1102da

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;->STORAGE_STATUS:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;)V

    :cond_4
    :goto_0
    return v1
.end method

.method public onShutterTimerCaptureTriggered()V
    .locals 2

    const-string v0, "VideoMode"

    const-string v1, "onShutterTimerCaptureTriggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->startRecording()V

    return-void
.end method

.method public onShutterTimerEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Video$1;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

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
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0xe0

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x70

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    sget-object p1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Video;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0xe7

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x60

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 p1, 0x100

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->setTimerCountingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;)V

    :goto_0
    return-void
.end method

.method public onSnapshotButtonClick()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Video;->onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "0243"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "0204"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onStartPreviewCompleted()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->BACK_VIDEO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoEffectsTab()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoEffectsTab()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->FRONT_VIDEO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontVideoEffectsTab()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontVideoEffectsTab()I

    move-result v0

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableLiveThumbnailPreviewCallback(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->refreshZoomBar()V

    :cond_3
    return-void
.end method

.method public onStartPreviewPrepared(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V
    .locals 2

    const-string v0, "VideoMode"

    const-string v1, "onStartPreviewPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_DUAL_CAMERA_DISABLE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedMediaRecorderProfile()Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getVideoFrameRate()I

    move-result p2

    if-lez p2, :cond_2

    sget-object p2, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/util/Range;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getVideoFrameRate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getVideoFrameRate()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, p2, v0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->isEffectRecordingRequired()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->getAvailableEffectRecordingFpsRange()Landroid/util/Range;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStartPreviewRequested()V
    .locals 0

    return-void
.end method

.method public onStopButtonClick()V
    .locals 4

    const-string v0, "VideoMode"

    const-string v1, "onStopButtonClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->onStopRecordingRequested()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByRecordingTime(J)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0009"

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->stopRecording()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByRecordingTime(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0242"

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontVideoBeautyLevel()I

    move-result p0

    if-lez p0, :cond_2

    const-string p0, "3048"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByRecordingTime(J)Ljava/lang/String;

    move-result-object p0

    const-string v2, "0203"

    invoke-static {v2, v0, v1, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;JLjava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopButtonClick : stop recording is not available, recordingTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStopRecordingRequested()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->stopRecording()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->cancelRecording()V

    :goto_0
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCenterButton:Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;->getShutterButton()Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->onStopButtonClick()V

    return p2

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouchAfFocused()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_RECORDING_TOUCH_AF:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->showRecordingAfLockedIndicator()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->isZoomChangeGroupOpened()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTouchAfCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTouchAfCount:I

    int-to-long v0, v0

    const-string v2, "0205"

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->showAfUnlockButton()V

    return-void
.end method

.method public onTouchEvSliderVisibilityChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAudioZoomView:Lcom/sec/android/app/camera/widget/gl/AudioZoomView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/AudioZoomView;->hide()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->hideZoomInMicPopup()V

    :cond_0
    return-void
.end method

.method public onTrackingAfRequested()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTrackingAfCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTrackingAfCount:I

    int-to-long v0, v0

    const-string v2, "0211"

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->hideAfUnlockButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->hideAeUnlockButton()V

    return-void
.end method

.method public onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

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
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Video;->startBaseMenuMoveAnimation(Z)V

    return-void
.end method

.method public onZoomChangeGroupOpenPrepared()V
    .locals 0

    return-void
.end method

.method public onZoomChangeGroupOpened()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->KEEP_CHANGED_EV_AFTER_ZOOM:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->hideAfUnlockButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->hideAeUnlockButton()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Video;->startBaseMenuMoveAnimation(Z)V

    return-void
.end method

.method public onZoomSliderResetTranslating()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAudioZoomView:Lcom/sec/android/app/camera/widget/gl/AudioZoomView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/AudioZoomView;->resetTranslate()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->resetZoomInMicPupup()V

    :cond_0
    return-void
.end method

.method public onZoomSliderTranslated(FF)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mAudioZoomView:Lcom/sec/android/app/camera/widget/gl/AudioZoomView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/AudioZoomView;->translateAbsolute(FF)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/Video;->moveZoomInMicPopup(FF)V

    :cond_0
    return-void
.end method

.method public startRecording()V
    .locals 2

    const-string v0, "VideoMode"

    const-string v1, "startRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCurrentMode(I)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->START:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Video;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->startMultiMicZoomFocus()V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_RECORDING_CONTINUOUS_AF:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Video;->updateAfUnlockButtonPosition()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTouchAfCount:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mTrackingAfCount:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->startVideoRecording()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f110479

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public stopRecording()V
    .locals 4

    const-string v0, "VideoMode"

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getMaxRecordingTimeLimitInSecond()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateRecordingTime(JI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->resetTranslateZoomChangeButton(Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/Video;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->stopVideoRecording(Z)V

    return-void
.end method
