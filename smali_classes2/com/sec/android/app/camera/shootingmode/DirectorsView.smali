.class public Lcom/sec/android/app/camera/shootingmode/DirectorsView;
.super Ljava/lang/Object;
.source "DirectorsView.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/RecordingMode;
.implements Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;
.implements Lcom/sec/android/app/camera/interfaces/BaseMenuController$MainButtonClickListener;
.implements Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/camera/core2/MakerInterface$MultiViewInfoCallback;
.implements Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomChangeGroupOpenStateListener;
.implements Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I

.field private static final DELAY_TIME_TO_SHOW_ROI_CROP_RECT:I = 0x12c

.field private static final DELAY_TIME_TO_SHOW_THUMBNAIL_LIST:I = 0x1f4

.field private static final MSG_SHOW_ROI_CROP_RECT:I = 0x1

.field private static final MSG_SHOW_THUMBNAIL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DirectorsView"

.field private static final TIPS_CHANGE_BUTTON:I = 0x1

.field private static final TIPS_THUMBNAIL_LIST:I = 0x0

.field private static final TOAST_LOCKED_ON:I = 0x1

.field private static final TOAST_TAP_SUBJECT:I = 0x0

.field private static final TOAST_TRY_AGAIN:I = 0x2


# instance fields
.field private final AF_UNLOCK_BUTTON_HEIGHT:F

.field private final AF_UNLOCK_BUTTON_LEFT:F

.field private final AF_UNLOCK_BUTTON_LEFT_LANDSCAPE:F

.field private final AF_UNLOCK_BUTTON_WIDTH:F

.field private final DIRECTORS_VIEW_POPUP_BOTTOM_MARGIN:F

.field private final DIRECTORS_VIEW_POPUP_HEIGHT:F

.field private final DIRECTORS_VIEW_POPUP_WIDTH:F

.field private final EDIT_BUTTON_FONT_SIZE:F

.field private final EDIT_BUTTON_HEIGHT:F

.field private final EDIT_BUTTON_RIGHT_MARGIN:F

.field private final EDIT_BUTTON_WIDTH:F

.field private final EV_SLIDER_BOTTOM_MARGIN:F

.field private final EXTRA_PREVIEW_MARGIN_RECT_HEIGHT:F

.field private final QUICK_SETTING_HEIGHT:F

.field private final QUICK_SETTING_Y:F

.field private final ROI_MODE_BUTTON_GAP:F

.field private final ROI_MODE_BUTTON_HEIGHT:F

.field private final ROI_MODE_BUTTON_WIDTH:F

.field private final ROI_SCALE_FACTOR:F

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SPIN_BUTTON_GAP:F

.field private final SPIN_BUTTON_RIGHT_MARGIN:F

.field private final SPIN_BUTTON_SIZE:F

.field private final THUMBNAIL_BUTTON_HEIGHT:F

.field private final THUMBNAIL_BUTTON_WIDTH:F

.field private final THUMBNAIL_IMAGE_WIDTH:F

.field private final THUMBNAIL_LIST_GROUP_HEIGHT:F

.field private mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

.field private mBackButton:Lcom/samsung/android/glview/GLButton;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentRatio:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mCurrentResolution:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mDefaultTipsBottom:F

.field private mDirectorsViewList:Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;

.field private mDirectorsViewManager:Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;

.field private mDoneButton:Lcom/samsung/android/glview/GLButton;

.field private mEditButton:Lcom/samsung/android/glview/GLButton;

.field private mEditView:Lcom/samsung/android/glview/GLViewGroup;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mGestureDetector:Lcom/sec/android/app/camera/provider/CameraGestureManager;

.field private final mHandler:Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;

.field private mIsEditMode:Z

.field private mIsShownTemperatureWarning:Z

.field private mIsSpinning:Z

.field private mIsTransitionRunning:Z

.field private mLeftSpinButton:Lcom/samsung/android/glview/GLButton;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mNeedToTranslatePreview:Z

.field private final mReconnectMakerRunnable:Ljava/lang/Runnable;

.field private mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

.field private mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

.field private mRightSpinButton:Lcom/samsung/android/glview/GLButton;

.field private mRoiModeButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mRoiRectView:Lcom/sec/android/app/camera/widget/gl/DirectorsViewRoiRectView;

.field private mSetAutoButton:Lcom/samsung/android/glview/GLButton;

.field private mSpinButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mTeleZoomLevel:I

.field private mThumbnailButton:Lcom/samsung/android/glview/GLButton;

.field private mThumbnailListGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mThumbnailListTipsBottom:F

.field private mThumbnailViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mTouchAfCount:I

.field private mViewHighlightTips:Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;

.field private mWideZoomLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0b000f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->ANIMATION_DURATION:I

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/DirectorsView;Lcom/sec/android/app/camera/shootingmode/DirectorsView$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mHandler:Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SCREEN_HEIGHT:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget-object v2, Lcom/samsung/android/camera/feature/Feature;->SHOOTING_MODE_DIRECTORS_VIEW:Ljava/util/Map;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getPreviewSize(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->ROI_SCALE_FACTOR:F

    const v0, 0x7f07031f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->AF_UNLOCK_BUTTON_LEFT:F

    const v0, 0x7f070323

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->AF_UNLOCK_BUTTON_WIDTH:F

    const v0, 0x7f07031e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->AF_UNLOCK_BUTTON_HEIGHT:F

    const v0, 0x7f07031d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    const v2, 0x7f07031c

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->AF_UNLOCK_BUTTON_HEIGHT:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->AF_UNLOCK_BUTTON_LEFT_LANDSCAPE:F

    const v0, 0x7f0700ec

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SPIN_BUTTON_SIZE:F

    const v0, 0x7f0700eb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SPIN_BUTTON_GAP:F

    const v0, 0x7f0700ea

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SPIN_BUTTON_RIGHT_MARGIN:F

    const v0, 0x7f0700de

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->EDIT_BUTTON_WIDTH:F

    const v0, 0x7f0700dc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->EDIT_BUTTON_HEIGHT:F

    const v0, 0x7f0700db

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->EDIT_BUTTON_FONT_SIZE:F

    const v0, 0x7f0700dd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->EDIT_BUTTON_RIGHT_MARGIN:F

    const v0, 0x7f0700e9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->ROI_MODE_BUTTON_WIDTH:F

    const v0, 0x7f0700e6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->ROI_MODE_BUTTON_HEIGHT:F

    const v0, 0x7f0700e8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->ROI_MODE_BUTTON_GAP:F

    const v0, 0x7f0700df

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->EV_SLIDER_BOTTOM_MARGIN:F

    const v0, 0x7f0700f1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->THUMBNAIL_LIST_GROUP_HEIGHT:F

    const v0, 0x7f0700f3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->THUMBNAIL_IMAGE_WIDTH:F

    const v0, 0x7f0700f0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->THUMBNAIL_BUTTON_WIDTH:F

    const v0, 0x7f0700ef

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->THUMBNAIL_BUTTON_HEIGHT:F

    const v0, 0x7f0700e5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->DIRECTORS_VIEW_POPUP_WIDTH:F

    const v0, 0x7f0700e2

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->DIRECTORS_VIEW_POPUP_HEIGHT:F

    const v0, 0x7f0700e1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->DIRECTORS_VIEW_POPUP_BOTTOM_MARGIN:F

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getTopBaseLinePositionY()F

    move-result v0

    const v2, 0x7f07031a

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->QUICK_SETTING_Y:F

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->QUICK_SETTING_HEIGHT:F

    const v0, 0x7f0700e0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->EXTRA_PREVIEW_MARGIN_RECT_HEIGHT:F

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mTouchAfCount:I

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsEditMode:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsSpinning:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsTransitionRunning:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsShownTemperatureWarning:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mNeedToTranslatePreview:Z

    sget-object v1, Lcom/samsung/android/camera/feature/Feature;->BACK_CAMERA_RECORDING_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCurrentResolution:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCurrentRatio:I

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$DirectorsView$mtT6pCsDrTimYRm7n0EJLW4PUBY;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$DirectorsView$mtT6pCsDrTimYRm7n0EJLW4PUBY;-><init>(Lcom/sec/android/app/camera/shootingmode/DirectorsView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mReconnectMakerRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/DirectorsView;)Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewList:Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/DirectorsView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->showTips(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/DirectorsView;)Lcom/samsung/android/glview/GLViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/DirectorsView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->showThumbnailList(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/DirectorsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->startPreviewLayoutAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/DirectorsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->showRoiRectView()V

    return-void
.end method

.method private changeRoiMode(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeRoiMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DirectorsView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewManager:Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;->changeRoiMode(I)V

    return-void
.end method

.method private changeToEditMode()V
    .locals 5

    const-string v0, "DirectorsView"

    const-string v1, "changeToEditMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsEditMode:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewManager:Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;->updateDirectorsViewRoi(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v2, -0x81

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->hideBackButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->hideEditButton()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->hideThumbnailList(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->hideExtraPreviewMarginRect()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mHandler:Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v0, v3, v4}, Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->showToast(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEditView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    const-string p0, "403"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    return-void
.end method

.method private changeToNormalMode()V
    .locals 4

    const-string v0, "DirectorsView"

    const-string v1, "changeToNormalMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsEditMode:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideQuickSettingToast()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->showBackButton()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewManager:Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;->getManualRoiPoint()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Point;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->changeRoiMode(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewManager:Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;->updateDirectorsViewRoi(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEditView:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->showThumbnailList(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->showEditButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->showExtraPreviewMarginRect()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->hideRoiRectView()V

    const-string p0, "401"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    return-void
.end method

.method private clear()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mHandler:Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mGestureDetector:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->unregisterGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mGestureDetector:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsEditMode:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsSpinning:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsTransitionRunning:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mNeedToTranslatePreview:Z

    return-void
.end method

.method private enableEngineEventListeners(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setMultiViewCropRoiInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$MultiViewInfoCallback;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    if-eqz p1, :cond_2

    move-object v2, p0

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->setShutterTimerCaptureTriggerListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$ShutterTimerCaptureTriggerListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    if-eqz p1, :cond_3

    move-object v1, p0

    :cond_3
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setAutoFocusEventListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableLiveThumbnailPreviewCallback(Z)V

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->registerPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->unregisterPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    :goto_3
    return-void
.end method

.method private getTipsCount(I)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "pref_directors_view_change_button_tips_count"

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "pref_directors_view_thumbnail_list_tips_count"

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private hideAfUnlockButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DirectorsView"

    const-string v1, "hideAfUnlockButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideBackButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x21

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideBackButton()V

    :cond_0
    return-void
.end method

.method private hideEditButton()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return-void
.end method

.method private hideExtraPreviewMarginRect()V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->EXTRA_PREVIEW_MARGIN_RECT_HEIGHT:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->setCustomPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method private hideRoiRectView()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRoiRectView:Lcom/sec/android/app/camera/widget/gl/DirectorsViewRoiRectView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/DirectorsViewRoiRectView;->setVisibility(I)V

    return-void
.end method

.method private hideThumbnailList(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewList:Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mViewHighlightTips:Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;->hide()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideTouchEvSlider()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->moveTouchEvSliderGroup(FF)V

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->THUMBNAIL_LIST_GROUP_HEIGHT:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->THUMBNAIL_BUTTON_HEIGHT:F

    sub-float/2addr v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;

    invoke-direct {v1}, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget v1, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->ANIMATION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$DirectorsView$Zv5wsu690udPOvgWGloBI59Lx1Y;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$DirectorsView$Zv5wsu690udPOvgWGloBI59Lx1Y;-><init>(Lcom/sec/android/app/camera/shootingmode/DirectorsView;F)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView$1;-><init>(Lcom/sec/android/app/camera/shootingmode/DirectorsView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewList:Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailListGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->moveLayoutAbsolute(FF)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mSpinButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->moveLayoutAbsolute(FF)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object p1

    const v0, 0x7f11025b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/glview/GLContext;->speakTts(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailButton:Lcom/samsung/android/glview/GLButton;

    const p1, 0x7f110257

    invoke-static {p1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private hideTorchHighTemperatureWarning()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_TORCH_HIGH_TEMPERATURE_WARNING:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupVisible(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_TORCH_HIGH_TEMPERATURE_WARNING:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_TORCH_HIGH_TEMPERATURE_WARNING_DURING_RECORDING:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupVisible(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_TORCH_HIGH_TEMPERATURE_WARNING_DURING_RECORDING:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)V

    :cond_1
    return-void
.end method

.method private initZoomLevel()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getSeamlessZoomValueArray()[I

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget v3, v0, v2

    const/16 v4, 0x64

    if-ge v3, v4, :cond_1

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mWideZoomLevel:I

    goto :goto_1

    :cond_1
    if-le v3, v4, :cond_2

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mTeleZoomLevel:I

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private isDirectorsViewEffectRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsSpinning:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsTransitionRunning:Z

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

.method private isTorchHighTemperatureWarningRequired()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTorch()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->isTorchHighTemperatureWarningResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result p0

    return p0
.end method

.method private onMultiViewSettingChanged(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->showEditButton()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->hideEditButton()V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewManager:Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;->changeView(I)V

    return-void
.end method

.method private onSwipeAction(I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSwipeAction : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DirectorsView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewList:Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;->getVisibility()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->showThumbnailList(Z)V

    return v0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewList:Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->hideThumbnailList(Z)V

    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private onThumbnailButtonClick()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isPreviewTranslateAnimationRunning()Z

    move-result v0

    const-string v1, "DirectorsView"

    if-eqz v0, :cond_0

    const-string p0, "onThumbnailButtonClick return -- Preview translate animation is running"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mHandler:Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "onThumbnailButtonClick return -- Thumbnail not started yet"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewList:Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;->getVisibility()I

    move-result v0

    const-string v1, "4011"

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->hideThumbnailList(Z)V

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->showThumbnailList(Z)V

    const-wide/16 v2, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method private onZoomLevelChanged(I)V
    .locals 3

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDirectorsMultiView()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDirectorsMultiView()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDirectorsMultiView(I)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mTeleZoomLevel:I

    if-le p1, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDirectorsMultiView()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDirectorsMultiView(I)V

    goto :goto_0

    :cond_1
    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mTeleZoomLevel:I

    if-ge p1, v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDirectorsMultiView()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setDirectorsMultiView(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private pauseRecording()V
    .locals 2

    const-string v0, "DirectorsView"

    const-string v1, "pauseRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->PAUSE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->pauseVideoRecording()V

    return-void
.end method

.method private registerCameraSettingChangedListeners()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->DIRECTORS_MULTI_VIEW:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->DIRECTORS_VIEW_ZOOM_TRANSITION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->DIRECTORS_VIEW_RATIO:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method private resumeRecording()V
    .locals 2

    const-string v0, "DirectorsView"

    const-string v1, "resumeRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->RESUME:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->resumeVideoRecording()V

    return-void
.end method

.method private showAfUnlockButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "DirectorsView"

    const-string v1, "showAfUnlockButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showBackButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x21

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->showBackButton()V

    :cond_0
    return-void
.end method

.method private showEditButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->showTips(I)V

    return-void
.end method

.method private showExtraPreviewMarginRect()V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->EXTRA_PREVIEW_MARGIN_RECT_HEIGHT:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-interface {v1, p0, v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->setCustomPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method private showRoiRectView()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRoiRectView:Lcom/sec/android/app/camera/widget/gl/DirectorsViewRoiRectView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/DirectorsViewRoiRectView;->setVisibility(I)V

    return-void
.end method

.method private showThumbnailList(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewList:Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->hideTouchEvSlider()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->EV_SLIDER_BOTTOM_MARGIN:F

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->moveTouchEvSliderGroup(FF)V

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->THUMBNAIL_LIST_GROUP_HEIGHT:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->THUMBNAIL_BUTTON_HEIGHT:F

    sub-float/2addr v0, v1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;

    invoke-direct {v1}, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget v1, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->ANIMATION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$DirectorsView$s_-t_C9Angs1nYC_b9XoeNVBnTk;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$DirectorsView$s_-t_C9Angs1nYC_b9XoeNVBnTk;-><init>(Lcom/sec/android/app/camera/shootingmode/DirectorsView;F)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView$2;-><init>(Lcom/sec/android/app/camera/shootingmode/DirectorsView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewList:Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailListGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1, v2, v2}, Lcom/samsung/android/glview/GLViewGroup;->moveLayoutAbsolute(FF)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewList:Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;

    invoke-virtual {p1, v2, v2}, Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;->moveLayoutAbsolute(FF)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mSpinButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1, v2, v2}, Lcom/samsung/android/glview/GLViewGroup;->moveLayoutAbsolute(FF)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v2, v2}, Lcom/samsung/android/glview/GLButton;->moveLayoutAbsolute(FF)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object p1

    const v0, 0x7f11025b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/glview/GLContext;->speakTts(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailButton:Lcom/samsung/android/glview/GLButton;

    const p1, 0x7f110254

    invoke-static {p1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private showTips(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->getTipsCount(I)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mViewHighlightTips:Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailListTipsBottom:F

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;->setBottom(F)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mViewHighlightTips:Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDefaultTipsBottom:F

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;->setPreviewTopBottom(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mViewHighlightTips:Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;

    const v1, 0x7f11025c

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;->show(Ljava/lang/String;Lcom/samsung/android/glview/GLView;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mViewHighlightTips:Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailListTipsBottom:F

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;->setBottom(F)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mViewHighlightTips:Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDefaultTipsBottom:F

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;->setPreviewTopBottom(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mViewHighlightTips:Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;

    const v1, 0x7f11025e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;->show(Ljava/lang/String;Lcom/samsung/android/glview/GLView;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->updateTipsCount(I)V

    return-void
.end method

.method private showToast(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->ROI_MODE_BUTTON_HEIGHT:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->DIRECTORS_VIEW_POPUP_BOTTOM_MARGIN:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mViewHighlightTips:Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;->setBottom(F)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mViewHighlightTips:Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;->resetPreviewTopBottom()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mViewHighlightTips:Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;

    const p1, 0x7f110252

    invoke-static {p1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;->show(Ljava/lang/String;Lcom/samsung/android/glview/GLView;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mViewHighlightTips:Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;->setBottom(F)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mViewHighlightTips:Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;->resetPreviewTopBottom()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mViewHighlightTips:Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;

    const p1, 0x7f110255

    invoke-static {p1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;->show(Ljava/lang/String;Lcom/samsung/android/glview/GLView;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mViewHighlightTips:Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;->setBottom(F)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mViewHighlightTips:Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;->resetPreviewTopBottom()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mViewHighlightTips:Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;

    const p1, 0x7f11025d

    invoke-static {p1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;->show(Ljava/lang/String;Lcom/samsung/android/glview/GLView;)V

    :goto_0
    return-void
.end method

.method private showTorchHighTemperatureWarning()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsShownTemperatureWarning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->isTorchHighTemperatureWarningRequired()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsShownTemperatureWarning:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_TORCH_HIGH_TEMPERATURE_WARNING:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;->SMART_TIPS_TORCH_HIGH_TEMPERATURE_WARNING_DURING_RECORDING:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupId;)Z

    :goto_0
    return-void
.end method

.method private startPreviewLayoutAnimation()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getPreviewTop(Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;)I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->EXTRA_PREVIEW_MARGIN_RECT_HEIGHT:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/provider/CameraDisplayManager;->isSmartViewConnected(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->setBottomBackgroundHeight(F)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->setCustomPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v1

    neg-int v0, v0

    int-to-float v0, v0

    sget v2, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->ANIMATION_DURATION:I

    invoke-interface {v1, v3, v0, v2}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->translatePreviewLayout(FFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRoiRectView:Lcom/sec/android/app/camera/widget/gl/DirectorsViewRoiRectView;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/DirectorsViewRoiRectView;->updateFaceRectDrawingArea(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRoiModeButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    invoke-virtual {v0, v3, p0}, Lcom/samsung/android/glview/GLViewGroup;->moveLayoutAbsolute(FF)V

    return-void
.end method

.method private translateThumbnailViewGroup(FF)V
    .locals 9

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailListGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v0

    float-to-int v5, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v0

    float-to-int v6, v0

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;-><init>()V

    sget v8, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->ANIMATION_DURATION:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, p1}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    return-void
.end method

.method private unregisterCameraSettingChangedListeners()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->DIRECTORS_MULTI_VIEW:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->DIRECTORS_VIEW_ZOOM_TRANSITION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->DIRECTORS_VIEW_RATIO:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method private updateCropRects(Lcom/samsung/android/camera/core2/MakerInterface$MultiViewInfoCallback$MultiViewInfo;)V
    .locals 7

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/MakerInterface$MultiViewInfoCallback$MultiViewInfo;->getMultiViewCropRoiRects()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/Rect;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-gt v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SCREEN_WIDTH:I

    int-to-float v1, v1

    const/4 v2, 0x3

    aget-object v3, v0, v2

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->ROI_SCALE_FACTOR:F

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    aget-object v3, v0, v2

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->ROI_SCALE_FACTOR:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SCREEN_WIDTH:I

    int-to-float v4, v4

    aget-object v5, v0, v2

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->ROI_SCALE_FACTOR:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aget-object v2, v0, v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->ROI_SCALE_FACTOR:F

    mul-float/2addr v2, v5

    invoke-direct {p1, v1, v3, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRoiRectView:Lcom/sec/android/app/camera/widget/gl/DirectorsViewRoiRectView;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/widget/gl/DirectorsViewRoiRectView;->updateFaceRect(Landroid/graphics/RectF;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewList:Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;->updateCropRects([Landroid/graphics/Rect;)V

    return-void
.end method

.method private updateEffectState(Lcom/samsung/android/camera/core2/MakerInterface$MultiViewInfoCallback$MultiViewInfo;)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/MakerInterface$MultiViewInfoCallback$MultiViewInfo;->getMultiViewSpinEffect()[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsSpinning:Z

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/MakerInterface$MultiViewInfoCallback$MultiViewInfo;->getMultiViewSpinEffect()[I

    move-result-object v0

    aget v0, v0, v3

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsSpinning:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewManager:Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;->setSpinEffect(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/MakerInterface$MultiViewInfoCallback$MultiViewInfo;->getMultiViewSpinEffect()[I

    move-result-object v0

    aget v0, v0, v3

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsSpinning:Z

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/MakerInterface$MultiViewInfoCallback$MultiViewInfo;->getMultiViewTransitionEffect()[I

    move-result-object v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsTransitionRunning:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/MakerInterface$MultiViewInfoCallback$MultiViewInfo;->getMultiViewTransitionEffect()[I

    move-result-object p1

    aget p1, p1, v2

    if-nez p1, :cond_5

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsTransitionRunning:Z

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/MakerInterface$MultiViewInfoCallback$MultiViewInfo;->getMultiViewTransitionEffect()[I

    move-result-object p1

    aget p1, p1, v2

    if-ne p1, v2, :cond_4

    move p1, v2

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsTransitionRunning:Z

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewList:Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsTransitionRunning:Z

    if-nez v0, :cond_6

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsSpinning:Z

    if-nez p0, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;->setItemClickable(Z)V

    return-void
.end method

.method private updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRecordingLayout : cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DirectorsView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingCommand:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, -0x3

    const/16 v2, 0x110

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_DIRECTORS_VIEW:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingRestricted()Z

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->showPauseIcon()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto/16 :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->showResumeIcon()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto/16 :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_DIRECTORS_VIEW:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startRecordingToShootingModeAnimation(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_DIRECTORS_VIEW:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->hideIcon()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->stop()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingRestricted()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->EXTRA_PREVIEW_MARGIN_RECT_HEIGHT:F

    invoke-direct {p0, p1, v3}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->translateThumbnailViewGroup(FF)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDirectorsMultiView()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->showEditButton()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->showExtraPreviewMarginRect()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->showBackButton()V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, -0xee

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_DIRECTORS_VIEW:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShootingModeToRecordingAnimation(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_DIRECTORS_VIEW:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshQuickSetting(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->EXTRA_PREVIEW_MARGIN_RECT_HEIGHT:F

    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->translateThumbnailViewGroup(FF)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->hideEditButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->hideExtraPreviewMarginRect()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->hideBackButton()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getShootingModeOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;

    move-result-object p1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->EV_SLIDER_BOTTOM_MARGIN:F

    neg-float v0, v0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->EXTRA_PREVIEW_MARGIN_RECT_HEIGHT:F

    add-float/2addr v0, p0

    invoke-interface {p1, v3, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController;->moveTouchEvSliderGroup(FF)V

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

.method private updateTipsCount(I)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "pref_directors_view_change_button_tips_count"

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "pref_directors_view_thumbnail_list_tips_count"

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelRecording()V
    .locals 3

    const-string v0, "DirectorsView"

    const-string v1, "cancelRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v1, v2, :cond_0

    const-string p0, "cancelRecording : Returned because recording is already stopping"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->CANCEL:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->resetAfTrigger()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

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

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isSnapshotAvailable()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$hideThumbnailList$2$DirectorsView(FLandroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailListGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLViewGroup;->moveLayoutAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mSpinButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLViewGroup;->moveLayoutAbsolute(FF)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p1, p2

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/glview/GLButton;->moveLayoutAbsolute(FF)V

    return-void
.end method

.method public synthetic lambda$new$0$DirectorsView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->handleCamcorderSettingChanged()V

    return-void
.end method

.method public synthetic lambda$onMultiViewInfoChanged$1$DirectorsView(Lcom/samsung/android/camera/core2/MakerInterface$MultiViewInfoCallback$MultiViewInfo;)V
    .locals 1
    .param p1    # Lcom/samsung/android/camera/core2/MakerInterface$MultiViewInfoCallback$MultiViewInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->updateCropRects(Lcom/samsung/android/camera/core2/MakerInterface$MultiViewInfoCallback$MultiViewInfo;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->updateEffectState(Lcom/samsung/android/camera/core2/MakerInterface$MultiViewInfoCallback$MultiViewInfo;)V

    return-void
.end method

.method public synthetic lambda$showThumbnailList$3$DirectorsView(FLandroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailListGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, p1

    sub-float v1, p1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLViewGroup;->moveLayoutAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mSpinButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, p1

    sub-float v1, p1, v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/glview/GLViewGroup;->moveLayoutAbsolute(FF)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p2, p1

    sub-float/2addr p1, p2

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/glview/GLButton;->moveLayoutAbsolute(FF)V

    return-void
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsShownTemperatureWarning:Z

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->register(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getDirectorsViewManager()Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewManager:Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewManager:Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;->init()V

    new-instance p1, Lcom/sec/android/app/camera/provider/CameraGestureManager;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sec/android/app/camera/provider/CameraGestureManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mGestureDetector:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mGestureDetector:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->registerGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_DIRECTORS_VIEW:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->refreshMainButton(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setMainButtonClickListener(Lcom/sec/android/app/camera/interfaces/BaseMenuController$MainButtonClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->setZoomChangeGroupOpenStateListener(Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomChangeGroupOpenStateListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1103b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/widget/gl/AbstractMainButton;->setTitle(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->initZoomLevel()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->registerCameraSettingChangedListeners()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->enableEngineEventListeners(Z)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewList:Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;->initializeThumbnailPreview()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewList:Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mWideZoomLevel:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mTeleZoomLevel:I

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;->initializeZoomLevel(II)V

    sget-object p1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mViewHighlightTips:Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;->hide()V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsEditMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getTouchAutoFocusBoundary()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewManager:Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;->getRoiMode()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->changeRoiMode(I)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewManager:Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;->setManualRoi(II)V

    return v2

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->isDirectorsViewEffectRunning()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method public onAeAfLocked()V
    .locals 2

    const-string v0, "DirectorsView"

    const-string v1, "onAeAfLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

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

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->showAfUnlockButton()V

    return-void
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

    const-string v1, "DirectorsView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->onZoomLevelChanged(I)V

    goto :goto_0

    :pswitch_1
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCurrentRatio:I

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;->PREVIEW_CHANGE:Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->preparePreviewImageAnimation(Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mHandler:Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mReconnectMakerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mHandler:Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mReconnectMakerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewList:Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;->updateThumbnailLayout()V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewManager:Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;

    invoke-interface {p0, p2}, Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;->setZoomTransition(I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->onMultiViewSettingChanged(I)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->showTorchHighTemperatureWarning()V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCurrentResolution:I

    if-eq p1, p2, :cond_0

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCurrentResolution:I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mHandler:Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mReconnectMakerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mHandler:Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mReconnectMakerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewList:Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;->updateThumbnailLayout()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->showTorchHighTemperatureWarning()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCancelRecordingRequested()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->cancelRecording()V

    return-void
.end method

.method public onCaptureEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$CaptureEvent;)V
    .locals 0

    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "DirectorsView"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string p1, "onClick : mCafButton"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    const-string p0, "0218"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->onThumbnailButtonClick()V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const-string p1, "onClick : mEditButton"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsEditMode:Z

    if-nez p1, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->changeToEditMode()V

    const-string p0, "4023"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    return v2

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "onClick : mBackButton"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsEditMode:Z

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->changeToNormalMode()V

    return v2

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mSetAutoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "onClick : mSetAutoButton"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewManager:Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;

    invoke-interface {p0, v3}, Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;->changeRoiMode(I)V

    const-string p0, "4024"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    return v2

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "onClick : mDoneButton"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->changeToNormalMode()V

    const-string p0, "4025"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    return v2

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mLeftSpinButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick : mLeftSpinButton "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->isDirectorsViewEffectRunning()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->isDirectorsViewEffectRunning()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewManager:Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;

    const/16 p1, -0x168

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;->setSpinEffect(I)V

    const-string p0, "4020"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    return v2

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRightSpinButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick : mRightSpinButton "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->isDirectorsViewEffectRunning()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->isDirectorsViewEffectRunning()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewManager:Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;

    const/16 p1, 0x168

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;->setSpinEffect(I)V

    const-string p0, "4021"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    return v2

    :cond_7
    return v3
.end method

.method public onConnectMakerPrepared(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderSnapshotWidthFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderSnapshotHeightFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)I

    move-result v0

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p1, v0}, Landroid/util/Size;-><init>(II)V

    invoke-interface {p2, v1}, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;->setPictureSize(Landroid/util/Size;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCurrentResolution:I

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCurrentResolution:I

    invoke-static {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_1x1:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCurrentRatio:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCurrentRatio:I

    :goto_0
    return-void
.end method

.method public onContinuousAfFocused()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->hideAfUnlockButton()V

    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    new-instance v2, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    sget-boolean v2, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_RECORDING_CONTINUOUS_AF:Z

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    new-instance v2, Lcom/samsung/android/glview/GLButton;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v10, 0x7f0809ef

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v2

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v13}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f1101a8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->AF_UNLOCK_BUTTON_LEFT:F

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->QUICK_SETTING_Y:F

    iget v8, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->QUICK_SETTING_HEIGHT:F

    add-float/2addr v7, v8

    invoke-virtual {v2, v3, v6, v7}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->AF_UNLOCK_BUTTON_LEFT_LANDSCAPE:F

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->QUICK_SETTING_Y:F

    iget v8, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->QUICK_SETTING_HEIGHT:F

    add-float/2addr v7, v8

    iget v8, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->AF_UNLOCK_BUTTON_WIDTH:F

    add-float/2addr v7, v8

    invoke-virtual {v2, v5, v6, v7}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    const/4 v6, 0x3

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->AF_UNLOCK_BUTTON_LEFT_LANDSCAPE:F

    iget v8, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->AF_UNLOCK_BUTTON_HEIGHT:F

    add-float/2addr v7, v8

    iget v8, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->QUICK_SETTING_Y:F

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->QUICK_SETTING_HEIGHT:F

    add-float/2addr v8, v9

    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mAfUnlockButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_0
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;->RATIO_16x9:Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getRepresentativePreviewSize(Lcom/sec/android/app/camera/interfaces/Resolution$ASPECT_RATIO;)Landroid/util/Size;

    move-result-object v2

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/camera/provider/CameraDisplayManager;->isSmartViewConnected(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v6

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->THUMBNAIL_LIST_GROUP_HEIGHT:F

    goto :goto_0

    :cond_1
    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SCREEN_WIDTH:I

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/util/Util;->getAspectRatio(II)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->EXTRA_PREVIEW_MARGIN_RECT_HEIGHT:F

    sub-float/2addr v6, v7

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->THUMBNAIL_LIST_GROUP_HEIGHT:F

    :goto_0
    sub-float/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreateView : thumbnailGroupY : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DirectorsView"

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v9, 0x0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SCREEN_WIDTH:I

    int-to-float v11, v7

    iget v12, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->THUMBNAIL_LIST_GROUP_HEIGHT:F

    move-object v7, v13

    move-object/from16 v8, p1

    move v10, v6

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v13, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    new-instance v7, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v8, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SCREEN_WIDTH:I

    int-to-float v12, v8

    iget v13, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->THUMBNAIL_LIST_GROUP_HEIGHT:F

    move-object v8, v7

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailListGroup:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v7, Lcom/samsung/android/glview/GLRectangle;

    iget-object v8, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget v8, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SCREEN_WIDTH:I

    int-to-float v8, v8

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->THUMBNAIL_LIST_GROUP_HEIGHT:F

    const v10, 0x7f060011

    invoke-static {v10}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v20

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x1

    move-object v14, v7

    move/from16 v18, v8

    move/from16 v19, v9

    invoke-direct/range {v14 .. v22}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iget-object v8, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailListGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v8, v7}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v7, Lcom/samsung/android/glview/GLButton;

    iget v8, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SCREEN_WIDTH:I

    int-to-float v8, v8

    iget v13, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->THUMBNAIL_BUTTON_WIDTH:F

    sub-float/2addr v8, v13

    const/high16 v18, 0x40000000    # 2.0f

    div-float v11, v8, v18

    const/4 v12, 0x0

    iget v14, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->THUMBNAIL_BUTTON_HEIGHT:F

    const v15, 0x7f080842

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v7

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v17}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailButton:Lcom/samsung/android/glview/GLButton;

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v7, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v7, v0}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailListGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v8, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->THUMBNAIL_IMAGE_WIDTH:F

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v8, v2}, Lcom/sec/android/app/camera/util/Util;->getAspectRatio(II)D

    move-result-wide v8

    double-to-float v2, v8

    mul-float/2addr v2, v7

    new-instance v7, Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v10, 0x0

    iget v11, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->THUMBNAIL_BUTTON_HEIGHT:F

    iget v12, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->THUMBNAIL_IMAGE_WIDTH:F

    move-object v8, v7

    move v13, v2

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFF)V

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewList:Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewList:Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;

    invoke-virtual {v7, v4}, Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;->setVisibility(I)V

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewList:Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;

    invoke-virtual {v7, v0}, Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailListGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v8, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewList:Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v8, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailListGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v7, Lcom/samsung/android/glview/GLViewGroup;

    iget v8, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SCREEN_WIDTH:I

    int-to-float v8, v8

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SPIN_BUTTON_RIGHT_MARGIN:F

    sub-float/2addr v8, v9

    iget v12, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SPIN_BUTTON_SIZE:F

    sub-float v10, v8, v12

    iget v11, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->THUMBNAIL_BUTTON_HEIGHT:F

    move-object v8, v7

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mSpinButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v7, Lcom/samsung/android/glview/GLButton;

    const/16 v21, 0x0

    iget v8, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SPIN_BUTTON_GAP:F

    sub-float v8, v2, v8

    div-float v8, v8, v18

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SPIN_BUTTON_SIZE:F

    sub-float v22, v8, v9

    const v25, 0x7f080848

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1

    move-object/from16 v19, v7

    move-object/from16 v20, p1

    move/from16 v23, v9

    move/from16 v24, v9

    invoke-direct/range {v19 .. v28}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIZ)V

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mLeftSpinButton:Lcom/samsung/android/glview/GLButton;

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mLeftSpinButton:Lcom/samsung/android/glview/GLButton;

    const v8, 0x7f110258

    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mLeftSpinButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v7, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mLeftSpinButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v7, v5}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mLeftSpinButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v7, v5}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mLeftSpinButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v7, v5}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    new-instance v7, Lcom/samsung/android/glview/GLButton;

    const/4 v10, 0x0

    iget v8, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SPIN_BUTTON_GAP:F

    add-float/2addr v2, v8

    div-float v11, v2, v18

    iget v13, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SPIN_BUTTON_SIZE:F

    const v14, 0x7f080847

    const/4 v15, 0x0

    const/16 v17, 0x1

    move-object v8, v7

    move-object/from16 v9, p1

    move v12, v13

    invoke-direct/range {v8 .. v17}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIZ)V

    iput-object v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRightSpinButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRightSpinButton:Lcom/samsung/android/glview/GLButton;

    const v7, 0x7f110259

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRightSpinButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRightSpinButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRightSpinButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRightSpinButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mSpinButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mLeftSpinButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v7}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mSpinButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRightSpinButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v7}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mSpinButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v7}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v2, Lcom/samsung/android/glview/GLButton;

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SCREEN_WIDTH:I

    int-to-float v7, v7

    iget v11, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->EDIT_BUTTON_WIDTH:F

    sub-float/2addr v7, v11

    iget v8, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->EDIT_BUTTON_RIGHT_MARGIN:F

    sub-float v9, v7, v8

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SPIN_BUTTON_RIGHT_MARGIN:F

    sub-float/2addr v6, v7

    iget v12, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->EDIT_BUTTON_HEIGHT:F

    sub-float v10, v6, v12

    const v13, 0x7f080b7c

    const/4 v14, 0x0

    const/16 v16, 0x1

    move-object v7, v2

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v16}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIZ)V

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEditButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const v6, 0x7f110250

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->EDIT_BUTTON_FONT_SIZE:F

    const v8, 0x7f060033

    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v9

    invoke-virtual {v2, v6, v7, v9, v3}, Lcom/samsung/android/glview/GLButton;->setText(Ljava/lang/String;FIZ)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/samsung/android/glview/GLButton;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SCREEN_WIDTH:I

    int-to-float v13, v6

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SCREEN_HEIGHT:I

    int-to-float v14, v6

    move-object v9, v2

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v14}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEditView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEditView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    new-instance v2, Lcom/samsung/android/glview/GLButton;

    const v6, 0x7f07031d

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v11

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getTopBaseLinePositionY()F

    move-result v6

    const v7, 0x7f07031a

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v7

    sub-float v12, v6, v7

    const v6, 0x7f07031c

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v13

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v14

    const v15, 0x7f080989

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBackButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLButton;->setClickable(Z)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SCREEN_WIDTH:I

    int-to-float v13, v6

    iget v14, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->ROI_MODE_BUTTON_HEIGHT:F

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRoiModeButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v2, Lcom/samsung/android/glview/GLButton;

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SCREEN_WIDTH:I

    int-to-float v6, v6

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->ROI_MODE_BUTTON_GAP:F

    sub-float/2addr v6, v7

    div-float v6, v6, v18

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->ROI_MODE_BUTTON_WIDTH:F

    sub-float v21, v6, v7

    const/16 v22, 0x0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->ROI_MODE_BUTTON_HEIGHT:F

    const/16 v25, 0x0

    const/16 v28, 0x0

    move-object/from16 v19, v2

    move/from16 v23, v7

    move/from16 v24, v6

    invoke-direct/range {v19 .. v28}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIZ)V

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mSetAutoButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mSetAutoButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/samsung/android/glview/GLButton;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mSetAutoButton:Lcom/samsung/android/glview/GLButton;

    const v6, 0x7f110256

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0700e7

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v9

    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v10

    invoke-virtual {v2, v6, v9, v10, v3}, Lcom/samsung/android/glview/GLButton;->setText(Ljava/lang/String;FIZ)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mSetAutoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v6}, Lcom/samsung/android/glview/GLButton;->setTextAlign(II)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mSetAutoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLButton;->setClickable(Z)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mSetAutoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mSetAutoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    new-instance v2, Lcom/samsung/android/glview/GLButton;

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SCREEN_WIDTH:I

    int-to-float v9, v9

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->ROI_MODE_BUTTON_GAP:F

    add-float/2addr v9, v10

    div-float v21, v9, v18

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->ROI_MODE_BUTTON_WIDTH:F

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->ROI_MODE_BUTTON_HEIGHT:F

    move-object/from16 v19, v2

    move/from16 v23, v9

    move/from16 v24, v10

    invoke-direct/range {v19 .. v28}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIZ)V

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/samsung/android/glview/GLButton;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const v9, 0x7f110253

    invoke-static {v9}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v7

    invoke-static {v8}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v9, v7, v8, v3}, Lcom/samsung/android/glview/GLButton;->setText(Ljava/lang/String;FIZ)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v6, v6}, Lcom/samsung/android/glview/GLButton;->setTextAlign(II)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLButton;->setClickable(Z)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRoiModeButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mSetAutoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRoiModeButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEditView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRoiModeButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEditView:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEditView:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v2, Lcom/sec/android/app/camera/widget/gl/DirectorsViewRoiRectView;

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v3

    int-to-float v8, v3

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v3

    int-to-float v9, v3

    const v3, 0x7f060065

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v10

    const v3, 0x7f07010f

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v11

    const v3, 0x7f07010e

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v12

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v13

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/widget/gl/DirectorsViewRoiRectView;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFIFFLandroid/graphics/Rect;)V

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRoiRectView:Lcom/sec/android/app/camera/widget/gl/DirectorsViewRoiRectView;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRoiRectView:Lcom/sec/android/app/camera/widget/gl/DirectorsViewRoiRectView;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/widget/gl/DirectorsViewRoiRectView;->setVisibility(I)V

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRoiRectView:Lcom/sec/android/app/camera/widget/gl/DirectorsViewRoiRectView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-static {}, Lcom/sec/android/app/camera/util/DimensionWrapper;->getBottomBaseLinePositionY()F

    move-result v2

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SPIN_BUTTON_RIGHT_MARGIN:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->DIRECTORS_VIEW_POPUP_BOTTOM_MARGIN:F

    sub-float/2addr v2, v3

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDefaultTipsBottom:F

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDefaultTipsBottom:F

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->THUMBNAIL_LIST_GROUP_HEIGHT:F

    sub-float v2, v9, v2

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailListTipsBottom:F

    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->SCREEN_WIDTH:I

    int-to-float v3, v3

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->DIRECTORS_VIEW_POPUP_WIDTH:F

    sub-float/2addr v3, v10

    div-float v8, v3, v18

    iget v11, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->DIRECTORS_VIEW_POPUP_HEIGHT:F

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFF)V

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mViewHighlightTips:Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mViewHighlightTips:Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;->setRotatable(Z)V

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mViewHighlightTips:Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method public onFaceDetection([Landroid/graphics/Rect;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onFlingDirection(II)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->onSwipeAction(I)Z

    move-result p0

    return p0
.end method

.method public onInactivate()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->resetCenterView()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->stopRecording()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->cancelRecording()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsEditMode:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->changeToNormalMode()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewManager:Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->unregister()V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->enableEngineEventListeners(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->unregisterCameraSettingChangedListeners()V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SEAMLESS_ZOOM:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->disableRecordingSeamlessZoom(Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->setRecordingOverheatLevel(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->hideAfUnlockButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mThumbnailViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->resetTranslate()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mHandler:Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mHandler:Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;->removeMessages(I)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->hideThumbnailList(Z)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->resetBottomBackground()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setMainButtonClickListener(Lcom/sec/android/app/camera/interfaces/BaseMenuController$MainButtonClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->setZoomChangeGroupOpenStateListener(Lcom/sec/android/app/camera/interfaces/ZoomSliderController$ZoomChangeGroupOpenStateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mDirectorsViewList:Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/DirectorsViewList;->releaseThumbnailPreview()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->clear()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    const-string p0, "DirectorsView"

    const-string p1, "Recording control is not available at this moment, ignore key down event"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mViewHighlightTips:Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/widget/gl/ViewHighlightTips;->hide()V

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
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

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
    .locals 3

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result p2

    const-string v0, "DirectorsView"

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const-string p0, "Recording control is not available at this moment, ignore key up event"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 p2, 0x4

    const-string v2, "onKeyUp : keyCode - "

    if-eq p1, p2, :cond_4

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
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->stopRecording()V

    :cond_2
    return v1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->stopRecording()V

    :cond_5
    return v1

    :cond_6
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsEditMode:Z

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->changeToNormalMode()V

    return v1

    :cond_7
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onMultiViewInfoChanged(Ljava/lang/Long;Lcom/samsung/android/camera/core2/MakerInterface$MultiViewInfoCallback$MultiViewInfo;)V
    .locals 1
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/camera/core2/MakerInterface$MultiViewInfoCallback$MultiViewInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mHandler:Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$DirectorsView$bmb87rhc8NQdMreL60cKRg7FACk;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/camera/shootingmode/-$$Lambda$DirectorsView$bmb87rhc8NQdMreL60cKRg7FACk;-><init>(Lcom/sec/android/app/camera/shootingmode/DirectorsView;Lcom/samsung/android/camera/core2/MakerInterface$MultiViewInfoCallback$MultiViewInfo;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPauseButtonClick()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isPauseRecordingAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->pauseRecording()V

    const-wide/16 v0, 0x1

    const-string p0, "0202"

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

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isDimmed(I)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isAnimationFinished(I)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, v2, :cond_2

    return v1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isPreviewTranslateAnimationRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mNeedToTranslatePreview:Z

    if-eqz p1, :cond_4

    return v1

    :cond_4
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mIsEditMode:Z

    if-eqz p1, :cond_5

    return v1

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->startRecording()V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTorch()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "0220"

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getSeamlessZoomValueArray()[I

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getLensType([II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "0222"

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "0224"

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoBeautyLevel()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0225"

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public onRecordingEvent(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView$3;->$SwitchMap$com$sec$android$app$camera$interfaces$RecordingManager$RecordingEvent:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object p1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->STOP:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->hideTorchHighTemperatureWarning()V

    const-string p1, "401"

    invoke-static {p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->hideAfUnlockButton()V

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SEAMLESS_ZOOM:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->disableRecordingSeamlessZoom(Z)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->setRecordingOverheatLevel(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->prepareVideoRecording()V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingRestricted()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1103b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->setTitle(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->showTorchHighTemperatureWarning()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_FOCUSED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCK_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCKED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-ne p1, v0, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->showAfUnlockButton()V

    :cond_5
    const-string p0, "402"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onRecordingMaxDurationReached()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f11050e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->onStopRecordingRequested()V

    return-void
.end method

.method public onRecordingMaxFileSizeReached()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->stopRecording()V

    return-void
.end method

.method public onRecordingRestricted(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->onStopRecordingRequested()V

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

    move-result-object p3

    const-string p4, "DirectorsView"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-nez p3, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingTimeLimited()Z

    move-result p2

    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getMaxRecordingTimeLimitInSecond()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->start(ZI)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object p4, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p4}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getMaxRecordingTimeLimitInSecond()I

    move-result p4

    invoke-virtual {p3, p1, p2, p4}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateRecordingTime(JI)V

    :goto_0
    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SEAMLESS_ZOOM:Z

    const-wide/16 p2, 0x3e8

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide v0

    div-long/2addr v0, p2

    sget p1, Lcom/samsung/android/camera/feature/Feature;->MAX_SEAMLESS_ZOOM_RECORDING_TIME_LIMIT_IN_OVERHEAT_CONDITION:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result p1

    const/16 p4, 0x14

    if-ne p1, p4, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object p4, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {p4}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->isTemperatureHighToDualRecord()Z

    move-result p4

    invoke-interface {p1, p4}, Lcom/sec/android/app/camera/interfaces/Engine;->disableRecordingSeamlessZoom(Z)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide v0

    div-long/2addr v0, p2

    sget p1, Lcom/samsung/android/camera/feature/Feature;->MIN_RECORDING_TIME_TO_ENABLE_LOW_POWER_MODE:I

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->getRecordingOverheatLevel()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->setRecordingOverheatLevel(I)V

    :cond_2
    return-void
.end method

.method public onResumeButtonClick()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    const-string p0, "DirectorsView"

    const-string v0, "onResumeButtonClick : Returned because wrong recording state"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->resumeRecording()V

    const-wide/16 v0, 0x0

    const-string p0, "0202"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    const/4 p0, 0x1

    return p0
.end method

.method public onScrollDirection(IILandroid/view/MotionEvent;)Z
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onScrollDirection : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "DirectorsView"

    invoke-static {p3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->onSwipeAction(I)Z

    move-result p0

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

    const-string v0, "DirectorsView"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p1, v0, :cond_4

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRemainRecordingTimeInMsByStorage()J

    move-result-wide v2

    const-wide/16 v4, 0x5

    cmp-long p1, v2, v4

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->isSnapShotAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->takeVideoSnapshot()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result p1

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderExternalStorageAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const p1, 0x7f1102da

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;->STORAGE_STATUS:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;)V

    :cond_4
    :goto_0
    return v1
.end method

.method public onShutterTimerCaptureTriggered()V
    .locals 2

    const-string v0, "DirectorsView"

    const-string v1, "onShutterTimerCaptureTriggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->startRecording()V

    return-void
.end method

.method public onShutterTimerEvent(Lcom/sec/android/app/camera/interfaces/ShootingMode$TimerEvent;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/DirectorsView$3;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingMode$TimerEvent:[I

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
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0xe0

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x70

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    sget-object p1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0xe7

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v0, 0x60

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 p1, 0x100

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;->TIMER_COUNT:Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuId;)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->setTimerCountingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerTickEventListener;)V

    :goto_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSnapshotButtonClick()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    const-string p0, "0204"

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    return-void
.end method

.method public onStartPreviewCompleted()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mNeedToTranslatePreview:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mNeedToTranslatePreview:Z

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mHandler:Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/DirectorsView$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onStartPreviewPrepared(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;Lcom/sec/android/app/camera/interfaces/Capability;)V
    .locals 1

    const-string p2, "DirectorsView"

    const-string v0, "onStartPreviewPrepared"

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result p0

    const/16 p2, 0x14

    if-ne p0, p2, :cond_0

    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_DUAL_CAMERA_DISABLE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onStartPreviewRequested()V
    .locals 0

    return-void
.end method

.method public onStopButtonClick()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->stopRecording()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByRecordingTime(J)Ljava/lang/String;

    move-result-object p0

    const-string v2, "0203"

    invoke-static {v2, v0, v1, p0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;JLjava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopButtonClick : stop recording is not available, recordingTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DirectorsView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStopRecordingRequested()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isStopRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->stopRecording()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->cancelRecording()V

    :goto_0
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mGestureDetector:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouchAfFocused()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_RECORDING_TOUCH_AF:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPreviewOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayoutController;->showRecordingAfLockedIndicator()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getZoomSliderController()Lcom/sec/android/app/camera/interfaces/ZoomSliderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ZoomSliderController;->isZoomChangeGroupOpened()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mTouchAfCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mTouchAfCount:I

    int-to-long v0, v0

    const-string v2, "0205"

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->showAfUnlockButton()V

    return-void
.end method

.method public onTrackingAfRequested()V
    .locals 0

    return-void
.end method

.method public onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

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
    .locals 0

    return-void
.end method

.method public onZoomChangeGroupOpenPrepared()V
    .locals 0

    return-void
.end method

.method public onZoomChangeGroupOpened()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->hideAfUnlockButton()V

    return-void
.end method

.method public startRecording()V
    .locals 2

    const-string v0, "DirectorsView"

    const-string v1, "startRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCurrentMode(I)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;->START:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->updateRecordingLayout(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingCommand;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mTouchAfCount:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->startVideoRecording()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

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

    const-string v0, "DirectorsView"

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getMaxRecordingTimeLimitInSecond()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateRecordingTime(JI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/DirectorsView;->mRecordingManager:Lcom/sec/android/app/camera/interfaces/RecordingManager;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->stopVideoRecording(Z)V

    return-void
.end method
