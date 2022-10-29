.class Lcom/sec/android/app/camera/engine/AeAfManagerImpl;
.super Ljava/lang/Object;
.source "AeAfManagerImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/AeAfManager;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$ShootingModeChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/ShootingModeOverlayLayoutController$TouchEvSliderVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TrackingAfManager;,
        Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TouchAeAfManager;,
        Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;,
        Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;,
        Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfComponent;,
        Lcom/sec/android/app/camera/engine/AeAfManagerImpl$MainHandler;,
        Lcom/sec/android/app/camera/engine/AeAfManagerImpl$ValueSetter;
    }
.end annotation


# static fields
.field private static final LONG_PRESSED_MSG:I = 0x1

.field private static final LONG_PRESS_TIME:J = 0x320L

.field private static final MOVE_THRESHOLD_FOR_AEAF_MOVE:I = 0xa

.field private static final MULTI_DATA_ARRAY_CELL_LENGTH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AeAfManagerImpl"

.field private static final TOUCH_AE_AF_RESET_MSG:I = 0x2

.field private static final TOUCH_AE_AF_RESET_TIME:J = 0xbb8L

.field private static final TOUCH_EV_RESET_MSG:I = 0x3

.field private static final TOUCH_EV_RESET_TIME:J = 0xbb8L

.field private static final WAIT_AE_AF_TRIGGER_STATE_CHANGED_TIME:J = 0x1388L


# instance fields
.field private final mAeAfComponentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

.field private mAeAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfEventListener;

.field private final mAeAfMoveThreshold:I

.field private final mAeInfoCallback:Lcom/samsung/android/camera/core2/MakerInterface$AeInfoCallback;

.field private mAePrecaptureTriggerState:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

.field private mAeState:I

.field private final mAfInfoCallback:Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback;

.field private mAfMode:I

.field private mAfState:I

.field private mAfTrigger:I

.field private mAfTriggerState:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

.field private mAutoFocusEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mDofMultiInfoCallback:Lcom/samsung/android/camera/core2/MakerInterface$DofMultiInfoCallback;

.field private final mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private final mHandler:Landroid/os/Handler;

.field private mIsCancelAfRequired:Z

.field private mIsHalfShutterStarted:Z

.field private mIsLongPressed:Z

.field private mIsPrecaptureStarted:Z

.field private mIsSingleAfRequested:Z

.field private mIsTorchFlashEnabled:Z

.field private mIsTouchAeAfResetMsgExpired:Z

.field private mIsTouchEvAeLockRequested:Z

.field private mIsTouchEvSliderShowing:Z

.field private final mNotifyWaitAeAfTriggerStateChangedRunnable:Ljava/lang/Runnable;

.field private final mObjectTrackingInfoCallback:Lcom/samsung/android/camera/core2/MakerInterface$ObjectTrackingInfoCallback;

.field private final mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

.field private mTouchAeState:I

.field private final mTouchAeStateCallback:Lcom/samsung/android/camera/core2/MakerInterface$TouchAeStateCallback;

.field private final mTouchDownPoint:Landroid/graphics/Point;

.field private final mTouchMovePoint:Landroid/graphics/Point;

.field private mUiState:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

.field private final mValueSetterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;",
            "Lcom/sec/android/app/camera/engine/AeAfManagerImpl$ValueSetter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfComponentList:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$MainHandler;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchDownPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchMovePoint:Landroid/graphics/Point;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mUiState:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    iput v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeState:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfMode:I

    iput v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfState:I

    iput v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfTrigger:I

    iput v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAeState:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsCancelAfRequired:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsHalfShutterStarted:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsPrecaptureStarted:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsSingleAfRequested:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTorchFlashEnabled:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAeAfResetMsgExpired:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchEvAeLockRequested:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchEvSliderShowing:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsLongPressed:Z

    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfTriggerState:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAePrecaptureTriggerState:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$8sYFfaXWqIO1O2tsbCyA_OI9Rw4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$8sYFfaXWqIO1O2tsbCyA_OI9Rw4;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mNotifyWaitAeAfTriggerStateChangedRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$1;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfInfoCallback:Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback;

    new-instance v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$2;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeInfoCallback:Lcom/samsung/android/camera/core2/MakerInterface$AeInfoCallback;

    new-instance v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$3;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAeStateCallback:Lcom/samsung/android/camera/core2/MakerInterface$TouchAeStateCallback;

    new-instance v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$4;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mDofMultiInfoCallback:Lcom/samsung/android/camera/core2/MakerInterface$DofMultiInfoCallback;

    new-instance v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$5;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mObjectTrackingInfoCallback:Lcom/samsung/android/camera/core2/MakerInterface$ObjectTrackingInfoCallback;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    new-instance p1, Lcom/sec/android/app/camera/engine/AeAfController;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-direct {p1, v0}, Lcom/sec/android/app/camera/engine/AeAfController;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->initializeValueSetterMap()V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfComponentList:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$DivideAeAfManager;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfComponentList:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfLockManager;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfComponentList:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TrackingAfManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TrackingAfManager;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfComponentList:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TouchAeAfManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$TouchAeAfManager;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    float-to-int p1, p1

    mul-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfMoveThreshold:I

    sget-object p1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfMode:I

    return p0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfMode:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeState:I

    return p0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeState:I

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAutoFocusEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsPrecaptureStarted:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsPrecaptureStarted:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isPossibleAeStateForCapture()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAeState:I

    return p0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAeState:I

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAeAfResetMsgExpired:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/engine/AeAfController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfEventListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfState:I

    return p0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTrackingAf()V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;II)Landroid/util/Size;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getFocusSizeFromResource(II)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAeAf()V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsLongPressed:Z

    return p0
.end method

.method static synthetic access$2702(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsLongPressed:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetAeLock()V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTransformedFocusArea(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfTrigger:I

    return p0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetDivideAeAfLock()V

    return-void
.end method

.method static synthetic access$302(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfTrigger:I

    return p1
.end method

.method static synthetic access$3100(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->startTouchAeAfResetTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfTriggerState:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isPossibleAfStateForCapture()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAePrecaptureTriggerState:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mNotifyWaitAeAfTriggerStateChangedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    return-object p0
.end method

.method private cancelAutoFocusForTakingPicture()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_AUTO_FOCUS:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsCancelAfRequired:Z

    return-void
.end method

.method private changeAeAfUiState(Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mUiState:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeAeAfUiState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mUiState:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mUiState:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$ecWYecxSvdTxmUNB_rwBcB0piXk;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$ecWYecxSvdTxmUNB_rwBcB0piXk;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getFocusSizeFromResource(II)Landroid/util/Size;
    .locals 2

    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-direct {v0, p1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method private getTransformedFocusArea(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;
    .locals 4

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getTouchAutoFocusBoundary()Landroid/graphics/Rect;

    move-result-object p0

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget v3, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p2

    invoke-static {p1, v1, p0}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result p0

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method private handleBackFlashSettingChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;->VIDEO_TORCH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfController;->setAeModeByFlashSetting(I)V

    return-void
.end method

.method private handleBackTorchSettingChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;->VIDEO_TORCH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTorchFlashMode(I)V

    return-void
.end method

.method private handleExposureValueSettingChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/engine/AeAfController;->setAeExposureCompensation(I)V

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->KEEP_CHANGED_EV_AFTER_ZOOM:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchEvSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchEvAeLockRequested:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/AeAfController;->lockAe()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchEvAeLockRequested:Z

    :cond_0
    return-void
.end method

.method private handleFrontFlashSettingChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfController;->setAeModeByFlashSetting(I)V

    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    const-string v1, "AeAfManagerImpl"

    if-nez v0, :cond_0

    const-string p0, "handleMessage - returned. Activity is not running"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v2, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage :: msg.what = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isResetTouchEvAvailable()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchEv()V

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAeAfResetMsgExpired:Z

    if-nez p1, :cond_4

    const-string p1, "TOUCH_AE_AF_RESET_MSG is expired"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAeAfResetMsgExpired:Z

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isResetTouchAeAfAvailable()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAeAf()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchEv()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isLongPressThreshold()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->sendLongPressEvent()V

    :cond_6
    :goto_0
    return-void
.end method

.method private handleSuperVDISSettingChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTrackingAfStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTrackingAf()V

    :cond_0
    return-void
.end method

.method private handleTrackingAfSettingChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTrackingAfStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V

    :cond_0
    return-void
.end method

.method private initializeValueSetterMap()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->EXPOSURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$4BrOhgfoPzgoBzaZxQO25zF0JpI;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$4BrOhgfoPzgoBzaZxQO25zF0JpI;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_EXPOSURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$4BrOhgfoPzgoBzaZxQO25zF0JpI;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$4BrOhgfoPzgoBzaZxQO25zF0JpI;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$glFC0RCY4-O8hqnI4TVtOh2dOYw;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$glFC0RCY4-O8hqnI4TVtOh2dOYw;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$Jj1my9pcFWuqWM5WnNJl5RYRrNw;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$Jj1my9pcFWuqWM5WnNJl5RYRrNw;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$QZumOPkwuh0ThaEKx-79uo2NlFA;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$QZumOPkwuh0ThaEKx-79uo2NlFA;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FOCUS_LENGTH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/sec/android/app/camera/engine/-$$Lambda$-bBbwSi4xEORNjJZ6sC40SJtXsI;

    invoke-direct {v3, v2}, Lcom/sec/android/app/camera/engine/-$$Lambda$-bBbwSi4xEORNjJZ6sC40SJtXsI;-><init>(Lcom/sec/android/app/camera/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_FOCUS_LENGTH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/sec/android/app/camera/engine/-$$Lambda$-bBbwSi4xEORNjJZ6sC40SJtXsI;

    invoke-direct {v3, v2}, Lcom/sec/android/app/camera/engine/-$$Lambda$-bBbwSi4xEORNjJZ6sC40SJtXsI;-><init>(Lcom/sec/android/app/camera/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->EXPOSURE_METERING:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/sec/android/app/camera/engine/-$$Lambda$dBXJ19S0nemcb6lgfWIQEpfE7r4;

    invoke-direct {v3, v2}, Lcom/sec/android/app/camera/engine/-$$Lambda$dBXJ19S0nemcb6lgfWIQEpfE7r4;-><init>(Lcom/sec/android/app/camera/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ISO:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/sec/android/app/camera/engine/-$$Lambda$PRHkk0YpgcWzhsysCaBKsDeZPpg;

    invoke-direct {v3, v2}, Lcom/sec/android/app/camera/engine/-$$Lambda$PRHkk0YpgcWzhsysCaBKsDeZPpg;-><init>(Lcom/sec/android/app/camera/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_ISO:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/sec/android/app/camera/engine/-$$Lambda$PRHkk0YpgcWzhsysCaBKsDeZPpg;

    invoke-direct {v3, v2}, Lcom/sec/android/app/camera/engine/-$$Lambda$PRHkk0YpgcWzhsysCaBKsDeZPpg;-><init>(Lcom/sec/android/app/camera/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SHUTTER_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/sec/android/app/camera/engine/-$$Lambda$B2cmlDTNz0eXdiR6iVNiTjkb8rc;

    invoke-direct {v3, v2}, Lcom/sec/android/app/camera/engine/-$$Lambda$B2cmlDTNz0eXdiR6iVNiTjkb8rc;-><init>(Lcom/sec/android/app/camera/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_SHUTTER_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/sec/android/app/camera/engine/-$$Lambda$B2cmlDTNz0eXdiR6iVNiTjkb8rc;

    invoke-direct {v3, v2}, Lcom/sec/android/app/camera/engine/-$$Lambda$B2cmlDTNz0eXdiR6iVNiTjkb8rc;-><init>(Lcom/sec/android/app/camera/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->WHITE_BALANCE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/sec/android/app/camera/engine/-$$Lambda$M9GUBdp1MXjXUqJl3HaKXQkhEIc;

    invoke-direct {v3, v2}, Lcom/sec/android/app/camera/engine/-$$Lambda$M9GUBdp1MXjXUqJl3HaKXQkhEIc;-><init>(Lcom/sec/android/app/camera/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_WHITE_BALANCE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/sec/android/app/camera/engine/-$$Lambda$M9GUBdp1MXjXUqJl3HaKXQkhEIc;

    invoke-direct {v3, v2}, Lcom/sec/android/app/camera/engine/-$$Lambda$M9GUBdp1MXjXUqJl3HaKXQkhEIc;-><init>(Lcom/sec/android/app/camera/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->KELVIN_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/sec/android/app/camera/engine/-$$Lambda$0OiM2dlayWuA5sTA7_2wVazgGXw;

    invoke-direct {v3, v2}, Lcom/sec/android/app/camera/engine/-$$Lambda$0OiM2dlayWuA5sTA7_2wVazgGXw;-><init>(Lcom/sec/android/app/camera/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_KELVIN_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/sec/android/app/camera/engine/-$$Lambda$0OiM2dlayWuA5sTA7_2wVazgGXw;

    invoke-direct {v3, v2}, Lcom/sec/android/app/camera/engine/-$$Lambda$0OiM2dlayWuA5sTA7_2wVazgGXw;-><init>(Lcom/sec/android/app/camera/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FOOD_COLOR_TUNE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/sec/android/app/camera/engine/-$$Lambda$PC4d41OwAY9qEgDGmP9DuYylFE4;

    invoke-direct {v3, v2}, Lcom/sec/android/app/camera/engine/-$$Lambda$PC4d41OwAY9qEgDGmP9DuYylFE4;-><init>(Lcom/sec/android/app/camera/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->APERTURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/sec/android/app/camera/engine/-$$Lambda$DxffKEZ4K91nKclJxkdrNs-7ASc;

    invoke-direct {v3, v2}, Lcom/sec/android/app/camera/engine/-$$Lambda$DxffKEZ4K91nKclJxkdrNs-7ASc;-><init>(Lcom/sec/android/app/camera/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_APERTURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/sec/android/app/camera/engine/-$$Lambda$DxffKEZ4K91nKclJxkdrNs-7ASc;

    invoke-direct {v3, v2}, Lcom/sec/android/app/camera/engine/-$$Lambda$DxffKEZ4K91nKclJxkdrNs-7ASc;-><init>(Lcom/sec/android/app/camera/engine/AeAfController;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->TRACKING_AF:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$OgtrtVaNDMkxWU6ooVTfUMAf0bk;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$OgtrtVaNDMkxWU6ooVTfUMAf0bk;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SUPER_VIDEO_STABILIZATION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$2VWQfiAqZ6im3cM8MjceVBTuNVA;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$AeAfManagerImpl$2VWQfiAqZ6im3cM8MjceVBTuNVA;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isLongPressThreshold()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchMovePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchDownPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfMoveThreshold:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchMovePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchDownPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfMoveThreshold:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPossibleAeStateForCapture()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeState:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isPossibleAfStateForCapture()Z
    .locals 4

    iget v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfMode:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    return v3

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsHalfShutterStarted:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsSingleAfRequested:Z

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfMode:I

    if-eq v0, v1, :cond_3

    return v3

    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    const/4 v2, 0x6

    if-eq v0, v2, :cond_5

    return v3

    :cond_4
    return v1

    :cond_5
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->IQ_CUSTOM_MODE:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v1, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result p0

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_6

    goto :goto_0

    :cond_6
    move v1, v3

    :cond_7
    :goto_0
    return v1
.end method

.method private isResetTouchAeAfAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_FOCUSED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getZoomController()Lcom/sec/android/app/camera/engine/ZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/ZoomController;->isTransientZooming()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->KEEP_CHANGED_EV_AFTER_ZOOM:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchEvSliderShowing:Z

    if-eqz v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->BACKGROUND_RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTouchAeSupported(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    iget p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAeState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    move v1, v2

    :cond_7
    return v1

    :cond_8
    return v2

    :cond_9
    :goto_0
    return v1
.end method

.method private isResetTouchEvAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->KEEP_CHANGED_EV_AFTER_ZOOM:Z

    return p0
.end method

.method private isSingleAfRequiredForTakingPicture(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isSingleAfRequired(I)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private isTouchEventHandled()Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_AUTO_FOCUS:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isTouchAfSupported()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isPreviewAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderTouchAfAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result p0

    if-nez p0, :cond_6

    return v1

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$2VWQfiAqZ6im3cM8MjceVBTuNVA(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->handleSuperVDISSettingChanged(I)V

    return-void
.end method

.method public static synthetic lambda$4BrOhgfoPzgoBzaZxQO25zF0JpI(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->handleExposureValueSettingChanged(I)V

    return-void
.end method

.method public static synthetic lambda$8sYFfaXWqIO1O2tsbCyA_OI9Rw4(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->notifyWaitAeAfTriggerStateChanged()V

    return-void
.end method

.method public static synthetic lambda$Jj1my9pcFWuqWM5WnNJl5RYRrNw(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->handleFrontFlashSettingChanged(I)V

    return-void
.end method

.method public static synthetic lambda$OgtrtVaNDMkxWU6ooVTfUMAf0bk(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->handleTrackingAfSettingChanged(I)V

    return-void
.end method

.method public static synthetic lambda$QZumOPkwuh0ThaEKx-79uo2NlFA(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->handleBackTorchSettingChanged(I)V

    return-void
.end method

.method public static synthetic lambda$glFC0RCY4-O8hqnI4TVtOh2dOYw(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->handleBackFlashSettingChanged(I)V

    return-void
.end method

.method private notifyWaitAeAfTriggerStateChanged()V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string v1, "notifyWaitAeAfTriggerStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_AE_AF_TRIGGER_STATE_CHANGED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAfTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAePrecaptureTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsPrecaptureStarted:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Capture - WaitAeAfTriggerStateChangedRequest : End["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraPerformance"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerCameraSettingChangedListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->EXPOSURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FOCUS_LENGTH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->EXPOSURE_METERING:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ISO:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SHUTTER_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->WHITE_BALANCE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->KELVIN_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FOOD_COLOR_TUNE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->APERTURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->TRACKING_AF:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SUPER_VIDEO_STABILIZATION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_EXPOSURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_FOCUS_LENGTH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_ISO:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_SHUTTER_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_WHITE_BALANCE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_KELVIN_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_APERTURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerShootingModeChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$ShootingModeChangedListener;)V

    return-void
.end method

.method private resetAeLock()V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string v1, "resetAeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfController;->unlockAeAwb()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfController;->resetTouchAe()V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V

    return-void
.end method

.method private resetDivideAeAfLock()V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string v1, "resetDivideAeAfLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfController;->unlockAeAwb()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfController;->resetTouchAe()V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V

    return-void
.end method

.method private resetTouchAeAf()V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string v1, "resetTouchAeAf"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfController;->resetTouchAfWithAe()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->stopTouchAeAfResetTimer()V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAfTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAePrecaptureTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V

    return-void
.end method

.method private resetTouchAf()V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string v1, "resetTouchAf"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsHalfShutterStarted:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->stopLongPressTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfTriggerState:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->WAIT_REQUESTED:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mNotifyWaitAeAfTriggerStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->notifyWaitAeAfTriggerStateChanged()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfController;->resetTouchAf()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->stopTouchAeAfResetTimer()V

    return-void
.end method

.method private resetTrackingAf()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfController;->resetTrackingAf()V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V

    return-void
.end method

.method private sendLongPressEvent()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfComponentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfComponent;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchMovePoint:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfComponent;->onLongPressed(Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method

.method private sendTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfComponentList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfComponent;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$AeAfComponent;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startLongPressTimer()V
    .locals 4

    const-string v0, "AeAfManagerImpl"

    const-string v1, "startLongPressTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startTouchAeAfResetTimer()V
    .locals 4

    const-string v0, "AeAfManagerImpl"

    const-string v1, "startTouchAeAfResetTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAeAfResetMsgExpired:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopTouchAeAfResetTimer()V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string/jumbo v1, "stopTouchAeAfResetTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAeAfResetMsgExpired:Z

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private stopTouchEvResetTimer()V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string/jumbo v1, "stopTouchEvResetTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private unregisterCameraSettingChangedListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->EXPOSURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FRONT_FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FOCUS_LENGTH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->EXPOSURE_METERING:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ISO:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SHUTTER_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->WHITE_BALANCE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->KELVIN_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->FOOD_COLOR_TUNE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->APERTURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->TRACKING_AF:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->SUPER_VIDEO_STABILIZATION:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_EXPOSURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_FOCUS_LENGTH:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_ISO:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_SHUTTER_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_WHITE_BALANCE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_KELVIN_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->VIDEO_APERTURE_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterShootingModeChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$ShootingModeChangedListener;)V

    return-void
.end method


# virtual methods
.method changeAePrecaptureTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAePrecaptureTriggerState:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeAePrecaptureTriggerState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAePrecaptureTriggerState:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAePrecaptureTriggerState:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    return-void
.end method

.method changeAfTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfTriggerState:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeAfTriggerState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfTriggerState:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfTriggerState:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    sget-object v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$6;->$SwitchMap$com$sec$android$app$camera$interfaces$InternalEngine$AeAfTriggerState:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsCancelAfRequired:Z

    :goto_0
    return-void
.end method

.method public enableFocusPeaking(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfController;->enableFocusPeaking(Z)V

    return-void
.end method

.method public enableMultiAf(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfController;->enableMultiAfMode(Z)V

    return-void
.end method

.method public getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mUiState:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    return-object p0
.end method

.method getAeInfoCallback()Lcom/samsung/android/camera/core2/MakerInterface$AeInfoCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeInfoCallback:Lcom/samsung/android/camera/core2/MakerInterface$AeInfoCallback;

    return-object p0
.end method

.method getAfInfoCallback()Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfInfoCallback:Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback;

    return-object p0
.end method

.method getDofMultiInfoCallback()Lcom/samsung/android/camera/core2/MakerInterface$DofMultiInfoCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mDofMultiInfoCallback:Lcom/samsung/android/camera/core2/MakerInterface$DofMultiInfoCallback;

    return-object p0
.end method

.method getObjectTrackingInfoCallback()Lcom/samsung/android/camera/core2/MakerInterface$ObjectTrackingInfoCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mObjectTrackingInfoCallback:Lcom/samsung/android/camera/core2/MakerInterface$ObjectTrackingInfoCallback;

    return-object p0
.end method

.method getTouchAeStateCallback()Lcom/samsung/android/camera/core2/MakerInterface$TouchAeStateCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAeStateCallback:Lcom/samsung/android/camera/core2/MakerInterface$TouchAeStateCallback;

    return-object p0
.end method

.method isAutoFocusTriggerRequired()Z
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsHalfShutterStarted:Z

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsSingleAfRequested:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfState:I

    if-eqz p0, :cond_3

    if-eq p0, v2, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method isCancelAfRequiredAfterTakingPicture()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsCancelAfRequired:Z

    return p0
.end method

.method isFlashRequired(Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlash()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not supported flash setting : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlash()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFlashRequired()Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method isHalfShutterStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsHalfShutterStarted:Z

    return p0
.end method

.method isTorchFlashEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTorchFlashEnabled:Z

    return p0
.end method

.method isTrackingAfStarted()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TRACKING_AF_FOCUSING:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TRACKING_AF_NOT_FOCUSED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-ne p0, v0, :cond_0

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

.method public synthetic lambda$changeAeAfUiState$0$AeAfManagerImpl(Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfEventListener;->onAeAfUiStateChanged(Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V

    :cond_0
    return-void
.end method

.method lockAe()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfController;->lockAe()V

    return-void
.end method

.method lockAeAwb()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfController;->lockAeAwb()V

    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchEventHandled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchPreviewArea(II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v2, "AeAfManagerImpl"

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchMovePoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    :cond_2
    const-string v0, "onActivityTouchEvent : ACTION_UP or ACTION_CANCEL"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->stopLongPressTimer()V

    goto :goto_0

    :cond_3
    const-string v0, "onActivityTouchEvent : ACTION_DOWN"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchDownPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->startLongPressTimer()V

    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->sendTouchEvent(Landroid/view/MotionEvent;)V

    return v1
.end method

.method public onCameraSettingChanged(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mValueSetterMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$ValueSetter;

    if-eqz p0, :cond_1

    invoke-interface {p0, p2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$ValueSetter;->set(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onShootingModeChanged(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShootingModeChanged ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AeAfManagerImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTrackingAfStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTrackingAf()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetAeAfAwb()V

    :goto_0
    return-void
.end method

.method public onTouchEvSliderVisibilityChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchEvSliderShowing:Z

    iget-boolean p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAeAfResetMsgExpired:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isResetTouchAeAfAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAeAf()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchEv()V

    :cond_0
    return-void
.end method

.method public resetAeAfAwb()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetAeAfAwb(Z)V

    return-void
.end method

.method public resetAeAfAwb(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->stopTouchEvResetTimer()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsHalfShutterStarted:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTrackingAfStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetAeAfAwb :: zoomStarted - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsHalfShutterStarted:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->stopLongPressTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfTriggerState:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->WAIT_REQUESTED:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mNotifyWaitAeAfTriggerStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->notifyWaitAeAfTriggerStateChanged()V

    :cond_4
    if-eqz p1, :cond_7

    sget-object p1, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$6;->$SwitchMap$com$sec$android$app$camera$interfaces$AeAfManager$AeAfUiState:[I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    const/4 v0, 0x6

    if-eq p1, v0, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAeAf()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchEv()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAf()V

    sget-object p1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->AE_LOCKED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V

    sget-object p1, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAfTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V

    sget-object p1, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAePrecaptureTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAeAf()V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAeAf()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchEv()V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfController;->unlockAeAwb()V

    :goto_0
    return-void
.end method

.method resetAeAfTriggerForTakingPicture()V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string v1, "resetAeAfTriggerForTakingPicture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAeAfResetMsgExpired:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAeAf()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchEv()V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsSingleAfRequested:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/AeAfController;->setAfMode(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsSingleAfRequested:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isCancelAfRequiredAfterTakingPicture()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->cancelAutoFocusForTakingPicture()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAeAwbLockRequired(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfController;->unlockAeAwb()V

    :cond_3
    return-void
.end method

.method public resetTouchEv()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchEvSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->KEEP_CHANGED_EV_AFTER_ZOOM:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchEvAeLockRequested:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "AeAfManagerImpl"

    const-string v1, "resetTouchEv"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->KEEP_CHANGED_EV_AFTER_ZOOM:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->stopTouchEvResetTimer()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfController;->unlockAe()V

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchEvAeLockRequested:Z

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setExposureValue(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setAeAfEventListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfEventListener;

    return-void
.end method

.method setAeModeByFlashSetting(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfController;->setAeModeByFlashSetting(I)V

    return-void
.end method

.method public setAutoFocusEventListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAutoFocusEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusEventListener;

    return-void
.end method

.method setTorchFlashEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTorchFlashEnabled:Z

    return-void
.end method

.method setTorchFlashMode(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTorchFlashEnabled:Z

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfController;->setTorchFlashMode(I)V

    return-void
.end method

.method start()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->registerCameraSettingChangedListener()V

    return-void
.end method

.method startAeAfTriggerForTakingPicture(Z)V
    .locals 3

    const-string v0, "AeAfManagerImpl"

    const-string v1, "startAeAfTriggerForTakingPicture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;->PHOTO_FLASH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isFlashRequired(Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;->PHOTO_TORCH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isFlashRequired(Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isSingleAfRequiredForTakingPicture(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/AeAfController;->setAfMode(I)V

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsSingleAfRequested:Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_AE_AF_TRIGGER_STATE_CHANGED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public startFoodFocus(Landroid/graphics/Point;)V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string v1, "startFoodFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f07001c

    invoke-direct {p0, v0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getFocusSizeFromResource(II)Landroid/util/Size;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTransformedFocusArea(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/Point;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {v1, p1, v0}, Lcom/sec/android/app/camera/engine/AeAfController;->startTouchAfWithAe(Landroid/graphics/Point;Landroid/util/Size;)V

    sget-object p1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V

    :cond_0
    return-void
.end method

.method startHalfShutter()V
    .locals 3

    const-string v0, "AeAfManagerImpl"

    const-string v1, "startHalfShutter"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsHalfShutterStarted:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/AeAfController;->setAfMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;->PHOTO_FLASH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isFlashRequired(Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_AE_AF_TRIGGER_STATE_CHANGED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public startTouchEvResetTimer()V
    .locals 4

    const-string v0, "AeAfManagerImpl"

    const-string v1, "startTouchEvResetTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method stop()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->unregisterCameraSettingChangedListener()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTrackingAfStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTrackingAf()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetAeAfAwb()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAeAfUiState(Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAePrecaptureTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->IDLE:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAfTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsCancelAfRequired:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsHalfShutterStarted:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsPrecaptureStarted:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsSingleAfRequested:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTorchFlashEnabled:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAeAfResetMsgExpired:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchEvAeLockRequested:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchEvSliderShowing:Z

    return-void
.end method

.method public stopLongPressTimer()V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string/jumbo v1, "stopLongPressTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method unlockAe()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfController;->unlockAe()V

    return-void
.end method

.method unlockAeAwb()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeAfController:Lcom/sec/android/app/camera/engine/AeAfController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfController;->unlockAeAwb()V

    return-void
.end method

.method waitAeAfTriggerStateChanged()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "waitAeAfTriggerStateChanged : current aeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/MakerParameter;->getAeStateString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " afState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/MakerParameter;->getAfStateString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AeAfManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAePrecaptureTriggerState:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->REQUESTED:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->WAIT_REQUESTED:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAePrecaptureTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfTriggerState:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->REQUESTED:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, v1, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsCancelAfRequired:Z

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isPossibleAfStateForCapture()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsHalfShutterStarted:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsSingleAfRequested:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAePrecaptureTriggerState:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->WAIT_REQUESTED:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    if-ne v0, v1, :cond_5

    :cond_4
    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->WAIT_REQUESTED:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAfTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAePrecaptureTriggerState:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->WAIT_REQUESTED:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfTriggerState:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;->WAIT_REQUESTED:Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mNotifyWaitAeAfTriggerStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mNotifyWaitAeAfTriggerStateChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
