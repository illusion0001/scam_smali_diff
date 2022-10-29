.class Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;
.super Ljava/lang/Object;
.source "SuperSlowMotion.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/RecordingMode;
.implements Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;
.implements Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;
.implements Lcom/samsung/android/camera/core2/MakerInterface$SuperSlowMotionStateCallback;
.implements Lcom/samsung/android/glview/GLView$KeyListener;
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;
.implements Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$BrightnessValueListener;
.implements Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$PreviewSnapShotListener;
.implements Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomChangeGroupOpenStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_DETECT_BUTTON_RATIO_100:F = 100.0f

.field private static final ANIMATION_DETECT_BUTTON_SCALE_EFFECT_DOWN_RATIO:F = 90.0f

.field private static final ANIMATION_DETECT_BUTTON_SCALE_EFFECT_UP_RATIO:F = 110.0f

.field private static final ANIMATION_DETECT_GUIDE_INIT_RATIO:F = 150.0f

.field private static final ANIMATION_DETECT_GUIDE_RATIO_100:F = 100.0f

.field private static final ANIMATION_DETECT_IMAGE_DETECTED_BLINK_END:F = 20.0f

.field private static final ANIMATION_DETECT_IMAGE_DETECTED_BLINK_START:F = 100.0f

.field private static final CHECK_ENABLE_SUPER_SLOW_RECORDING_DURATION:I = 0xc8

.field private static final ENABLE_LOW_LIGHT_FRC_MSG:I = 0xd

.field private static final ENABLE_LOW_LIGHT_FRC_MSG_DELAY:I = 0xbb8

.field private static final ENABLE_MOTION_DETECTION:I = 0x7

.field private static final HELP_GUIDE_MULTI_AUTO:I = 0x3

.field private static final HELP_GUIDE_MULTI_MANUAL:I = 0x4

.field private static final HELP_GUIDE_SAVING_VIDEO:I = 0x5

.field private static final HELP_GUIDE_SINGLE_AUTO:I = 0x1

.field private static final HELP_GUIDE_SINGLE_MANUAL:I = 0x2

.field private static final HIDE_HELP_GUIDE_TIMER_DELAY:I = 0x1770

.field private static final HIDE_HELP_GUIDE_TIME_OUT_MSG:I = 0xb

.field private static final HIDE_LOW_LIGHT_WARNING_TOAST_TIME_OUT_MSG:I = 0xa

.field private static final HIDE_LOW_LIGHT_WARNING_TOAST_TIME_OUT_MSG_DELAY:I = 0xbb8

.field private static final HIDE_RECORDING_GUIDE_TOAST_MSG:I = 0x9

.field private static final HIDE_RECORDING_GUIDE_TOAST_MSG_DELAY:I = 0x5dc

.field private static final LOW_LIGHT_FRC_THRESHOLD:I = 0x14d

.field private static final MAX_SUPER_SLOW_MOTION_COUNT:I = 0x14

.field private static final NORMAL_FRAME:I = 0x1e

.field private static final NORMAL_FRC_THRESHOLD:I = 0x197

.field private static final ONE_SECOND:I = 0x3e8

.field private static final RECORDED_SUPER_SLOW_MSG:I = 0x1

.field private static final RECORDED_SUPER_SLOW_MSG_DELAY:I = 0x3e8

.field private static final RELEASE_TOUCH_PREVENT:I = 0x2

.field private static final RELEASE_TOUCH_PREVENT_DURATION:I = 0x3e8

.field private static final SENSOR_DELAY_50HZ:I = 0x4e20

.field private static final SHAKE_INTENSE_UNSTABLE_MSG:I = 0x6

.field private static final SHAKE_INTENSE_UNSTABLE_THRESHOLD:F = 0.2f

.field private static final SHAKE_STABLE_MSG:I = 0x4

.field private static final SHAKE_STABLE_THRESHOLD:F = 0.08f

.field private static final SHAKE_UNSTABLE_MSG:I = 0x5

.field private static final SHAKE_UNSTABLE_THRESHOLD:F = 0.12f

.field private static final SPEED_THRESHOLD_ALPHA:F = 0.8f

.field private static final SPEED_THRESHOLD_MULTI:F = 0.5f

.field private static final SPEED_THRESHOLD_SINGLE:F = 0.48f

.field private static final STABLE_CHECK_DURATION:I = 0x258

.field private static final STABLE_CHECK_INIT_DURATION:I = 0x4b0

.field private static final STEADY_CONDITION_CHECK_MSG_DELAY:I = 0x4b0

.field private static final SUPER_SLOW_ENABLED:I = 0x8

.field private static final SUPER_SLOW_ENABLED_MSG_DELAY:I = 0x3e8

.field private static final SUPER_SLOW_RECORDING:I = 0xc

.field private static final TAG:Ljava/lang/String; = "SuperSlowMotion"

.field private static final TERMINATED_RECORDING_MSG:I = 0x3

.field private static final TERMINATED_RECORDING_MSG_DELAY:I = 0x12c

.field private static final UNSTABLE_CHECK_DURATION:I = 0x64

.field private static final VIDEO_SAVE_AVAILABLE_TIME:I = 0x9c4


# instance fields
.field private final AF_UNLOCK_BUTTON_HEIGHT:F

.field private final AF_UNLOCK_BUTTON_LEFT:F

.field private final AF_UNLOCK_BUTTON_LEFT_LANDSCAPE:F

.field private final AF_UNLOCK_BUTTON_TOP:F

.field private final AF_UNLOCK_BUTTON_TOP_LANDSCAPE:F

.field private final AF_UNLOCK_BUTTON_WIDTH:F

.field private final HELP_DESCRIPTION_BOTTOM_MARGIN:F

.field private final HELP_DESCRIPTION_INSIDE_SIDE_MARGIN:F

.field private final HELP_DESCRIPTION_INSIDE_TOP_BOTTOM_MARGIN:F

.field private final HELP_DESCRIPTION_LANDSCAPE_BOTTOM_MARGIN:F

.field private final HELP_TEXT_SIZE:F

.field private final HELP_TEXT_SIZE_MARGIN:F

.field private final KEEP_STEADY_LANDSCAPE_BOTTOM_MARGIN:F

.field private final LOW_LIGHT_WARNING_TEXT:Ljava/lang/String;

.field private final LOW_LIGHT_WARNING_TEXT_SIZE:I

.field private final MOTION_DETECT_MIN_SIZE:F

.field private final MOTION_DETECT_RECTANGLE_INIT_CENTER_Y:F

.field private final MOTION_DETECT_RECTANGLE_INIT_SIZE:F

.field private final MOTION_DETECT_RECTANGLE_INIT_X:F

.field private final MOTION_DETECT_RECTANGLE_INIT_Y:F

.field private final MOTION_DETECT_RECTANGLE_Y:F

.field private final MULTI_BUTTON_BLINK_SIZE:I

.field private final PROGRESS_CIRCLE_STEP:I

.field private final PROGRESS_CIRCLE_STEP_OFFSET:I

.field private final QUICK_SETTING_HEIGHT:F

.field private final QUICK_SETTING_Y:F

.field private final RECORDING_REC_ICON_SIZE:F

.field private final RECORDING_REC_TIME_AREA_HEIGHT:I

.field private final RECORDING_REC_TIME_GROUP_HEIGHT:F

.field private final RECORDING_REC_TIME_TEXT_HEIGHT:I

.field private final RECORDING_REC_TIME_TEXT_MARGIN_X:I

.field private final RECORDING_REC_TIME_TEXT_SIZE:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SUPER_SLOW_MOTION_TOAST_HEIGHT:F

.field private final SUPER_SLOW_MOTION_TOAST_MARGIN:F

.field private final SUPER_SLOW_THUMBNAIL_LIST_BOTTOM_MARGIN:F

.field private final TOAST_INSIDE_SIDE_MARGIN:F

.field private final TOAST_SIDE_MARGIN:F

.field private mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraOrientation:I

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCenterButtonSize:F

.field private mControllerRightButtonHideAnimation:Landroid/view/animation/AnimationSet;

.field private mControllerRightButtonShowAnimation:Landroid/view/animation/AnimationSet;

.field private mCurrentSuperSlowMotionState:I

.field private mDetectGuideInitAnimationSet:Landroid/view/animation/AnimationSet;

.field private mDetectGuideRecordingStartAnimationSet:Landroid/view/animation/AnimationSet;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mFrcOnlySupport:Z

.field private mGravityX:F

.field private mGravityY:F

.field private mGravityZ:F

.field private final mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

.field private mHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mHelpGuideText:Lcom/samsung/android/glview/GLText;

.field private mIsBackgroundRecording:Z

.field private mIsHelpGuideAvailable:Z

.field private mIsLowLightWarningToastDisplayed:Z

.field private mIsMaxDurationReached:Z

.field private mIsMotionDetectionAvailable:Z

.field private mIsMotionDetectionNotAvailable:Z

.field private mIsSuperSlowDisabled:Z

.field private mIsSuperSlowMotionRecording:Z

.field private mIsTouchDisabled:Z

.field private mLowLightWarningToast:Lcom/samsung/android/glview/GLViewGroup;

.field private mLowLightWarningToastText:Lcom/samsung/android/glview/GLText;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mMotionDetectButtonAnimationSet:Landroid/view/animation/AnimationSet;

.field private mMotionDetectEnabled:Z

.field private mMotionDetectGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

.field private mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

.field private mMultiButton:Lcom/samsung/android/glview/GLButton;

.field private mMultiButtonBlink:Lcom/samsung/android/glview/GLImage;

.field private mMultiButtonBlinkAnimation:Landroid/view/animation/ScaleAnimation;

.field private mPreviousDetectionType:I

.field private mPreviousFRCValue:I

.field private mRecordingIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mRecordingIndicatorTextWidth:F

.field private mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

.field private mRecordingProgressCircle:Lcom/sec/android/app/camera/widget/gl/ProgressCircle;

.field private mRecordingStopHideDetectGuideAnimationSet:Landroid/view/animation/AnimationSet;

.field private mRecordingStopShowDetectGuideAnimationSet:Landroid/view/animation/AnimationSet;

.field private mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

.field private mSavingWaitToast:Lcom/sec/android/app/camera/widget/CameraToast;

.field private mStableCheckTime:I

.field private mSuperSlowMotionCount:I

.field private mSuperSlowMotionGuideToast:Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;

.field private mSuperSlowMotionOperatingCount:I

.field private mSuperSlowThumbnailList:Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;

.field private mSystemTime:I

.field private mSystemTimeScheduler:Ljava/util/Timer;

.field private mVideoSavingTime:I

.field private mViewLayout:Lcom/samsung/android/glview/GLViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->SCREEN_HEIGHT:I

    const v0, 0x7f07034c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->MULTI_BUTTON_BLINK_SIZE:I

    const v0, 0x7f070329

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->MOTION_DETECT_RECTANGLE_Y:F

    const v0, 0x7f070328

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->MOTION_DETECT_RECTANGLE_INIT_SIZE:F

    const v0, 0x7f070327

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->MOTION_DETECT_MIN_SIZE:F

    const v0, 0x7f07034a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->HELP_TEXT_SIZE_MARGIN:F

    const v0, 0x7f070346

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->HELP_TEXT_SIZE:F

    const v0, 0x7f070345

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->HELP_DESCRIPTION_BOTTOM_MARGIN:F

    const v0, 0x7f070348

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->HELP_DESCRIPTION_LANDSCAPE_BOTTOM_MARGIN:F

    const v0, 0x7f070355

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->HELP_DESCRIPTION_INSIDE_SIDE_MARGIN:F

    const v0, 0x7f070349

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->HELP_DESCRIPTION_INSIDE_TOP_BOTTOM_MARGIN:F

    const v0, 0x7f070347

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->KEEP_STEADY_LANDSCAPE_BOTTOM_MARGIN:F

    const v0, 0x7f070358

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->TOAST_SIDE_MARGIN:F

    const v0, 0x7f070357

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->TOAST_INSIDE_SIDE_MARGIN:F

    const v0, 0x7f070326

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->SUPER_SLOW_MOTION_TOAST_MARGIN:F

    const v0, 0x7f070324

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->SUPER_SLOW_MOTION_TOAST_HEIGHT:F

    const v0, 0x7f07034f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->SUPER_SLOW_THUMBNAIL_LIST_BOTTOM_MARGIN:F

    const v0, 0x7f07035d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    const v0, 0x7f07035b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->RECORDING_REC_ICON_SIZE:F

    const v0, 0x7f070354

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->RECORDING_REC_TIME_TEXT_MARGIN_X:I

    const v0, 0x7f070359

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->RECORDING_REC_TIME_AREA_HEIGHT:I

    const v0, 0x7f070336

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->RECORDING_REC_TIME_TEXT_SIZE:I

    const v0, 0x7f07034b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->LOW_LIGHT_WARNING_TEXT_SIZE:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->SCREEN_WIDTH:I

    int-to-float v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->MOTION_DETECT_RECTANGLE_INIT_SIZE:F

    sub-float/2addr v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->MOTION_DETECT_RECTANGLE_INIT_X:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->MOTION_DETECT_RECTANGLE_Y:F

    int-to-float v0, v0

    sub-float/2addr v0, v2

    div-float/2addr v0, v3

    add-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->MOTION_DETECT_RECTANGLE_INIT_Y:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->MOTION_DETECT_RECTANGLE_INIT_Y:F

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->MOTION_DETECT_RECTANGLE_INIT_CENTER_Y:F

    const v0, 0x7f11047f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->LOW_LIGHT_WARNING_TEXT:Ljava/lang/String;

    const v0, 0x7f070320

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->AF_UNLOCK_BUTTON_TOP:F

    const v0, 0x7f07031f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->AF_UNLOCK_BUTTON_LEFT:F

    const v1, 0x7f070321

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->AF_UNLOCK_BUTTON_TOP_LANDSCAPE:F

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->AF_UNLOCK_BUTTON_LEFT_LANDSCAPE:F

    const v0, 0x7f070323

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->AF_UNLOCK_BUTTON_WIDTH:F

    const v0, 0x7f07031e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->AF_UNLOCK_BUTTON_HEIGHT:F

    const v0, 0x7f0b00a1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->PROGRESS_CIRCLE_STEP:I

    const v0, 0x7f0b00a0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->PROGRESS_CIRCLE_STEP_OFFSET:I

    const v0, 0x7f07012e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->RECORDING_REC_TIME_GROUP_HEIGHT:F

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getTopBaseLinePositionY()F

    move-result v0

    const v1, 0x7f07031a

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->QUICK_SETTING_Y:F

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->QUICK_SETTING_HEIGHT:F

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mControllerRightButtonHideAnimation:Landroid/view/animation/AnimationSet;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mControllerRightButtonShowAnimation:Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSystemTime:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionOperatingCount:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionCount:I

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsBackgroundRecording:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsLowLightWarningToastDisplayed:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsHelpGuideAvailable:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsMaxDurationReached:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsTouchDisabled:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowMotionRecording:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowDisabled:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectEnabled:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsMotionDetectionAvailable:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsMotionDetectionNotAvailable:Z

    const/16 v1, 0x4b0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mStableCheckTime:I

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mFrcOnlySupport:Z

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->setDimRecordingControllerButtons(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/samsung/android/glview/GLButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;Lcom/samsung/android/glview/GLButton;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startControllerRightButtonShowAnimation(Lcom/samsung/android/glview/GLButton;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startMultiButtonBlinkAnimation()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/samsung/android/glview/GLNinePatch;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideSuperSlowMotionGuideToast()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionCount:I

    return p0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startShowUnSteadyState()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->enableSuperSlowMotionAutoDetect(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowThumbnailList:Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;

    return-object p0
.end method

.method static synthetic access$204(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSystemTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSystemTime:I

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/Engine;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startBackgroundRecording()V

    return-void
.end method

.method static synthetic access$2302(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowMotionRecording:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideFixedMotionDetectRectangle()V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->showMovableMotionDetectRectangle()V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionGuideToast:Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->stopShowUnsteadyState()V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->showMotionDetectButtonAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/interfaces/RecordingManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    return-object p0
.end method

.method static synthetic access$3002(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mStableCheckTime:I

    return p1
.end method

.method static synthetic access$3100(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCurrentSuperSlowMotionState:I

    return p0
.end method

.method static synthetic access$3202(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsMotionDetectionAvailable:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsMotionDetectionNotAvailable:Z

    return p0
.end method

.method static synthetic access$3302(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsMotionDetectionNotAvailable:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideHelpGuide()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideLowLightWarningToast()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsHelpGuideAvailable:Z

    return p0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->showHelpGuide()V

    return-void
.end method

.method static synthetic access$802(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowDisabled:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsTouchDisabled:Z

    return p0
.end method

.method static synthetic access$902(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsTouchDisabled:Z

    return p1
.end method

.method private checkStableStatusByAccelerometer(Landroid/hardware/SensorEvent;)V
    .locals 6

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mGravityX:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    const v4, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mGravityX:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mGravityY:F

    mul-float/2addr v0, v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v2, v2, v5

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mGravityY:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mGravityZ:F

    mul-float/2addr v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mGravityZ:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mGravityX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mGravityY:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mGravityZ:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsBackgroundRecording:Z

    if-eqz v2, :cond_0

    const v2, 0x3ef5c28f    # 0.48f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    :goto_0
    cmpl-float v0, v0, v2

    const/4 v3, 0x4

    if-gtz v0, :cond_2

    cmpl-float v0, v1, v2

    if-gtz v0, :cond_2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    invoke-virtual {p1, v3}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsMotionDetectionAvailable:Z

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    const-wide/16 v0, 0x4b0

    invoke-virtual {p0, v3, v0, v1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->removeMessages(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method private checkStableStatusByGyroscope(Landroid/hardware/SensorEvent;)V
    .locals 9

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v2, 0x3e4ccccd    # 0.2f

    cmpl-float v3, v0, v2

    const-wide/16 v4, 0x64

    const/4 v6, 0x6

    const/4 v7, 0x4

    const/4 v8, 0x5

    if-gtz v3, :cond_3

    cmpl-float v3, v1, v2

    if-gtz v3, :cond_3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    goto :goto_1

    :cond_0
    const v2, 0x3df5c28f    # 0.12f

    cmpl-float v3, v0, v2

    if-gtz v3, :cond_2

    cmpl-float v3, v1, v2

    if-gtz v3, :cond_2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    const v2, 0x3da3d70a    # 0.08f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    cmpg-float v0, v1, v2

    if-gez v0, :cond_4

    cmpg-float p1, p1, v2

    if-gez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->removeMessages(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    invoke-virtual {p1, v8}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->removeMessages(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    invoke-virtual {p1, v7}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsMotionDetectionAvailable:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mStableCheckTime:I

    int-to-long v0, p0

    invoke-virtual {p1, v7, v0, v1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->removeMessages(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    invoke-virtual {p1, v7}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->removeMessages(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    invoke-virtual {p1, v8}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsMotionDetectionNotAvailable:Z

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    invoke-virtual {p0, v8, v4, v5}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    invoke-virtual {p1, v8}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->removeMessages(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    invoke-virtual {p1, v7}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->removeMessages(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsMotionDetectionNotAvailable:Z

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    invoke-virtual {p0, v6, v4, v5}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    :goto_2
    return-void
.end method

.method private clear()V
    .locals 4

    const-string v0, "SuperSlowMotion"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideFixedMotionDetectRectangle()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideSuperSlowMotionGuideToast()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideMovableMotionDetectRectangle()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideHelpGuide()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingProgressCircle:Lcom/sec/android/app/camera/widget/gl/ProgressCircle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ProgressCircle;->hide()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsTouchDisabled:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowDisabled:Z

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v2, v1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->cancelAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlink:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->cancelAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlink:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->cancelAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->cancelAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideLowLightWarningToast()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideHelpGuide()V

    return-void
.end method

.method private clearSuperSlowMotionCount()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionCount:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionOperatingCount:I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowThumbnailList:Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;->refresh()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    :cond_0
    return-void
.end method

.method private countSuperSlowMotion()V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionCount:I

    const/4 v1, 0x1

    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionCount:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private countSuperSlowMotionOperating()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionOperatingCount:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionOperatingCount:I

    :cond_0
    return-void
.end method

.method private enableEngineCallbacksForRecording(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setSuperSlowMotionStateCallback(Lcom/samsung/android/camera/core2/MakerInterface$SuperSlowMotionStateCallback;)V

    return-void
.end method

.method private enableEngineEventListener(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->registerPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->unregisterPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setAutoFocusEventListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_2

    move-object v2, p0

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setBrightnessValueListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$BrightnessValueListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move-object p0, v1

    :goto_3
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->setShutterTimerCaptureTriggerListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;)V

    return-void
.end method

.method private enableMenuListeners(Z)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_ZOOM:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->setZoomChangeGroupOpenStateListener(Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomChangeGroupOpenStateListener;)V

    :cond_1
    return-void
.end method

.method private enableSuperSlowMotionAutoDetect(Z)V
    .locals 5

    const v0, 0x7f070363

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    const-string v1, "SuperSlowMotion"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getHandleLeft()F

    move-result p1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getHandleTop()F

    move-result v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getHandleRight()F

    move-result v3

    sub-float/2addr v3, v0

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getHandleBottom()F

    move-result v4

    sub-float/2addr v4, v0

    float-to-int v0, v4

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableSuperSlowMotionAutoDetect : roi = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    const/4 v0, 0x1

    invoke-interface {p1, v0, v4}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->enableSuperSlowMotionAutoDetect(ZLandroid/graphics/Rect;)V

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectEnabled:Z

    goto :goto_0

    :cond_0
    const-string p1, "enableSuperSlowMotionAutoDetect : roi null"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->enableSuperSlowMotionAutoDetect(ZLandroid/graphics/Rect;)V

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectEnabled:Z

    :goto_0
    return-void
.end method

.method private getVideoSavingProgressedStep(J)I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mVideoSavingTime:I

    if-lez v0, :cond_0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->PROGRESS_CIRCLE_STEP:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    long-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->PROGRESS_CIRCLE_STEP_OFFSET:I

    add-int/2addr p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->PROGRESS_CIRCLE_STEP:I

    if-le p1, p0, :cond_1

    goto :goto_1

    :cond_1
    move p0, p1

    :goto_1
    return p0
.end method

.method private handleSlowMotionRecordingCancelled()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->stop()V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->CANCEL:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    return-void
.end method

.method private handleSlowMotionRecordingStopped()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->stop()V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->STOP:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    return-void
.end method

.method private hideCAFButton()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideFixedMotionDetectRectangle()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->cancelAnimation()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    return-void
.end method

.method private hideHelpGuide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->stopHelpGuideTimer()V

    return-void
.end method

.method private hideLowLightWarningToast()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mLowLightWarningToast:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->removeMessages(I)V

    return-void
.end method

.method private hideMovableMotionDetectRectangle()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->hideRectHandles()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setBypassTouch(Z)V

    return-void
.end method

.method private hideSuperSlowMotionGuideToast()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionGuideToast:Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;->setVisibility(I)V

    return-void
.end method

.method private isLowLightFrcEnable(I)Z
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mFrcOnlySupport:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v3, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowMotionRecording:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionFrc()I

    move-result v0

    if-ne v0, v2, :cond_3

    const/16 v0, 0x197

    if-ge p1, v0, :cond_6

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionFrc()I

    move-result p0

    if-nez p0, :cond_4

    move p0, v2

    goto :goto_0

    :cond_4
    move p0, v1

    :goto_0
    const/16 v0, 0x14d

    if-gt p1, v0, :cond_5

    move p1, v2

    goto :goto_1

    :cond_5
    move p1, v1

    :goto_1
    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    :cond_6
    return v2

    :cond_7
    return v1
.end method

.method private isMultiSuperSlowRecordingAvailable()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result p0

    return p0
.end method

.method private isSuperSlowMotionModeControlAvailable()Z
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCurrentSuperSlowMotionState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsTouchDisabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private makeAlphaOffAnimation(Landroid/view/animation/AnimationSet;ILandroid/view/animation/Interpolator;)V
    .locals 0

    invoke-static {p2, p3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private makeAlphaOnAnimation(Landroid/view/animation/AnimationSet;ILandroid/view/animation/Interpolator;)V
    .locals 0

    invoke-static {p2, p3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private makeBlinkingAnimation(Landroid/view/animation/AnimationSet;FFJ)V
    .locals 1

    new-instance p0, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    div-float/2addr p3, v0

    invoke-direct {p0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {p0, p4, p5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    const/4 p2, -0x1

    invoke-virtual {p0, p2}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    invoke-virtual {p1, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private makeCAFButton()V
    .locals 9

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_RECORDING_CONTINUOUS_AF:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0809ef

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1101a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_0
    return-void
.end method

.method private makeHelpGuide()V
    .locals 10

    const v0, 0x7f110481

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v6, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v6, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const v1, 0x7f080b7b

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setNinePatchBackground(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->HELP_DESCRIPTION_INSIDE_SIDE_MARGIN:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->HELP_DESCRIPTION_INSIDE_TOP_BOTTOM_MARGIN:F

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHelpGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHelpGuideText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHelpGuideText:Lcom/samsung/android/glview/GLText;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->HELP_TEXT_SIZE:F

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setFontSize(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHelpGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHelpGuideText:Lcom/samsung/android/glview/GLText;

    const v1, 0x7f0b005e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x7f060073

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v9, v1, v2}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHelpGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private makeLowLightWarningToast()V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->KEEP_STEADY_LANDSCAPE_BOTTOM_MARGIN:F

    const v2, 0x7f07012f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    add-float/2addr v1, v2

    const v2, 0x7f07012e

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->TOAST_SIDE_MARGIN:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->TOAST_INSIDE_SIDE_MARGIN:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->LOW_LIGHT_WARNING_TEXT:Ljava/lang/String;

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->LOW_LIGHT_WARNING_TEXT_SIZE:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v3

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->LOW_LIGHT_WARNING_TEXT:Ljava/lang/String;

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->LOW_LIGHT_WARNING_TEXT_SIZE:I

    int-to-float v6, v6

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v5

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->LOW_LIGHT_WARNING_TEXT:Ljava/lang/String;

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->LOW_LIGHT_WARNING_TEXT_SIZE:I

    int-to-float v7, v7

    iget-object v8, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v8

    mul-float/2addr v7, v8

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v8, v6, v7

    if-lez v8, :cond_0

    move v13, v2

    move v6, v4

    goto :goto_0

    :cond_0
    move v13, v5

    :goto_0
    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->TOAST_INSIDE_SIDE_MARGIN:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v13

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->SUPER_SLOW_MOTION_TOAST_HEIGHT:F

    const v8, 0x7f0700b9

    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v8

    add-float/2addr v3, v8

    sub-float/2addr v6, v7

    mul-float/2addr v3, v6

    add-float/2addr v3, v5

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->SCREEN_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v5, v2

    div-float/2addr v5, v4

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v6

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->SUPER_SLOW_MOTION_TOAST_MARGIN:F

    sub-float/2addr v6, v7

    sub-float/2addr v6, v3

    iget v11, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->TOAST_INSIDE_SIDE_MARGIN:F

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->MOTION_DETECT_RECTANGLE_INIT_Y:F

    iget v8, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->MOTION_DETECT_RECTANGLE_INIT_SIZE:F

    div-float/2addr v8, v4

    add-float/2addr v7, v8

    new-instance v8, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v15

    move-object v14, v8

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-direct/range {v14 .. v19}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v8, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mLowLightWarningToast:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v8, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mLowLightWarningToast:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    iget-object v8, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mLowLightWarningToast:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    iget-object v8, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mLowLightWarningToast:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v8, v15}, Lcom/samsung/android/glview/GLViewGroup;->setCenterPivot(Z)V

    iget-object v8, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mLowLightWarningToast:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v8, v15, v5, v6}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mLowLightWarningToast:Lcom/samsung/android/glview/GLViewGroup;

    div-float/2addr v2, v4

    add-float v4, v7, v2

    invoke-virtual {v5, v14, v1, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mLowLightWarningToast:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v5, 0x3

    add-float/2addr v1, v3

    sub-float/2addr v7, v2

    invoke-virtual {v4, v5, v1, v7}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mLowLightWarningToast:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mLowLightWarningToast:Lcom/samsung/android/glview/GLViewGroup;

    const v2, 0x7f0806ff

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setNinePatchBackground(I)Z

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mLowLightWarningToast:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    new-instance v1, Lcom/samsung/android/glview/GLText;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    const/4 v12, 0x0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->LOW_LIGHT_WARNING_TEXT:Ljava/lang/String;

    const/16 v16, 0x0

    move-object v9, v1

    move v4, v14

    move v14, v3

    move v3, v15

    move-object v15, v2

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;Z)V

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mLowLightWarningToastText:Lcom/samsung/android/glview/GLText;

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mLowLightWarningToastText:Lcom/samsung/android/glview/GLText;

    const v2, 0x7f0600e2

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setColor(I)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mLowLightWarningToastText:Lcom/samsung/android/glview/GLText;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->LOW_LIGHT_WARNING_TEXT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mLowLightWarningToastText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mLowLightWarningToastText:Lcom/samsung/android/glview/GLText;

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->LOW_LIGHT_WARNING_TEXT_SIZE:I

    int-to-float v2, v2

    iget-object v5, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v5

    mul-float/2addr v2, v5

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setFontSize(F)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mLowLightWarningToastText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mLowLightWarningToastText:Lcom/samsung/android/glview/GLText;

    const v2, 0x7f0b005e

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const v5, 0x7f060073

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v4, v2, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mLowLightWarningToastText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mLowLightWarningToast:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mLowLightWarningToastText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mLowLightWarningToast:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private makeMotionDetectRectangle()V
    .locals 11

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->SCREEN_WIDTH:I

    int-to-float v0, v0

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/RectHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const v4, 0x7f0807ee

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setNinePatchHandle(IIIII)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->MOTION_DETECT_RECTANGLE_INIT_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->MOTION_DETECT_RECTANGLE_INIT_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->MOTION_DETECT_RECTANGLE_INIT_SIZE:F

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setPosition(FFFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v1, v0, v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMaxSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->MOTION_DETECT_MIN_SIZE:F

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMinSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setonHandlerMoveListener(Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setRectHandlerClickListener(Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setDragSensitivity(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const-string v2, "AUTO_DETECT_RECT"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setObjectTag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->hideRectHandles()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->hideBoundaryRect()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setGrowable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setAspectRatioLocked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    iget v10, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->MOTION_DETECT_RECTANGLE_INIT_SIZE:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v0

    move v9, v10

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->MOTION_DETECT_RECTANGLE_INIT_X:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->MOTION_DETECT_RECTANGLE_INIT_Y:F

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->MOTION_DETECT_RECTANGLE_INIT_SIZE:F

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x7f0807f5

    invoke-direct {v0, v2, v4, v4, v5}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->MOTION_DETECT_RECTANGLE_INIT_SIZE:F

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLNinePatch;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLNinePatch;->setBypassTouch(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private makeMultiCountGroup()V
    .locals 8

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->SCREEN_WIDTH:I

    int-to-float v5, v0

    const v0, 0x7f070350

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sub-float/2addr v0, v5

    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, v0, v1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x7f07003b

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->RECORDING_REC_TIME_AREA_HEIGHT:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->SUPER_SLOW_THUMBNAIL_LIST_BOTTOM_MARGIN:F

    sub-float/2addr v0, v1

    sub-float v4, v0, v6

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v7, 0x14

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowThumbnailList:Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowThumbnailList:Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowThumbnailList:Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowThumbnailList:Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private makeMultiShotButton()V
    .locals 21

    move-object/from16 v0, p0

    const v1, 0x7f070049

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v7

    const v1, 0x7f070045

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCenterButtonSize:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v4, v2, v1

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v12, 0x1

    invoke-interface {v1, v12}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v1

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v2, v12}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    sub-float/2addr v2, v7

    div-float/2addr v2, v3

    add-float v5, v1, v2

    div-float v1, v7, v3

    add-float v2, v4, v1

    add-float/2addr v1, v5

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->MULTI_BUTTON_BLINK_SIZE:I

    int-to-float v8, v6

    div-float/2addr v8, v3

    sub-float v15, v2, v8

    int-to-float v2, v6

    div-float/2addr v2, v3

    sub-float v16, v1, v2

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v14

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->MULTI_BUTTON_BLINK_SIZE:I

    int-to-float v3, v2

    int-to-float v2, v2

    const/16 v19, 0x1

    const v20, 0x7f080742

    move-object v13, v1

    move/from16 v17, v3

    move/from16 v18, v2

    invoke-direct/range {v13 .. v20}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlink:Lcom/samsung/android/glview/GLImage;

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlink:Lcom/samsung/android/glview/GLImage;

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlink:Lcom/samsung/android/glview/GLImage;

    const/4 v14, 0x4

    invoke-virtual {v1, v14}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlink:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLImage;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlink:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v1, Lcom/samsung/android/glview/GLButton;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const v8, 0x7f080743

    const v9, 0x7f080743

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v2, v1

    move v6, v7

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIZ)V

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v12}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v12}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v12}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v12}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v13}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110110

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v14}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private makeProgressCircle()V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v7

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ProgressCircle;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->PROGRESS_CIRCLE_STEP:I

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/camera/widget/gl/ProgressCircle;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingProgressCircle:Lcom/sec/android/app/camera/widget/gl/ProgressCircle;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingProgressCircle:Lcom/sec/android/app/camera/widget/gl/ProgressCircle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProgressCircle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingProgressCircle:Lcom/sec/android/app/camera/widget/gl/ProgressCircle;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private makeRecordingIndicator()V
    .locals 13

    const v0, 0x7f110352

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->RECORDING_REC_TIME_TEXT_SIZE:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingIndicatorTextWidth:F

    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingIndicatorTextWidth:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->RECORDING_REC_ICON_SIZE:F

    add-float/2addr v2, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->RECORDING_REC_TIME_TEXT_MARGIN_X:I

    int-to-float v4, v4

    add-float v6, v2, v4

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v2, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v4

    mul-float v7, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v5

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v4, v4

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v6

    mul-float/2addr v4, v6

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->RECORDING_REC_ICON_SIZE:F

    sub-float/2addr v4, v9

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v4, v6

    const/4 v6, 0x0

    const/4 v10, 0x1

    const v11, 0x7f080793

    move-object v4, v1

    move v8, v9

    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v1, Lcom/samsung/android/glview/GLText;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->RECORDING_REC_ICON_SIZE:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->RECORDING_REC_TIME_TEXT_MARGIN_X:I

    int-to-float v5, v5

    add-float v7, v4, v5

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingIndicatorTextWidth:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v5

    mul-float v10, v4, v5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->RECORDING_REC_TIME_TEXT_SIZE:I

    int-to-float v0, v0

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v4

    mul-float v12, v0, v4

    const/4 v8, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setClipping(Z)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    const v0, 0x7f0b008e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const v4, 0x7f060073

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v3, v0, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0, v0}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private makeScaleAnimation(Landroid/view/animation/AnimationSet;Lcom/samsung/android/glview/GLView;FFILandroid/view/animation/Interpolator;I)V
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLView;->getRotatable()Z

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/samsung/android/glview/GLView;->getLeftTop(I)[F

    move-result-object v1

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/samsung/android/glview/GLView;->getLeftTop(I)[F

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v6, v4, :cond_1

    const/4 v4, 0x3

    if-eq v6, v4, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    div-float/2addr v4, v7

    add-float/2addr v1, v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    :goto_0
    div-float/2addr v4, v7

    add-float/2addr v3, v4

    :goto_1
    move v12, v1

    move v14, v3

    goto :goto_2

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    div-float/2addr v4, v7

    sub-float/2addr v1, v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    div-float/2addr v4, v7

    add-float/2addr v1, v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    goto :goto_1

    :goto_2
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    div-float v9, p3, v2

    div-float v10, p4, v2

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v6, v1

    move v7, v9

    move v8, v10

    invoke-direct/range {v6 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    move-object/from16 v6, p6

    invoke-virtual {v1, v6}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move/from16 v8, p7

    int-to-long v2, v8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    move/from16 v7, p5

    int-to-long v2, v7

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    :cond_2
    move/from16 v7, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    div-float v3, p3, v2

    div-float v4, p4, v2

    move v1, v3

    move v2, v4

    move-object/from16 v5, p2

    invoke-static/range {v1 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :goto_3
    return-void
.end method

.method private makeSuperSlowMotionGuideToast()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionGuideToast:Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionGuideToast:Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionGuideToast:Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private prepareRecording()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsBackgroundRecording:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-boolean v1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SUPER_SLOW_MOTION_FPS_CHANGEABLE:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->stopBackgroundRecording()V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->prepareVideoRecording()V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->stopBackgroundRecording()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->reconnectMaker()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->resetAfTrigger()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    :goto_1
    return-void
.end method

.method private registerCameraSettingChangedListeners()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SUPER_SLOW_MOTION_FRAME_RATE_CONTROL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method private restartHelpGuideTimer()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    const-wide/16 v2, 0x1770

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private restartMotionDetection()V
    .locals 2

    const-string v0, "SuperSlowMotion"

    const-string v1, "restartMotionDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsMotionDetectionAvailable:Z

    return-void
.end method

.method private restartRecordingGuideToastTimer()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private setDimRecordingControllerButtons(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDimRecordingControllerButtons : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperSlowMotion"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionCount:I

    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, 0x4

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    return-void
.end method

.method private showCAFButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showFixedMotionDetectRectangle()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    return-void
.end method

.method private showHelpGuide()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsHelpGuideAvailable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mLowLightWarningToast:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionGuideToast:Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->showHelpGuide(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->showHelpGuide(I)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsHelpGuideAvailable:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->restartHelpGuideTimer()V

    return-void
.end method

.method private showHelpGuide(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const v2, 0x7f110489

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v1, v5, :cond_4

    const/4 v6, 0x2

    if-eq v1, v6, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v6, 0x5

    if-eq v1, v6, :cond_0

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f1103b2

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f110482

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const v1, 0x7f110481

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const v1, 0x7f11048a

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->HELP_TEXT_SIZE_MARGIN:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    sub-float/2addr v2, v6

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->HELP_DESCRIPTION_INSIDE_SIDE_MARGIN:F

    mul-float/2addr v6, v7

    sub-float/2addr v2, v6

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->HELP_TEXT_SIZE:F

    iget-object v8, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v8

    mul-float/2addr v6, v8

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-static {v1, v6, v8}, Lcom/sec/android/app/camera/util/Util;->getStringHeight(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v6

    iget v8, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->HELP_TEXT_SIZE:F

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-static {v2, v1, v8, v9}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v8

    int-to-float v8, v8

    const-string v9, "\n"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v10, :cond_7

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    array-length v13, v9

    move v14, v10

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v13, :cond_9

    aget-object v15, v9, v10

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->HELP_TEXT_SIZE:F

    iget-object v12, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v12}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v12

    mul-float/2addr v4, v12

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-static {v2, v15, v4, v12}, Lcom/samsung/android/glview/GLText;->measureRows(FLjava/lang/String;FLandroid/graphics/Typeface;)I

    move-result v4

    if-le v4, v5, :cond_5

    move v14, v2

    goto :goto_2

    :cond_5
    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->HELP_TEXT_SIZE:F

    iget-object v12, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v12}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v12

    mul-float/2addr v4, v12

    invoke-static {v15, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v4

    cmpl-float v4, v4, v14

    if-lez v4, :cond_6

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->HELP_TEXT_SIZE:F

    iget-object v12, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v12}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v12

    mul-float/2addr v4, v12

    invoke-static {v15, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v14

    :cond_6
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x3

    goto :goto_1

    :cond_7
    cmpl-float v2, v8, v11

    if-lez v2, :cond_8

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->HELP_TEXT_SIZE_MARGIN:F

    mul-float/2addr v4, v7

    sub-float/2addr v2, v4

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->HELP_DESCRIPTION_INSIDE_SIDE_MARGIN:F

    mul-float/2addr v4, v7

    sub-float v14, v2, v4

    goto :goto_2

    :cond_8
    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->HELP_TEXT_SIZE:F

    iget-object v4, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v4

    mul-float/2addr v2, v4

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v14

    :cond_9
    :goto_2
    mul-float/2addr v6, v8

    const v2, 0x7f0700b9

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    sub-float/2addr v8, v11

    mul-float/2addr v2, v8

    add-float/2addr v6, v2

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->HELP_DESCRIPTION_INSIDE_SIDE_MARGIN:F

    mul-float/2addr v2, v7

    add-float/2addr v2, v14

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->HELP_DESCRIPTION_INSIDE_TOP_BOTTOM_MARGIN:F

    mul-float/2addr v4, v7

    add-float/2addr v4, v6

    iget v8, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->SCREEN_WIDTH:I

    int-to-float v8, v8

    sub-float/2addr v8, v2

    div-float/2addr v8, v7

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v9

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->HELP_DESCRIPTION_BOTTOM_MARGIN:F

    sub-float/2addr v9, v10

    sub-float/2addr v9, v4

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHelpGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v10, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v8, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->HELP_DESCRIPTION_LANDSCAPE_BOTTOM_MARGIN:F

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->MOTION_DETECT_RECTANGLE_INIT_CENTER_Y:F

    div-float/2addr v2, v7

    add-float/2addr v9, v2

    invoke-virtual {v3, v5, v8, v9}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->HELP_DESCRIPTION_LANDSCAPE_BOTTOM_MARGIN:F

    add-float/2addr v5, v4

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->MOTION_DETECT_RECTANGLE_INIT_CENTER_Y:F

    sub-float/2addr v4, v2

    const/4 v2, 0x3

    invoke-virtual {v3, v2, v5, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHelpGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v14, v6}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHelpGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout()V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHelpGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLText;->updateLayout()V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHelpGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHelpGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    return-void
.end method

.method private showLowLightWarningToast()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionGuideToast:Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideHelpGuide()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mLowLightWarningToast:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    const/16 v1, 0xa

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsLowLightWarningToastDisplayed:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mLowLightWarningToastText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLText;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/VoiceAssistantManager;->speakTtsAllAtOnce(Lcom/sec/android/app/camera/interfaces/CameraContext;Ljava/lang/String;)V

    return-void
.end method

.method private showMotionDetectButtonAnimation()V
    .locals 12

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectButtonAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectButtonAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionGuideToast:Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;

    const v0, 0x7f0b0014

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v7

    new-instance v8, Lcom/sec/android/app/camera/util/interpolator/SineInOut60;

    invoke-direct {v8}, Lcom/sec/android/app/camera/util/interpolator/SineInOut60;-><init>()V

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v6, 0x42dc0000    # 110.0f

    const/4 v9, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->makeScaleAnimation(Landroid/view/animation/AnimationSet;Lcom/samsung/android/glview/GLView;FFILandroid/view/animation/Interpolator;I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectButtonAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    new-instance v3, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;

    invoke-direct {v3}, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;-><init>()V

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->makeAlphaOnAnimation(Landroid/view/animation/AnimationSet;ILandroid/view/animation/Interpolator;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectButtonAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionGuideToast:Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;

    const v1, 0x7f0b0013

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v9

    new-instance v10, Lcom/sec/android/app/camera/util/interpolator/SineInOut80;

    invoke-direct {v10}, Lcom/sec/android/app/camera/util/interpolator/SineInOut80;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v11

    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v8, 0x42b40000    # 90.0f

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->makeScaleAnimation(Landroid/view/animation/AnimationSet;Lcom/samsung/android/glview/GLView;FFILandroid/view/animation/Interpolator;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionGuideToast:Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectButtonAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionGuideToast:Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;->startAnimation()V

    return-void
.end method

.method private showMotionDetectImageInitAnimation()V
    .locals 3

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingStopShowDetectGuideAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingStopShowDetectGuideAnimationSet:Landroid/view/animation/AnimationSet;

    const v1, 0x7f0b0015

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->makeAlphaOnAnimation(Landroid/view/animation/AnimationSet;ILandroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingStopShowDetectGuideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingStopShowDetectGuideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLNinePatch;->startAnimation()V

    return-void
.end method

.method private showMotionDetectRectangleInitAnimation()V
    .locals 10

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setVisibility(IZ)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mDetectGuideInitAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mDetectGuideInitAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    const v0, 0x7f0b0016

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v7

    new-instance v8, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v8}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    const/high16 v5, 0x43160000    # 150.0f

    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v9, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->makeScaleAnimation(Landroid/view/animation/AnimationSet;Lcom/samsung/android/glview/GLView;FFILandroid/view/animation/Interpolator;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mDetectGuideInitAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mDetectGuideInitAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setAnimation(Landroid/view/animation/Animation;Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->startAnimation()V

    return-void
.end method

.method private showMovableMotionDetectRectangle()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->showRectHandles()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setBypassTouch(Z)V

    return-void
.end method

.method private showRecordingCompletedToast()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionGuideToast:Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;

    const v1, 0x7f1103b4

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;->show(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->restartRecordingGuideToastTimer()V

    :cond_0
    return-void
.end method

.method private startBackgroundRecording()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsBackgroundRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->startBackgroundRecording()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsBackgroundRecording:Z

    const/16 v0, 0x4b0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mStableCheckTime:I

    :cond_0
    return-void
.end method

.method private startControllerRightButtonHideAnimation(Lcom/samsung/android/glview/GLButton;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mControllerRightButtonHideAnimation:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mControllerRightButtonHideAnimation:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mControllerRightButtonHideAnimation:Landroid/view/animation/AnimationSet;

    const/16 v1, 0x12c

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->makeAlphaOffAnimation(Landroid/view/animation/AnimationSet;ILandroid/view/animation/Interpolator;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mControllerRightButtonHideAnimation:Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    return-void
.end method

.method private startControllerRightButtonShowAnimation(Lcom/samsung/android/glview/GLButton;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mControllerRightButtonShowAnimation:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mControllerRightButtonShowAnimation:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mControllerRightButtonShowAnimation:Landroid/view/animation/AnimationSet;

    const/16 v2, 0x12c

    new-instance v3, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;

    invoke-direct {v3}, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;-><init>()V

    invoke-direct {p0, v0, v2, v3}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->makeAlphaOnAnimation(Landroid/view/animation/AnimationSet;ILandroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mControllerRightButtonShowAnimation:Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mControllerRightButtonShowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, p0}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    return-void
.end method

.method private startDetectImageHideAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->isAnimationFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->cancelAnimation()V

    :cond_1
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingStopHideDetectGuideAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingStopHideDetectGuideAnimationSet:Landroid/view/animation/AnimationSet;

    const v1, 0x7f0b0015

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->makeAlphaOffAnimation(Landroid/view/animation/AnimationSet;ILandroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingStopHideDetectGuideAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingStopHideDetectGuideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLNinePatch;->startAnimation()V

    return-void
.end method

.method private startMotionDetectBlinkAnimation()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mDetectGuideRecordingStartAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mDetectGuideRecordingStartAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mDetectGuideRecordingStartAnimationSet:Landroid/view/animation/AnimationSet;

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, 0x41a00000    # 20.0f

    const v0, 0x7f0b0017

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    int-to-long v6, v0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->makeBlinkingAnimation(Landroid/view/animation/AnimationSet;FFJ)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mDetectGuideRecordingStartAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLNinePatch;->setAnimation(Landroid/view/animation/Animation;Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLNinePatch;->startAnimation()V

    return-void
.end method

.method private startMultiButtonBlinkAnimation()V
    .locals 12

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionCount:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlinkAnimation:Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f99999a    # 1.2f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f99999a    # 1.2f

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlink:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getCurrentLeft()F

    move-result v2

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlink:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLImage;->getWidth()F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v8, v2

    const/4 v10, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlink:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLImage;->getCurrentTop()F

    move-result v2

    iget-object v11, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlink:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLImage;->getHeight()F

    move-result v11

    div-float/2addr v11, v9

    add-float/2addr v11, v2

    move-object v2, v0

    move v9, v10

    move v10, v11

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlinkAnimation:Landroid/view/animation/ScaleAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlinkAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlinkAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlinkAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlinkAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlinkAnimation:Landroid/view/animation/ScaleAnimation;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlinkAnimation:Landroid/view/animation/ScaleAnimation;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlink:Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlinkAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlink:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlink:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    return-void
.end method

.method private startShowUnSteadyState()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowThumbnailList:Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;

    const v1, 0x7f0807f0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;->setFocusImage(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionGuideToast:Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;

    const v0, 0x7f110480

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;->show(Ljava/lang/String;Z)V

    return-void
.end method

.method private startSuperSlowBlackOverlayAnimation()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/QuintEaseIn;

    invoke-direct {v1}, Lcom/sec/android/app/camera/util/interpolator/QuintEaseIn;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$1;-><init>(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->showBlackOverlayWithAnimation(Landroid/view/animation/Animation;Lcom/samsung/android/glview/GLViewGroup;)V

    return-void
.end method

.method private startSuperSlowMotionRecording()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SUPER_SLOW_MOTION_MULTI:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SUPER_SLOW_MOTION_MULTI:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->startAfTrigger()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowMotionRecording:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->startSuperSlowMotionRecording(I)V

    return-void
.end method

.method private startSystemTimeTick()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSystemTimeTick : elapsedTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSystemTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperSlowMotion"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSystemTimeScheduler:Ljava/util/Timer;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSystemTimeScheduler:Ljava/util/Timer;

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$2;-><init>(Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;)V

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private stopBackgroundRecording()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsBackgroundRecording:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->stopBackgroundRecording()V

    :cond_0
    return-void
.end method

.method private stopHelpGuideTimer()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->removeMessages(I)V

    return-void
.end method

.method private stopShowUnsteadyState()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionGuideToast:Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;

    const v0, 0x7f1101ce

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;->show(Ljava/lang/String;Z)V

    return-void
.end method

.method private stopVideoStream()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->stopVideoStream()V

    :cond_0
    return-void
.end method

.method private unregisterCameraSettingChangedListeners()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SUPER_SLOW_MOTION_DETECTION_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SUPER_SLOW_MOTION_FRAME_RATE_CONTROL:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method private updateControllerButtons(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateControllerButtons : superSlowMotionRecordingMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperSlowMotion"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateRecordingIndicatorPosition()V
    .locals 7

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingIndicatorTextWidth:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->RECORDING_REC_TIME_TEXT_MARGIN_X:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->RECORDING_REC_ICON_SIZE:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->QUICK_SETTING_Y:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->QUICK_SETTING_HEIGHT:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    const v3, 0x7f07012f

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingIndicatorTextWidth:F

    div-float/2addr v2, v1

    add-float/2addr v2, v4

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->RECORDING_REC_TIME_TEXT_MARGIN_X:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->RECORDING_REC_ICON_SIZE:F

    add-float/2addr v2, v5

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v3, v2}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->RECORDING_REC_TIME_TEXT_HEIGHT:I

    int-to-float v2, v2

    add-float/2addr v3, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingIndicatorTextWidth:F

    div-float/2addr v2, v1

    sub-float/2addr v4, v2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->RECORDING_REC_TIME_TEXT_MARGIN_X:I

    int-to-float v1, v1

    sub-float/2addr v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->RECORDING_REC_ICON_SIZE:F

    sub-float/2addr v4, v1

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setBoundary(Landroid/graphics/Rect;)V

    return-void
.end method

.method private updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRecordingLayout : cmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperSlowMotion"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingCommand:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->updateControllerButtons(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingRestricted()Z

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x10

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, -0x2

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startRecordingToShootingModeAnimation(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideHelpGuide()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideLowLightWarningToast()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->hideAeAfView()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, -0xe2

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x1d

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideBackButton()V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->setBottomBackgroundHeight(F)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->updateRecordingIndicatorPosition()V

    :goto_0
    return-void
.end method

.method private updateSuperSlowMotionLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setVisibility(IZ)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->showMovableMotionDetectRectangle()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->showHelpGuide()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideMovableMotionDetectRectangle()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideFixedMotionDetectRectangle()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    const v1, 0x7f0807f5

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideHelpGuide()V

    :goto_0
    return-void
.end method

.method private updateVideoSavingTime()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    new-instance v1, Landroid/util/Size;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Capability;->getSuperSlowMotionImageCount(Landroid/util/Size;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionFrc()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-boolean v1, Lcom/samsung/android/camera/feature/Feature;->SUPER_SLOW_MOTION_FRC_TIME_HALF:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :cond_1
    :goto_0
    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x21

    add-int/lit16 v0, v0, 0x7d0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mVideoSavingTime:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVideoSavingTime : mVideoSavingTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mVideoSavingTime:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SuperSlowMotion"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cancelRecording()V
    .locals 3

    const-string v0, "SuperSlowMotion"

    const-string v1, "cancelRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v1, v2, :cond_0

    const-string p0, "cancelRecording : Returned because recording is already stopping"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->CANCEL:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->cancelVideoRecording()V

    const-wide/16 v0, 0x0

    const-string p0, "1231"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

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

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 4

    const-string v0, "SuperSlowMotion"

    const-string v1, "onActivate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->register(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCurrentSuperSlowMotionState:I

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowMotionRecording:Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsLowLightWarningToastDisplayed:Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsBackgroundRecording:Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsTouchDisabled:Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowDisabled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsHelpGuideAvailable:Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsMaxDurationReached:Z

    sget-boolean v1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SUPER_SLOW_MOTION_FRC_FIXED:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mFrcOnlySupport:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1103b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionFrc()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mPreviousFRCValue:I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mPreviousDetectionType:I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshMainButton(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->updateSuperSlowMotionLayout()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTorch()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->setRestoreTorchFlashMode(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTorch(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideFixedMotionDetectRectangle()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->showMotionDetectRectangleInitAnimation()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->showMotionDetectImageInitAnimation()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->showMovableMotionDetectRectangle()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startBackgroundRecording()V

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->enableSuperSlowMotionAutoDetect(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->updateVideoSavingTime()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->registerListener(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {p1}, Lcom/sec/android/app/camera/provider/CameraSensorManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraSensorManager;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Capability;->isSuperSlowMotionGmcSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    const/16 v2, 0x4e20

    invoke-virtual {p1, v1, v2, p0}, Lcom/sec/android/app/camera/provider/CameraSensorManager;->registerListener(IILandroid/hardware/SensorEventListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->registerCameraSettingChangedListeners()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->enableEngineEventListener(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->enableEngineCallbacksForRecording(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->enableMenuListeners(Z)V

    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCurrentSuperSlowMotionState:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsTouchDisabled:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowMotionRecording:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result p1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result p1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p1, v2, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result p1

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectEnabled:Z

    if-eqz p1, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityTouchEvent: super slow motion state ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCurrentSuperSlowMotionState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] returns."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SuperSlowMotion"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onAeAfLocked()V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingStopHideDetectGuideAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->showMotionDetectImageInitAnimation()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionGuideToast:Lcom/sec/android/app/camera/widget/gl/SuperSlowMotionGuide;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectButtonAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    const p2, 0x7f0807f4

    invoke-virtual {p1, p2}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowThumbnailList:Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;

    const p1, 0x7f0807f2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;->setFocusImage(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onBrightnessValueChanged(I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->isZoomChangeGroupOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SUPER_SLOW_MOTION_FRC_AUTO_CHANGE:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->isLowLightFrcEnable(I)Z

    move-result p1

    const/16 v0, 0xd

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->removeMessages(I)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsLowLightWarningToastDisplayed:Z

    if-nez v0, :cond_7

    const/16 v0, 0x17c

    if-gt p1, v0, :cond_7

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowMotionRecording:Z

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, v0, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result p1

    if-nez p1, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->showLowLightWarningToast()V

    :cond_7
    :goto_0
    return-void
.end method

.method public onCameraOrientationChanged(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraOrientation:I

    return-void
.end method

.method public onCameraSettingChanged(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;I)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mPreviousDetectionType:I

    if-eq p1, p2, :cond_9

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mPreviousDetectionType:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->enableSuperSlowMotionAutoDetect(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result p1

    if-ne p1, v1, :cond_3

    if-ne p2, v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->stopBackgroundRecording()V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mPreviousFRCValue:I

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionFrc()I

    move-result p2

    if-eq p1, p2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->prepareRecording()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startBackgroundRecording()V

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->updateSuperSlowMotionLayout()V

    goto :goto_2

    :cond_4
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mPreviousFRCValue:I

    if-eq p1, p2, :cond_9

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mPreviousFRCValue:I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result p1

    if-ne p1, v1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result p1

    if-ne p1, v1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->prepareRecording()V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result p1

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsBackgroundRecording:Z

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->prepareRecording()V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startBackgroundRecording()V

    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->updateVideoSavingTime()V

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionFrcAutoChange()I

    move-result p1

    if-nez p1, :cond_9

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSuperSlowMotionFrc(I)V

    :cond_9
    :goto_2
    return-void
.end method

.method public onCancelRecordingRequested()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->cancelRecording()V

    return-void
.end method

.method public onCaptureEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;)V
    .locals 0

    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->isSuperSlowMotionModeControlAvailable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->stopRecording()V

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public onConnectMakerPrepared(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;)V
    .locals 6

    const-string v0, "SuperSlowMotion"

    const-string v1, "onConnectMakerPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;->setPictureSize(Landroid/util/Size;)V

    const/16 v1, 0x3c

    invoke-interface {p2, v1}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;->setVideoMaxFps(I)V

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Capability;->isSuperSlowMotionSupported()Z

    move-result p1

    const-string v1, ")"

    const-string v2, "onConnectMakerPrepared - setSuperSlowMotionMode ("

    if-eqz p1, :cond_5

    sget-object p1, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;->MULTI:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;->SINGLE:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    sget-object p1, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;->MULTI:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;

    :cond_1
    :goto_0
    sget-boolean v3, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SUPER_SLOW_MOTION_FRC_FIXED:Z

    if-nez v3, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionFrc()I

    move-result p0

    if-ne p0, v4, :cond_4

    :cond_2
    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;->SINGLE:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;

    if-ne p1, p0, :cond_3

    sget-object p1, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;->SINGLE_FRC:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;->MULTI:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;

    if-ne p1, p0, :cond_4

    sget-object p1, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;->MULTI:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;

    :cond_4
    :goto_1
    invoke-interface {p2, p1}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;->setSuperSlowMotionMode(Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;->SINGLE_FRC:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;

    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;->setSuperSlowMotionMode(Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;->SINGLE_FRC:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public onContinuousAfFocused()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowMotionRecording:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsMotionDetectionAvailable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->sendEmptyMessage(I)Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "SuperSlowMotion"

    const-string v0, "onContinuousAfFocused : ignored it\'s not recording or super slowing."

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 0

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    const p1, 0x7f070034

    invoke-static {p1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCenterButtonSize:F

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->makeHelpGuide()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->makeMotionDetectRectangle()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->makeSuperSlowMotionGuideToast()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->makeLowLightWarningToast()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->makeRecordingIndicator()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->makeProgressCircle()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->makeMultiShotButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->makeCAFButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->makeMultiCountGroup()V

    return-void
.end method

.method public onDragStart()Z
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCurrentSuperSlowMotionState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsTouchDisabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideFixedMotionDetectRectangle()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->showMovableMotionDetectRectangle()V

    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public onFling()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCurrentSuperSlowMotionState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsTouchDisabled:Z

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

.method public onInactivate()V
    .locals 5

    const-string v0, "SuperSlowMotion"

    const-string v1, "onInactivate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->resetCenterView()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->resetAfTrigger()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsBackgroundRecording:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowMotionRecording:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getCurrentRecordingFileTimeInMs()J

    move-result-wide v0

    const-wide/16 v3, 0x9c4

    cmp-long v0, v0, v3

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->cancelRecording()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11048c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->stopRecording()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11048b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->stopBackgroundRecording()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->stopRecording()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->cancelRecording()V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRestoreTorchFlashMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTorch(I)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->unregister()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->enableEngineCallbacksForRecording(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->enableEngineEventListener(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->enableMenuListeners(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->unregisterCameraSettingChangedListeners()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CameraSensorManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraSensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraSensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->unregisterListener(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->clear()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    const-string p0, "SuperSlowMotion"

    const-string p1, "Recording control is not available at this moment, ignore key down event"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/16 p2, 0x17

    if-eq p1, p2, :cond_4

    const/16 p2, 0x1b

    if-eq p1, p2, :cond_4

    const/16 p2, 0x42

    if-eq p1, p2, :cond_4

    const/16 p2, 0x82

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result p1

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowDisabled:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    const/16 p1, 0xc

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    return v0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p0, p1, :cond_3

    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    return v0
.end method

.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result p2

    const-string v0, "SuperSlowMotion"

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const-string p0, "Recording control is not available at this moment, ignore key up event"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 p2, 0x4

    const/4 v2, 0x0

    if-eq p1, p2, :cond_5

    const/16 p2, 0x17

    if-eq p1, p2, :cond_4

    const/16 p2, 0x1b

    if-eq p1, p2, :cond_4

    const/16 p2, 0x42

    if-eq p1, p2, :cond_4

    const/16 p2, 0x82

    if-eq p1, p2, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowMotionRecording:Z

    if-eqz p1, :cond_2

    const-string p0, "return. current super slow motion state is recording"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result p1

    if-ne p1, v1, :cond_3

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowDisabled:Z

    if-eqz p0, :cond_c

    return v1

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_c

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_c

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->stopRecording()V

    :cond_4
    return v1

    :cond_5
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowMotionRecording:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSavingWaitToast:Lcom/sec/android/app/camera/widget/CameraToast;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/CameraToast;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSavingWaitToast:Lcom/sec/android/app/camera/widget/CameraToast;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/CameraToast;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_7

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const p2, 0x7f11048d

    invoke-static {p1, p2, v1}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSavingWaitToast:Lcom/sec/android/app/camera/widget/CameraToast;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSavingWaitToast:Lcom/sec/android/app/camera/widget/CameraToast;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    :cond_7
    return v1

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_c

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsBackgroundRecording:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result p1

    if-ne p1, v1, :cond_9

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->enableSuperSlowMotionAutoDetect(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->stopBackgroundRecording()V

    return v1

    :cond_9
    return v2

    :cond_a
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->stopRecording()V

    :cond_b
    return v1

    :cond_c
    :goto_0
    return v2
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "SuperSlowMotion"

    if-nez p1, :cond_0

    const-string p0, "View is null."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const-string p0, "Recording control is not available at this moment, ignore key up event"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowMotionRecording:Z

    if-eqz v2, :cond_2

    const-string p0, "startSuperSlowMotionRecording : Returned because it\'s on super slow recording."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 v1, 0x17

    if-eq p2, v1, :cond_3

    const/16 v1, 0x42

    if-eq p2, v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isDimmed(I)Z

    move-result p2

    if-eqz p2, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result p1

    if-ne p1, v3, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result p1

    if-ne p1, v3, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result p1

    if-ne p1, v3, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startBackgroundRecording()V

    goto :goto_0

    :cond_5
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowDisabled:Z

    if-eqz p1, :cond_6

    return v3

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startSuperSlowMotionRecording()V

    :goto_0
    return v3

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p1, p2, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startRecording()V

    return v3

    :cond_8
    :goto_1
    return v0
.end method

.method public onMove(Lcom/samsung/android/glview/GLView;FFFF)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getHandleLeft()F

    move-result p1

    float-to-int p1, p1

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getHandleTop()F

    move-result p2

    float-to-int p2, p2

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {p3}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getHandleWidth()F

    move-result p3

    float-to-int p3, p3

    iget-object p4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {p4}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getHandleHeight()F

    move-result p4

    float-to-int p4, p4

    iget-object p5, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p5}, Lcom/samsung/android/glview/GLNinePatch;->isAnimationFinished()Z

    move-result p5

    if-nez p5, :cond_0

    iget-object p5, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p5}, Lcom/samsung/android/glview/GLNinePatch;->cancelAnimation()V

    :cond_0
    iget-object p5, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p5}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result p5

    float-to-int p5, p5

    if-lt p5, p3, :cond_3

    iget-object p5, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p5}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result p5

    float-to-int p5, p5

    if-ge p5, p4, :cond_1

    goto :goto_0

    :cond_1
    iget-object p5, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p5}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result p5

    float-to-int p5, p5

    if-gt p5, p3, :cond_2

    iget-object p5, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p5}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result p5

    float-to-int p5, p5

    if-le p5, p4, :cond_4

    :cond_2
    const-string p5, "1221"

    invoke-static {p5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p5, "1220"

    invoke-static {p5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    :cond_4
    :goto_1
    iget-object p5, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-virtual {p5, p1, p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FFZ)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float p2, p3

    int-to-float p3, p4

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    return-void
.end method

.method public onPictureSaved()V
    .locals 0

    return-void
.end method

.method public onPreviewSnapShotTaken(Landroid/graphics/Bitmap;Landroid/util/Size;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/Size;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x4

    const/4 v1, 0x1

    invoke-static {p1, v0, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraOrientation:I

    add-int/lit8 p2, p2, 0x5a

    rem-int/lit16 p2, p2, 0x168

    invoke-static {p1, p2, v1}, Lcom/sec/android/app/camera/util/ImageUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowThumbnailList:Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;->setLastThumbnail(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowThumbnailList:Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionOperatingCount:I

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;->drawLastThumbnail(I)V

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
    .locals 4

    const-string p1, "SuperSlowMotion"

    const-string v0, "onRecordKeyReleased"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowMotionRecording:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p0, "startSuperSlowMotionRecording : Returned because it\'s on super slow recording."

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result p1

    const/4 v0, 0x0

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isDimmed(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result p1

    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startBackgroundRecording()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->getHandleWidth()F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->SCREEN_WIDTH:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1216"

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startSuperSlowMotionRecording()V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result p1

    int-to-long v2, p1

    const-string p1, "1204"

    invoke-static {p1, v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionFrc()I

    move-result p1

    invoke-static {p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByFrcMode(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1229"

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isDimmed(I)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isAnimationFinished(I)Z

    move-result p1

    if-nez p1, :cond_5

    return v0

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, v2, :cond_6

    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startRecording()V

    const-string p1, "1224"

    invoke-static {p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    :cond_7
    :goto_1
    sget-object p1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->START:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    return v1
.end method

.method public onRecordingEvent(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordingEvent - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuperSlowMotion"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x108

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_e

    const/4 v5, 0x3

    if-eq v0, v2, :cond_0

    if-eq v0, v5, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideSuperSlowMotionGuideToast()V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowMotionRecording:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mFrcOnlySupport:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionFrc()I

    move-result v0

    if-ne v0, v4, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingProgressCircle:Lcom/sec/android/app/camera/widget/gl/ProgressCircle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ProgressCircle;->hide()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideHelpGuide()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->showRecordingCompletedToast()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlink:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->cancelAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlink:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsMaxDurationReached:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result v0

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionCount:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1205"

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->clearSuperSlowMotionCount()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowThumbnailList:Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideCAFButton()V

    const-string v0, "121"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SUPER_SLOW_MOTION_MULTI:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SUPER_SLOW_MOTION_MULTI:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)V

    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsBackgroundRecording:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsBackgroundRecording:Z

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSystemTimeScheduler:Ljava/util/Timer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSystemTime:I

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSystemTimeScheduler:Ljava/util/Timer;

    :cond_8
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->STOPPED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    if-ne p1, v0, :cond_9

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->handleSlowMotionRecordingStopped()V

    goto :goto_1

    :cond_9
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->CANCELLED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    if-ne p1, v0, :cond_a

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->handleSlowMotionRecordingCancelled()V

    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setPreviewSnapShotListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$PreviewSnapShotListener;)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->enableEngineCallbacksForRecording(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowMotionRecording:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v5, v0, v1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_b
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    invoke-virtual {p1, v5}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_c
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowMotionRecording:Z

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    :goto_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingRestricted()Z

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1103b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x1d

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideBackButton()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->showBackButton()V

    :cond_d
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->resetBottomBackground()V

    goto/16 :goto_3

    :cond_e
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->enableEngineCallbacksForRecording(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result p1

    if-ne p1, v4, :cond_f

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->enableSuperSlowMotionAutoDetect(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startShowUnSteadyState()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->restartMotionDetection()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x14

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideMovableMotionDetectRectangle()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->showFixedMotionDetectRectangle()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->showMotionDetectImageInitAnimation()V

    :cond_f
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result p1

    if-ne p1, v4, :cond_11

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result p1

    if-ne p1, v4, :cond_10

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    goto/16 :goto_3

    :cond_10
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result p1

    if-nez p1, :cond_15

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->enableSuperSlowMotionAutoDetect(Z)V

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowDisabled:Z

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    const/16 p1, 0x8

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    :cond_11
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result p1

    if-ne p1, v2, :cond_15

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setPreviewSnapShotListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$PreviewSnapShotListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result p1

    if-nez p1, :cond_12

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->enableSuperSlowMotionAutoDetect(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowThumbnailList:Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;

    const v0, 0x7f0807f2

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;->setFocusImage(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startControllerRightButtonShowAnimation(Lcom/samsung/android/glview/GLButton;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startMultiButtonBlinkAnimation()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SUPER_SLOW_MOTION_MULTI:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SUPER_SLOW_MOTION_MULTI:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    :cond_12
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowThumbnailList:Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;

    invoke-virtual {p1, v3}, Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq p1, v0, :cond_13

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_FOCUSED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-ne p1, v0, :cond_14

    :cond_13
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->showCAFButton()V

    :cond_14
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShootingModeToRecordingAnimation(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    const-string p0, "122"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    :cond_15
    :goto_3
    return-void
.end method

.method public onRecordingMaxDurationReached()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsBackgroundRecording:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCurrentSuperSlowMotionState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsMaxDurationReached:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->stopRecording()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v2, 0x7f11050e

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->stopRecording()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onRecordingMaxFileSizeReached()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f11050d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->stopRecording()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->cancelRecording()V

    :goto_0
    return-void
.end method

.method public onRecordingRestricted(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->stopRecording()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->cancelRecording()V

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

    const-string p4, "SuperSlowMotion"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsBackgroundRecording:Z

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_2

    iget-boolean p3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mFrcOnlySupport:Z

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionFrc()I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_3

    :cond_0
    cmp-long p3, p1, v0

    if-nez p3, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startDetectImageHideAnimation()V

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 p4, 0x4

    invoke-virtual {p3, p4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    const/4 p3, 0x5

    invoke-direct {p0, p3}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->showHelpGuide(I)V

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingProgressCircle:Lcom/sec/android/app/camera/widget/gl/ProgressCircle;

    invoke-virtual {p3}, Lcom/sec/android/app/camera/widget/gl/ProgressCircle;->show()V

    :cond_1
    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingProgressCircle:Lcom/sec/android/app/camera/widget/gl/ProgressCircle;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->getVideoSavingProgressedStep(J)I

    move-result p0

    invoke-virtual {p3, p0}, Lcom/sec/android/app/camera/widget/gl/ProgressCircle;->updateProgress(I)V

    goto :goto_0

    :cond_2
    cmp-long p1, p1, v0

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingTimeLimited()Z

    move-result p2

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getMaxRecordingTimeLimitInSecond()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->start(ZI)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startSystemTimeTick()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onRectHandlerClick()V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->checkStableStatusByGyroscope(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->checkStableStatusByAccelerometer(Landroid/hardware/SensorEvent;)V

    :cond_3
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

    const-string v0, "SuperSlowMotion"

    const-string v1, "onShutterTimerCaptureTriggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->START:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startBackgroundRecording()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startSuperSlowMotionRecording()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startRecording()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onShutterTimerEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;)V
    .locals 4

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$3;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/16 v3, 0x70

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result p1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x2

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result p1

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideMovableMotionDetectRectangle()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->setTimerCountingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 p1, 0x100

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onStartPreviewCompleted()V
    .locals 4

    const-string v0, "SuperSlowMotion"

    const-string v1, "onStartPreviewCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->enableEngineCallbacksForRecording(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectRectangle:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getPreviewTop(Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;)I

    move-result v2

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->setMaxBound(IIII)V

    :cond_0
    return-void
.end method

.method public onStartPreviewPrepared(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V
    .locals 2

    const-string p0, "SuperSlowMotion"

    const-string v0, "onStartPreviewPrepared"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Capability;->isSuperSlowMotionSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance p2, Landroid/util/Range;

    const/16 v0, 0x3c

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

    const/16 v0, 0xf0

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

.method public onStopRecordingRequested()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->stopRecording()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->cancelRecording()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSuperSlowMotionStateChanged(Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 6
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_11

    if-nez p2, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSuperSlowMotionStateChanged : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SuperSlowMotion"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_c

    if-eq p1, v3, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCurrentSuperSlowMotionState:I

    goto/16 :goto_4

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->stopVideoStream()V

    goto/16 :goto_4

    :cond_2
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->enableSuperSlowMotionAutoDetect(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_FOCUSED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->resetAfTrigger()V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideSuperSlowMotionGuideToast()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startShowUnSteadyState()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->restartMotionDetection()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    const v0, 0x7f0807f5

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsMotionDetectionNotAvailable:Z

    const/16 p1, 0x258

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mStableCheckTime:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCurrentSuperSlowMotionState:I

    goto/16 :goto_4

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v5, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, v5, :cond_b

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCurrentSuperSlowMotionState:I

    if-ne p1, v3, :cond_5

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCurrentSuperSlowMotionState:I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 p2, 0x11c

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result p1

    const p2, 0x7f0807f4

    if-ne p1, v4, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->updateOrientationHint()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result p1

    if-ne p1, v4, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p1, p2}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startMotionDetectBlinkAnimation()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideSuperSlowMotionGuideToast()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startSuperSlowMotionRecording()V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->enableSuperSlowMotionAutoDetect(Z)V

    goto/16 :goto_1

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result p1

    if-ne p1, v3, :cond_a

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->countSuperSlowMotionOperating()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->takePreviewSnapshot()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowThumbnailList:Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;->startFocusBlink()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result p1

    if-ne p1, v4, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectImage:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p1, p2}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowThumbnailList:Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;

    const p2, 0x7f0807f2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/widget/gl/SuperSlowThumbnailList;->setFocusImage(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startMotionDetectBlinkAnimation()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideSuperSlowMotionGuideToast()V

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowMotionRecording:Z

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->enableSuperSlowMotionAutoDetect(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->restartMotionDetection()V

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlink:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLImage;->cancelAnimation()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlink:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p1, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startControllerRightButtonHideAnimation(Lcom/samsung/android/glview/GLButton;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SUPER_SLOW_MOTION_MULTI:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SUPER_SLOW_MOTION_MULTI:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p1, p2, v2}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->setPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;Z)V

    :cond_9
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->showRecordingCompletedToast()V

    :cond_a
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startSuperSlowBlackOverlayAnimation()V

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->setDimRecordingControllerButtons(Z)V

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsTouchDisabled:Z

    goto :goto_4

    :cond_b
    :goto_2
    const-string p0, "onSuperSlowMotionStateChanged : operating returned by recording stopping or current is operating"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCurrentSuperSlowMotionState:I

    if-eq p1, v3, :cond_d

    if-ne p1, v1, :cond_10

    :cond_d
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v4, v0, v1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mHandler:Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;

    invoke-virtual {p1, v3, v0, v1}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result p1

    if-ne p1, v4, :cond_e

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsMaxDurationReached:Z

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->stopRecording()V

    goto :goto_3

    :cond_e
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result p1

    if-ne p1, v3, :cond_10

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq p1, v0, :cond_f

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_FOCUSED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq p1, v0, :cond_f

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->resetAfTrigger()V

    :cond_f
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowMotionRecording:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->countSuperSlowMotion()V

    :cond_10
    :goto_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCurrentSuperSlowMotionState:I

    :cond_11
    :goto_4
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMotionDetectGuideGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->isAnimationFinished()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCurrentSuperSlowMotionState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_10

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsTouchDisabled:Z

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v1, :cond_b

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isDimmed(I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result p1

    const/4 v0, 0x0

    const/16 v4, 0x82

    if-ne p1, v1, :cond_6

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsSuperSlowDisabled:Z

    if-eqz p1, :cond_3

    return v1

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    if-eq p1, v2, :cond_4

    return v3

    :cond_4
    return v1

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1, v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0, v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    return v1

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v5, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, v5, :cond_7

    return v3

    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_a

    if-eq p1, v1, :cond_9

    if-eq p1, v2, :cond_8

    return v3

    :cond_8
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleKeyCancelled(I)V

    return v1

    :cond_9
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0, v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    return v1

    :cond_a
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0, v4, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return v1

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->isMultiSuperSlowRecordingAvailable()Z

    move-result p1

    if-nez p1, :cond_c

    return v1

    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_e

    if-eq p1, v1, :cond_d

    if-eq p1, v2, :cond_d

    return v3

    :cond_d
    return v1

    :cond_e
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->startSuperSlowMotionRecording()V

    const-string p0, "1206"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    return v1

    :cond_f
    return v3

    :cond_10
    :goto_0
    return v1
.end method

.method public onTouchAfFocused()V
    .locals 2

    const-string v0, "SuperSlowMotion"

    const-string v1, "onTouchAfFocused"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_RECORDING_TOUCH_AF:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->isZoomChangeGroupOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCurrentSuperSlowMotionState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsTouchDisabled:Z

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result v0

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->showCAFButton()V

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->restartMotionDetection()V

    :cond_6
    :goto_0
    return-void
.end method

.method public onTrackingAfRequested()V
    .locals 0

    return-void
.end method

.method public onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mFrcOnlySupport:Z

    const-string v1, "9"

    const-string v2, "recording_mode"

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionFrc()I

    move-result p0

    if-ne p0, v3, :cond_1

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "7"

    invoke-virtual {p1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSuperSlowMotionCount:I

    if-eqz p0, :cond_3

    const-string p0, "8"

    invoke-virtual {p1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onVideoSaved()V
    .locals 0

    return-void
.end method

.method public onZoomChangeGroupClosed()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x100

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showViewWithAnimation(I)V

    return-void
.end method

.method public onZoomChangeGroupOpenPrepared()V
    .locals 0

    return-void
.end method

.method public onZoomChangeGroupOpened()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x100

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideViewWithAnimation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideShootingModeHelpText()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideLowLightWarningToast()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->hideHelpGuide()V

    return-void
.end method

.method public startRecording()V
    .locals 8

    const-string v0, "SuperSlowMotion"

    const-string v1, "startRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->startVideoRecording()V

    const/16 v0, 0x4b0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mStableCheckTime:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110479

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->requestFocus(I)V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_RECORDING_CONTINUOUS_AF:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->QUICK_SETTING_Y:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->RECORDING_REC_TIME_GROUP_HEIGHT:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->QUICK_SETTING_HEIGHT:F

    sub-float v3, v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->AF_UNLOCK_BUTTON_LEFT:F

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v7

    sub-float/2addr v2, v7

    div-float/2addr v2, v4

    add-float/2addr v0, v2

    invoke-virtual {v3, v5, v6, v0}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->AF_UNLOCK_BUTTON_LEFT_LANDSCAPE:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->AF_UNLOCK_BUTTON_TOP_LANDSCAPE:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->AF_UNLOCK_BUTTON_WIDTH:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->AF_UNLOCK_BUTTON_LEFT_LANDSCAPE:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->AF_UNLOCK_BUTTON_HEIGHT:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->AF_UNLOCK_BUTTON_TOP_LANDSCAPE:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLButton;->updateLayout()V

    :cond_1
    return-void
.end method

.method public stopRecording()V
    .locals 5

    const-string v0, "SuperSlowMotion"

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mIsBackgroundRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mSystemTime:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getMaxRecordingTimeLimitInSecond()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateRecordingTime(JI)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlink:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->cancelAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mMultiButtonBlink:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->enableSuperSlowMotionAutoDetect(Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/SuperSlowMotion;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->stopVideoRecording(Z)V

    const-wide/16 v0, 0x1

    const-string p0, "1231"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    return-void
.end method
