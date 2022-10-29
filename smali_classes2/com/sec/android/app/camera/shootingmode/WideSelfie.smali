.class Lcom/sec/android/app/camera/shootingmode/WideSelfie;
.super Ljava/lang/Object;
.source "WideSelfie.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$HrmShutterListener;
.implements Lcom/samsung/android/camera/core2/MakerInterface$WideSelfieEventCallback;
.implements Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;,
        Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;
    }
.end annotation


# static fields
.field private static final BITMAP_DATA_START_OFFSET:I = 0x20

.field private static final DELAY_TO_HIDE_PROGRESS_POPUP:I = 0x32

.field private static final DELAY_TO_STOP_WIDE_SELFIE:I = 0x64

.field private static final GUIDE_ANIMATION_LANDSCAPE_FIRST_INDEX:I = 0x0

.field private static final GUIDE_ANIMATION_LANDSCAPE_LAST_INDEX:I = 0x6

.field private static final GUIDE_ANIMATION_NOT_STARTED:I = -0x1

.field private static final GUIDE_ANIMATION_PORTRAIT_FIRST_INDEX:I = 0x7

.field private static final GUIDE_ANIMATION_PORTRAIT_LAST_INDEX:I = 0xd

.field private static final GUIDE_TEXT_LEFT:I = 0x1

.field private static final GUIDE_TEXT_MOVE_SLOWLY:I = 0x7

.field private static final GUIDE_TEXT_RIGHT:I = 0x2

.field private static final GUIDE_TEXT_START:I = 0x0

.field private static final GUIDE_TEXT_WARNING_DOWN:I = 0x4

.field private static final GUIDE_TEXT_WARNING_LEFT:I = 0x5

.field private static final GUIDE_TEXT_WARNING_RIGHT:I = 0x6

.field private static final GUIDE_TEXT_WARNING_UP:I = 0x3

.field private static final MESSAGE_HIDE_PROGRESS_POPUP:I = 0x5

.field private static final MESSAGE_SHOW_PREVIEW_LAYOUT:I = 0x4

.field private static final MESSAGE_STOP_WIDE_SELFIE:I = 0x6

.field private static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field private static final MESSAGE_TIMEOUT_GUIDE_TEXT:I = 0x3

.field private static final MESSAGE_WIDE_SELFIE_WARNING_HIGH:I = 0x2

.field private static final PREVIEW_RATIO:F = 1.3333334f

.field private static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

.field private static final TAG:Ljava/lang/String; = "WideSelfie"

.field private static final WARNING_LEVEL_HIGH:I = 0x2

.field private static final WARNING_LEVEL_HIGH_THRESHOLD:D = 0.15

.field private static final WARNING_LEVEL_LOW:I = 0x1

.field private static final WARNING_LEVEL_LOW_THRESHOLD:D = 0.05

.field private static final WARNING_LEVEL_NONE:I = 0x0

.field private static final WARNING_LEVEL_STOP:I = 0x3

.field private static final WARNING_LEVEL_STOP_THRESHOLD:D = 0.4

.field private static final WARNING_TYPE_OUT_OF_RANGE:I = 0x2

.field private static final WARNING_TYPE_TILT_DOWN:I = 0x1

.field private static final WARNING_TYPE_TILT_UP:I


# instance fields
.field private final CROP_AREA_LANDSCAPE_WIDTH:F

.field private final CROP_AREA_PORTRAIT_HEIGHT:F

.field private final FOCUS_RECT_LANDSCAPE_HEIGHT:F

.field private final FOCUS_RECT_LANDSCAPE_WIDTH:F

.field private final FOCUS_RECT_PORTRAIT_HEIGHT:F

.field private final FOCUS_RECT_PORTRAIT_WIDTH:F

.field private final GUIDE_ARROW_SIZE:F

.field private final GUIDE_RECT_LANDSCAPE_HEIGHT:F

.field private final GUIDE_RECT_LANDSCAPE_WIDTH:F

.field private final GUIDE_RECT_PORTRAIT_HEIGHT:F

.field private final GUIDE_RECT_PORTRAIT_WIDTH:F

.field private final GUIDE_TEXT_FONT_COLOR:I

.field private final GUIDE_TEXT_HEIGHT:F

.field private final GUIDE_TEXT_LANDSCAPE_TOP_MARGIN:F

.field private final GUIDE_TEXT_PORTRAIT_RIGHT_MARGIN:F

.field private final GUIDE_TEXT_SIZE:F

.field private final GUIDE_TEXT_STROKE_COLOR:I

.field private final GUIDE_TEXT_STROKE_WIDTH:I

.field private final GUIDE_TEXT_WIDTH:F

.field private final PREVIEW_GROUP_LANDSCAPE_HEIGHT:F

.field private final PREVIEW_GROUP_LANDSCAPE_RIGHT_MARGIN:F

.field private final PREVIEW_GROUP_LANDSCAPE_TOP_MARGIN:F

.field private final PREVIEW_GROUP_LANDSCAPE_WIDTH:F

.field private final PREVIEW_GROUP_PORTRAIT_HEIGHT:F

.field private final PREVIEW_GROUP_PORTRAIT_RIGHT_MARGIN:F

.field private final PREVIEW_GROUP_PORTRAIT_RIGHT_MARGIN_CAPTURE:F

.field private final PREVIEW_GROUP_PORTRAIT_TOP_MARGIN:F

.field private final PREVIEW_GROUP_PORTRAIT_WIDTH:F

.field private final PREVIEW_GROUP_RECT_THICKNESS:F

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private mAnimationIndex:I

.field private mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mBlinkAnimationIndex:I

.field private mBlinkWarningAnimation:Landroid/view/animation/AlphaAnimation;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCaptureCount:I

.field private mCaptureDirection:I

.field private mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

.field private mCaptureFocusTrapezoid:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

.field private mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

.field private mCropAreaDown:Lcom/samsung/android/glview/GLNinePatch;

.field private mCropAreaUp:Lcom/samsung/android/glview/GLNinePatch;

.field private mCurrentOrientation:I

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mGLContext:Lcom/samsung/android/glview/GLContext;

.field private mGuideAnimation:Landroid/view/animation/AlphaAnimation;

.field private mGuideAnimationDirection:Z

.field private mGuideArrow:[Lcom/samsung/android/glview/GLImage;

.field private mGuideArrowGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mGuideRect:[Lcom/samsung/android/glview/GLImage;

.field private mGuideRectGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mGuideText:Lcom/samsung/android/glview/GLText;

.field private mIsDirectionChanged:Z

.field private mIsFaceDetected:Z

.field private mIsImageBlurred:Z

.field private mIsMaxPositionReached:Z

.field private final mLivePreviewLock:Ljava/lang/Object;

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mMainHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

.field private mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mPreviewImage:Lcom/samsung/android/glview/GLImage;

.field private mPreviewThumbnailBottom:F

.field private mPreviewThumbnailLeft:F

.field private mPreviewThumbnailRight:F

.field private mPreviewThumbnailTop:F

.field private mPreviousThumbnailLength:F

.field private mScaleFactor:F

.field private mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

.field private mWarningLevel:I

.field private mWarningType:I

.field private mWideSelfieCaptureState:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_HEIGHT:I

    const v0, 0x7f0705c7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_PORTRAIT_WIDTH:F

    const v0, 0x7f0705c3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_PORTRAIT_HEIGHT:F

    const v0, 0x7f0705c6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_PORTRAIT_TOP_MARGIN:F

    const v0, 0x7f0705c4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_PORTRAIT_RIGHT_MARGIN:F

    const v0, 0x7f0705c5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_PORTRAIT_RIGHT_MARGIN_CAPTURE:F

    const v0, 0x7f0705c2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_LANDSCAPE_WIDTH:F

    const v0, 0x7f0705bf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_LANDSCAPE_HEIGHT:F

    const v0, 0x7f0705c0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_LANDSCAPE_RIGHT_MARGIN:F

    const v0, 0x7f0705c1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_LANDSCAPE_TOP_MARGIN:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_PORTRAIT_HEIGHT:F

    const v1, 0x3faaaaab

    div-float v2, v0, v1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_WIDTH:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_HEIGHT:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_LANDSCAPE_WIDTH:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_WIDTH:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_HEIGHT:F

    const v0, 0x7f0705b3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->CROP_AREA_LANDSCAPE_WIDTH:F

    const v0, 0x7f0705b4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->CROP_AREA_PORTRAIT_HEIGHT:F

    const v0, 0x7f0705be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_RECT_THICKNESS:F

    const v0, 0x7f0705b5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_ARROW_SIZE:F

    const v0, 0x7f0705b9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_RECT_PORTRAIT_WIDTH:F

    const v0, 0x7f0705b8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_RECT_PORTRAIT_HEIGHT:F

    const v0, 0x7f0705b7

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_RECT_LANDSCAPE_WIDTH:F

    const v0, 0x7f0705b6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_RECT_LANDSCAPE_HEIGHT:F

    const v0, 0x7f0705bd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_WIDTH:F

    const v0, 0x7f0705ba

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_HEIGHT:F

    const v0, 0x7f0705bc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_RIGHT_MARGIN:F

    const v0, 0x7f0705bb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_LANDSCAPE_TOP_MARGIN:F

    const v0, 0x7f07006d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_SIZE:F

    const v0, 0x7f0b005e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_STROKE_WIDTH:I

    const v0, 0x7f060032

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_STROKE_COLOR:I

    const v0, 0x7f060072

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_FONT_COLOR:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewLock:Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;->IDLE:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieCaptureState:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMainHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropAreaUp:Lcom/samsung/android/glview/GLNinePatch;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropAreaDown:Lcom/samsung/android/glview/GLNinePatch;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/16 v0, 0xe

    new-array v2, v0, [Lcom/samsung/android/glview/GLImage;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrowGroup:Lcom/samsung/android/glview/GLViewGroup;

    new-array v0, v0, [Lcom/samsung/android/glview/GLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideAnimation:Landroid/view/animation/AlphaAnimation;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkWarningAnimation:Landroid/view/animation/AlphaAnimation;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusTrapezoid:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningLevel:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningType:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mScaleFactor:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureDirection:I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailBottom:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailRight:F

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideAnimationDirection:Z

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationIndex:I

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimationIndex:I

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsMaxPositionReached:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsDirectionChanged:Z

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviousThumbnailLength:F

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsImageBlurred:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsFaceDetected:Z

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$1;-><init>(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewLayout(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningLevel:I

    return p0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideGuideText()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideStopButton()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfie()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHrmSensor(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationIndex:I

    return p0
.end method

.method static synthetic access$302(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationIndex:I

    return p1
.end method

.method static synthetic access$308(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationIndex:I

    return v0
.end method

.method static synthetic access$310(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationIndex:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    return p0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideAnimationDirection:Z

    return p0
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/shootingmode/WideSelfie;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideAnimationDirection:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)[Lcom/samsung/android/glview/GLImage;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hidePreviewLayout()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->cancelWideSelfieCapture()V

    return-void
.end method

.method private cancelWideSelfieCapture()V
    .locals 2

    const-string v0, "WideSelfie"

    const-string v1, "cancelWideSelfieCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->STITCHING_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelCapture(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;->IDLE:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setCaptureState(Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/SoundManager;->abandonAudioFocus()V

    return-void
.end method

.method private checkMoveBackRange()V
    .locals 11

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsDirectionChanged:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_0

    if-eq v0, v4, :cond_2

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailBottom:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    sub-float/2addr v0, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureDirection:I

    if-ne v5, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateY()F

    move-result v2

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailBottom:F

    add-float/2addr v2, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLNinePatch;->getTranslateY()F

    move-result v5

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_HEIGHT:F

    goto :goto_0

    :cond_1
    if-ne v5, v4, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getTranslateY()F

    move-result v2

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateY()F

    move-result v5

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailRight:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    sub-float/2addr v0, v5

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureDirection:I

    if-ne v5, v3, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateX()F

    move-result v2

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailRight:F

    add-float/2addr v2, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLNinePatch;->getTranslateX()F

    move-result v5

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_WIDTH:F

    :goto_0
    add-float/2addr v5, v6

    sub-float/2addr v2, v5

    goto :goto_1

    :cond_3
    if-ne v5, v4, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getTranslateX()F

    move-result v2

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateX()F

    move-result v5

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    goto :goto_0

    :cond_4
    :goto_1
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviousThumbnailLength:F

    cmpl-float v5, v0, v5

    if-lez v5, :cond_7

    float-to-double v5, v2

    float-to-double v7, v0

    const-wide v9, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v9, v7

    cmpl-double v0, v5, v9

    if-lez v0, :cond_5

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningLevel:I

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningType:I

    goto :goto_2

    :cond_5
    const-wide v0, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v0, v7

    cmpl-double v0, v5, v0

    if-lez v0, :cond_6

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningLevel:I

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningType:I

    goto :goto_2

    :cond_6
    const-wide v0, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v7, v0

    cmpl-double v0, v5, v7

    if-lez v0, :cond_7

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningLevel:I

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningType:I

    :cond_7
    :goto_2
    return-void
.end method

.method private checkOutOfRange()V
    .locals 5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateY()F

    move-result v0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLNinePatch;->getTranslateY()F

    move-result v3

    cmpg-float v0, v3, v0

    if-gez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureDirection:I

    if-ne v0, v2, :cond_4

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningLevel:I

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningType:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getTranslateY()F

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v3

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateY()F

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailBottom:F

    add-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureDirection:I

    if-ne v0, v1, :cond_4

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningLevel:I

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningType:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateX()F

    move-result v0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLNinePatch;->getTranslateX()F

    move-result v3

    cmpg-float v0, v3, v0

    if-gez v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureDirection:I

    if-ne v0, v2, :cond_4

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningLevel:I

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningType:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getTranslateX()F

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v3

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateX()F

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailRight:F

    add-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureDirection:I

    if-ne v0, v1, :cond_4

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningLevel:I

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningType:I

    :cond_4
    :goto_0
    return-void
.end method

.method private checkTiltRange(FF)V
    .locals 16

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const-wide v6, 0x3fa999999999999aL    # 0.05

    const-wide v8, 0x3fc3333333333333L    # 0.15

    const-wide v10, 0x3fd999999999999aL    # 0.4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v15, 0x0

    const/4 v14, 0x1

    if-eqz v5, :cond_5

    if-eq v5, v14, :cond_0

    if-eq v5, v13, :cond_5

    if-eq v5, v12, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_LANDSCAPE_WIDTH:F

    float-to-double v4, v3

    mul-double/2addr v4, v10

    cmpl-double v4, v1, v4

    if-lez v4, :cond_1

    iput v12, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningLevel:I

    goto :goto_0

    :cond_1
    float-to-double v4, v3

    mul-double/2addr v4, v8

    cmpl-double v4, v1, v4

    if-lez v4, :cond_2

    iput v13, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningLevel:I

    goto :goto_0

    :cond_2
    float-to-double v3, v3

    mul-double/2addr v3, v6

    cmpl-double v1, v1, v3

    if-lez v1, :cond_3

    iput v14, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningLevel:I

    goto :goto_0

    :cond_3
    iput v15, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningLevel:I

    :goto_0
    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningLevel:I

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_4

    iput v15, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningType:I

    goto :goto_4

    :cond_4
    cmpl-float v1, p2, v1

    if-lez v1, :cond_a

    iput v14, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningType:I

    goto :goto_4

    :cond_5
    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_PORTRAIT_HEIGHT:F

    float-to-double v14, v1

    mul-double/2addr v14, v10

    cmpl-double v10, v3, v14

    if-lez v10, :cond_6

    iput v12, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningLevel:I

    :goto_1
    const/4 v1, 0x1

    :goto_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    float-to-double v10, v1

    mul-double/2addr v10, v8

    cmpl-double v8, v3, v10

    if-lez v8, :cond_7

    iput v13, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningLevel:I

    goto :goto_1

    :cond_7
    float-to-double v8, v1

    mul-double/2addr v8, v6

    cmpl-double v1, v3, v8

    if-lez v1, :cond_8

    const/4 v1, 0x1

    iput v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningLevel:I

    goto :goto_2

    :cond_8
    const/4 v1, 0x1

    const/4 v2, 0x0

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningLevel:I

    :goto_3
    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningLevel:I

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    cmpg-float v4, p2, v3

    if-gez v4, :cond_9

    iput v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningType:I

    goto :goto_4

    :cond_9
    cmpl-float v1, p2, v3

    if-lez v1, :cond_a

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningType:I

    :cond_a
    :goto_4
    return-void
.end method

.method private checkWarningLevelAndType(FF)V
    .locals 4

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningLevel:I

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->checkTiltRange(FF)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->checkMoveBackRange()V

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningLevel:I

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->checkOutOfRange()V

    :cond_0
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningLevel:I

    const/4 p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusTrapezoid:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->changeColor(Z)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;->CAPTURING:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWarningSound()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfie()V

    goto :goto_0

    :cond_2
    if-eq v0, v1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMainHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusTrapezoid:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->changeColor(Z)V

    :cond_4
    :goto_0
    if-lt v0, v2, :cond_5

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningLevel:I

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideGuideText()V

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningLevel:I

    if-lt p1, v2, :cond_b

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningType:I

    if-nez p1, :cond_6

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_1

    :cond_6
    if-ne p1, v2, :cond_7

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_1

    :cond_7
    if-ne p1, v1, :cond_b

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureDirection:I

    const/4 p2, 0x5

    const/4 v0, 0x6

    if-ne p1, v2, :cond_9

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne p1, v2, :cond_8

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_1

    :cond_8
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_1

    :cond_9
    if-ne p1, v1, :cond_b

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne p1, v2, :cond_a

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_1

    :cond_a
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    :cond_b
    :goto_1
    return-void
.end method

.method private decodeRgbaBitmap([B)Landroid/graphics/Bitmap;
    .locals 7
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length p0, p1

    const/4 v0, 0x0

    const-string v1, "WideSelfie"

    const/16 v2, 0x20

    if-ge p0, v2, :cond_0

    const-string p0, "decodeRgbaBitmap : Received invalid data"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 p0, 0x0

    aget-byte p0, p1, p0

    const/16 v3, 0x52

    if-ne p0, v3, :cond_3

    const/4 p0, 0x1

    aget-byte p0, p1, p0

    const/16 v3, 0x47

    if-ne p0, v3, :cond_3

    const/4 p0, 0x2

    aget-byte p0, p1, p0

    const/16 v3, 0x42

    if-ne p0, v3, :cond_3

    const/4 p0, 0x3

    aget-byte p0, p1, p0

    const/16 v3, 0x41

    if-eq p0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    :try_start_0
    invoke-static {p1, p0}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v3

    const/16 v4, 0x8

    invoke-static {p1, v4}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    array-length v5, p1

    mul-int v6, v3, v4

    mul-int/2addr v6, p0

    add-int/2addr v6, v2

    if-ge v5, v6, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "decodeRgbaBitmap : The buffer is too small to contain a image of "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    :try_start_1
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    array-length v0, p1

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v1, p1

    sub-int/2addr v1, v2

    invoke-virtual {v0, p1, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object p0

    :catch_0
    const-string p0, "decodeRgbaBitmap : Out of memory"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_1
    const-string p0, "decodeRgbaBitmap : Could not parse panorama bitmap header"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    :goto_0
    const-string p0, "decodeRgbaBitmap : Data is invalid (RGBA tag not found)"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private enableEngineCallbacks(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setWideSelfieEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$WideSelfieEventCallback;)V

    return-void
.end method

.method private enableEngineEventListener(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

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

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    return-void
.end method

.method private hideCaptureFocusTrapezoid()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusTrapezoid:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    return-void
.end method

.method private hideCaptureGuideAnimation()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xe

    const/4 v2, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrowGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    return-void
.end method

.method private hideCropRect()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropAreaUp:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropAreaDown:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    return-void
.end method

.method private hideGuideText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMainHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private hidePreviewFocusRect()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    return-void
.end method

.method private hidePreviewLayout()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideCropRect()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideCaptureGuideAnimation()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hidePreviewFocusRect()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideCaptureFocusTrapezoid()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideGuideText()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->enableFaceRectView(Z)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private hideStopButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    return-void
.end method

.method private isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieCaptureState:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isMaxPositionReached()Z
    .locals 4

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureDirection:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getTranslateY()F

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateY()F

    move-result p0

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_4

    return v2

    :cond_1
    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getTranslateY()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_HEIGHT:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateY()F

    move-result v1

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_LANDSCAPE_HEIGHT:F

    add-float/2addr v1, p0

    cmpl-float p0, v0, v1

    if-ltz p0, :cond_4

    return v2

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureDirection:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getTranslateX()F

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateX()F

    move-result p0

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_4

    return v2

    :cond_3
    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getTranslateX()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_WIDTH:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateX()F

    move-result v1

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_PORTRAIT_WIDTH:F

    add-float/2addr v1, p0

    cmpl-float p0, v0, v1

    if-ltz p0, :cond_4

    return v2

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private makeCaptureStopButton()V
    .locals 13

    const v0, 0x7f070034

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    const v0, 0x7f07003b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    int-to-float v1, v1

    sub-float/2addr v1, v6

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v1

    sub-float/2addr v0, v6

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    const v0, 0x7f0704ac

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    add-float v4, v1, v0

    float-to-int v0, v6

    new-instance v12, Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const v7, 0x7f08075f

    const v8, 0x7f080760

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v1, v12

    move v5, v6

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIIZ)V

    iput-object v12, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f110268

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$WideSelfie$P0gfdxCQF3p7QWGuEkUDEZGVuZQ;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$WideSelfie$P0gfdxCQF3p7QWGuEkUDEZGVuZQ;-><init>(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

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

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private reset()V
    .locals 3

    const-string v0, "WideSelfie"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;->IDLE:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setCaptureState(Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningLevel:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningType:I

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mAnimationIndex:I

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimationIndex:I

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideAnimationDirection:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsMaxPositionReached:Z

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureDirection:I

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsDirectionChanged:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviousThumbnailLength:F

    monitor-enter p0

    :try_start_0
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopCancelTimer()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWarningSound()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, 0x70

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private restartCancelTimer()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopCancelTimer()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->startCancelTimer()V

    return-void
.end method

.method private setCaptureFocusRect(FF)V
    .locals 6

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    move p1, v2

    move p2, p1

    move v0, p2

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_WIDTH:F

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_HEIGHT:F

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateX()F

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateY()F

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_LANDSCAPE_HEIGHT:F

    sub-float/2addr v4, p1

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    add-float/2addr p2, v3

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_WIDTH:F

    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_HEIGHT:F

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateX()F

    move-result v0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_PORTRAIT_WIDTH:F

    sub-float/2addr v3, v2

    div-float/2addr v3, v1

    add-float/2addr v0, v3

    sub-float p1, v0, p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateY()F

    move-result v0

    move v5, v0

    move v0, p1

    move p1, p2

    move p2, v5

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    return-void
.end method

.method private setCaptureFocusTrapezoid(FFFFFFFF)V
    .locals 10

    move-object v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    if-eq v1, v4, :cond_0

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    move v1, v6

    move v5, v1

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateX()F

    move-result v1

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_LANDSCAPE_WIDTH:F

    div-float/2addr v7, v5

    add-float/2addr v1, v7

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateY()F

    move-result v7

    iget v8, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_LANDSCAPE_HEIGHT:F

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateX()F

    move-result v1

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_PORTRAIT_WIDTH:F

    div-float/2addr v7, v5

    add-float/2addr v1, v7

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateY()F

    move-result v7

    iget v8, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_PORTRAIT_HEIGHT:F

    :goto_0
    div-float/2addr v8, v5

    add-float v5, v7, v8

    :goto_1
    const/16 v7, 0x8

    new-array v7, v7, [F

    const/4 v8, 0x0

    sub-float v9, v1, p1

    aput v9, v7, v8

    add-float v8, v5, p2

    aput v8, v7, v4

    sub-float v4, v1, p3

    aput v4, v7, v3

    add-float v3, v5, p4

    aput v3, v7, v2

    const/4 v2, 0x4

    sub-float v3, v1, p5

    aput v3, v7, v2

    const/4 v2, 0x5

    add-float v3, v5, p6

    aput v3, v7, v2

    const/4 v2, 0x6

    sub-float v1, v1, p7

    aput v1, v7, v2

    const/4 v1, 0x7

    add-float v5, v5, p8

    aput v5, v7, v1

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusTrapezoid:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {v0, v6, v6, v7}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setRect(FF[F)V

    return-void
.end method

.method private setCaptureState(Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCaptureState : state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WideSelfie"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWideSelfieCaptureState:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;

    return-void
.end method

.method private setHrmSensor(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHrmShutter()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHrmShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HrmShutterListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHrmShutterListener()V

    :goto_0
    return-void
.end method

.method private setScaleFactor(FF)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p2, 0x3

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_WIDTH:F

    div-float/2addr p2, p1

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mScaleFactor:F

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_HEIGHT:F

    div-float/2addr p1, p2

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mScaleFactor:F

    :cond_2
    :goto_0
    return-void
.end method

.method private showBackgroundRect(Z)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    move p1, v2

    move v0, p1

    move v1, v0

    move v3, v1

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_LANDSCAPE_WIDTH:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_LANDSCAPE_HEIGHT:F

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    int-to-float p1, p1

    sub-float/2addr p1, v1

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_LANDSCAPE_RIGHT_MARGIN:F

    sub-float/2addr p1, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_LANDSCAPE_TOP_MARGIN:F

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    int-to-float p1, p1

    sub-float/2addr p1, v1

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->CROP_AREA_LANDSCAPE_WIDTH:F

    sub-float/2addr p1, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_LANDSCAPE_RIGHT_MARGIN:F

    sub-float/2addr p1, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_LANDSCAPE_TOP_MARGIN:F

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_PORTRAIT_WIDTH:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_PORTRAIT_HEIGHT:F

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    int-to-float p1, p1

    sub-float/2addr p1, v1

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_PORTRAIT_RIGHT_MARGIN_CAPTURE:F

    sub-float/2addr p1, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_PORTRAIT_TOP_MARGIN:F

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    int-to-float p1, p1

    sub-float/2addr p1, v1

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_PORTRAIT_RIGHT_MARGIN:F

    sub-float/2addr p1, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->CROP_AREA_PORTRAIT_HEIGHT:F

    add-float/2addr v0, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_PORTRAIT_TOP_MARGIN:F

    :goto_0
    add-float/2addr v0, v4

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4, v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4, p1, v0}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p1, v1, v3}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p1, v2, v2}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    return-void
.end method

.method private showBlinkWarningAnimation()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkWarningAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkWarningAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkWarningAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkWarningAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkWarningAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningLevel:I

    const/4 v2, 0x6

    const/16 v3, 0xd

    const/4 v4, 0x7

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningType:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_4

    if-eq v0, v7, :cond_2

    if-eq v0, v1, :cond_4

    if-eq v0, v5, :cond_2

    goto :goto_3

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningType:I

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    if-ne v0, v7, :cond_a

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mWarningType:I

    if-nez v0, :cond_a

    goto :goto_4

    :cond_5
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_8

    if-eq v0, v7, :cond_6

    if-eq v0, v1, :cond_8

    if-eq v0, v5, :cond_6

    goto :goto_3

    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureDirection:I

    if-ne v0, v7, :cond_7

    goto :goto_3

    :cond_7
    if-ne v0, v1, :cond_a

    goto :goto_4

    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureDirection:I

    if-ne v0, v7, :cond_9

    :goto_1
    move v2, v4

    goto :goto_4

    :cond_9
    if-ne v0, v1, :cond_a

    :goto_2
    move v2, v3

    goto :goto_4

    :cond_a
    :goto_3
    move v2, v6

    :goto_4
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimationIndex:I

    if-eq v0, v2, :cond_d

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkAnimationIndex:I

    move v0, v6

    :goto_5
    const/16 v1, 0xe

    if-ge v0, v1, :cond_c

    if-eq v0, v2, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBlinkWarningAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v0, v0, v2

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrowGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLImage;->startAnimation()V

    :cond_d
    return-void
.end method

.method private showCaptureFocusTrapezoid()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusTrapezoid:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    return-void
.end method

.method private showCaptureGuideAnimation()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$2;-><init>(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v0, :cond_3

    const/4 v5, 0x1

    if-eq v0, v5, :cond_1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_RECT_LANDSCAPE_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_RECT_LANDSCAPE_HEIGHT:F

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_ARROW_SIZE:F

    invoke-virtual {v1, v5, v5}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_RECT_LANDSCAPE_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_RECT_LANDSCAPE_HEIGHT:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateX()F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_LANDSCAPE_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_RECT_LANDSCAPE_WIDTH:F

    sub-float/2addr v2, v5

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateY()F

    move-result v2

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_LANDSCAPE_HEIGHT:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_RECT_LANDSCAPE_HEIGHT:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v4

    add-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrowGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_ARROW_SIZE:F

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrowGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_LANDSCAPE_RIGHT_MARGIN:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_LANDSCAPE_WIDTH:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_ARROW_SIZE:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateY()F

    move-result v2

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_LANDSCAPE_HEIGHT:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_ARROW_SIZE:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v4

    add-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_1
    if-ge v0, v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_RECT_PORTRAIT_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_RECT_PORTRAIT_HEIGHT:F

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_ARROW_SIZE:F

    invoke-virtual {v1, v5, v5}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_RECT_PORTRAIT_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_RECT_PORTRAIT_HEIGHT:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateY()F

    move-result v2

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_PORTRAIT_HEIGHT:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_RECT_PORTRAIT_HEIGHT:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v4

    add-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrowGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_ARROW_SIZE:F

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrowGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_PORTRAIT_RIGHT_MARGIN_CAPTURE:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_PORTRAIT_WIDTH:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_ARROW_SIZE:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateY()F

    move-result v2

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_PORTRAIT_HEIGHT:F

    add-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrowGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    return-void
.end method

.method private showCropArea()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    move v0, v3

    move v1, v0

    move v2, v1

    move v4, v2

    move v5, v4

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->CROP_AREA_LANDSCAPE_WIDTH:F

    sub-float/2addr v2, v4

    sub-float/2addr v1, v0

    move v5, v0

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->CROP_AREA_PORTRAIT_HEIGHT:F

    sub-float/2addr v1, v2

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    int-to-float v4, v4

    move v5, v1

    move v1, v2

    move v2, v3

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropAreaUp:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6, v4, v1}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropAreaDown:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6, v4, v1}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropAreaUp:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropAreaDown:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v3, v5}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropAreaUp:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropAreaDown:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    return-void
.end method

.method private showGuideText(I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showGuideText : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WideSelfie"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMainHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;->removeMessages(I)V

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f11052d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f11052c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f11052b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f11052a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f11052e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f110528

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f110527

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f110526

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    :goto_0
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_0

    move p1, v2

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne p1, v3, :cond_1

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    int-to-float p1, p1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->CROP_AREA_LANDSCAPE_WIDTH:F

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->getHeight()F

    move-result v0

    sub-float v2, p1, v0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateY()F

    move-result p1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_LANDSCAPE_HEIGHT:F

    add-float/2addr p1, v0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_LANDSCAPE_TOP_MARGIN:F

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->getWidth()F

    move-result v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    int-to-float p1, p1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->CROP_AREA_LANDSCAPE_WIDTH:F

    sub-float v2, p1, v0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateY()F

    move-result p1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_LANDSCAPE_HEIGHT:F

    add-float/2addr p1, v0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_LANDSCAPE_TOP_MARGIN:F

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v3, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->SCREEN_WIDTH:I

    int-to-float p1, p1

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_WIDTH:F

    sub-float/2addr p1, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_PORTRAIT_RIGHT_MARGIN:F

    sub-float/2addr p1, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v3, v1, v0}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move v4, v2

    move v2, p1

    move p1, v4

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/glview/GLText;->translateAbsolute(FF)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMainHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showPreviewFocusRect()V
    .locals 7

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    move v0, v2

    move v1, v0

    move v3, v1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_WIDTH:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_HEIGHT:F

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateX()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateY()F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_LANDSCAPE_HEIGHT:F

    sub-float/2addr v5, v0

    div-float/2addr v5, v1

    add-float v1, v4, v5

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_WIDTH:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_HEIGHT:F

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateX()F

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_PORTRAIT_WIDTH:F

    sub-float/2addr v4, v2

    div-float/2addr v4, v1

    add-float v1, v3, v4

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->getTranslateY()F

    move-result v3

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4, v2, v0}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    return-void
.end method

.method private showPreviewImage(Landroid/graphics/Bitmap;)V
    .locals 10

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    move v0, v3

    move v1, v0

    move v4, v1

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-le v4, v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailBottom:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    sub-float/2addr v1, v4

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_LANDSCAPE_HEIGHT:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_LANDSCAPE_HEIGHT:F

    sub-float/2addr v4, v1

    div-float/2addr v4, v2

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_HEIGHT:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    if-le v4, v1, :cond_3

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailRight:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    sub-float/2addr v1, v4

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->FOCUS_RECT_PORTRAIT_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_PORTRAIT_WIDTH:F

    sub-float/2addr v4, v1

    div-float/2addr v4, v2

    :goto_0
    move v8, v1

    move v1, v0

    move v0, v8

    move v9, v4

    move v4, v3

    move v3, v9

    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLivePreviewLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_RECT_THICKNESS:F

    mul-float/2addr v7, v2

    sub-float/2addr v0, v7

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_RECT_THICKNESS:F

    mul-float/2addr v7, v2

    sub-float/2addr v1, v7

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/glview/GLImage;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_RECT_THICKNESS:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_RECT_THICKNESS:F

    add-float/2addr v4, v0

    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    monitor-exit v5

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private showPreviewLayout(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showPreviewLayout : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WideSelfie"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showCropArea()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showBackgroundRect(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hidePreviewFocusRect()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showCaptureGuideAnimation()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->enableFaceRectView(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewFocusRect()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideCaptureFocusTrapezoid()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x100

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->enableFaceRectView(Z)V

    :goto_0
    return-void
.end method

.method private showStopButton()V
    .locals 2

    const-string v0, "WideSelfie"

    const-string v1, "showStopButton"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return-void
.end method

.method private showWideSelfieToastPopup(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMainHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$WideSelfie$wkm3W3Ag2nS_mWOICn0js6NAmtI;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$WideSelfie$wkm3W3Ag2nS_mWOICn0js6NAmtI;-><init>(Lcom/sec/android/app/camera/shootingmode/WideSelfie;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startCancelTimer()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMainHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMainHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopCancelTimer()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMainHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;->removeMessages(I)V

    return-void
.end method

.method private stopWarningSound()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMainHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;->PANORAMA_WARNING:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/SoundManager;->stopSound(Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;)V

    return-void
.end method

.method private stopWideSelfie()V
    .locals 2

    const-string v0, "WideSelfie"

    const-string v1, "stopWideSelfie"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "stopWideSelfie : returned because camera is not running."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isCapturing()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "stopWideSelfie : returned because it is not Capturing."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showStopButton()V

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;->STOPPING:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setCaptureState(Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->STITCHING_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleShutterEvent(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hidePreviewLayout()V

    return-void
.end method


# virtual methods
.method public isCapturing()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;->STARTING:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;->CAPTURING:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;)Z

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

.method public isShootingAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$makeCaptureStopButton$1$WideSelfie(Lcom/samsung/android/glview/GLView;)Z
    .locals 1

    const-string p1, "WideSelfie"

    const-string v0, "onClick - StopButton"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfie()V

    const-string p0, "2102"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$onShutterKeyReleased$0$WideSelfie()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const v4, 0x7f110141

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const p0, 0x7f110349

    invoke-virtual {v1, p0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;Ljava/lang/String;I)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    return-void
.end method

.method public synthetic lambda$showWideSelfieToastPopup$2$WideSelfie(I)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const p1, 0x7f110524

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const p1, 0x7f110525

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const p1, 0x7f110529

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const p1, 0x7f1102d7

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    :goto_0
    return-void
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 3

    const-string v0, "WideSelfie"

    const-string v1, "onActivate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_WIDE_SELFIE:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshMainButton(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_WIDE_SELFIE:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->showShootingModeHelpText()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMainHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;->removeMessages(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMainHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_HEART_RATE_SENSOR_SHUTTER:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHrmSensor(Z)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->registerListener(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->registerLocalBroadcast()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->enableEngineEventListener(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->enableEngineCallbacks(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoBeautyLevel()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setSkinToneLevel(I)V

    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCameraOrientationChanged(I)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/glview/GLUtil;->getGLOrientationBySystemOrientation(I)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOrientationChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WideSelfie"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->isTimerRunning()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;->IDLE:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewLayout(Z)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;->STARTING:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMainHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMainHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfie()V

    :cond_2
    :goto_0
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

    const-string v1, "WideSelfie"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$CaptureEvent:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;->PANORAMA_END:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    invoke-interface {p1, v1, v0}, Lcom/sec/android/app/camera/interfaces/SoundManager;->playSound(Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getHapticFeedback()Lcom/sec/android/app/camera/interfaces/HapticManager;

    move-result-object p0

    const/16 p1, 0x30

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/HapticManager;->playHaptic(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewLayout(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;->PANORAMA_START:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    invoke-interface {p1, v1, v0}, Lcom/sec/android/app/camera/interfaces/SoundManager;->playSound(Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getHapticFeedback()Lcom/sec/android/app/camera/interfaces/HapticManager;

    move-result-object p0

    const/16 p1, 0x25

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/HapticManager;->playHaptic(I)V

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

    const-string v1, "onCaptureResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WideSelfie"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;->STOPPING:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "onCaptureResult : returned because it is not waiting to complete capture."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->processPicture(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/SoundManager;->abandonAudioFocus()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewLayout(Z)V

    return-void
.end method

.method public onCaptured()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptured : mCaptureCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WideSelfie"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;->STARTING:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;->CAPTURING:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setCaptureState(Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->restartCancelTimer()V

    return-void
.end method

.method public onCapturedMaxFrames()V
    .locals 2

    const-string v0, "WideSelfie"

    const-string v1, "onCapturedMaxFrames"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfie()V

    return-void
.end method

.method public onConnectMakerPrepared(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;)V
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_WIDE_SELFIE:Ljava/util/Map;

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getCaptureSize(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;->setPictureSize(Landroid/util/Size;)V

    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    iput-object v11, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object v12, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    new-instance v7, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v13, 0x0

    const v2, 0x7f080770

    invoke-direct {v1, v11, v13, v13, v2}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    new-instance v8, Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    move-object v7, v1

    check-cast v7, Landroid/graphics/Bitmap;

    move-object v1, v8

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v8, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    const v2, 0x7f080771

    invoke-direct {v1, v11, v13, v13, v2}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    invoke-direct {v1, v11, v13, v13, v2}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v14, 0x4

    invoke-virtual {v1, v14}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1, v14}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    new-instance v8, Lcom/samsung/android/glview/GLNinePatch;

    const v7, 0x7f080b86

    move-object v1, v8

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v8, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropAreaUp:Lcom/samsung/android/glview/GLNinePatch;

    new-instance v8, Lcom/samsung/android/glview/GLNinePatch;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v8, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropAreaDown:Lcom/samsung/android/glview/GLNinePatch;

    new-instance v7, Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusTrapezoid:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusTrapezoid:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {v1, v14}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setVisibility(I)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusTrapezoid:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Lcom/sec/android/app/camera/widget/gl/Trapezoid;->setBypassTouch(Z)V

    new-instance v10, Lcom/samsung/android/glview/GLText;

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_WIDTH:F

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_HEIGHT:F

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_SIZE:F

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFontScale()F

    move-result v2

    mul-float v8, v1, v2

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_FONT_COLOR:I

    const-string v7, ""

    const/16 v16, 0x0

    move-object v1, v10

    move-object/from16 v2, p1

    move-object v13, v10

    move/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v13, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v15}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x2

    const/4 v8, 0x3

    invoke-virtual {v1, v8, v7}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->GUIDE_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v15, v2, v3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v14}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    new-instance v9, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v3, 0x7f080719

    const/4 v4, 0x0

    invoke-direct {v2, v11, v4, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    const/4 v9, 0x0

    aput-object v2, v1, v9

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v3, 0x7f080717

    invoke-direct {v2, v11, v4, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v1, v15

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v3, 0x7f080715

    invoke-direct {v2, v11, v4, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v1, v7

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v3, 0x7f080714

    invoke-direct {v2, v11, v4, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v1, v8

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v5, 0x7f08071b

    invoke-direct {v2, v11, v4, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v1, v14

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v5, 0x7f08071d

    invoke-direct {v2, v11, v4, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    const/4 v10, 0x5

    aput-object v2, v1, v10

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v5, 0x7f08071f

    invoke-direct {v2, v11, v4, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    const/4 v13, 0x6

    aput-object v2, v1, v13

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v5, 0x7f08071a

    invoke-direct {v2, v11, v4, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    const/16 v16, 0x7

    aput-object v2, v1, v16

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v5, 0x7f080718

    invoke-direct {v2, v11, v4, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    const/16 v17, 0x8

    aput-object v2, v1, v17

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v5, 0x7f080716

    invoke-direct {v2, v11, v4, v4, v5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    const/16 v18, 0x9

    aput-object v2, v1, v18

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    invoke-direct {v2, v11, v4, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    const/16 v19, 0xa

    aput-object v2, v1, v19

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v3, 0x7f08071c

    invoke-direct {v2, v11, v4, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    const/16 v20, 0xb

    aput-object v2, v1, v20

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v3, 0x7f08071e

    invoke-direct {v2, v11, v4, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    const/16 v3, 0xc

    aput-object v2, v1, v3

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v3, 0x7f080720

    invoke-direct {v2, v11, v4, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-instance v6, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v21, 0x0

    move-object v1, v6

    move-object/from16 v2, p1

    move-object v13, v6

    move/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v13, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrowGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v3, 0x7f080806

    const/4 v4, 0x0

    invoke-direct {v2, v11, v4, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v1, v9

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v3, 0x7f080804

    invoke-direct {v2, v11, v4, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v1, v15

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v3, 0x7f080802

    invoke-direct {v2, v11, v4, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v1, v7

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v3, 0x7f08080e

    invoke-direct {v2, v11, v4, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v1, v8

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v3, 0x7f080808

    invoke-direct {v2, v11, v4, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v1, v14

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v3, 0x7f08080a

    invoke-direct {v2, v11, v4, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v1, v10

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v3, 0x7f08080c

    invoke-direct {v2, v11, v4, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v3, 0x7f080807

    invoke-direct {v2, v11, v4, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v1, v16

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v3, 0x7f080805

    invoke-direct {v2, v11, v4, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v1, v17

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v3, 0x7f080803

    invoke-direct {v2, v11, v4, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v1, v18

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v3, 0x7f08080f

    invoke-direct {v2, v11, v4, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v1, v19

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v3, 0x7f080809

    invoke-direct {v2, v11, v4, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    aput-object v2, v1, v20

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v3, 0x7f08080b

    invoke-direct {v2, v11, v4, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    const/16 v3, 0xc

    aput-object v2, v1, v3

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    new-instance v2, Lcom/samsung/android/glview/GLImage;

    const v3, 0x7f08080d

    invoke-direct {v2, v11, v4, v4, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    const/16 v3, 0xd

    aput-object v2, v1, v3

    :goto_0
    const/16 v1, 0xe

    if-ge v9, v1, :cond_0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v9

    invoke-virtual {v1, v14}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRect:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v1, v1, v9

    invoke-virtual {v1, v14}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrowGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrow:[Lcom/samsung/android/glview/GLImage;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->makeCaptureStopButton()V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropAreaUp:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v12, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCropAreaDown:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v12, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v12, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v12, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v12, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideRectGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v12, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideArrowGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v12, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureFocusTrapezoid:Lcom/sec/android/app/camera/widget/gl/Trapezoid;

    invoke-virtual {v12, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v12, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)V
    .locals 0

    iget-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsImageBlurred:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsImageBlurred:Z

    return-void

    :cond_0
    const/16 p0, 0x970

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "sef_file_type"

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public onDirectionChanged(I)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDirectionChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WideSelfie"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureDirection:I

    if-eq v0, p1, :cond_d

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showStopButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hideCaptureGuideAnimation()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showCaptureFocusTrapezoid()V

    goto :goto_0

    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsDirectionChanged:Z

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailBottom:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviousThumbnailLength:F

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailRight:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviousThumbnailLength:F

    :goto_0
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureDirection:I

    sget-object p1, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;->CAPTURING:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v0, 0x5

    const/4 v1, 0x6

    const/4 v5, 0x0

    if-eqz p1, :cond_9

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_9

    if-eq p1, v2, :cond_3

    goto/16 :goto_1

    :cond_3
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureDirection:I

    if-ne p1, v4, :cond_6

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsDirectionChanged:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailRight:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_LANDSCAPE_HEIGHT:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    sub-float/2addr v3, v5

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    :cond_4
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne p1, v4, :cond_5

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_1

    :cond_6
    if-ne p1, v3, :cond_d

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsDirectionChanged:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailRight:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailBottom:F

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p1, v5, v5}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    :cond_7
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    if-ne p1, v4, :cond_8

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_1

    :cond_8
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_1

    :cond_9
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureDirection:I

    if-ne p1, v4, :cond_b

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsDirectionChanged:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->PREVIEW_GROUP_PORTRAIT_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailBottom:F

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    :cond_a
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    goto :goto_1

    :cond_b
    if-ne p1, v3, :cond_d

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsDirectionChanged:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailRight:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailBottom:F

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBackgroundRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p1, v5, v5}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FF)V

    :cond_c
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    :cond_d
    :goto_1
    return-void
.end method

.method public onError(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WideSelfie"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->cancelWideSelfieCapture()V

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsImageBlurred:Z

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;->STOPPING:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "onError : already Stopping..."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfie()V

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showWideSelfieToastPopup(I)V

    return-void
.end method

.method public onFaceDetection([Landroid/graphics/Rect;)Z
    .locals 0
    .param p1    # [Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length p1, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsFaceDetected:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isCapturing()Z

    move-result p0

    return p0
.end method

.method public onHrmShutterDetected()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsFaceDetected:Z

    if-nez v0, :cond_0

    const-string p0, "WideSelfie"

    const-string v0, "onHrmShutterDetected : returned because face is not detected"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->HRM_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    return-void
.end method

.method public onInactivate()V
    .locals 3

    const-string v0, "WideSelfie"

    const-string v1, "onInactivate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->cancelWideSelfieCapture()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->enableEngineCallbacks(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->enableEngineEventListener(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMainHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->unregisterListener(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setHrmSensor(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hidePreviewLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

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

    const/4 v0, 0x1

    if-eq p1, p2, :cond_1

    const/16 p2, 0x17

    if-eq p1, p2, :cond_0

    const/16 p2, 0x1b

    if-eq p1, p2, :cond_0

    const/16 p2, 0x42

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;->CAPTURING:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfie()V

    return v0

    :cond_1
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;->STOPPING:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    :cond_3
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;->STARTING:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;->STOPPING:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;->CAPTURING:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWideSelfie()V

    return v0

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_1
    const-string p0, "WideSelfie"

    const-string p1, "onKeyUp : Back key command is ignored, because Capturing State is not proper"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onLivePreviewData([B)V
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->decodeRgbaBitmap([B)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLivePreviewData : Unable to RGBA Data Creation Failed. mCaptureCount = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WideSelfie"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0x5a

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/camera/util/ImageUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setScaleFactor(FF)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onMoveSlowly()V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showGuideText(I)V

    return-void
.end method

.method public onPictureSaved()V
    .locals 0

    return-void
.end method

.method public onProgressStitching(I)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;->STOPPING:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;)Z

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

    const-string v1, "WideSelfie"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v0, 0xfa0

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFSLock(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getHapticFeedback()Lcom/sec/android/app/camera/interfaces/HapticManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/HapticManager;->playHaptic(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopCancelTimer()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->stopWarningSound()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/SoundManager;->abandonAudioFocus()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hidePreviewLayout()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMainHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;

    const/4 p1, 0x5

    const-wide/16 v0, 0x32

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
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

.method public onRectChanged([B)V
    .locals 14
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mScaleFactor:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailTop:F

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mScaleFactor:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailLeft:F

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mScaleFactor:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailBottom:F

    const/16 v1, 0xc

    invoke-static {p1, v1}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mScaleFactor:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mPreviewThumbnailRight:F

    const/16 v1, 0x10

    invoke-static {p1, v1}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mScaleFactor:F

    mul-float/2addr v1, v2

    const/16 v2, 0x14

    invoke-static {p1, v2}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mScaleFactor:F

    mul-float/2addr v2, v3

    const/16 v3, 0x18

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mScaleFactor:F

    mul-float v9, v3, v4

    const/16 v3, 0x1c

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mScaleFactor:F

    mul-float v8, v3, v4

    const/16 v3, 0x20

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mScaleFactor:F

    mul-float v11, v3, v4

    const/16 v3, 0x24

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mScaleFactor:F

    mul-float v10, v3, v4

    const/16 v3, 0x28

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mScaleFactor:F

    mul-float v7, v3, v4

    const/16 v3, 0x2c

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mScaleFactor:F

    mul-float v6, v3, v4

    const/16 v3, 0x30

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mScaleFactor:F

    mul-float v13, v3, v4

    const/16 v3, 0x34

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result p1

    int-to-float p1, p1

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mScaleFactor:F

    mul-float v12, p1, v3

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->checkWarningLevelAndType(FF)V

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setCaptureFocusRect(FF)V

    move-object v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setCaptureFocusTrapezoid(FFFFFFFF)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isMaxPositionReached()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsMaxPositionReached:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mIsMaxPositionReached:Z

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;->WIDE_SELFIE_OVER_BOUNDARY:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    invoke-interface {p1, v1, v0}, Lcom/sec/android/app/camera/interfaces/SoundManager;->playSound(Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getHapticFeedback()Lcom/sec/android/app/camera/interfaces/HapticManager;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/HapticManager;->playHaptic(I)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showBlinkWarningAnimation()V

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
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isCapturing()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;->IDLE:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->isCurrentCaptureState(Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMainHandler:Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$WideSelfie$uYh5DbT6OPAAAxqA3u5sCsIduCI;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$WideSelfie$uYh5DbT6OPAAAxqA3u5sCsIduCI;-><init>(Lcom/sec/android/app/camera/shootingmode/WideSelfie;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie$MainHandler;->post(Ljava/lang/Runnable;)Z

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0xfa0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFSLock(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->hidePreviewLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, 0x10

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, -0xe1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSaveAsFlipped()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlipStitching(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->STITCHING_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-interface {v0, p1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->handleShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideShootingModeHelpText()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->enableFaceRectView(Z)V

    sget-object p1, Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;->STARTING:Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->setCaptureState(Lcom/sec/android/app/camera/shootingmode/WideSelfie$WideSelfieCaptureState;)V

    return v1

    :cond_4
    :goto_1
    const-string p0, "WideSelfie"

    const-string p1, "onShutterKeyReleased : returned because it is capturing."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onShutterTimerEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/WideSelfie$3;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->reset()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewLayout(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewLayout(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x10

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x60

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 p1, 0x80

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->setTimerCountingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onStartPreviewPrepared(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V
    .locals 2

    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance p2, Landroid/util/Range;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {p1, p0, p2}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public onUIImageData([B)V
    .locals 3
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->decodeRgbaBitmap([B)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "WideSelfie"

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUIImageData : Unable to RGBA Data Creation Failed. mCaptureCount="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUIImageData : mCaptureCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCaptureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->mCurrentOrientation:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/16 v0, -0x5a

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/camera/util/ImageUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/camera/util/ImageUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/WideSelfie;->showPreviewImage(Landroid/graphics/Bitmap;)V

    return-void
.end method
