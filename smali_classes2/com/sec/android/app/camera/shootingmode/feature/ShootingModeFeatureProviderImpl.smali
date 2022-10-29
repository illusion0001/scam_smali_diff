.class public Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;
.super Ljava/lang/Object;
.source "ShootingModeFeatureProviderImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingModeFeatureProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SMFeatureProvider"


# instance fields
.field private mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

.field private mCurrentShootingModeId:I

.field private mShootingModeFeatureList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;",
            ">;"
        }
    .end annotation
.end field

.field private final mShootingModeFeatureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeId:I

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl$1;-><init>(Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureMap:Ljava/util/Map;

    return-void
.end method

.method private clearInactiveShootingModeFeature()V
    .locals 5

    const-string v0, "SMFeatureProvider"

    const-string v1, "clearInactiveShootingModeFeature"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private loadShootingModeFeature(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl$Builder;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl$Builder;->build()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadShootingModeFeature : Wrong shootingModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getCameraId(II)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getCameraId(II)I

    move-result p0

    return p0
.end method

.method public getFixedOrientationForCapture()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getFixedOrientationForCapture()I

    move-result p0

    return p0
.end method

.method public getMediaRecorderProfile(I)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getMediaRecorderProfile(I)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getPreviewResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedBokehEffectType()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedBokehEffectType()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedFaceDetectionMode(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedFaceDetectionMode(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedFlashType(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedZoomType()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedZoomType()I

    move-result p0

    return p0
.end method

.method public isAeAfLockSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAeAfLockSupported(I)Z

    move-result p0

    return p0
.end method

.method public isAeAwbLockRequired(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAeAwbLockRequired(I)Z

    move-result p0

    return p0
.end method

.method public isAeLockRequired(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAeLockRequired(I)Z

    move-result p0

    return p0
.end method

.method public isAgifBurstCaptureSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAgifBurstCaptureSupported(I)Z

    move-result p0

    return p0
.end method

.method public isAngleChangeSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAngleChangeSupported(I)Z

    move-result p0

    return p0
.end method

.method public isBeautyFaceSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isBeautyFaceSupported(I)Z

    move-result p0

    return p0
.end method

.method public isBurstCaptureSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isBurstCaptureSupported(I)Z

    move-result p0

    return p0
.end method

.method public isDivideAeAfSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isDivideAeAfSupported(I)Z

    move-result p0

    return p0
.end method

.method public isEffectSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isEffectSupported(I)Z

    move-result p0

    return p0
.end method

.method public isFloatingCameraButtonSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isFloatingCameraButtonSupported()Z

    move-result p0

    return p0
.end method

.method public isHalfShutterSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isHalfShutterSupported(I)Z

    move-result p0

    return p0
.end method

.method public isHistogramSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isHistogramSupported(I)Z

    move-result p0

    return p0
.end method

.method public isLevelMeterSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isLevelMeterSupported()Z

    move-result p0

    return p0
.end method

.method public isLiveHdrSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isLiveHdrSupported(I)Z

    move-result p0

    return p0
.end method

.method public isLowLightDetectionSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isLowLightDetectionSupported(I)Z

    move-result p0

    return p0
.end method

.method public isMotionPhotoSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isMotionPhotoSupported()Z

    move-result p0

    return p0
.end method

.method public isPalmDetectionSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isPalmDetectionSupported(I)Z

    move-result p0

    return p0
.end method

.method public isPreviewCallbackRequired()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isPreviewCallbackRequired()Z

    move-result p0

    return p0
.end method

.method public isQuickTakeSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isQuickTakeSupported()Z

    move-result p0

    return p0
.end method

.method public isRecordingMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p0

    return p0
.end method

.method public isRecordingSnapshotSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingSnapshotSupported()Z

    move-result p0

    return p0
.end method

.method public isRecordingSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingSupported()Z

    move-result p0

    return p0
.end method

.method public isReviewSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isReviewSupported()Z

    move-result p0

    return p0
.end method

.method public isSensorCropSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isSensorCropSupported(I)Z

    move-result p0

    return p0
.end method

.method public isSingleAfRequired(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isSingleAfRequired(I)Z

    move-result p0

    return p0
.end method

.method public isSingleTakePictureSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isSingleTakePictureSupported()Z

    move-result p0

    return p0
.end method

.method public isSuperResolutionSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isSuperResolutionSupported(I)Z

    move-result p0

    return p0
.end method

.method public isSwitchFacingWhileRecordingSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isSwitchFacingWhileRecordingSupported()Z

    move-result p0

    return p0
.end method

.method public isTakingPictureSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTakingPictureSupported()Z

    move-result p0

    return p0
.end method

.method public isTakingPostProcessingPictureSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTakingPostProcessingPictureSupported()Z

    move-result p0

    return p0
.end method

.method public isTouchAeSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTouchAeSupported(I)Z

    move-result p0

    return p0
.end method

.method public isTouchEvSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTouchEvSupported(I)Z

    move-result p0

    return p0
.end method

.method public isTrackingAfSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTrackingAfSupported(I)Z

    move-result p0

    return p0
.end method

.method public isWatchModeSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isWatchModeSupported()Z

    move-result p0

    return p0
.end method

.method public isZoomBarSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isZoomBarSupported(I)Z

    move-result p0

    return p0
.end method

.method public isZoomSupported(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isZoomSupported(I)Z

    move-result p0

    return p0
.end method

.method public onLowMemory(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->clearInactiveShootingModeFeature()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->clearInactiveShootingModeFeature()V

    return-void
.end method

.method public setShootingMode(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeId:I

    if-eq v0, p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShootingMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMFeatureProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mShootingModeFeatureList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->loadShootingModeFeature(I)V

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    :goto_0
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl;->mCurrentShootingModeId:I

    :cond_1
    return-void
.end method
