.class Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;
.super Lcom/sec/android/app/camera/engine/request/Request;
.source "TakeProcessingPictureRequest.java"


# instance fields
.field private mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/request/Request;-><init>(Lcom/sec/android/app/camera/engine/request/MakerHolder;Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iput-object p4, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCurrentTakePictureType()Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;->PROCESSING_POST:Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->getPictureSavingType()Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->createNewOutputFilePath(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V

    :cond_0
    return-void
.end method

.method private getPictureSavingType()Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHeif()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->HEIF:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->JPEG:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    :goto_0
    return-object p0
.end method

.method static synthetic lambda$null$0(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V
    .locals 0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;->onCaptureStarted()V

    return-void
.end method

.method static synthetic lambda$null$2(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V
    .locals 0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;->onCaptureInterrupted()V

    return-void
.end method


# virtual methods
.method execute()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->getCurrentMaker()Lcom/samsung/android/camera/core2/MakerInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->getMakerPublicSettings()Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getThumbnailCallback()Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/camera/core2/MakerInterface;->setThumbnailCallback(Lcom/samsung/android/camera/core2/MakerInterface$ThumbnailCallback;Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCurrentTakePictureType()Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TakeProcessingPictureRequest : TakePictureType["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Request"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v3, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getOrientationForCapture()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v3, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v3, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v6, "100"

    invoke-static {v6}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lcom/sec/android/app/camera/engine/request/MakerPublicSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const-string v1, "TakeProcessingPictureRequest"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/sec/android/app/TraceWrapper;->asyncTraceBegin(Ljava/lang/String;I)V

    const-string v1, "CameraPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Capture - TakeProcessingPictureRequest : Start["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest$1;->$SwitchMap$com$sec$android$app$camera$interfaces$InternalEngine$TakePictureType:[I

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong TakePictureType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCurrentTakePictureType()Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine$TakePictureType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->setNextCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->discard()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getNewOutputFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/camera/core2/MakerInterface;->takePostProcessingPicture(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;Ljava/io/File;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mDynamicShotInfo:Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/camera/core2/MakerInterface;->takeProcessingPicture(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)V
    :try_end_0
    .catch Lcom/samsung/android/camera/core2/exception/CamAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/camera/core2/exception/InvalidOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$TakeProcessingPictureRequest$n9UZ5_E8Ggcdp09DsCllCKqDsBM;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/request/-$$Lambda$TakeProcessingPictureRequest$n9UZ5_E8Ggcdp09DsCllCKqDsBM;-><init>(Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    const-string v0, "IllegalStateException : Invalid device session state"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->setNextCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->discard()V

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InvalidOperationException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->setNextCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->discard()V

    return-void

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CamAccessException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;->getReason()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->handleCamAccessException(I)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->setNextCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->discard()V

    return-void
.end method

.method getBlockingRequestTimeOut()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getEstimatedCaptureDuration()I

    move-result p0

    add-int/lit16 p0, p0, 0x7530

    return p0
.end method

.method getInitialCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->CAPTURING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    return-object p0
.end method

.method isBlockingRequest()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method isSupportedCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)Z
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->PREPARING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isSupportedState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$execute$1$TakeProcessingPictureRequest()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCaptureEventListeners()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$TakeProcessingPictureRequest$QvcRnBKiwnz2hTdnbSXtgqbCVj4;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$TakeProcessingPictureRequest$QvcRnBKiwnz2hTdnbSXtgqbCVj4;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->isLongTakePicture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->isMotionPhotoAudioRecordingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;->LONG_EXPOSURE_SHUTTER_START:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/SoundManager;->playSound(Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getHapticFeedback()Lcom/sec/android/app/camera/interfaces/HapticManager;

    move-result-object p0

    const/16 v0, 0x25

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/HapticManager;->playHaptic(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onInterrupt$3$TakeProcessingPictureRequest()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCaptureEventListeners()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$TakeProcessingPictureRequest$LN0f3PkKgpkY6Jrsb3d70ti6Jn8;->INSTANCE:Lcom/sec/android/app/camera/engine/request/-$$Lambda$TakeProcessingPictureRequest$LN0f3PkKgpkY6Jrsb3d70ti6Jn8;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->isLongTakePicture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->isDraftPictureSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->isMotionPhotoAudioRecordingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;->LONG_EXPOSURE_SHUTTER_STOP:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/SoundManager;->playSound(Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getHapticFeedback()Lcom/sec/android/app/camera/interfaces/HapticManager;

    move-result-object p0

    const/16 v0, 0x30

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/HapticManager;->playHaptic(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onTimeout$4$TakeProcessingPictureRequest()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    const/16 v0, -0xa

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->handleCameraError(I)V

    return-void
.end method

.method onInterrupt()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$TakeProcessingPictureRequest$3sVcXjSwFrXDnmSHIEhEuxe6oPc;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/request/-$$Lambda$TakeProcessingPictureRequest$3sVcXjSwFrXDnmSHIEhEuxe6oPc;-><init>(Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->postToUiThread(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->setNextCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    return-void
.end method

.method onTimeout()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->setNextCaptureState(Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->setNextState(Lcom/sec/android/app/camera/interfaces/Engine$State;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/request/-$$Lambda$TakeProcessingPictureRequest$GmfDE7E_kX4rYov-t3JNVMdRHrg;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/request/-$$Lambda$TakeProcessingPictureRequest$GmfDE7E_kX4rYov-t3JNVMdRHrg;-><init>(Lcom/sec/android/app/camera/engine/request/TakeProcessingPictureRequest;)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
