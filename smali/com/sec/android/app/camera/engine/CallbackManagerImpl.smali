.class Lcom/sec/android/app/camera/engine/CallbackManagerImpl;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;,
        Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;,
        Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;,
        Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PalmDetectionCallbackManager;,
        Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;,
        Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;,
        Lcom/sec/android/app/camera/engine/CallbackManagerImpl$HdrStateCallbackManager;,
        Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;,
        Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;,
        Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;,
        Lcom/sec/android/app/camera/engine/CallbackManagerImpl$BrightnessValueCallbackManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallbackManager"


# instance fields
.field private final mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

.field private final mBrightnessValueCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$BrightnessValueCallbackManager;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mDynamicShotCaptureDurationCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;

.field private final mDynamicShotInfoCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;

.field private final mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private final mFaceDetectionCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;

.field private final mHdrStateCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$HdrStateCallbackManager;

.field private mIsLiveThumbnailPreviewCallbackEnabled:Z

.field private final mLensDirtyDetectCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;

.field private final mLightConditionCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;

.field private final mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

.field private final mPalmDetectionCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PalmDetectionCallbackManager;

.field private mPreviewCallbackEnabled:Z

.field private final mPreviewSnapShotCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;

.field private final mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

.field private final mSensorInfoCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;

.field private final mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

.field private final mSlavePreviewCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mIsLiveThumbnailPreviewCallbackEnabled:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mPreviewCallbackEnabled:Z

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMakerHolder()Lcom/sec/android/app/camera/engine/request/MakerHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    iput-object p3, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    new-instance p1, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$BrightnessValueCallbackManager;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$BrightnessValueCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;Lcom/sec/android/app/camera/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mBrightnessValueCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$BrightnessValueCallbackManager;

    new-instance p1, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;Lcom/sec/android/app/camera/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mDynamicShotCaptureDurationCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;

    new-instance p1, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;Lcom/sec/android/app/camera/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mDynamicShotInfoCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;

    new-instance p1, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;Lcom/sec/android/app/camera/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mFaceDetectionCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;

    new-instance p1, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$HdrStateCallbackManager;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$HdrStateCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;Lcom/sec/android/app/camera/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mHdrStateCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$HdrStateCallbackManager;

    new-instance p1, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;Lcom/sec/android/app/camera/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mLensDirtyDetectCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;

    new-instance p1, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;Lcom/sec/android/app/camera/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mLightConditionCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;

    new-instance p1, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PalmDetectionCallbackManager;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PalmDetectionCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;Lcom/sec/android/app/camera/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mPalmDetectionCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PalmDetectionCallbackManager;

    new-instance p1, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;Lcom/sec/android/app/camera/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mPreviewSnapShotCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;

    new-instance p1, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;Lcom/sec/android/app/camera/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mSensorInfoCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;

    new-instance p1, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;-><init>(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;Lcom/sec/android/app/camera/engine/CallbackManagerImpl$1;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mSlavePreviewCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/engine/CallbackManagerImpl;)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    return-object p0
.end method

.method private enableAeAfStateCallbacks(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAeInfoCallback()Lcom/samsung/android/camera/core2/MakerInterface$AeInfoCallback;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setAeInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$AeInfoCallback;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAfInfoCallback()Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setAfInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$AfInfoCallback;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeStateCallback()Lcom/samsung/android/camera/core2/MakerInterface$TouchAeStateCallback;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setTouchAeStateCallback(Lcom/samsung/android/camera/core2/MakerInterface$TouchAeStateCallback;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getObjectTrackingInfoCallback()Lcom/samsung/android/camera/core2/MakerInterface$ObjectTrackingInfoCallback;

    move-result-object v1

    :cond_3
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setObjectTrackingInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$ObjectTrackingInfoCallback;)V

    return-void
.end method

.method private enableBurstCaptureCallbacks(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHoldCameraButtonTo()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isBurstCaptureSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->enableBurstPictureCallback(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->enableBurstShotFpsCallback(Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAgifBurstCaptureSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->enableAgifEventCallback(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private enableDynamicShotInfoCallback(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableDynamicShotInfoCallback : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallbackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mDynamicShotInfoCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setDynamicShotInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$DynamicShotInfoCallback;)V

    return-void
.end method

.method private enableFaceDetectionEventCallbacks(Z)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$1;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingModeFeature$SupportedFaceDetectionType:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedFaceDetectionMode(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isFaceDetectionSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->enableFaceDetectionCallback(Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->enableSwFaceDetectionEventCallback(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isFaceDetectionSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->enableFaceDetectionCallback(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->enableSwFaceDetectionEventCallback(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private enableLensDirtyDetectCallback(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableLensDirtyDetectCallback : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallbackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mLensDirtyDetectCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setLensDirtyDetectCallback(Lcom/samsung/android/camera/core2/MakerInterface$LensDirtyDetectCallback;)V

    return-void
.end method

.method private enablePreviewCallback(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enablePreviewCallback : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallbackManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mPreviewCallbackEnabled:Z

    if-nez p1, :cond_1

    const-string p1, "enablePreviewCallback : Preview callback enabled"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getPreviewCallbackManager()Lcom/sec/android/app/camera/engine/CommonEngine$PreviewCallbackManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setMasterPreviewCallback(Lcom/samsung/android/camera/core2/MakerInterface$PreviewCallback;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mPreviewCallbackEnabled:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enablePreviewCallback : isLiveThumbnailPreviewEnabled = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mIsLiveThumbnailPreviewCallbackEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isMotionPhotoEnabled = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mIsLiveThumbnailPreviewCallbackEnabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    const-string p1, "enablePreviewCallback : Preview callback disabled"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setMasterPreviewCallback(Lcom/samsung/android/camera/core2/MakerInterface$PreviewCallback;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mPreviewCallbackEnabled:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public enableAgifEventCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getAgifBurstCaptureController()Lcom/sec/android/app/camera/engine/AgifCaptureController;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setAgifEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$AgifEventCallback;)V

    return-void
.end method

.method public enableBrightnessValueCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mBrightnessValueCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$BrightnessValueCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setBrightnessValueCallback(Lcom/samsung/android/camera/core2/MakerInterface$BrightnessValueCallback;)V

    return-void
.end method

.method public enableBurstPictureCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getBurstCaptureController()Lcom/sec/android/app/camera/engine/BurstCaptureController;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setBurstPictureCallback(Lcom/samsung/android/camera/core2/MakerInterface$BurstPictureCallback;)V

    return-void
.end method

.method public enableBurstShotFpsCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getBurstCaptureController()Lcom/sec/android/app/camera/engine/BurstCaptureController;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setBurstShotFpsCallback(Lcom/samsung/android/camera/core2/MakerInterface$BurstShotFpsCallback;)V

    return-void
.end method

.method enableDefaultCallbacks()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->enableAeAfStateCallbacks(Z)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->enableBurstCaptureCallbacks(Z)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->enableFaceDetectionEventCallbacks(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->enableBrightnessValueCallback(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;->NOT_SUPPORTED:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->enableLightConditionCallback(Z)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Capability;->isLiveHdrSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isLiveHdrSupported(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHdr()I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->enableHdrStateCallback(Z)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isPalmDetectionSupported(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPalmDetection()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "selfie_tone_camera"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->enablePalmDetectionCallback(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->enableRecordStateCallback(Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTakingPictureSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isSingleTakePictureSupported()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->enablePictureCallback(Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingSnapshotSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->enableVideoSnapshotCallback(Z)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMotionPhotoController()Lcom/sec/android/app/camera/engine/MotionPhotoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isPreviewCallbackRequired()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isPreviewCallbackRequired()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->enablePreviewCallback(Z)V

    :cond_7
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_INTELLIGENT_GUIDE_TIPS:Z

    if-nez v0, :cond_8

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->enableLensDirtyDetectCallback(Z)V

    :cond_8
    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_POST_PICTURE_PROCESSING:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isDynamicShotInfoSupported()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->enableDynamicShotInfoCallback(Z)V

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mPreviewSnapShotCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setPreviewSnapShotCallback(Lcom/samsung/android/camera/core2/MakerInterface$PreviewSnapShotCallback;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestEventManager()Lcom/sec/android/app/camera/engine/RequestEventManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setPreviewStateCallback(Lcom/samsung/android/camera/core2/MakerInterface$PreviewStateCallback;)V

    return-void
.end method

.method public enableDofMultiInfoCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getDofMultiInfoCallback()Lcom/samsung/android/camera/core2/MakerInterface$DofMultiInfoCallback;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setDofMultiInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$DofMultiInfoCallback;)V

    return-void
.end method

.method public enableEstimatedCaptureDurationCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mDynamicShotCaptureDurationCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setDynamicShotCaptureDurationCallback(Lcom/samsung/android/camera/core2/MakerInterface$DynamicShotCaptureDurationCallback;)V

    return-void
.end method

.method public enableFaceDetectionCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mFaceDetectionCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setFaceDetectionCallback(Lcom/samsung/android/camera/core2/MakerInterface$FaceDetectionInfoCallback;)V

    return-void
.end method

.method public enableHdrStateCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mHdrStateCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$HdrStateCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setLiveHdrStateCallback(Lcom/samsung/android/camera/core2/MakerInterface$LiveHdrStateCallback;)V

    return-void
.end method

.method public enableLightConditionCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mLightConditionCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setLightConditionCallback(Lcom/samsung/android/camera/core2/MakerInterface$LightConditionCallback;)V

    return-void
.end method

.method public enableLiveThumbnailPreviewCallback(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mIsLiveThumbnailPreviewCallbackEnabled:Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->enablePreviewCallback(Z)V

    return-void
.end method

.method public enableMotionPhotoPreviewCallback(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->enablePreviewCallback(Z)V

    return-void
.end method

.method public enablePalmDetectionCallback(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mPalmDetectionCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PalmDetectionCallbackManager;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setPalmDetectionCallback(Lcom/samsung/android/camera/core2/MakerInterface$PalmDetectionEventCallback;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->ENABLE_PALM_DETECTION:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateKey;->PALM_DETECTION_MODE:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public enablePictureCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getPictureCallbackManager()Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setPictureCallback(Lcom/samsung/android/camera/core2/MakerInterface$PictureCallback;)V

    return-void
.end method

.method public enableRawPictureCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getPictureCallbackManager()Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->getRawPictureCallbackManager()Lcom/samsung/android/camera/core2/MakerInterface$RawPictureCallback;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setRawPictureCallback(Lcom/samsung/android/camera/core2/MakerInterface$RawPictureCallback;)V

    return-void
.end method

.method public enableRecordStateCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestEventManager()Lcom/sec/android/app/camera/engine/RequestEventManager;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setRecordStateCallback(Lcom/samsung/android/camera/core2/MakerInterface$RecordStateCallback;)V

    return-void
.end method

.method public enableSensorInfoCallback(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mSensorInfoCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setEvCompensationValueCallback(Lcom/samsung/android/camera/core2/MakerInterface$EvCompensationValueCallback;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mSensorInfoCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setExposureTimeCallback(Lcom/samsung/android/camera/core2/MakerInterface$ExposureTimeCallback;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mSensorInfoCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setSensorSensitivityCallback(Lcom/samsung/android/camera/core2/MakerInterface$SensorSensitivityCallback;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mSensorInfoCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;

    :cond_3
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setColorTemperatureCallback(Lcom/samsung/android/camera/core2/MakerInterface$ColorTemperatureCallback;)V

    return-void
.end method

.method public enableSingleTakePictureCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getPictureCallbackManager()Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->getSingleTakePictureCallbackManager()Lcom/samsung/android/camera/core2/MakerInterface$SingleTakePictureCallback;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setSingleTakePictureCallback(Lcom/samsung/android/camera/core2/MakerInterface$SingleTakePictureCallback;)V

    return-void
.end method

.method public enableSwFaceDetectionEventCallback(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mFaceDetectionCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setSwFaceDetectionEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$SwFaceDetectionEventCallback;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateKey;->ENABLE_SW_FACE_DETECTION:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public enableVideoSnapshotCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setVideoSnapshotCallback(Lcom/samsung/android/camera/core2/MakerInterface$PictureCallback;)V

    return-void
.end method

.method public enableZoomMapViewPreviewCallback(ZLandroid/util/Size;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mSlavePreviewCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->access$1100(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;Landroid/util/Size;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mSlavePreviewCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setSlavePreviewCallback(Lcom/samsung/android/camera/core2/MakerInterface$PreviewCallback;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setSlavePreviewCallback(Lcom/samsung/android/camera/core2/MakerInterface$PreviewCallback;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mSlavePreviewCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->access$1200(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;)V

    :goto_0
    return-void
.end method

.method getDynamicShotCaptureDurationForCapture()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mDynamicShotCaptureDurationCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->getDynamicShotCaptureDurationForCapture()I

    move-result p0

    return p0
.end method

.method getDynamicShotInfoForCapture()Lcom/samsung/android/camera/core2/container/DynamicShotInfo;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mDynamicShotInfoCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->getDynamicShotInfoForCapture()Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    move-result-object p0

    return-object p0
.end method

.method getLightConditionForCapture()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mLightConditionCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->getLightConditionForCapture()I

    move-result p0

    return p0
.end method

.method isLiveThumbnailPreviewCallbackEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mIsLiveThumbnailPreviewCallbackEnabled:Z

    return p0
.end method

.method notifyCurrentDynamicShotCaptureDurationTime()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mDynamicShotCaptureDurationCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->access$1500(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;)V

    return-void
.end method

.method notifyCurrentLightCondition()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mLightConditionCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->access$1600(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;)V

    return-void
.end method

.method public registerHdrStateListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$HdrStateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mHdrStateCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$HdrStateCallbackManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$HdrStateCallbackManager;->registerHdrStateListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$HdrStateListener;)V

    return-void
.end method

.method public registerLightConditionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$LightConditionListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mLightConditionCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->registerLightConditionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$LightConditionListener;)V

    return-void
.end method

.method resetFlags()V
    .locals 2

    const-string v0, "CallbackManager"

    const-string v1, "resetFlags"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mPreviewCallbackEnabled:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mDynamicShotCaptureDurationCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->access$1700(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mDynamicShotInfoCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->access$1800(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mLightConditionCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->access$1900(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;)V

    return-void
.end method

.method public setBokehInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setBokehInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$BokehInfoCallback;)V

    return-void
.end method

.method public setBrightnessValueListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$BrightnessValueListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mBrightnessValueCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$BrightnessValueCallbackManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$BrightnessValueCallbackManager;->setBrightnessValueListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$BrightnessValueListener;)V

    return-void
.end method

.method public setCompositionGuideEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$CompositionGuideEventCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setCompositionGuideEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$CompositionGuideEventCallback;)V

    return-void
.end method

.method public setDistanceMeasureCallback(Lcom/samsung/android/camera/core2/MakerInterface$DistanceMeasureCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setDistanceMeasureCallback(Lcom/samsung/android/camera/core2/MakerInterface$DistanceMeasureCallback;)V

    return-void
.end method

.method public setEstimatedCaptureDurationListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$EstimatedCaptureDurationListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mDynamicShotCaptureDurationCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->setEstimatedCaptureDurationListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$EstimatedCaptureDurationListener;)V

    return-void
.end method

.method public setFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mFaceDetectionCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->setFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;)V

    return-void
.end method

.method public setFoodEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$FoodEventCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setFoodEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$FoodEventCallback;)V

    return-void
.end method

.method public setIntelligentGuideCallback(Lcom/samsung/android/camera/core2/MakerInterface$IntelligentGuideEventCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setIntelligentGuideEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$IntelligentGuideEventCallback;)V

    return-void
.end method

.method public setLensDirtyDetectListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$LensDirtyDetectListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mLensDirtyDetectCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;->access$1300(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LensDirtyDetectCallbackManager;Lcom/sec/android/app/camera/interfaces/CallbackManager$LensDirtyDetectListener;)V

    return-void
.end method

.method public setMultiViewCropRoiInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$MultiViewInfoCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setMultiViewCropRoiInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$MultiViewInfoCallback;)V

    return-void
.end method

.method public setOutFocusEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$OutFocusEventCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setOutFocusEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$OutFocusEventCallback;)V

    return-void
.end method

.method public setPanoramaEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$PanoramaEventCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setPanoramaEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$PanoramaEventCallback;)V

    return-void
.end method

.method public setPreviewSnapShotListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$PreviewSnapShotListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mPreviewSnapShotCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$PreviewSnapShotCallbackManager;->setPreviewSnapShotListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$PreviewSnapShotListener;)V

    return-void
.end method

.method public setQrCodeDetectionEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$QRCodeDetectionEventCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setQrCodeDetectionEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$QRCodeDetectionEventCallback;)V

    return-void
.end method

.method public setSceneDetectionCallback(Lcom/samsung/android/camera/core2/MakerInterface$SceneDetectionEventCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setSceneDetectionCallback(Lcom/samsung/android/camera/core2/MakerInterface$SceneDetectionEventCallback;)V

    return-void
.end method

.method public setSceneDetectionInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$SceneDetectionInfoCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setSceneDetectionInfoCallback(Lcom/samsung/android/camera/core2/MakerInterface$SceneDetectionInfoCallback;)V

    return-void
.end method

.method public setSensorInfoEventListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$SensorInfoEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mSensorInfoCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SensorInfoCallbackManager;->setSensorInfoEventListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$SensorInfoEventListener;)V

    return-void
.end method

.method public setSingleBokehEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$SingleBokehEventCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setSingleBokehEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$SingleBokehEventCallback;)V

    return-void
.end method

.method public setSlowMotionEventDetectionEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$SlowMotionEventDetectionEventCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setSlowMotionEventDetectionEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$SlowMotionEventDetectionEventCallback;)V

    return-void
.end method

.method public setSmartScanEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$SmartScanEventCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setSmartScanEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$SmartScanEventCallback;)V

    return-void
.end method

.method public setStillCaptureProgressCallback(Lcom/samsung/android/camera/core2/MakerInterface$StillCaptureProgressCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setStillCaptureProgressCallback(Lcom/samsung/android/camera/core2/MakerInterface$StillCaptureProgressCallback;)V

    return-void
.end method

.method public setSuperSlowMotionStateCallback(Lcom/samsung/android/camera/core2/MakerInterface$SuperSlowMotionStateCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setSuperSlowMotionStateCallback(Lcom/samsung/android/camera/core2/MakerInterface$SuperSlowMotionStateCallback;)V

    return-void
.end method

.method public setSwFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$SwFaceDetectionListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mFaceDetectionCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->setSwFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$SwFaceDetectionListener;)V

    return-void
.end method

.method public setWideSelfieEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$WideSelfieEventCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setWideSelfieEventCallback(Lcom/samsung/android/camera/core2/MakerInterface$WideSelfieEventCallback;)V

    return-void
.end method

.method public setZoomMapviewListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$ZoomMapViewListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mSlavePreviewCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->access$1400(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;Lcom/sec/android/app/camera/interfaces/CallbackManager$ZoomMapViewListener;)V

    return-void
.end method

.method start()V
    .locals 0

    return-void
.end method

.method stop()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mSlavePreviewCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;->access$1200(Lcom/sec/android/app/camera/engine/CallbackManagerImpl$SlavePreviewCallbackManager;)V

    return-void
.end method

.method public unregisterHdrStateListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$HdrStateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mHdrStateCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$HdrStateCallbackManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$HdrStateCallbackManager;->unregisterHdrStateListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$HdrStateListener;)V

    return-void
.end method

.method public unregisterLightConditionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$LightConditionListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mLightConditionCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->unregisterLightConditionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$LightConditionListener;)V

    return-void
.end method

.method updateCaptureInfo(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mDynamicShotCaptureDurationCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotCaptureDurationCallbackManager;->updateDynamicShotCaptureDurationForCapture()V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mDynamicShotInfoCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$DynamicShotInfoCallbackManager;->updateDynamicShotInfoForCapture()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/CallbackManagerImpl;->mLightConditionCallbackManager:Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CallbackManagerImpl$LightConditionCallbackManager;->updateLightConditionForCapture()I

    return-void
.end method
