.class public Lcom/sec/android/app/camera/engine/CommonEngine;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/InternalEngine;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/engine/request/RequestQueue$EmptyListener;
.implements Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;
.implements Lcom/sec/android/app/camera/engine/request/MakerHolder$MakerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/CommonEngine$PreviewCallbackManager;,
        Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonEngine"


# instance fields
.field private final mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

.field private final mAgifCaptureController:Lcom/sec/android/app/camera/engine/AgifCaptureController;

.field private final mBeautyController:Lcom/sec/android/app/camera/engine/BeautyController;

.field private final mBokehEffectController:Lcom/sec/android/app/camera/engine/BokehEffectController;

.field private final mBurstCaptureController:Lcom/sec/android/app/camera/engine/BurstCaptureController;

.field private final mCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraDeviceStateCallbackManager:Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;

.field private final mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mCaptureEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureType:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

.field private final mCreatingOutputFileLock:Ljava/lang/Object;

.field private mCurrentCaptureState:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

.field private mCurrentState:Lcom/sec/android/app/camera/interfaces/Engine$State;

.field private mDrawingFinishedRunnableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrawingFinishedRunnableListLock:Ljava/lang/Object;

.field private final mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

.field private final mExtraSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

.field private mExtraSurfaceView:Landroid/view/SurfaceView;

.field private mFixedSurfaceSize:Landroid/util/Size;

.field private mGenericEventListener:Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

.field private final mHistogramController:Lcom/sec/android/app/camera/engine/HistogramController;

.field private mIsExtraPreviewSurfaceCreated:Z

.field private mIsPreviewSurfaceCreated:Z

.field private final mLastContentData:Lcom/sec/android/app/camera/engine/LastContentData;

.field private mLastOrientation:I

.field private mLastOrientationForCapture:I

.field private mMakerEventListener:Lcom/sec/android/app/camera/interfaces/Engine$MakerEventListener;

.field private final mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

.field private final mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

.field private mOutputFilePath:Ljava/lang/String;

.field private final mPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

.field private final mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

.field private final mPreviewCallbackManager:Lcom/sec/android/app/camera/engine/CommonEngine$PreviewCallbackManager;

.field private final mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

.field private final mRequestEventManager:Lcom/sec/android/app/camera/engine/RequestEventManager;

.field private final mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

.field private final mRequestQueueEmptyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/Engine$RequestQueueEmptyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenFlashController:Lcom/sec/android/app/camera/engine/ScreenFlashController;

.field private final mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

.field private final mShutterTimerManager:Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;

.field private mSurfaceCallback2:Landroid/view/SurfaceHolder$Callback2;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTakePictureType:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

.field private mUiThreadRunnableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiThreadRunnableListLock:Ljava/lang/Object;

.field private final mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCreatingOutputFileLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mDrawingFinishedRunnableListLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mUiThreadRunnableListLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueueEmptyListeners:Ljava/util/List;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$State;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/interfaces/Engine$State;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentCaptureState:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureEventListeners:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mGenericEventListener:Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerEventListener:Lcom/sec/android/app/camera/interfaces/Engine$MakerEventListener;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureType:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mTakePictureType:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mOutputFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mExtraSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mIsPreviewSurfaceCreated:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mIsExtraPreviewSurfaceCreated:Z

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mFixedSurfaceSize:Landroid/util/Size;

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mLastOrientation:I

    iput v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mLastOrientationForCapture:I

    new-instance v1, Lcom/sec/android/app/camera/engine/CommonEngine$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/CommonEngine$1;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mExtraSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    new-instance v1, Lcom/sec/android/app/camera/engine/CommonEngine$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/CommonEngine$2;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mSurfaceCallback2:Landroid/view/SurfaceHolder$Callback2;

    const-string v1, "Create CommonEngine"

    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEngine(Lcom/sec/android/app/camera/interfaces/Engine;)V

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    new-instance v1, Lcom/sec/android/app/camera/engine/request/CameraHolder;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/sec/android/app/camera/engine/request/CameraHolder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

    new-instance p1, Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder$MakerEventListener;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    new-instance p1, Lcom/sec/android/app/camera/engine/request/RequestQueue;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-direct {p1, p0, v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;-><init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/CameraHolder;Lcom/sec/android/app/camera/engine/request/MakerHolder;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->setEmptyListener(Lcom/sec/android/app/camera/engine/request/RequestQueue$EmptyListener;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    const v1, 0x7f0a0066

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mSurfaceCallback2:Landroid/view/SurfaceHolder$Callback2;

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    new-instance p1, Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/CommonEngine$1;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraDeviceStateCallbackManager:Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;

    new-instance p1, Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    new-instance p1, Lcom/sec/android/app/camera/engine/CommonEngine$PreviewCallbackManager;

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine$PreviewCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/CommonEngine$1;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPreviewCallbackManager:Lcom/sec/android/app/camera/engine/CommonEngine$PreviewCallbackManager;

    new-instance p1, Lcom/sec/android/app/camera/engine/AgifCaptureController;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/engine/AgifCaptureController;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAgifCaptureController:Lcom/sec/android/app/camera/engine/AgifCaptureController;

    new-instance p1, Lcom/sec/android/app/camera/engine/BeautyController;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/engine/BeautyController;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBeautyController:Lcom/sec/android/app/camera/engine/BeautyController;

    new-instance p1, Lcom/sec/android/app/camera/engine/BokehEffectController;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/engine/BokehEffectController;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBokehEffectController:Lcom/sec/android/app/camera/engine/BokehEffectController;

    new-instance p1, Lcom/sec/android/app/camera/engine/BurstCaptureController;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/engine/BurstCaptureController;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstCaptureController:Lcom/sec/android/app/camera/engine/BurstCaptureController;

    new-instance p1, Lcom/sec/android/app/camera/engine/EffectController;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/engine/EffectController;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    new-instance p1, Lcom/sec/android/app/camera/engine/HistogramController;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/engine/HistogramController;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mHistogramController:Lcom/sec/android/app/camera/engine/HistogramController;

    new-instance p1, Lcom/sec/android/app/camera/engine/MotionPhotoController;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    new-instance p1, Lcom/sec/android/app/camera/engine/ScreenFlashController;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/engine/ScreenFlashController;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mScreenFlashController:Lcom/sec/android/app/camera/engine/ScreenFlashController;

    new-instance p1, Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/engine/ZoomController;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    new-instance p1, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    new-instance p1, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    new-instance p1, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-direct {p1, p0, v0, v1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    new-instance p1, Lcom/sec/android/app/camera/engine/RequestEventManager;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/engine/RequestEventManager;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestEventManager:Lcom/sec/android/app/camera/engine/RequestEventManager;

    new-instance p1, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShutterTimerManager:Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;

    new-instance p1, Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    new-instance p1, Lcom/sec/android/app/camera/engine/LastContentData;

    invoke-direct {p1}, Lcom/sec/android/app/camera/engine/LastContentData;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mLastContentData:Lcom/sec/android/app/camera/engine/LastContentData;

    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/engine/CommonEngine;)Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mFixedSurfaceSize:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/engine/request/RequestQueue;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/engine/request/CameraHolder;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->handleEsdError()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/engine/HistogramController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mHistogramController:Lcom/sec/android/app/camera/engine/HistogramController;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/engine/CallbackManagerImpl;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/engine/MotionPhotoController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mIsExtraPreviewSurfaceCreated:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/engine/CommonEngine;)Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mExtraSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/engine/CommonEngine;)Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/engine/CommonEngine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mIsPreviewSurfaceCreated:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/engine/CommonEngine;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->addDrawingFinishedRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private addDrawingFinishedRunnable(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mDrawingFinishedRunnableListLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mDrawingFinishedRunnableList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mDrawingFinishedRunnableList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private bindMakerService()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_POST_PICTURE_PROCESSING:Z

    if-eqz v0, :cond_0

    const-string v0, "CommonEngine"

    const-string v1, "bindMakerService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/MakerInterface;->bindMakerService(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private cancelSingleTakePicture()V
    .locals 2

    const-string v0, "CommonEngine"

    const-string v1, "cancelSingleTakePicture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SINGLE_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_SINGLE_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method private cancelStitchingCapture()V
    .locals 2

    const-string v0, "CommonEngine"

    const-string v1, "cancelStitchingCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_STITCHING_CAPTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_STITCHING_CAPTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->removeOutputFilePath()V

    return-void
.end method

.method private cancelTakePicture()V
    .locals 2

    const-string v0, "CommonEngine"

    const-string v1, "cancelTakePicture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method private cancelTakePostProcessingPicture()V
    .locals 2

    const-string v0, "CommonEngine"

    const-string v1, "cancelTakePostProcessingPicture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_POST_PROCESSING_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_TAKE_POST_PROCESSING_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->removeOutputFilePath()V

    return-void
.end method

.method private connectMaker(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectMaker : cameraId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isEffectSupported(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isPhotoMakerRecordingRequired(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeToEffectRecordingPreview()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/engine/request/CameraHolder;->getCapability(I)Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Capability;->isFilterRecordingUsingVideoMakerSupported()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    const/4 v0, 0x0

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBackVideoFilter(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontVideoFilter(I)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_CONNECTING_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->UPDATE_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_PREVIEW_SURFACE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result p1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result p1

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->CHANGE_PREVIEW_SURFACE_SIZE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWatchMode()I

    move-result p1

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/provider/CameraDisplayManager;->isWifiDisplayConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_EXTRA_PREVIEW_SURFACE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_VIDEO_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    :goto_2
    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_MEDIA_RECORDER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->CONNECT_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method private getCameraDisplayOrientation()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getDisplayRotation()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5a

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Capability;->getSensorOrientation()I

    move-result p0

    add-int/2addr p0, v1

    rem-int/lit16 p0, p0, 0x168

    rsub-int p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Capability;->getSensorOrientation()I

    move-result p0

    sub-int/2addr p0, v1

    add-int/lit16 p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    :goto_0
    return p0
.end method

.method private handleEsdError()V
    .locals 3

    const-string v0, "CommonEngine"

    const-string v1, "handleEsdError"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->restartVideoRecordingOnEsdError()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CLOSE_CAMERA:Lcom/sec/android/app/camera/engine/request/RequestId;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->OPEN_CAMERA:Lcom/sec/android/app/camera/engine/request/RequestId;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->reconnectMaker()V

    :goto_0
    return-void
.end method

.method private isTakePostProcessingPictureAvailable()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTakingPostProcessingPictureSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_POST_PROCESSING_MOTION_PHOTO:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getReview()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureType:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->SMART_SCAN_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    if-eq v0, v3, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result p0

    const/16 v0, 0x29

    if-ne p0, v0, :cond_5

    goto :goto_0

    :cond_5
    return v2

    :cond_6
    :goto_0
    return v1
.end method

.method static synthetic lambda$disableRecordingSeamlessZoom$0(ZLcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_DUAL_CAMERA_DISABLE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_DUAL_CAMERA_DISABLE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$setDetectedSceneInfo$2([JLcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_SCENE_DETECTION_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_SCENE_DETECTION_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$setFrontPictureStreamType$3(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/camera/util/MakerParameter;->getFrontPictureStreamType(I)I

    move-result p0

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_SENSOR_STREAM_TYPE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_SENSOR_STREAM_TYPE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$setLiveFocusDualCapture$6(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_ZOOM_IN_OUT_PHOTO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_ZOOM_IN_OUT_PHOTO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$setLiveHdr$7(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Lcom/sec/android/app/camera/util/MakerParameter;->getLiveHdrMode(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Lcom/sec/android/app/camera/util/MakerParameter;->getLiveHdrMode(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$setScalerFlipMode$8(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/camera/util/MakerParameter;->getScalerFlipMode(I)I

    move-result p0

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_SCALER_FLIP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_SCALER_FLIP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$setSelfieToneMode$4(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_PERSONAL_PRESET_INDEX:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_PERSONAL_PRESET_INDEX:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$setSuperNightShotMode$5(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_SUPER_NIGHT_SHOT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_SUPER_NIGHT_SHOT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$startCapture$9(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V
    .locals 0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;->onCaptureRequested()V

    return-void
.end method

.method private removeOutputFilePath()V
    .locals 3

    const-string v0, "CommonEngine"

    const-string v1, "removeOutputFilePath"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mOutputFilePath:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setDeviceOrientation(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->SET_ORIENTATION:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method private setLiveFocusDualCapture(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLiveFocusDualCapture : mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isZoomInOutPhotoSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "setLiveFocusDualCapture : Returned because it is not supported current device."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$CommonEngine$HbQv9ys5zeFuwhKx9-CNN2Kd9Pc;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/-$$Lambda$CommonEngine$HbQv9ys5zeFuwhKx9-CNN2Kd9Pc;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method private setLiveHdr(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLiveHdr : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isLiveHdrSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "setLiveHdr : Returned because it is not supported current device."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->RESTART_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$CommonEngine$_YVMqazSHsHmFHISKLMfWtOb20A;

    invoke-direct {v1, p1}, Lcom/sec/android/app/camera/engine/-$$Lambda$CommonEngine$_YVMqazSHsHmFHISKLMfWtOb20A;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method private setScalerFlipMode(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScalerFlipMode : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$CommonEngine$JJyRdq5WPvuJ3v67CQWM8BMzg5o;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/-$$Lambda$CommonEngine$JJyRdq5WPvuJ3v67CQWM8BMzg5o;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method private setTakePictureType()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getDynamicShotInfoForCapture()Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->getProcessingMode()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;->SINGLE:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mTakePictureType:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isTakePostProcessingPictureAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;->PROCESSING_POST:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mTakePictureType:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;->PROCESSING_INSTANT:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mTakePictureType:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    :goto_0
    return-void
.end method

.method private startCapture(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startCapture : CaptureType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/engine/CommonEngine$3;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$CaptureType:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startSingleTakePicture()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->takePostProcessingPicture()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startStitchingCapture()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->takePicture()V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureEventListeners:Ljava/util/List;

    sget-object p1, Lcom/sec/android/app/camera/engine/-$$Lambda$CommonEngine$ykhQMGcGKQSfXa3yjQD264bmXWM;->INSTANCE:Lcom/sec/android/app/camera/engine/-$$Lambda$CommonEngine$ykhQMGcGKQSfXa3yjQD264bmXWM;

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private startPictureProcessor()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->initialize()V

    return-void
.end method

.method private startSingleTakePicture()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SINGLE_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getDynamicShotInfoForCapture()Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method private startStitchingCapture()V
    .locals 2

    const-string v0, "CommonEngine"

    const-string v1, "startStitchingCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAeAwbLockRequired(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->lockAeAwb()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_STITCHING_CAPTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method private stopPictureProcessor()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->release()V

    return-void
.end method

.method private switchCameraInternal(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switchCameraInternal : cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isFacingSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object p2

    sget-object v0, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;->SWITCH_CAMERA:Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;

    invoke-interface {p2, v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->preparePreviewImageAnimation(Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider$PreviewImageAnimationType;)V

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->CLOSE_CAMERA:Lcom/sec/android/app/camera/engine/request/RequestId;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->NOTIFY_SWITCH_CAMERA_PREPARED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object p2, Lcom/sec/android/app/camera/engine/request/RequestId;->OPEN_CAMERA:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method private takePicture()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "takePicture : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mTakePictureType:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/engine/CommonEngine$3;->$SwitchMap$com$sec$android$app$camera$interfaces$InternalEngine$TakePictureType:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mTakePictureType:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PROCESSING_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getDynamicShotInfoForCapture()Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getDynamicShotInfoForCapture()Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private takePostProcessingPicture()V
    .locals 2

    const-string v0, "CommonEngine"

    const-string/jumbo v1, "takePostProcessingPicture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAeAwbLockRequired(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->lockAeAwb()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_POST_PROCESSING_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method private unbindMakerService()V
    .locals 1

    sget-boolean p0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_POST_PICTURE_PROCESSING:Z

    if-eqz p0, :cond_0

    const-string p0, "CommonEngine"

    const-string/jumbo v0, "unbindMakerService"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/camera/core2/MakerInterface;->unbindMakerService()V

    :cond_0
    return-void
.end method

.method private updateLatestFilter(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoMyFilter()I

    move-result v0

    const/16 v1, 0x2712

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoFiltersTab()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoFilter()I

    move-result p1

    invoke-static {p1}, Lcom/sec/android/app/camera/plugin/PlugInFilterStorage;->getFilterIndexByDBId(I)I

    move-result p1

    if-ne p1, v2, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBackVideoFilter(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoMyFilter()I

    move-result p1

    invoke-static {p1}, Lcom/sec/android/app/camera/plugin/PlugInMyFilterStorage;->getFilterIndexByDBId(I)I

    move-result p1

    if-ne p1, v2, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBackVideoMyFilter(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontVideoFiltersTab()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontVideoFilter()I

    move-result p1

    invoke-static {p1}, Lcom/sec/android/app/camera/plugin/PlugInFilterStorage;->getFilterIndexByDBId(I)I

    move-result p1

    if-ne p1, v2, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontVideoFilter(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontVideoMyFilter()I

    move-result p1

    invoke-static {p1}, Lcom/sec/android/app/camera/plugin/PlugInMyFilterStorage;->getFilterIndexByDBId(I)I

    move-result p1

    if-ne p1, v2, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFrontVideoMyFilter(I)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->APPLY_SETTINGS:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method public cancelCapture(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelCapture : CaptureType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/engine/CommonEngine$3;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$CaptureType:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->cancelSingleTakePicture()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->cancelTakePostProcessingPicture()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->cancelStitchingCapture()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->cancelTakePicture()V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isHalfShutterStarted()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetAeAfAwb()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->resetAeAfTriggerForTakingPicture()V

    :goto_1
    return-void
.end method

.method public cancelShutterAction()V
    .locals 2

    const-string v0, "CommonEngine"

    const-string v1, "cancelShutterAction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isHalfShutterStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_PREPARE_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetAeAfAwb()V

    return-void
.end method

.method cancelShutterTimerCapture()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/SoundManager;->abandonAudioFocus()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isHalfShutterStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->cancelShutterAction()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_PREPARE_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->resetAeAfTriggerForTakingPicture()V

    :goto_0
    return-void
.end method

.method public changeAePrecaptureTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAePrecaptureTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V

    return-void
.end method

.method public changeAfTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->changeAfTriggerState(Lcom/sec/android/app/camera/interfaces/InternalEngine$AeAfTriggerState;)V

    return-void
.end method

.method public changeCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeCaptureState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentCaptureState:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentCaptureState:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    return-void
.end method

.method public changeShootingMode(IZ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeShootingMode : shootingModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isFacingSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getNextCameraId(Z)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v1, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->switchCameraInternal(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->START_CONNECTING_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->INITIALIZE_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_PREVIEW_SURFACE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution(I)I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution(I)I

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->CHANGE_PREVIEW_SURFACE_SIZE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isPhotoMakerRecordingRequired(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_VIDEO_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_MEDIA_RECORDER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :goto_2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->CONNECT_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->NOTIFY_CHANGE_SHOOTING_MODE_COMPLETED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method public changeState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/camera/interfaces/Engine$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Engine$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Engine$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/interfaces/Engine$State;

    return-void
.end method

.method public clearApplySettingsSequenceId()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestEventManager:Lcom/sec/android/app/camera/engine/RequestEventManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RequestEventManager;->clearApplySettingsSequenceId()V

    return-void
.end method

.method public clearDrawingFinishedRunnable()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mDrawingFinishedRunnableListLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mDrawingFinishedRunnableList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mDrawingFinishedRunnableList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    const-string v3, "CommonEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawingFinished runnable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mDrawingFinishedRunnableList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearLastContentData()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mLastContentData:Lcom/sec/android/app/camera/engine/LastContentData;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/LastContentData;->clear()V

    return-void
.end method

.method public countDownPictureLatch()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->countDownPictureLatch()V

    return-void
.end method

.method public createEffectProcessor(ILandroid/os/Handler;)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/engine/EffectController;->createEffectProcessor(ILandroid/os/Handler;)V

    return-void
.end method

.method public createExtraSurface(Landroid/view/SurfaceView;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createExtraSurface : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mExtraSurfaceView:Landroid/view/SurfaceView;

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mExtraSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mExtraSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    return-void
.end method

.method public createNewOutputFilePath(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCreatingOutputFileLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "CommonEngine"

    const-string v2, "createNewOutputFilePath - start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CommonEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to Create Directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getPictureSavingStorage(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "CommonEngine"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to Create Directory: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/ImageUtils;->createFileName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getFileExtension(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/util/Util;->regenerateFileNameIfExists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mOutputFilePath:Ljava/lang/String;

    const-string p0, "CommonEngine"

    const-string p1, "createNewOutputFilePath - end"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public destroyEffectProcessor()V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/EffectController;->destroyEffectProcessor()V

    return-void
.end method

.method public disableRecordingSeamlessZoom(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableRecordingSeamlessZoom : disable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$CommonEngine$lObr5WnpEgpYH53EiGIs_9_TcXg;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/-$$Lambda$CommonEngine$lObr5WnpEgpYH53EiGIs_9_TcXg;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public dumpCapability()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Capability;->dumpCapability()V

    return-void
.end method

.method public dumpLastCaptureResult()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentState()Lcom/sec/android/app/camera/interfaces/Engine$State;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->dumpLastCaptureResult()V

    :cond_0
    return-void
.end method

.method public enableDistanceMeasure(Z)V
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateKey;->ENABLE_DISTANCE_MEASURE:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public enableFlipStitching(Z)V
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateKey;->ENABLE_FLIP_STITCHING:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public enableIntelligentGuide(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableIntelligentGuide = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateKey;->ENABLE_INTELLIGENT_GUIDE:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public enablePostProcessingMotionPhoto(Z)V
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateKey;->ENABLE_MOTION_PHOTO_PPP:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public enableQrCodeDetection(Z)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_QR_CODE_DETECTION:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableQrCodeDetection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_DATA_MATRIX_DETECTION:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_BARCODE_DETECTION:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->QR_CODE_DETECTION_MODE:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateKey;->QR_CODE_DETECTION_INTERVAL:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateKey;->ENABLE_QR_CODE_DETECTION:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public enableShapeCorrection(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableShapeCorrection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateKey;->ENABLE_FACE_SHAPE_CORRECTION:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public enableSlowMotionEventDetection(Z)V
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateKey;->ENABLE_SLOWMOTION_EVENT_DETECT:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    return-object p0
.end method

.method getAgifBurstCaptureController()Lcom/sec/android/app/camera/engine/AgifCaptureController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAgifCaptureController:Lcom/sec/android/app/camera/engine/AgifCaptureController;

    return-object p0
.end method

.method public getAgifBurstCaptureThumbnailCallback()Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAgifCaptureController:Lcom/sec/android/app/camera/engine/AgifCaptureController;

    return-object p0
.end method

.method public getAvailableZoomValueArrayList(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/camera/engine/request/CameraHolder;->getAvailableZoomValueArrayList(II)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method getBurstCaptureController()Lcom/sec/android/app/camera/engine/BurstCaptureController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstCaptureController:Lcom/sec/android/app/camera/engine/BurstCaptureController;

    return-object p0
.end method

.method public getBurstCaptureFps()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstCaptureController:Lcom/sec/android/app/camera/engine/BurstCaptureController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/BurstCaptureController;->getBurstCaptureFps()I

    move-result p0

    return p0
.end method

.method public getBurstCaptureSoundId()Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstCaptureController:Lcom/sec/android/app/camera/engine/BurstCaptureController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/BurstCaptureController;->getBurstCaptureSoundId()Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    move-result-object p0

    return-object p0
.end method

.method public getBurstCaptureThumbnailCallback()Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstCaptureController:Lcom/sec/android/app/camera/engine/BurstCaptureController;

    return-object p0
.end method

.method public getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    return-object p0
.end method

.method public getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method public getCameraDeviceStateCallback()Lcom/samsung/android/camera/core2/CamDevice$StateCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraDeviceStateCallbackManager:Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;

    return-object p0
.end method

.method public getCapability()Lcom/sec/android/app/camera/interfaces/Capability;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/CameraHolder;->getCapability(I)Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    return-object p0
.end method

.method public getCaptureEventListeners()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureEventListeners:Ljava/util/List;

    return-object p0
.end method

.method public getCurrentCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentCaptureState:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    return-object p0
.end method

.method getCurrentCaptureType()Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureType:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    return-object p0
.end method

.method public getCurrentPreviewSurface()Landroid/view/Surface;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/Surface;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/EffectController;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCurrentState()Lcom/sec/android/app/camera/interfaces/Engine$State;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/interfaces/Engine$State;

    return-object p0
.end method

.method public getCurrentTakePictureType()Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mTakePictureType:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    return-object p0
.end method

.method getDynamicShotInfoForCapture()Lcom/samsung/android/camera/core2/container/DynamicShotInfo;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->getDynamicShotInfoForCapture()Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    move-result-object p0

    return-object p0
.end method

.method getEffectController()Lcom/sec/android/app/camera/engine/EffectController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    return-object p0
.end method

.method public getEstimatedCaptureDuration()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->getDynamicShotCaptureDurationForCapture()I

    move-result p0

    return p0
.end method

.method public getExtraPreviewSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mExtraSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getExtraSurfaceView()Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mExtraSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method public getFixedSurfaceSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mFixedSurfaceSize:Landroid/util/Size;

    return-object p0
.end method

.method public getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mGenericEventListener:Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    return-object p0
.end method

.method public getInitialCameraId()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getNextCameraId(Z)I

    move-result p0

    return p0
.end method

.method public getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mLastContentData:Lcom/sec/android/app/camera/engine/LastContentData;

    return-object p0
.end method

.method public getLightConditionForCapture()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->getLightConditionForCapture()I

    move-result p0

    return p0
.end method

.method public getMakerEventListener()Lcom/sec/android/app/camera/interfaces/Engine$MakerEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerEventListener:Lcom/sec/android/app/camera/interfaces/Engine$MakerEventListener;

    return-object p0
.end method

.method getMakerHolder()Lcom/sec/android/app/camera/engine/request/MakerHolder;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    return-object p0
.end method

.method public getMaxZoomLevel()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ZoomController;->getMaxZoomLevel()I

    move-result p0

    return p0
.end method

.method public getMediaRecorder()Landroid/media/MediaRecorder;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object p0

    return-object p0
.end method

.method public getMinZoomLevel()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ZoomController;->getMinZoomLevel()I

    move-result p0

    return p0
.end method

.method getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    return-object p0
.end method

.method public getNewOutputFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCreatingOutputFileLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mOutputFilePath:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method getNextCameraId(Z)I
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraLensType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-ne v0, v3, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackCameraLensType()I

    move-result p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontCameraLensType()I

    move-result p1

    :goto_1
    move v1, p1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getCameraId(II)I

    move-result p1

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution(I)I

    move-result v4

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution(I)I

    move-result v4

    :goto_2
    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraResolution;->isSuperResolution(I)Z

    move-result v4

    if-eqz v4, :cond_5

    if-ne v0, v3, :cond_4

    const/16 p1, 0x66

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getCameraId(II)I

    move-result p1

    :cond_5
    :goto_3
    const/16 v1, 0x14

    if-ne p1, v1, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSeamlessZoomAvailable(I)Z

    move-result p0

    if-nez p0, :cond_6

    move p1, v2

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNextCameraId nextId : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CommonEngine"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public getOrientationForCapture()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mLastOrientationForCapture:I

    return p0
.end method

.method getPictureCallbackManager()Lcom/sec/android/app/camera/engine/PictureCallbackManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    return-object p0
.end method

.method getPictureProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    return-object p0
.end method

.method getPreviewCallbackManager()Lcom/sec/android/app/camera/engine/CommonEngine$PreviewCallbackManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPreviewCallbackManager:Lcom/sec/android/app/camera/engine/CommonEngine$PreviewCallbackManager;

    return-object p0
.end method

.method public getPreviewDisplayMatrix(I)Landroid/graphics/Matrix;
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    invoke-virtual {v3, v0, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraDisplayOrientation()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float v0, v1

    const/high16 v4, 0x44fa0000    # 2000.0f

    div-float v5, v0, v4

    int-to-float v2, v2

    div-float v4, v2, v4

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    div-float/2addr v2, v4

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sub-int/2addr p1, v1

    int-to-float p1, p1

    div-float/2addr p1, v4

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    invoke-virtual {v3, p1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v3
.end method

.method public getRecordingEventListener()Lcom/sec/android/app/camera/interfaces/InternalEngine$RecordingEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    return-object p0
.end method

.method public getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    return-object p0
.end method

.method public getRequestEventListener()Lcom/sec/android/app/camera/interfaces/InternalEngine$RequestEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestEventManager:Lcom/sec/android/app/camera/engine/RequestEventManager;

    return-object p0
.end method

.method getRequestEventManager()Lcom/sec/android/app/camera/engine/RequestEventManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestEventManager:Lcom/sec/android/app/camera/engine/RequestEventManager;

    return-object p0
.end method

.method getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    return-object p0
.end method

.method getSamsungSensorInfoSensorName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/CameraHolder;->getSamsungSensorInfoSensorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScalerCropRegion()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ZoomController;->getScalerCropRegion()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method getScreenFlashController()Lcom/sec/android/app/camera/engine/ScreenFlashController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mScreenFlashController:Lcom/sec/android/app/camera/engine/ScreenFlashController;

    return-object p0
.end method

.method public getSeamlessZoomValueArray()[I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/CameraHolder;->getSeamlessZoomValueArray()[I

    move-result-object p0

    return-object p0
.end method

.method public getSensorInfoActiveArraySize()Landroid/graphics/Rect;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isSensorCropSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSensorCropEnabled()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Capability;->getSensorInfoActiveArraySize(Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Capability;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShutterTimerManager:Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;

    return-object p0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnailCallback()Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->getThumbnailCallbackManager()Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback;

    move-result-object p0

    return-object p0
.end method

.method getThumbnailProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getThumbnailProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

    move-result-object p0

    return-object p0
.end method

.method public getTotalZoomLevel()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ZoomController;->getTotalZoomLevel()I

    move-result p0

    return p0
.end method

.method getZoomController()Lcom/sec/android/app/camera/engine/ZoomController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    return-object p0
.end method

.method public getZoomType()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ZoomController;->getZoomType()I

    move-result p0

    return p0
.end method

.method public handleBurstShutterPressed(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->BURST_CAPTURE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureType:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateCaptureInfo(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHoldCameraButtonTo()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstCaptureController:Lcom/sec/android/app/camera/engine/BurstCaptureController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/BurstCaptureController;->handleBurstShutterPressed(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHoldCameraButtonTo()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAgifCaptureController:Lcom/sec/android/app/camera/engine/AgifCaptureController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AgifCaptureController;->handleAgifBurstShutterPressed(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public handleBurstShutterReleased()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHoldCameraButtonTo()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstCaptureController:Lcom/sec/android/app/camera/engine/BurstCaptureController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/BurstCaptureController;->handleBurstShutterReleased()Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHoldCameraButtonTo()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAgifCaptureController:Lcom/sec/android/app/camera/engine/AgifCaptureController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AgifCaptureController;->handleAgifBurstShutterReleased()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public handleCamAccessException(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->handleCameraError(I)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->handleCameraError(I)V

    goto :goto_0

    :cond_2
    const/4 p1, -0x4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->handleCameraError(I)V

    :goto_0
    return-void
.end method

.method public handleCameraError(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->HANDLE_CAMERA_ERROR:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method public handleHalfShutterPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->startHalfShutter()V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->lockAeAwb()V

    return-void
.end method

.method public handleShutterEvent(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/engine/CommonEngine$3;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$CaptureType:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleShutterEvent : Wrong argument ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CommonEngine"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_SINGLE_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SINGLE_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_TAKE_POST_PROCESSING_PICTURE_COMPLETED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_POST_PROCESSING_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_STITCHING_CAPTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_STITCHING_CAPTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isHalfShutterStarted()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetAeAfAwb()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->resetAeAfTriggerForTakingPicture()V

    :goto_1
    return-void
.end method

.method public handleShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleShutterReleased :  InputType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CaptureType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "handleShutterReleased : Return, wrong state for take picture: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentState()Lcom/sec/android/app/camera/interfaces/Engine$State;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestEventManager:Lcom/sec/android/app/camera/engine/RequestEventManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/RequestEventManager;->isStartPreviewRequestApplied()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "handleShutterReleased : Return, start preview is not completed."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->PREPARING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "handleShutterReleased : Return, wrong capture state for take picture: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCaptureRequested()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "handleShutterReleased : Return, capture is already requested."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->START_CONNECTING_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "handleShutterReleased : Return, start connecting maker is requested."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getQueuedTaskCount()J

    move-result-wide v3

    sget v0, Lcom/samsung/android/camera/feature/Feature;->MAX_SAVING_TASK_QUEUE_SIZE_FOR_MMC:I

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_5

    const-string p0, "handleShutterReleased : Return, saving task queue size limit exceeded"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capture - AddTakePictureRequest : Point["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CameraPerformance"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v2, :cond_6

    invoke-static {p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getCaptureInputType(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "0011"

    invoke-static {v3, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-static {p1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getCaptureInputType(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "2002"

    invoke-static {v3, v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_0
    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureType:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateCaptureInfo(Z)V

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/sec/android/app/camera/engine/ZoomController;->stopTransientZooming(Z)V

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mScreenFlashController:Lcom/sec/android/app/camera/engine/ScreenFlashController;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/ScreenFlashController;->isScreenFlashRequired()Z

    move-result p2

    const-string v0, "handleShutterReleased : Return, shutter timer is started."

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShutterTimerManager:Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->startShutterTimer(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object p2, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_LAST_SETTINGS_APPLIED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mScreenFlashController:Lcom/sec/android/app/camera/engine/ScreenFlashController;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/ScreenFlashController;->addScreenFlashRequest()V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->startAeAfTriggerForTakingPicture(Z)V

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isHalfShutterStarted()Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v3, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_LAST_SETTINGS_APPLIED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p2, v3}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->startAeAfTriggerForTakingPicture(Z)V

    :cond_a
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShutterTimerManager:Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->startShutterTimer(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureType:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->startCapture(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getHapticFeedback()Lcom/sec/android/app/camera/interfaces/HapticManager;

    move-result-object p0

    const/16 p1, 0x25

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/HapticManager;->playHaptic(I)V

    return-void
.end method

.method interruptCaptureRequest()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_AE_AF_TRIGGER_STATE_CHANGED:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PROCESSING_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_TAKE_PICTURE_COMPLETED:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SINGLE_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_SINGLE_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_VIDEO_SNAPSHOT:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isWaiting(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interruptCaptureRequest : request to interrupt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->interruptRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public isAutoFlashRequired()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->getLightConditionForCapture()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

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

.method public isAutoFocusTriggerRequired()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isAutoFocusTriggerRequired()Z

    move-result p0

    return p0
.end method

.method isCameraDeviceOpened()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraDeviceStateCallbackManager:Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;->access$900(Lcom/sec/android/app/camera/engine/CommonEngine$CameraDeviceStateCallbackManager;)Z

    move-result p0

    return p0
.end method

.method public isCancelAfRequiredAfterTakingPicture()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isCancelAfRequiredAfterTakingPicture()Z

    move-result p0

    return p0
.end method

.method isCaptureRequested()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_POST_PROCESSING_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_AGIF_BURST_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_STITCHING_CAPTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PROCESSING_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SINGLE_TAKE_PICTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

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

.method public isCurrentCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentCaptureState:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCurrentState:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$State;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isDraftPictureSaved()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->isDraftPictureSaved()Z

    move-result p0

    return p0
.end method

.method public isEffectProcessorActivated()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/EffectController;->isEffectProcessorActivated()Z

    move-result p0

    return p0
.end method

.method public isEffectProcessorRequired()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/EffectController;->isEffectProcessorRequired()Z

    move-result p0

    return p0
.end method

.method public isExtraPreviewSurfaceCreated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mIsExtraPreviewSurfaceCreated:Z

    return p0
.end method

.method isHalfShutterStarted()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isHalfShutterStarted()Z

    move-result p0

    return p0
.end method

.method public isHeifCaptureEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHeif()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public isLastSettingsApplied()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestEventManager:Lcom/sec/android/app/camera/engine/RequestEventManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RequestEventManager;->isLastSettingsApplied()Z

    move-result p0

    return p0
.end method

.method public isLongTakePicture()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getEstimatedCaptureDuration()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result v0

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDetectedSceneEvent()I

    move-result v0

    const/16 v2, 0x2c

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result p0

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public isMotionPhotoAudioRecordingEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isAudioRecordingSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPhotoMakerRecordingRequired(I)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraHolder:Lcom/sec/android/app/camera/engine/request/CameraHolder;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/engine/request/CameraHolder;->getCapability(I)Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isFilterRecordingUsingVideoMakerSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isEffectSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateLatestFilter(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoFilter()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontVideoFilter()I

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing(I)I

    move-result v3

    if-ne v3, v2, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoMyFilter()I

    move-result v3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontVideoMyFilter()I

    move-result v3

    :goto_1
    if-nez v0, :cond_4

    if-nez v3, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->isEffectRecordingPreview()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTuneType()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "CREATE_MY_FILTER_SELECTED_IMAGE_URI"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing(I)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution(I)I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderEffectAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    return v2
.end method

.method public isPictureSaving()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getActiveCount()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/PictureProcessor;->getQueuedTaskCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

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

.method public isPreviewSurfaceCreated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mIsPreviewSurfaceCreated:Z

    return p0
.end method

.method public isRequestQueueEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isScreenFlashAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mScreenFlashController:Lcom/sec/android/app/camera/engine/ScreenFlashController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ScreenFlashController;->isScreenFlashAvailable()Z

    move-result p0

    return p0
.end method

.method public isTorchFlashEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTorchFlashEnabled()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$onEmpty$1$CommonEngine()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueueEmptyListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueueEmptyListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/interfaces/Engine$RequestQueueEmptyListener;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine$RequestQueueEmptyListener;->onEmpty()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public notifyChangePreviewSurfaceSize()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->CHANGE_PREVIEW_SURFACE_SIZE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public notifyChangeShootingModeCompleted()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->NOTIFY_CHANGE_SHOOTING_MODE_COMPLETED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method notifyCurrentDynamicShotCaptureDurationTime()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->notifyCurrentDynamicShotCaptureDurationTime()V

    return-void
.end method

.method notifyCurrentLightCondition()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->notifyCurrentLightCondition()V

    return-void
.end method

.method public notifyStartVideoRecordingPrepared()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->NOTIFY_START_VIDEO_RECORDING_PREPARED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public notifySwitchCameraPrepared()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->NOTIFY_SWITCH_CAMERA_PREPARED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public notifyWaitPreviewSurface()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_PREVIEW_SURFACE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public onCamDeviceReady()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isWaiting(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_VIDEO_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isWaiting(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_VIDEO_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCameraOrientationChanged(I)V
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->roundOrientation(I)I

    move-result p1

    iget v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mLastOrientation:I

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraOrientationChanged : newOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mLastOrientation:I

    sget-object p1, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mLastOrientation:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setDeviceOrientation(I)V

    :cond_0
    return-void
.end method

.method public onCameraSettingChanged(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;I)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraSettingChanged : key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/engine/CommonEngine$3;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettingsBase$Key:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHdrEnabled()I

    move-result p1

    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHdrOption()I

    move-result p1

    if-ne p1, v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Capability;->isLiveHdrSupported()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isLiveHdrSupported(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableHdrStateCallback(Z)V

    :cond_4
    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setLiveHdr(I)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->handleStorageChanged(I)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->setLiveFocusDualCapture(I)V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-nez p1, :cond_8

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->setScalerFlipMode(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onConnectFailed()V
    .locals 1

    const/16 v0, -0x14

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->handleCameraError(I)V

    return-void
.end method

.method public onConnected()V
    .locals 3

    const-string v0, "ConnectMakerRequest"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Maker - ConnectMakerRequest : End["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPerformance"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CONNECT_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentState()Lcom/sec/android/app/camera/interfaces/Engine$State;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    if-ne v0, v1, :cond_0

    const-string p0, "CommonEngine"

    const-string v0, "onConnected : SHUTDOWN state. return."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->enableDefaultCallbacks()V

    iget v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mLastOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setDeviceOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->startMotionPhoto()V

    :cond_1
    return-void
.end method

.method public onDisconnected()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->resetFlags()V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->stopMotionPhoto()V

    return-void
.end method

.method public onEmpty()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$CommonEngine$VQMS-akNfG2OI9Oi90GDXiz5syc;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$CommonEngine$VQMS-akNfG2OI9Oi90GDXiz5syc;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postToUiThread(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mUiThreadRunnableListLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mUiThreadRunnableList:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mUiThreadRunnableList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p0, "CommonEngine"

    const-string p1, "postToUiThread : Can\'t handle runnable."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public prepareToStopEngine()V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mShutterTimerManager:Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstCaptureController:Lcom/sec/android/app/camera/engine/BurstCaptureController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/BurstCaptureController;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAgifCaptureController:Lcom/sec/android/app/camera/engine/AgifCaptureController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AgifCaptureController;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mScreenFlashController:Lcom/sec/android/app/camera/engine/ScreenFlashController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/ScreenFlashController;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/EffectController;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->prepareToStop()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopPictureProcessor()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mUiThreadRunnableListLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mUiThreadRunnableList:Ljava/util/List;

    if-eqz v1, :cond_1

    const-string v1, "CommonEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopEngine : Runnable list size that are waiting to be executed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mUiThreadRunnableList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mUiThreadRunnableList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mUiThreadRunnableList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mUiThreadRunnableList:Ljava/util/List;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public processPicture(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->JPEG:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->processPicture(Ljava/lang/String;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V

    sget-object p1, Lcom/sec/android/app/camera/engine/CommonEngine$3;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$CaptureType:[I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureType:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "processPicture - wrong capture type("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureType:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CommonEngine"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_TAKE_POST_PROCESSING_PICTURE_COMPLETED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_STITCHING_CAPTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :goto_0
    return-void
.end method

.method processPicture(Ljava/lang/String;Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V
    .locals 8

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyyMMdd_kkmmss"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v4}, Lcom/sec/android/app/camera/util/Util;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processPicture exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommonEngine"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    :goto_0
    move-wide v5, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/camera/engine/PictureProcessor;->process(Ljava/lang/String;Ljava/lang/String;JLcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V

    return-void
.end method

.method public reconnectMaker()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->connectMaker(I)V

    return-void
.end method

.method public registerAgifBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAgifCaptureController:Lcom/sec/android/app/camera/engine/AgifCaptureController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AgifCaptureController;->registerAgifBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    return-void
.end method

.method public registerBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstCaptureController:Lcom/sec/android/app/camera/engine/BurstCaptureController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/BurstCaptureController;->registerBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    return-void
.end method

.method public registerCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestEventManager:Lcom/sec/android/app/camera/engine/RequestEventManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/RequestEventManager;->registerPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    return-void
.end method

.method public registerRequestQueueEmptyListener(Lcom/sec/android/app/camera/interfaces/Engine$RequestQueueEmptyListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueueEmptyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueueEmptyListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method requestShutterTimerCapture()V
    .locals 2

    const-string v0, "CommonEngine"

    const-string v1, "requestShutterTimerCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateCaptureInfo(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mScreenFlashController:Lcom/sec/android/app/camera/engine/ScreenFlashController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/ScreenFlashController;->isScreenFlashRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mScreenFlashController:Lcom/sec/android/app/camera/engine/ScreenFlashController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/ScreenFlashController;->addScreenFlashRequest()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startAeAfTriggerForTakingPicture(Z)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->PREPARING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startAeAfTriggerForTakingPicture(Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureType:Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startCapture(Lcom/sec/android/app/camera/interfaces/Engine$CaptureType;)V

    return-void
.end method

.method public requestSlowMotionEventResult()V
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateCommand;->REQUEST_SLOWMOTION_EVENT_RESULT:Lcom/samsung/android/camera/core2/MakerPrivateCommand;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateCommand(Lcom/samsung/android/camera/core2/MakerPrivateCommand;)V

    return-void
.end method

.method resetAeAfTriggerForTakingPicture()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetAeAfTriggerForTakingPicture()V

    return-void
.end method

.method public resetScalerCropRegion()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ZoomController;->resetScalerCropRegion()V

    return-void
.end method

.method public restorePreviousMakerForRecording(I)V
    .locals 2

    const-string v0, "CommonEngine"

    const-string v1, "restorePreviousMakerForRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_CONNECTING_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->INITIALIZE_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method public setAeModeByFlashSetting(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAeModeByFlashSetting(I)V

    return-void
.end method

.method public setCompositionGuideCommand(Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideCommand;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateKey;->COMPOSITION_GUIDE_COMMAND:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public setCompositionGuideMode(Lcom/samsung/android/camera/core2/PrivateMetadata$CompositionGuideMode;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateKey;->COMPOSITION_GUIDE_MODE:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public setDetectedSceneInfo([J)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$CommonEngine$Ug7vq1EfZ7xOc73wT4PvVTTIkX4;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/-$$Lambda$CommonEngine$Ug7vq1EfZ7xOc73wT4PvVTTIkX4;-><init>([J)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public setEffectParameter(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/EffectController;->setEffectParameter(Ljava/lang/String;)V

    return-void
.end method

.method public setFixedSurfaceSize(II)V
    .locals 1

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mFixedSurfaceSize:Landroid/util/Size;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mExtraSurfaceView:Landroid/view/SurfaceView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_0
    return-void
.end method

.method public setFoodBlurPosition(Landroid/graphics/PointF;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateKey;->FOOD_SHOT_FOCUS_POSITION:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public setFrontPictureStreamType(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFrontPictureStreamType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isDynamicFovSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "setFrontPictureStreamType : returned because dynamic field of view is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$CommonEngine$xwupElho-2bD0wxsD9TM21LbcfA;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/-$$Lambda$CommonEngine$xwupElho-2bD0wxsD9TM21LbcfA;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public setGenericEventListener(Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mGenericEventListener:Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    return-void
.end method

.method public setHistogramUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$HistogramUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mHistogramController:Lcom/sec/android/app/camera/engine/HistogramController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/HistogramController;->setHistogramUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$HistogramUpdateListener;)V

    return-void
.end method

.method public setLabsCaptureMode(Lcom/samsung/android/camera/core2/PrivateMetadata$LabsCaptureMode;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateKey;->LABS_CAPTURE_MODE:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public setMakerEventListener(Lcom/sec/android/app/camera/interfaces/Engine$MakerEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerEventListener:Lcom/sec/android/app/camera/interfaces/Engine$MakerEventListener;

    return-void
.end method

.method public setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureProcessor:Lcom/sec/android/app/camera/engine/PictureProcessor;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/PictureProcessor;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    return-void
.end method

.method setPrivateCommand(Lcom/samsung/android/camera/core2/MakerPrivateCommand;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->SET_PRIVATE_COMMAND:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/camera/core2/MakerPrivateKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->SET_PRIVATE_SETTING:Lcom/sec/android/app/camera/engine/request/RequestId;

    new-instance v1, Lcom/sec/android/app/camera/engine/request/MakerPrivateSetting;

    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/camera/engine/request/MakerPrivateSetting;-><init>(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method public setQrCodeDetectionInterval(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setQrCodeDetectionInterval : interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateKey;->QR_CODE_DETECTION_INTERVAL:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public setScalerCropRegion(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/ZoomController;->setScalerCropRegion(I)V

    return-void
.end method

.method public setSceneDetectionMode(I)V
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateKey;->SCENE_DETECTION_MODE:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public setScreenFlashEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mScreenFlashController:Lcom/sec/android/app/camera/engine/ScreenFlashController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/ScreenFlashController;->setScreenFlashEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;)V

    return-void
.end method

.method public setSelfieToneMode(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelfieToneMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$CommonEngine$H6fJWXLaemOE20P8UcK5rvWX2AQ;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/-$$Lambda$CommonEngine$H6fJWXLaemOE20P8UcK5rvWX2AQ;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateKey;->BEAUTY_SELFIE_TONE_MODE:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-static {p1}, Lcom/sec/android/app/camera/util/MakerParameter;->getSelfieToneBeautyMode(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public setSingleCaptureResultListener(Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureResultListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->setSingleCaptureResultListener(Lcom/sec/android/app/camera/interfaces/Engine$SingleCaptureResultListener;)V

    return-void
.end method

.method public setSkinColorLevel(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBeautyController:Lcom/sec/android/app/camera/engine/BeautyController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->setSkinColorLevel(I)V

    return-void
.end method

.method public setSkinSmoothnessLevel(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBeautyController:Lcom/sec/android/app/camera/engine/BeautyController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->setSkinSmoothnessLevel(I)V

    return-void
.end method

.method public setSkinToneLevel(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBeautyController:Lcom/sec/android/app/camera/engine/BeautyController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->setSkinToneLevel(I)V

    return-void
.end method

.method public setSmartScanCorner([F)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SMART_SCAN_MANUAL_CROP:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateKey;->SMART_SCAN_CORNER:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public setSuperNightShotMode(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSuperNightShotMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$CommonEngine$EcWGdvReHqmBhlrGV4ihF3QA44k;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/-$$Lambda$CommonEngine$EcWGdvReHqmBhlrGV4ihF3QA44k;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public setTargetZoomRatio(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/ZoomController;->setTargetZoomRatio(F)V

    return-void
.end method

.method public setTorchFlashEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTorchFlashEnabled(Z)V

    return-void
.end method

.method public shutdownEngine()V
    .locals 2

    const-string v0, "CommonEngine"

    const-string v1, "shutdownEngine"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mExtraSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mIsExtraPreviewSurfaceCreated:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mExtraSurfaceView:Landroid/view/SurfaceView;

    :cond_0
    return-void
.end method

.method startAeAfTriggerForTakingPicture(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->startAeAfTriggerForTakingPicture(Z)V

    return-void
.end method

.method public startEffectProcessor()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/EffectController;->startEffectProcessor(Landroid/view/Surface;)V

    return-void
.end method

.method public startEngine()V
    .locals 4

    const-string v0, "CommonEngine"

    const-string v1, "startEngine"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->start()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->start()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mUiThreadRunnableList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mDrawingFinishedRunnableList:Ljava/util/List;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "CreateSurface"

    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceBegin(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface - CreateSurface : Start["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraPerformance"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mExtraSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->OPEN_CAMERA:Lcom/sec/android/app/camera/engine/request/RequestId;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->start()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBeautyController:Lcom/sec/android/app/camera/engine/BeautyController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/BeautyController;->start()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBokehEffectController:Lcom/sec/android/app/camera/engine/BokehEffectController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/BokehEffectController;->start()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->start()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/EffectController;->start()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mHistogramController:Lcom/sec/android/app/camera/engine/HistogramController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/HistogramController;->start()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->start()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mPictureCallbackManager:Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->start()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/ZoomController;->start()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->registerListener(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startPictureProcessor()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->bindMakerService()V

    return-void
.end method

.method public startMotionPhoto()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->startMotionPhoto()V

    :cond_0
    return-void
.end method

.method public startScreenFlash()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mScreenFlashController:Lcom/sec/android/app/camera/engine/ScreenFlashController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ScreenFlashController;->startScreenFlash()V

    return-void
.end method

.method public startTransientZooming()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ZoomController;->startTransientZooming()V

    return-void
.end method

.method public stopEngine()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exit - StopEngine : Start["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPerformance"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterAllCameraSettingsChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->unregisterListener(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBeautyController:Lcom/sec/android/app/camera/engine/BeautyController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/BeautyController;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBokehEffectController:Lcom/sec/android/app/camera/engine/BokehEffectController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/BokehEffectController;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mHistogramController:Lcom/sec/android/app/camera/engine/HistogramController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/HistogramController;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/ZoomController;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CLOSE_CAMERA:Lcom/sec/android/app/camera/engine/request/RequestId;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->stop()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->unbindMakerService()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->clearDrawingFinishedRunnable()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mDrawingFinishedRunnableListLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mDrawingFinishedRunnableList:Ljava/util/List;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exit - StopEngine : End["

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

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public stopMotionPhoto()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mMotionPhotoController:Lcom/sec/android/app/camera/engine/MotionPhotoController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->stopMotionPhoto()V

    return-void
.end method

.method public stopTransientZooming()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/ZoomController;->stopTransientZooming(Z)V

    return-void
.end method

.method public switchCamera(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->switchCameraInternal(IZ)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->connectMaker(I)V

    return-void
.end method

.method public takeEffectPreviewSnapshot()V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mEffectController:Lcom/sec/android/app/camera/engine/EffectController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/EffectController;->takePreviewSnapshot()V

    return-void
.end method

.method public takePreviewSnapshot()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_PREVIEW_SNAPSHOT:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public takeVideoSnapshot()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_VIDEO_SNAPSHOT:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "CommonEngine"

    const-string/jumbo v0, "takeVideoSnapshot : returned because duplicated TAKE_VIDEO_SNAPSHOT request is skipped"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateCaptureInfo(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mZoomController:Lcom/sec/android/app/camera/engine/ZoomController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/ZoomController;->stopTransientZooming(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_LAST_SETTINGS_APPLIED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueue:Lcom/sec/android/app/camera/engine/request/RequestQueue;

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_VIDEO_SNAPSHOT:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getDynamicShotInfoForCapture()Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method public unregisterAgifBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAgifCaptureController:Lcom/sec/android/app/camera/engine/AgifCaptureController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AgifCaptureController;->unregisterAgifBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    return-void
.end method

.method public unregisterBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mBurstCaptureController:Lcom/sec/android/app/camera/engine/BurstCaptureController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/BurstCaptureController;->unregisterBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    return-void
.end method

.method public unregisterCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCaptureEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestEventManager:Lcom/sec/android/app/camera/engine/RequestEventManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/RequestEventManager;->unregisterPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    return-void
.end method

.method public unregisterRequestQueueEmptyListener(Lcom/sec/android/app/camera/interfaces/Engine$RequestQueueEmptyListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mRequestQueueEmptyListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method updateCaptureInfo(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateOrientationForCapture()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->updateCaptureInfo(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setTakePictureType()V

    :cond_0
    return-void
.end method

.method updateOrientationForCapture()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedOrientationForCapture()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedOrientationForCapture()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->roundOrientation(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mLastOrientation:I

    :goto_0
    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Capability;->getSensorOrientation()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mLastOrientationForCapture:I

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSaveAsFlipped()I

    move-result v2

    if-ne v2, v3, :cond_2

    add-int/2addr v1, v0

    add-int/lit16 v1, v1, 0xb4

    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mLastOrientationForCapture:I

    goto :goto_1

    :cond_2
    sub-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mLastOrientationForCapture:I

    :cond_3
    :goto_1
    return-void
.end method

.method public waitAeAfTriggerStateChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CommonEngine;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->waitAeAfTriggerStateChanged()V

    return-void
.end method
