.class Lcom/sec/android/app/camera/engine/request/CapabilityImpl;
.super Ljava/lang/Object;
.source "CapabilityImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/Capability;


# instance fields
.field private mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

.field private mFixedEffectFps:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAeRegionsSupported:Z

.field private mIsAfRegionsSupported:Z

.field private mIsAfSupported:Z

.field private mIsCafSupported:Z

.field private mIsFaceDetectionFullModeSupported:Z

.field private mIsFaceDetectionSimpleModeSupported:Z

.field private mIsFixedFocusLens:Z

.field private mIsLensDistortionCorrectionSupported:Z

.field private mIsMacroSupported:Z

.field private mVariableEffectFps:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsFixedFocusLens:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsAfSupported:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsCafSupported:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsMacroSupported:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsAeRegionsSupported:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsAfRegionsSupported:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsFaceDetectionFullModeSupported:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsFaceDetectionSimpleModeSupported:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsLensDistortionCorrectionSupported:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mFixedEffectFps:Landroid/util/Range;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mVariableEffectFps:Landroid/util/Range;

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->checkFixedFocusLens()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->checkAfMode()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->checkAfRegionsSupported()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->checkAeRegionsSupported()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->checkAvailableEffectFps()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->checkFaceDetectionMode()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->checkLensDistortionCorrectionMode()V

    return-void
.end method

.method private checkAeRegionsSupported()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->getControlMaxRegionsAe()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsAeRegionsSupported:Z

    :cond_0
    return-void
.end method

.method private checkAfMode()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->getControlAfAvailableModes()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget v3, v0, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    const/4 v5, 0x4

    if-eq v3, v5, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsCafSupported:Z

    goto :goto_1

    :cond_1
    iput-boolean v4, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsMacroSupported:Z

    goto :goto_1

    :cond_2
    iput-boolean v4, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsAfSupported:Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private checkAfRegionsSupported()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->getControlMaxRegionsAf()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsAfRegionsSupported:Z

    :cond_0
    return-void
.end method

.method private checkAvailableEffectFps()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungControlEffectAeAvailableTargetFpsRanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mFixedEffectFps:Landroid/util/Range;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mVariableEffectFps:Landroid/util/Range;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkFaceDetectionMode()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->getStatisticsInfoAvailableFaceDetectModes()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsFaceDetectionFullModeSupported:Z

    goto :goto_1

    :cond_1
    iput-boolean v4, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsFaceDetectionSimpleModeSupported:Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private checkFixedFocusLens()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->getLensInfoMinimumFocusDistance()Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/CamCapability;->getControlMaxRegionsAf()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsFixedFocusLens:Z

    :cond_2
    return-void
.end method

.method private checkLensDistortionCorrectionMode()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungControlLensDistortionCorrectionAvailableModes()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsLensDistortionCorrectionSupported:Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getZoomListIndex(I)I
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "not supported zoom type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public dumpCapability()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->dumpCameraCharacteristics()V

    return-void
.end method

.method public getAeCompensationStep()Landroid/util/Rational;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getControlAeCompensationStep()Landroid/util/Rational;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableEffectPreviewFpsRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mVariableEffectFps:Landroid/util/Range;

    return-object p0
.end method

.method public getAvailableEffectRecordingFpsRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mFixedEffectFps:Landroid/util/Range;

    return-object p0
.end method

.method public getAvailableJpegPictureSizes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungScalerAvailableJpegPictureSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableJpegPictureSizes(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungFeatureSensorCropAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungScalerAvailableJpegPictureSizes(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungScalerAvailableJpegPictureSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableLensApertures()[F
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getLensInfoAvailableApertures()[F

    move-result-object p0

    return-object p0
.end method

.method public getAvailablePreviewSizes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungScalerAvailablePreviewSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAvailablePreviewSizes(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungFeatureSensorCropAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungScalerAvailablePreviewSizes(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungScalerAvailablePreviewSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableThumbnailSizes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungScalerAvailableThumbnailSizes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHighSpeedRecordingTimeLimit(Landroid/util/Size;I)I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungScalerAvailableHighSpeedVideoConfigurations()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/container/HighSpeedVideoStreamConfig;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/HighSpeedVideoStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/HighSpeedVideoStreamConfig;->getFps()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/HighSpeedVideoStreamConfig;->getTimeLimit()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getHorizontalViewAngle(F)F
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungLensInfoHorizontalViewAngle(F)F

    move-result p0

    return p0
.end method

.method public getLensFacing()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getLensFacing()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getRecordingTimeLimit(Landroid/util/Size;I)I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungScalerAvailableVideoConfigurations()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/container/VideoStreamConfig;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/VideoStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/VideoStreamConfig;->getFps()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/VideoStreamConfig;->getTimeLimit()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getScalerAvailableMaxDigitalZoom()F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->getScalerAvailableMaxDigitalZoom(I)F

    move-result p0

    return p0
.end method

.method public getScalerAvailableMaxDigitalZoom(I)F
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->getZoomListIndex(I)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungScalerAvailableMaxDigitalZoomList()[F

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_1

    array-length v1, v0

    if-gt v1, p1, :cond_0

    goto :goto_0

    :cond_0
    aget p0, v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getScalerAvailableMaxDigitalZoom()Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_1
    return p0
.end method

.method public getScalerAvailableMinDigitalZoom()F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->getScalerAvailableMinDigitalZoom(I)F

    move-result p0

    return p0
.end method

.method public getScalerAvailableMinDigitalZoom(I)F
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->getZoomListIndex(I)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungScalerAvailableMinDigitalZoomList()[F

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_1

    array-length v1, v0

    if-gt v1, p1, :cond_0

    goto :goto_0

    :cond_0
    aget p0, v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungScalerAvailableMinDigitalZoom()Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_1
    return p0
.end method

.method public getSensorInfoActiveArraySize()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getSensorInfoActiveArraySize(Z)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungFeatureSensorCropAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungFeatureDynamicFovAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/CamCapability;->getSensorInfoActiveArraySize(Ljava/lang/Integer;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getSensorInfoExposureTimeRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungSensorInfoExposureTimeRange()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public getSensorInfoSensitivityRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungSensorInfoSensitivityRange()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public getSensorOrientation()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSensorOrientation()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSuperSlowMotionImageCount(Landroid/util/Size;)I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungControlSsmRecordableImageCount()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/container/SsmCapability;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/SsmCapability;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/SsmCapability;->getImageCount()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getVdisCropRatio(Landroid/util/Size;I)F
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungScalerAvailableVideoConfigurations()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/container/VideoStreamConfig;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/VideoStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/VideoStreamConfig;->getFps()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/VideoStreamConfig;->getVdisRatio()I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getVerticalViewAngle(F)F
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungLensInfoVerticalViewAngle(F)F

    move-result p0

    return p0
.end method

.method public getWbLevelRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungControlWbLevelRange()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public isAeAfLockSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsFixedFocusLens:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsAfSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsAfRegionsSupported:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsAeRegionsSupported:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAfSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsAfSupported:Z

    return p0
.end method

.method public isBeautyFaceSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungFeatureBeautyFaceAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isBokehSpecialEffectSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungFeatureBokehSpecialEffectAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isBokehSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungFeatureBokehAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isCafSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsCafSupported:Z

    return p0
.end method

.method public isDepthSupported()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungDepthAvailableDepthSizes(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDynamicFovSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungFeatureDynamicFovAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isDynamicShotInfoSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungFeatureDynamicShotInfoAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isFaceDetectionFullModeSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsFaceDetectionFullModeSupported:Z

    return p0
.end method

.method public isFaceDetectionSimpleModeSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsFaceDetectionSimpleModeSupported:Z

    return p0
.end method

.method public isFaceDetectionSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsFaceDetectionFullModeSupported:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsFaceDetectionSimpleModeSupported:Z

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

.method public isFilterRecordingUsingVideoMakerSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungFeatureVideoPreviewCb()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isHdr10RecordingAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungFeatureHDR10RecordingAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isLensDistortionCorrectionSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsLensDistortionCorrectionSupported:Z

    return p0
.end method

.method public isLiveHdrSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungControlLiveHdrAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isMacroSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsMacroSupported:Z

    return p0
.end method

.method public isMultiAfSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungControlMultiAfAvailableModes()[I

    move-result-object p0

    array-length p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPhaseAfSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungControlPafAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isPreviewStabilizationSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungFeaturePhotoPreviewVdis()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isRequestPartialResultSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getRequestPartialResultAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSceneOptimizerSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungFeatureSceneDetectInHal()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSecondPictureConfigSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungFeatureSecondPictureConfigAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSelfieToneModeSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungFeaturePersonalPreset()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSensorCropSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungFeatureSensorCropAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSingleTakeSecondPictureConfigSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungFeatureStpSecondPictureAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSmoothZoomSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungFeatureSmoothZoomAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSuperSlowMotionFrcSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungFeatureFrcSsmAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSuperSlowMotionGmcSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungFeatureSuperSlowMotionGmcAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isSuperSlowMotionSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungFeatureSuperSlowMotionAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isTouchAfSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsFixedFocusLens:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsAfSupported:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mIsAfRegionsSupported:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVariableLensApertureSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getLensInfoVariableLensApertureAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isVideoBeautyFaceSupported(Landroid/util/Size;I)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungFeatureVideoBeautyFaceAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungScalerAvailableVideoBeautyConfigurations()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/container/VideoStreamConfig;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/VideoStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/VideoStreamConfig;->getFps()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_2

    return v2

    :cond_3
    return v1
.end method

.method public isVideoBeautySnapshotSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungFeatureVideoBeautySnapNotSupport()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isVideoBokehEffectSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungFeatureVideoBokehAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isZoomInOutPhotoSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/CapabilityImpl;->mCamCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapability;->getSamsungFeatureZoomInOutPhotoAvailable()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
