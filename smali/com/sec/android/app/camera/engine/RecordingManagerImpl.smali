.class Lcom/sec/android/app/camera/engine/RecordingManagerImpl;
.super Ljava/lang/Object;
.source "RecordingManagerImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/RecordingManager;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/sec/android/app/camera/interfaces/InternalEngine$RecordingEventListener;
.implements Lcom/samsung/android/camera/core2/MakerInterface$PictureCallback;


# static fields
.field private static final CHECK_RECORDING_TICK_TIME_INTERVAL:I = 0x64

.field private static final MAX_VIDEO_FILE_SIZE:J = 0xffffffffL

.field private static final TAG:Ljava/lang/String; = "RecordingManagerImpl"


# instance fields
.field private final mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentPreparedStorage:I

.field private mCurrentRecordingFileSize:J

.field private mCurrentRecordingFileTimeInMs:J

.field private final mDirectorsViewManager:Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;

.field private final mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private mInfoDisplayName:Ljava/lang/String;

.field private mInfoMimeType:Ljava/lang/String;

.field private mInfoTitle:Ljava/lang/String;

.field private mInitialRecordingFacing:I

.field private mIsEffectRecordingPreview:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mIsMicrophonePlugged:Z

.field private mIsMultiMicZoomFocusEnabled:Z

.field private mIsNeedToRestoreTorchSetting:Z

.field private mIsNeedToRestoreTorchSettingForRecording:Z

.field private mIsNoInputFrameError:Z

.field private mIsRecordingFailedByVideoCapability:Z

.field private mIsRecordingFailedByWifiDisplayNotAllowed:Z

.field private mIsRecordingRestrictedByCallState:Z

.field private mIsRecordingTimeLimitedByLowStorage:Z

.field private mIsRecordingTimeLimitedByProfile:Z

.field private mIsRecordingTimeLimitedBySystem:Z

.field private mIsRestartingRecordingByEsdError:Z

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mLocation:Landroid/location/Location;

.field private mMaxRecordingTimeLimitInMs:I

.field private mMaxVideoFileSize:J

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private final mMediaRecorderPrepareLock:Ljava/lang/Object;

.field private mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

.field private final mMediaRecorderReleaseLock:Ljava/lang/Object;

.field private mNextTempVideoFilename:Ljava/lang/String;

.field private mPersistentInputSurface:Landroid/view/Surface;

.field private mPreviousBackZoomValue:I

.field private mPreviousFrontZoomValue:I

.field private mPreviousRecordingTimeInMs:J

.field private mPreviousSuperSteadyZoomValue:I

.field private mPreviousTorchSetting:I

.field private mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

.field private mRecordingState:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

.field private final mRecordingTickRunnable:Ljava/lang/Runnable;

.field private mTempVideoFilename:Ljava/lang/String;

.field private mTickInterval:I

.field private mTotalRecordingTimeInMs:J

.field private mVibratorIntensity:I

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilenameWithPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderReleaseLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderPrepareLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingState:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mTotalRecordingTimeInMs:J

    iput-wide v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCurrentRecordingFileTimeInMs:J

    iput-wide v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousRecordingTimeInMs:J

    iput-wide v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCurrentRecordingFileSize:J

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedByLowStorage:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedByProfile:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedBySystem:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingRestrictedByCallState:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingFailedByVideoCapability:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingFailedByWifiDisplayNotAllowed:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSettingForRecording:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSetting:Z

    iput-wide v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxVideoFileSize:J

    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRestartingRecordingByEsdError:Z

    iput v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mVibratorIntensity:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mTickInterval:I

    new-instance v1, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$1;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingTickRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mLocation:Landroid/location/Location;

    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsNoInputFrameError:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsMultiMicZoomFocusEnabled:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsMicrophonePlugged:Z

    new-instance v0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$2;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    new-instance p2, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;

    invoke-direct {p2, p1}, Lcom/sec/android/app/camera/engine/DirectorsViewManagerImpl;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mDirectorsViewManager:Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousRecordingTimeInMs:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCurrentRecordingFileTimeInMs:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsMultiMicZoomFocusEnabled:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsMicrophonePlugged:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingRestrictedByCallState:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->onRecordingRestricted(Z)V

    return-void
.end method

.method static synthetic access$1502(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingFailedByVideoCapability:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingFailedByWifiDisplayNotAllowed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mTotalRecordingTimeInMs:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;J)J
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mTotalRecordingTimeInMs:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mTickInterval:I

    return p0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCurrentRecordingFileSize:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingTickRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Lcom/sec/android/app/camera/engine/MediaRecorderProfile;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object p0
.end method

.method private buildMediaRecorderProfile(Lcom/sec/android/app/camera/interfaces/Resolution;)V
    .locals 10

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorRequired()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Capability;->getAvailableEffectRecordingFpsRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v8

    new-instance v9, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->isHevcEnabled()Z

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->isHdr10RecordingEnabled()Z

    move-result v6

    move-object v1, v9

    move-object v2, p1

    move v3, v7

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;-><init>(Lcom/sec/android/app/camera/interfaces/Resolution;IZZZ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildMediaRecorderProfile - resolution ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], effect processor ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecordingManagerImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->isHevcEnabled()Z

    move-result v1

    const/4 v2, 0x5

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->isHdr10RecordingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v9, v2}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->videoEncoder(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->isHdr10RecordingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xa

    invoke-virtual {v9, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->recordingMode(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xe

    invoke-virtual {v9, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->recordingMode(I)V

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v9, v7}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->videoFrameRate(I)V

    :cond_4
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->is60FpsCamcorderResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p1, 0x3c

    invoke-virtual {v9, p1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->videoFrameRate(I)V

    invoke-virtual {v9, p1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->captureRate(I)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->is24FpsCamcorderResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0x18

    invoke-virtual {v9, p1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->videoFrameRate(I)V

    invoke-virtual {v9, p1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->captureRate(I)V

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getMediaRecorderProfile(I)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v4, "recordingCaptureRate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x4

    goto :goto_4

    :sswitch_1
    const-string v4, "recordingBitrate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_4

    :sswitch_2
    const-string v4, "recordingAudioBitrate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x6

    goto :goto_4

    :sswitch_3
    const-string v4, "recordingMode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v6

    goto :goto_4

    :sswitch_4
    const-string v4, "recordingAudioDisable"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x3

    goto :goto_4

    :sswitch_5
    const-string v4, "recordingAudioSamplingRate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    goto :goto_4

    :sswitch_6
    const-string v4, "recordingFps"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v5

    goto :goto_4

    :cond_8
    :goto_3
    move v1, v3

    :goto_4
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {v9, v0}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->audioEncodingBitrate(I)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {v9, v0}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->audioSamplingRate(I)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {v9, v0}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->captureRate(I)V

    goto :goto_2

    :pswitch_3
    if-ne v0, v6, :cond_7

    invoke-virtual {v9}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->disableAudioEncoding()V

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {v9, v0}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->videoFrameRate(I)V

    goto/16 :goto_2

    :pswitch_5
    const/4 v1, 0x7

    const/16 v3, 0x9

    if-ne v0, v1, :cond_d

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Capability;->isSuperSlowMotionSupported()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result v1

    if-ne v1, v6, :cond_b

    sget-boolean v1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SUPER_SLOW_MOTION_FRC_FIXED:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionFrc()I

    move-result v1

    if-ne v1, v6, :cond_a

    :cond_9
    move v0, v3

    :cond_a
    invoke-virtual {v9}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->disableAudioEncoding()V

    goto :goto_5

    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionRecordingMode()I

    move-result v1

    if-ne v1, v5, :cond_d

    const/16 v0, 0x8

    goto :goto_5

    :cond_c
    invoke-virtual {v9}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->disableAudioEncoding()V

    move v0, v3

    :cond_d
    :goto_5
    invoke-virtual {v9, v0}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->recordingMode(I)V

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {v9, v0}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->videoEncodingBitrate(I)V

    goto/16 :goto_2

    :cond_e
    if-eqz v8, :cond_f

    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->updateAttachVideoProfile(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)V

    :cond_f
    invoke-virtual {v9}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->build()Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6cf6fac8 -> :sswitch_6
        -0x4ec59994 -> :sswitch_5
        -0x46664d3d -> :sswitch_4
        -0x31e534cc -> :sswitch_3
        0x4fe30b48 -> :sswitch_2
        0x50cc343c -> :sswitch_1
        0x7ae32e95 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeRecordingState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingState:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingState:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    return-void
.end method

.method private checkRequestedAttachSize()Z
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedMediaRecorderProfile()Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getVideoBitrate()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getVideoBitrate()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getVideoEncodingBitrate()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getAudioBitrate()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getAudioBitrate()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getAudioEncodingBitrate()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    :goto_1
    add-int/2addr v1, v0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long p0, v2, v4

    if-gez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkRequestedAttachSize - size limit failed. finish. requestedRecordingSizeLimit : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", minBytesToRecordOneSec : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RecordingManagerImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private cleanupTempFiles(Z)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mNextTempVideoFilename:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mTempVideoFilename:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mNextTempVideoFilename:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/camera/util/RecordingUtil;->cleanupFile(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mNextTempVideoFilename:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mTempVideoFilename:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/camera/util/RecordingUtil;->cleanupFile(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mTempVideoFilename:Ljava/lang/String;

    return-void
.end method

.method private clearFileResources()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->isRequestedFileUriForAttachMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->closeFileDescriptor()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mTempVideoFilename:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/RecordingUtil;->cleanupFile(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mTempVideoFilename:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mVideoFilenameWithPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/RecordingUtil;->cleanupFile(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mVideoFilenameWithPath:Ljava/lang/String;

    return-void
.end method

.method private closeFileDescriptor()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method private createMediaRecorder()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    :cond_0
    return-void
.end method

.method private createNewVideoPath(ILjava/lang/String;)Ljava/lang/String;
    .locals 13

    invoke-static {p1}, Lcom/sec/android/app/camera/util/RecordingUtil;->createVideoDirectory(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecordingManagerImpl"

    if-nez p1, :cond_0

    const-string p0, "recording directory make fail"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string/jumbo v1, "video/3gpp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, ".3gp"

    goto :goto_0

    :cond_1
    const-string p2, ".mp4"

    const-string/jumbo v1, "video/mp4"

    :goto_0
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getCurrentTimeInMillis()J

    move-result-wide v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string/jumbo v5, "yyyyMMdd_kkmmss"

    invoke-static {v5, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v6, "Duplicated file name found"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v2, v3}, Ljava/util/Date;->setTime(J)V

    invoke-static {v5, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v11, 0x1

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "New file name created"

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v12, v8

    move-object v8, v7

    move-object v7, v10

    move-object v10, v11

    move v11, v12

    goto :goto_1

    :cond_2
    iput-object v6, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mInfoTitle:Ljava/lang/String;

    iput-object v7, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mInfoDisplayName:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mInfoMimeType:Ljava/lang/String;

    return-object v8
.end method

.method private getMaxRecordingTimeLimitBySystem(II)I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    const/16 v1, 0xc

    if-eq p2, v1, :cond_1

    const/16 v1, 0xd

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/camera/interfaces/Capability;->getRecordingTimeLimit(Landroid/util/Size;I)I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/camera/interfaces/Capability;->getHighSpeedRecordingTimeLimit(Landroid/util/Size;I)I

    move-result p0

    :goto_1
    mul-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method private getMediaBitrate()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getVideoEncodingBitrate()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getVideoFrameRate()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getVideoFrameRate()I

    move-result v1

    div-int/2addr v1, v2

    mul-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->isAudioEncodingDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getAudioEncodingBitrate()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method private getMultiMicFacing(I)I
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    :cond_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getMultiMicOrientation(I)I
    .locals 2

    const/16 p0, 0x10e

    if-eqz p1, :cond_3

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_2

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_1

    if-eq p1, p0, :cond_0

    return p0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    :cond_3
    return p0
.end method

.method private getVideoMimeString(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const-string/jumbo p0, "video/mp4"

    return-object p0

    :cond_0
    const-string/jumbo p0, "video/3gpp"

    return-object p0
.end method

.method private handleRecordingError(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRecordingError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->releaseMediaRecorder()V

    const/16 v0, -0xb

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string p1, "handleRecordingError - Unknown Error"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-boolean p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingFailedByWifiDisplayNotAllowed:Z

    const-string v2, "Return, camera is finishing"

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingFailedByWifiDisplayNotAllowed:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingFailedByVideoCapability:Z

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, v0, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onCancelRecordingRequested()V

    goto/16 :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingFailedByVideoCapability:Z

    if-eqz p1, :cond_4

    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingFailedByVideoCapability:Z

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onCancelRecordingRequested()V

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;->ERROR_RECORDING_START_FAIL:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogId;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->clearFileResources()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mTotalRecordingTimeInMs:J

    iput-wide v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCurrentRecordingFileSize:J

    iput-wide v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCurrentRecordingFileTimeInMs:J

    iput-wide v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousRecordingTimeInMs:J

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$gMZiMku7-FGunp7CBdr4uROdFwM;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$gMZiMku7-FGunp7CBdr4uROdFwM;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$WwMrWvTkLkpsKR7kfAQgfQ5CqlE;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$WwMrWvTkLkpsKR7kfAQgfQ5CqlE;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x10
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private insertToDBForVideo()V
    .locals 7

    const-string v0, "duration"

    const-string v1, "RecordingManagerImpl"

    const-string v2, "insertDBForVideo start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/engine/LastContentData;

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mInfoTitle:Ljava/lang/String;

    const-string/jumbo v5, "title"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mInfoDisplayName:Ljava/lang/String;

    const-string v5, "_display_name"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getCurrentTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "datetaken"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mInfoMimeType:Ljava/lang/String;

    const-string v5, "mime_type"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mVideoFilenameWithPath:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/StorageUtils;->replaceSDStoragePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_data"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "recordingtype"

    const-string v5, "0"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/LastContentData;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "_size"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/Resolution;->getString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "resolution"

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/Resolution;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "width"

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v4}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "height"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->isHevcEnabled()Z

    move-result v4

    const-string/jumbo v5, "video_codec_info"

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->isHdr10RecordingEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "H.264"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v4, "H.265"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v4, "audio_codec_info"

    const-string v5, "AAC"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mLocation:Landroid/location/Location;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v4}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->isLocationAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "latitude"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "longitude"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_2
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/LastContentData;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "orientation"

    const/16 v6, 0x18

    invoke-virtual {v4, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    :try_start_1
    const-string v5, "setDataSource failed."

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v5, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCurrentRecordingFileTimeInMs:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "do not update DB."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :try_start_2
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v4

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/StorageUtils;->getContentUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/engine/LastContentData;->setContentUri(Landroid/net/Uri;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;->VIDEO:Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/engine/LastContentData;->setContentType(Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    const-string v0, "ContentResolver insert failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_2
    const-string v0, "insert failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/LastContentData;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/BroadcastUtil;->sendMediaScanBroadcast(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_4

    :catch_3
    const-string v0, "Not enough space in database"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v2, 0x7f11031d

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getContentUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/BroadcastUtil;->sendNewVideoBroadcast(Landroid/content/Context;Landroid/net/Uri;)V

    const-string p0, "insertDBForVideo end"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_5
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    throw p0
.end method

.method private isHevcEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHevc()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRequestedFileUriForAttachMode()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedSaveUri()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isSetFlipModeRequired(Lcom/sec/android/app/camera/interfaces/Resolution;I)Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SAVE_AS_FLIPPED_IN_MEDIA_RECORDER:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSaveAsFlipped()I

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-static {p2, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderEffectAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoFilter()I

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-static {p2, p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderEffectAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoMyFilter()I

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private isVideoBokehEffectEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedBokehEffectType()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;->VIDEO_BOKEH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$setFpsRange$9(Landroid/util/Range;Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$setLightConditionMode$10(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_LIGHT_CONDITION_ENABLE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_LIGHT_CONDITION_ENABLE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$setRecordingMotionSpeed$11(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_RECORDING_MOTION_SPEED_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Lcom/sec/android/app/camera/util/MakerParameter;->getRecordingMotionSpeed(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_RECORDING_MOTION_SPEED_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Lcom/sec/android/app/camera/util/MakerParameter;->getRecordingMotionSpeed(I)I

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

.method static synthetic lambda$setRecordingOverheatLevel$12(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_SSRM_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_SSRM_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private notifyRecordingInfo(Z)V
    .locals 14

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    if-nez v0, :cond_0

    const-string p0, "RecordingManagerImpl"

    const-string p1, "notifyRecordingInfo return - MediaRecorder is not prepared yet"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getVideoFrameRate()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getVideoWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getVideoHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/16 v11, 0x3c

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    if-ne v0, v11, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-ne p1, v3, :cond_2

    move p1, v4

    goto :goto_1

    :cond_2
    move p1, v3

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHdr()I

    move-result v12

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoStabilisation()I

    move-result v13

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorRequired()Z

    move-result v10

    const-string v4, "Camera_recording_UHD60fps"

    move v6, p1

    move v7, v12

    move v8, v13

    move-object v9, v1

    invoke-static/range {v3 .. v10}, Lcom/sec/android/app/camera/util/BroadcastUtil;->notifyRecordingInfo(Landroid/content/Context;Ljava/lang/String;ZIIILjava/lang/String;Z)V

    :cond_3
    if-lt v0, v11, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorRequired()Z

    move-result v10

    const-string v4, "Camera_recording_over_60fps"

    move v6, p1

    move v7, v12

    move v8, v13

    move-object v9, v1

    invoke-static/range {v3 .. v10}, Lcom/sec/android/app/camera/util/BroadcastUtil;->notifyRecordingInfo(Landroid/content/Context;Ljava/lang/String;ZIIILjava/lang/String;Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorRequired()Z

    move-result v10

    const-string v4, "Camera_recording"

    move v6, p1

    move v7, v12

    move v8, v13

    move-object v9, v1

    invoke-static/range {v3 .. v10}, Lcom/sec/android/app/camera/util/BroadcastUtil;->notifyRecordingInfo(Landroid/content/Context;Ljava/lang/String;ZIIILjava/lang/String;Z)V

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Camera_recording_UHD60fps"

    invoke-static {p1, v1, v4}, Lcom/sec/android/app/camera/util/BroadcastUtil;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_6
    if-lt v0, v11, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Camera_recording_over_60fps"

    invoke-static {p1, v0, v4}, Lcom/sec/android/app/camera/util/BroadcastUtil;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "Camera_recording"

    invoke-static {p0, p1, v4}, Lcom/sec/android/app/camera/util/BroadcastUtil;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_2
    return-void
.end method

.method private onMaxFileSizeApproaching()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxVideoFileSize:J

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    const-string v1, "RecordingManagerImpl"

    if-gez v0, :cond_0

    const-string p0, "onMaxFileSizeApproaching return -- max video file size is under 4GB"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/StorageUtils;->getAvailableStorage(I)J

    move-result-wide v2

    long-to-float v0, v2

    const v2, 0x4f8ccccd

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    const-string p0, "onMaxFileSizeApproaching return -- remain storage is under 4GB"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/RecordingUtil;->createTempVideoFilePath(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mNextTempVideoFilename:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mNextTempVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/media/MediaRecorder;->setNextOutputFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private onNextOutputFileStarted()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "4GB"

    aput-object v5, v3, v4

    const v4, 0x7f11050c

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;Ljava/lang/String;I)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/CameraToast;->show()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousRecordingTimeInMs:J

    iget-wide v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCurrentRecordingFileTimeInMs:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousRecordingTimeInMs:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCurrentRecordingFileTimeInMs:J

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->startRecordingTickTimer()V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->registerVideo(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mNextTempVideoFilename:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mTempVideoFilename:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v0

    const-string/jumbo v1, "video/mp4"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->createNewVideoPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mVideoFilenameWithPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->updateMaxVideoFileSize()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->updateMaxRecordingTime()V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedBySystem:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousRecordingTimeInMs:J

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    :cond_0
    return-void
.end method

.method private onRecordingRestricted(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz v0, :cond_1

    const-string v0, "RecordingManagerImpl"

    if-eqz p1, :cond_0

    const-string p1, "onRecordingRestricted : true"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingRestricted(Z)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingRestrictedByCallState:Z

    if-nez p1, :cond_1

    const-string p1, "onRecordingRestricted : false"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingRestricted(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private registerVideo(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerVideo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/engine/LastContentData;

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->isRequestedFileUriForAttachMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->closeFileDescriptor()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->updateVideoThumbnail()V

    sget-object p1, Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;->VIDEO:Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/engine/LastContentData;->setContentType(Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->saveVideoFile()V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/LastContentData;->getFilePath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "mCurrentVideoFilename NULL"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->insertToDBForVideo()V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onVideoSaved()V

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->cleanupTempFiles(Z)V

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->updateVideoThumbnail()V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$74CF_wugp3Ngeu9DbddquHa4fCo;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$74CF_wugp3Ngeu9DbddquHa4fCo;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;Lcom/sec/android/app/camera/engine/LastContentData;)V

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private restoreTorchFlashMode()V
    .locals 3

    sget-object v0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$3;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingModeFeature$SupportedFlashType:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTorchFlashMode(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTorchFlashEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTorch(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousTorchSetting:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTorch(I)V

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSettingForRecording:Z

    return-void
.end method

.method private saveVideoFile()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mTempVideoFilename:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mVideoFilenameWithPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/RecordingUtil;->renameVideoFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mVideoFilenameWithPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/RecordingUtil;->makeHighLightVideoFile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/engine/LastContentData;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mVideoFilenameWithPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/LastContentData;->setFilePath(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mVideoFilenameWithPath:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/camera/util/RecordingUtil;->validateFile(Ljava/lang/String;)V

    return-void
.end method

.method private setEffectRecordingSurface(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getEffectController()Lcom/sec/android/app/camera/engine/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/EffectController;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getEffectController()Lcom/sec/android/app/camera/engine/EffectController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/EffectController;->setRecordingSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private setPreviousZoomValue(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput p2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousBackZoomValue:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p2, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousFrontZoomValue:I

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousFrontZoomValue:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p2, Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettingsBase$Key;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousBackZoomValue:I

    :cond_1
    :goto_0
    return-void
.end method

.method private startRecordingTickTimer()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopInactivityTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getTotalRecordingTimeInMs()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingTick(JJ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "camera.action.RECORDING_START_TIMER_TICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private updateAttachVideoProfile(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedMediaRecorderProfile()Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "RecordingManagerImpl"

    const-string/jumbo p1, "there is no extra information for attach video."

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getVideoEncoder()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getVideoEncoder()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->videoEncoder(I)V

    :cond_1
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getVideoFrameRate()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getVideoFrameRate()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->videoFrameRate(I)V

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getVideoFrameRate()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->captureRate(I)V

    :cond_2
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getVideoBitrate()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getVideoBitrate()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->videoEncodingBitrate(I)V

    :cond_3
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getAudioEncoder()I

    move-result v0

    if-ltz v0, :cond_4

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getAudioEncoder()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->audioEncoder(I)V

    :cond_4
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getAudioBitrate()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getAudioBitrate()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->audioEncodingBitrate(I)V

    :cond_5
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getAudioChannels()I

    move-result v0

    if-lez v0, :cond_6

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getAudioChannels()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->audioChannels(I)V

    :cond_6
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getAudioSamplingRate()I

    move-result v0

    if-lez v0, :cond_7

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getAudioSamplingRate()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->audioSamplingRate(I)V

    :cond_7
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getFileSizeInterval()I

    move-result v0

    if-lez v0, :cond_8

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getFileSizeInterval()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->fileSizeInterval(I)V

    :cond_8
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getOutputFormat()I

    move-result v0

    if-ltz v0, :cond_9

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getOutputFormat()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->outputFormat(I)V

    :cond_9
    return-void
.end method

.method private updateLocationInfo()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->isLocationAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mLocation:Landroid/location/Location;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v0, v2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mLocation:Landroid/location/Location;

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float p0, v2

    invoke-virtual {v1, v0, p0}, Landroid/media/MediaRecorder;->setLocation(FF)V

    :cond_0
    return-void
.end method

.method private updateMaxRecordingTime()V
    .locals 10

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getMediaBitrate()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/StorageUtils;->getRemainTimeInMS(II)J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getMediaBitrate()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/StorageUtils;->getRemainTimeInMS(II)J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getVideoFrameRate()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getRecordingMode()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getMaxRecordingTimeLimitBySystem(II)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getMaxDuration()I

    move-result v3

    const v4, 0x36ee80

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ge v1, v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v6

    :goto_1
    iput-boolean v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedByLowStorage:Z

    if-eq v3, v0, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move v4, v6

    :goto_2
    iput-boolean v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedByProfile:Z

    if-lez v2, :cond_3

    goto :goto_3

    :cond_3
    move v5, v6

    :goto_3
    iput-boolean v5, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedBySystem:Z

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingDurationLimit()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingDurationLimit()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    :cond_4
    iget-boolean v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedBySystem:Z

    const-string v5, "RecordingManagerImpl"

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateMaxRecordingTime : limitRecordingTime by system="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    if-ne v4, v0, :cond_5

    iput v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    goto :goto_4

    :cond_5
    if-ge v2, v4, :cond_6

    iput v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    :cond_6
    :goto_4
    iget-wide v6, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mTotalRecordingTimeInMs:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_7

    long-to-int v4, v6

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    :cond_7
    iget-boolean v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedByLowStorage:Z

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateMaxRecordingTime : limitRecordingTime by storage="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    if-ne v2, v0, :cond_8

    iput v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    goto :goto_5

    :cond_8
    if-ge v1, v2, :cond_9

    iput v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    :cond_9
    :goto_5
    iget-boolean v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedByProfile:Z

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMaxRecordingTime : limitRecordingTime by profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    if-ne v1, v0, :cond_a

    iput v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    goto :goto_6

    :cond_a
    if-ge v3, v1, :cond_b

    iput v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    :cond_b
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateMaxRecordingTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateMaxVideoFileSize()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/StorageUtils;->getAvailableStorage(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxVideoFileSize:J

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxVideoFileSize:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestedRecordingSize by intent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxVideoFileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxVideoFileSize:J

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iput-wide v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxVideoFileSize:J

    :cond_1
    return-void
.end method

.method private updateTorchSetting()V
    .locals 5

    sget-object v0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$3;->$SwitchMap$com$sec$android$app$camera$interfaces$ShootingModeFeature$SupportedFlashType:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackFlash()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackFlash()I

    move-result v0

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFlashRequired()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTorchFlashMode(I)V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSettingForRecording:Z

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackFlash()I

    move-result v0

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTorchFlashMode(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTorchFlashMode(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFlashRequired()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTorchFlashMode(I)V

    :goto_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSettingForRecording:Z

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTorch()I

    move-result v0

    if-ne v0, v2, :cond_8

    iput v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousTorchSetting:I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFlashRequired()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    move v1, v3

    :goto_2
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTorch(I)V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSettingForRecording:Z

    :cond_8
    :goto_3
    return-void
.end method

.method private updateVideoThumbnail()V
    .locals 7

    const-string v0, "RecordingManagerImpl"

    const-string/jumbo v1, "updateVideoThumbnail : start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$3;->$SwitchMap$com$sec$android$app$camera$interfaces$Resolution:[I

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    const/4 v4, 0x5

    if-eq v2, v4, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getWidth()I

    move-result v2

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result v1

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->isRequestedFileUriForAttachMode()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedSaveUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "rw"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v6, v1, v5}, Lcom/sec/android/app/camera/util/ImageUtils;->getVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;Z)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mVideoFilenameWithPath:Ljava/lang/String;

    invoke-static {v4, v2, v1, v3}, Lcom/sec/android/app/camera/util/ImageUtils;->getVideoThumbnail(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    :catch_0
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/engine/LastContentData;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/engine/LastContentData;->setThumbnail(Landroid/graphics/Bitmap;)V

    if-eqz v6, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getThumbnailProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

    move-result-object p0

    invoke-virtual {p0, v6, v5}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->process(Landroid/graphics/Bitmap;I)V

    goto :goto_2

    :cond_2
    const-string/jumbo p0, "video thumbnail is not updated because bitmap is null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string/jumbo p0, "updateVideoThumbnail : end"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cancelRestoreTorchFlashModeRecording()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSettingForRecording:Z

    return-void
.end method

.method public cancelSuperSlowMotionRecording(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelSuperSlowMotionRecording : forced("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_SUPER_SLOW_MOTION_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_SUPER_SLOW_MOTION_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public cancelVideoRecording()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "cancelVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSettingForRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->restoreTorchFlashMode()V

    :cond_0
    return-void
.end method

.method public changeSuperSlowMotionRecordingFPS(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->CHANGE_SUPER_SLOW_MOTION_RECORDING_FPS:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->CHANGE_SUPER_SLOW_MOTION_RECORDING_FPS:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public changeToEffectRecordingPreview()V
    .locals 3

    const-string v0, "RecordingManagerImpl"

    const-string v1, "changeToEffectRecordingPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPictureAspectRatioRecording()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$_clML8PxVnstbfVALmwPegWF1mk;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$_clML8PxVnstbfVALmwPegWF1mk;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_MEDIA_RECORDER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    goto/16 :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsEffectRecordingPreview:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_CONNECTING_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->UPDATE_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_PREVIEW_SURFACE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CHANGE_PREVIEW_SURFACE_SIZE:Lcom/sec/android/app/camera/engine/request/RequestId;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_MEDIA_RECORDER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CONNECT_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :goto_0
    return-void
.end method

.method public changeToRecordingPreview()V
    .locals 3

    const-string v0, "RecordingManagerImpl"

    const-string v1, "changeToRecordingPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsEffectRecordingPreview:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_CONNECTING_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->UPDATE_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_PREVIEW_SURFACE:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CHANGE_PREVIEW_SURFACE_SIZE:Lcom/sec/android/app/camera/engine/request/RequestId;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_VIDEO_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_MEDIA_RECORDER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CONNECT_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public createPersistentInputSurface()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPersistentInputSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPersistentInputSurface:Landroid/view/Surface;

    :cond_0
    return-void
.end method

.method public enableMultiMicZoomFocus(Z)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->getInstance()Lcom/samsung/android/camera/mic/SemMultiMicManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->getInstance()Lcom/samsung/android/camera/mic/SemMultiMicManager;

    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsMicrophonePlugged:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->getInstance()Lcom/samsung/android/camera/mic/SemMultiMicManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsMultiMicZoomFocusEnabled:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->setMultiMicZoomValue(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public enableSuperSlowMotionAutoDetect(ZLandroid/graphics/Rect;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableSuperSlowMotionAutoDetect : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mVibratorIntensity:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mVibratorIntensity:I

    :goto_0
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->setVibratorIntensity(Landroid/content/Context;I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$bLJQucRdFJnk9GUu7xi8bAPxlv4;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$bLJQucRdFJnk9GUu7xi8bAPxlv4;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;ZLandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public getCurrentRecordingFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCurrentRecordingFileSize:J

    return-wide v0
.end method

.method public getCurrentRecordingFileTimeInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCurrentRecordingFileTimeInMs:J

    return-wide v0
.end method

.method public getCurrentRecordingFileTimeInSecond()J
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCurrentRecordingFileTimeInMs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getDirectorsViewManager()Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mDirectorsViewManager:Lcom/sec/android/app/camera/interfaces/DirectorsViewManager;

    return-object p0
.end method

.method public getInitialRecordingFacing()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mInitialRecordingFacing:I

    return p0
.end method

.method public getMaxRecordingTimeLimitInSecond()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method getMediaRecorder()Landroid/media/MediaRecorder;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object p0
.end method

.method public getPersistentInputSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPersistentInputSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public getPreviousSuperSteadyZoomValue()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousSuperSteadyZoomValue:I

    return p0
.end method

.method public getPreviousZoomValue(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousBackZoomValue:I

    return p0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousFrontZoomValue:I

    return p0
.end method

.method public getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingState:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    return-object p0
.end method

.method public getRecordingStorage()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderExternalStorageAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result p0

    return p0
.end method

.method public getRemainRecordingTimeInMsByStorage()J
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/StorageUtils;->getUpdatedStorageStatus(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getMediaBitrate()I

    move-result p0

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/StorageUtils;->getRemainTimeInMS(II)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getTotalRecordingTimeInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mTotalRecordingTimeInMs:J

    return-wide v0
.end method

.method getVideoStabilizationCropRatio(Lcom/sec/android/app/camera/interfaces/Resolution;)F
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->is60FpsCamcorderResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->is60fpsRecordingRestricted()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 p1, 0x3c

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->is24FpsCamcorderResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x18

    goto :goto_0

    :cond_1
    const/16 p1, 0x1e

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/camera/interfaces/Capability;->getVdisCropRatio(Landroid/util/Size;I)F

    move-result p0

    return p0
.end method

.method public handleCamcorderSettingChanged()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getNextCameraId(Z)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->switchCamera(IZ)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->reconnectMaker()V

    :goto_0
    return-void
.end method

.method handleStorageChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "RecordingManagerImpl"

    const-string p1, "handleStorageChanged : Camera is not running, return."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCurrentPreparedStorage:I

    if-eq v0, p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_MEDIA_RECORDER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :cond_1
    return-void
.end method

.method public is60fpsRecordingRestricted()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result p0

    const/16 v0, 0x65

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAudioRecordingDisabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->isAudioEncodingDisabled()Z

    move-result p0

    return p0
.end method

.method isEffectRecordingPreview()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsEffectRecordingPreview:Z

    return p0
.end method

.method public isHdr10RecordingEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isHdr10RecordingAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "RecordingManagerImpl"

    const-string v0, "HDR10 not supported device"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHdr10Recording()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public isMultiMicZoomFocusEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsMultiMicZoomFocusEnabled:Z

    return p0
.end method

.method public isNeedToRestoreTorchFlashMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSettingForRecording:Z

    return p0
.end method

.method public isPauseRecordingAvailable()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->isRecordingControlAvailable()Z

    move-result p0

    return p0
.end method

.method public isRecordingControlAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingState:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STARTING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingState:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingState:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingState:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RESUMING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingState:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecordingRestricted()Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingRestrictedByCallState:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCallStatus()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const-string p0, "RecordingManagerImpl"

    const-string v0, "RecordingRestricted - calling"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isRecordingTimeLimited()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "RecordingManagerImpl"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingDurationLimit()I

    move-result v0

    if-lez v0, :cond_0

    const-string p0, "RecordingTimeLimited - requested recording duration limit"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedBySystem:Z

    if-eqz v0, :cond_1

    const-string p0, "RecordingTimeLimited - system limitation"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedByLowStorage:Z

    if-eqz v0, :cond_2

    const-string p0, "RecordingTimeLimited - low storage"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedByProfile:Z

    if-eqz p0, :cond_3

    const-string p0, "RecordingTimeLimited - recorder profile"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public isRestoreTorchFlashMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSetting:Z

    return p0
.end method

.method public isSnapshotAvailable()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingSnapshotSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoFilter()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderEffectAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoMyFilter()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderEffectAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v1

    :cond_4
    invoke-static {v2, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderSnapshotAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTuneType()I

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v3

    invoke-static {v3, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderEffectAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHdr10Recording()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_7

    return v1

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->isVideoBokehEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    if-ne v2, v3, :cond_9

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoBodyBeautyType()I

    move-result p0

    if-ne p0, v3, :cond_9

    return v1

    :cond_9
    return v3
.end method

.method public isStopRecordingAvailable()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->isRecordingControlAvailable()Z

    move-result p0

    return p0
.end method

.method public isSwitchFacingWhileRecordingSupported()Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SWITCH_FACING_WHILE_RECORDING:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isSwitchFacingWhileRecordingSupported()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->isHdr10RecordingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_4

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedFrontCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_4
    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    return v2
.end method

.method public isVideoBeautyFaceSupported(Lcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->is60FpsCamcorderResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->is60fpsRecordingRestricted()Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x3c

    goto :goto_0

    :cond_0
    const/16 p1, 0x1e

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/camera/interfaces/Capability;->isVideoBeautyFaceSupported(Landroid/util/Size;I)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$changeToEffectRecordingPreview$0$RecordingManagerImpl(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_LIGHT_CONDITION_ENABLE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Capability;->getAvailableEffectRecordingFpsRange()Landroid/util/Range;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$enableSuperSlowMotionAutoDetect$1$RecordingManagerImpl(ZLandroid/graphics/Rect;Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 10

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz p1, :cond_3

    sget-object p1, Lcom/samsung/android/camera/core2/MakerPublicKey;->REQUEST_SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p3, p1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-nez p1, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/util/Util;->getCropRegionByPreviewAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, p0

    mul-int/2addr v6, v7

    div-int/2addr v6, v4

    add-int/2addr v5, v6

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p2, Landroid/graphics/Rect;->right:I

    sub-int v8, v3, v8

    mul-int/2addr v7, v8

    div-int/2addr v7, v3

    add-int/2addr v6, v7

    iget v7, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, p0

    mul-int/2addr v8, v9

    div-int/2addr v8, v4

    add-int/2addr v7, v8

    iget p0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int v4, v3, v4

    mul-int/2addr p1, v4

    div-int/2addr p1, v3

    add-int/2addr p0, p1

    if-eqz p2, :cond_2

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v5, v6, v7, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p0, Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-direct {p0, p1, v2}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    sget-object p1, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_SUPER_SLOW_MOTION_AUTO_DETECT_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array p2, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    aput-object p0, p2, v2

    invoke-interface {p3, p1, p2}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_SUPER_SLOW_MOTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p3, p0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_SUPER_SLOW_MOTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p3, p0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    return v0

    :cond_2
    return v2

    :cond_3
    sget-object p1, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_SUPER_SLOW_MOTION_AUTO_DETECT_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-boolean p1, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SUPER_SLOW_MOTION_AUTO_DETECT_PREPARE:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSuperSlowMotionDetectionType()I

    move-result p0

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_SUPER_SLOW_MOTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p0, p2}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_SUPER_SLOW_MOTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v0

    :cond_4
    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_SUPER_SLOW_MOTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p3, p0, v3}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->SEM_REQUEST_CONTROL_SUPER_SLOW_MOTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p3, p0, v3}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v0

    :cond_5
    return v2
.end method

.method public synthetic lambda$handleRecordingError$13$RecordingManagerImpl()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->STOPPED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingEvent(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$handleRecordingError$14$RecordingManagerImpl()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f1104fe

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Lcom/sec/android/app/camera/widget/CameraToast;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/CameraToast;->show(Z)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$onBackgroundRecordingStopped$2$RecordingManagerImpl()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->STOPPED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingEvent(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRecordingCancelled$3$RecordingManagerImpl()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->CANCELLED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingEvent(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getOverriddenVideoSettingType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setOverriddenVideoSettingType(I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onRecordingPaused$4$RecordingManagerImpl()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingEvent(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRecordingResumed$5$RecordingManagerImpl()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->RESUMED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingEvent(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRecordingStarted$6$RecordingManagerImpl()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->STARTED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingEvent(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRecordingStopped$7$RecordingManagerImpl()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->STOPPED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingEvent(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getOverriddenVideoSettingType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setOverriddenVideoSettingType(I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onShutter$8$RecordingManagerImpl()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onPictureProcessingStarted()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$registerVideo$15$RecordingManagerImpl(Lcom/sec/android/app/camera/engine/LastContentData;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onVideoSaved(Lcom/sec/android/app/camera/interfaces/Engine$ContentData;)V

    return-void
.end method

.method public onBackgroundRecordingStopped()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "onBackgroundRecordingStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/SoundManager;->abandonAudioFocus()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->setEffectRecordingSurface(Landroid/view/Surface;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->clearFileResources()V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$MJRkgNqnOztPSRTIS6Oo8lXMLEU;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$MJRkgNqnOztPSRTIS6Oo8lXMLEU;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mTotalRecordingTimeInMs:J

    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCurrentRecordingFileSize:J

    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCurrentRecordingFileTimeInMs:J

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->notifyRecordingInfo(Z)V

    return-void
.end method

.method public onDraftPostProcessingPictureTaken(Landroid/net/Uri;Ljava/io/File;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "RecordingManagerImpl"

    const-string p1, "VideoSnapshotCallback.onDraftPostProcessingPictureTaken"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoSnapshotCallback.onError - reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCameraDeviceOpened()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->interruptCaptureRequest()V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/16 p1, -0xa

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->handleCameraError(I)V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 2

    const-string p1, "RecordingManagerImpl"

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "onError - MEDIA_RECORDER_ERROR_BUFFER_OVERFLOW"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/16 p1, -0xe

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->handleCameraError(I)V

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError - MEDIA_RECORDER_ERROR_UNKNOWN : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/16 p2, -0xb

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->handleCameraError(I)V

    const/16 p1, -0x3ef

    if-ne p3, p1, :cond_2

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsNoInputFrameError:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3

    const/16 p1, 0x384

    const-string v0, "RecordingManagerImpl"

    if-eq p2, p1, :cond_9

    const/16 p1, 0x385

    const-string v1, "onInfo returned - recording is stopping or unregistered."

    if-eq p2, p1, :cond_5

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const-string p1, "onInfo - MEDIA_RECORDER_INFO_NEXT_OUTPUT_FILE_STARTED"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->onNextOutputFileStarted()V

    goto/16 :goto_4

    :pswitch_1
    const-string p1, "onInfo - MEDIA_RECORDER_INFO_MAX_FILESIZE_APPROACHING"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->onMaxFileSizeApproaching()V

    goto/16 :goto_4

    :pswitch_2
    const-string p1, "onInfo - MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingMaxFileSizeReached()V

    goto/16 :goto_4

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_3
    const-string p1, "onInfo - MEDIA_RECORDER_INFO_MAX_DURATION_REACHED"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getTotalRecordingTimeInMs()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCurrentRecordingFileSize:J

    invoke-interface {p3, p1, p2, v0, v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingTick(JJ)V

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingMaxDurationReached()V

    goto :goto_4

    :cond_4
    :goto_1
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onInfo - MEDIA_RECORDER_INFO_DURATION_PROGRESS "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->startRecordingTickTimer()V

    goto :goto_3

    :cond_7
    :goto_2
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_a

    int-to-long p1, p3

    iput-wide p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCurrentRecordingFileTimeInMs:J

    goto :goto_4

    :cond_9
    int-to-long p1, p3

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    iput-wide p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCurrentRecordingFileSize:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onInfo - SEM_MEDIA_RECORDER_INFO_FILESIZE_IN_PROGRESS "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCurrentRecordingFileSize:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMediaRecorderPrepared()V
    .locals 1

    const-string p0, "RecordingManagerImpl"

    const-string v0, "onMediaRecorderPrepared"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;)V
    .locals 7
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "RecordingManagerImpl"

    const-string v1, "VideoSnapshotCallback.onPictureTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentCaptureState()Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;->RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CaptureState;

    if-eq v1, v2, :cond_0

    const-string p1, "VideoSnapshotCallback.onPictureTaken : Current capture state is not RECORDING. return."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_VIDEO_SNAPSHOT:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getPictureProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getCurrentTimeInMillis()J

    move-result-wide v4

    sget-object v6, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->JPEG:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/camera/engine/PictureProcessor;->process(Ljava/nio/ByteBuffer;Landroid/util/Size;JLcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_VIDEO_SNAPSHOT:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public onPostProcessingFrameCollectionCompleted()V
    .locals 1

    const-string p0, "RecordingManagerImpl"

    const-string v0, "VideoSnapshotCallback.onPostProcessingFrameCollectionCompleted"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPostProcessingPictureTaken(Ljava/io/File;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "RecordingManagerImpl"

    const-string p1, "VideoSnapshotCallback.onPostProcessingPictureTaken"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProcessingFrameCollected(I)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VideoSnapshotCallback.onProcessingFrameCollected : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecordingManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProcessingPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;)V
    .locals 0
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/camera/core2/MakerInterface$PictureDataInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "RecordingManagerImpl"

    const-string p1, "VideoSnapshotCallback.onProcessingPictureTaken"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProgress(I)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VideoSnapshotCallback.onProgress : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecordingManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRecordingCancelled()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "onRecordingCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/SoundManager;->abandonAudioFocus()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->setEffectRecordingSurface(Landroid/view/Surface;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->clearFileResources()V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$deAb3diulisqLiemjdpg5hhbcik;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$deAb3diulisqLiemjdpg5hhbcik;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mTotalRecordingTimeInMs:J

    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCurrentRecordingFileSize:J

    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCurrentRecordingFileTimeInMs:J

    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousRecordingTimeInMs:J

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->notifyRecordingInfo(Z)V

    return-void
.end method

.method public onRecordingFailed(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordingFailed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->handleRecordingError(I)V

    return-void
.end method

.method public onRecordingPaused()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "onRecordingPaused"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingState:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$uIG8rmiYCG_cpqG_PmAvux9g5Pc;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$uIG8rmiYCG_cpqG_PmAvux9g5Pc;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onRecordingResumed()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "onRecordingResumed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$OxSoiYdl2SccJw0IN_CFz4mj-ro;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$OxSoiYdl2SccJw0IN_CFz4mj-ro;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRecordingStarted()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "onRecordingStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->notifyRecordingInfo(Z)V

    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GATE"

    const-string v1, "<GATE-M>VIDEO_RECORDING</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getEffectController()Lcom/sec/android/app/camera/engine/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/EffectController;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isFilterRecordingUsingVideoMakerSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getPersistentInputSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->setEffectRecordingSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->setEffectRecordingSurface(Landroid/view/Surface;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$vPeBk-RICXa6r1e2xXxESndUFIk;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$vPeBk-RICXa6r1e2xXxESndUFIk;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    return-void
.end method

.method public onRecordingStopped()V
    .locals 6

    const-string v0, "RecordingManagerImpl"

    const-string v1, "onRecordingStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRestartingRecordingByEsdError:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-wide v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousRecordingTimeInMs:J

    iget-wide v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCurrentRecordingFileTimeInMs:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousRecordingTimeInMs:J

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->registerVideo(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v0

    const-string/jumbo v2, "video/mp4"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->createNewVideoPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mVideoFilenameWithPath:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRestartingRecordingByEsdError:Z

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<GATE-M>VIDEO_RECORDED : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " </GATE-M>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GATE"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getHapticFeedback()Lcom/sec/android/app/camera/interfaces/HapticManager;

    move-result-object v0

    const/16 v2, 0x26

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/HapticManager;->playHaptic(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;->RECORDING_STOP:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/camera/interfaces/SoundManager;->playSound(Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/SoundManager;->abandonAudioFocus()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->setEffectRecordingSurface(Landroid/view/Surface;)V

    iget-boolean v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsNoInputFrameError:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mTempVideoFilename:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/RecordingUtil;->cleanupFile(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mTempVideoFilename:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsNoInputFrameError:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackTorch()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTorchFlashMode(I)V

    :cond_3
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->registerVideo(Z)V

    :goto_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v2, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$c8kD2fqHEmLmm6LdDiYMeFZYMQY;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$c8kD2fqHEmLmm6LdDiYMeFZYMQY;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mTotalRecordingTimeInMs:J

    iput-wide v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCurrentRecordingFileSize:J

    iput-wide v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCurrentRecordingFileTimeInMs:J

    iput-wide v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousRecordingTimeInMs:J

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->notifyRecordingInfo(Z)V

    return-void
.end method

.method public onShutter(Ljava/lang/Long;)V
    .locals 1
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p1, "RecordingManagerImpl"

    const-string v0, "VideoSnapshotCallback.onShutter"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startShutterAnimation()V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$nyQuKCvCb4eboPnLHXOQs7sB8Wg;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$nyQuKCvCb4eboPnLHXOQs7sB8Wg;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStartVideoPreviewRequested()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->isNeedToRestoreTorchFlashMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->updateTorchSetting()V

    :cond_0
    return-void
.end method

.method public pauseVideoRecording()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "pauseVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->PAUSE_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method public prepareMediaRecorder()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/app/camera/exception/MediaRecorderPrepareException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->is60fpsRecordingRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getLowFpsCamcorderResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->buildMediaRecorderProfile(Lcom/sec/android/app/camera/interfaces/Resolution;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->checkRequestedAttachSize()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/sec/android/app/camera/exception/MediaRecorderPrepareException;

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/exception/MediaRecorderPrepareException;-><init>(I)V

    throw p0

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->dumpProfile()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->resetMediaRecorder()V

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderPrepareLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->createMediaRecorder()V

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->isRequestedFileUriForAttachMode()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->isVideoSavedOnRequestedUri()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->closeFileDescriptor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedSaveUri()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "rw"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "RecordingManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file not found:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mTempVideoFilename:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/camera/util/RecordingUtil;->cleanupFile(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/RecordingUtil;->createTempVideoFilePath(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mTempVideoFilename:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mTempVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCurrentPreparedStorage:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->updateMaxVideoFileSize()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-wide v5, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxVideoFileSize:J

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    :try_start_4
    const-string v4, "RecordingManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMaxFileSize failed (maxFileSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxVideoFileSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getVideoSource()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->isAudioEncodingDisabled()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getAudioSource()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->semSetAuthor(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->semSetDurationInterval(I)V

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->is60FpsCamcorderResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v2}, Landroid/media/MediaRecorder;->semSetIframeInterval(I)V

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getFileSizeInterval()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaRecorder;->semSetFileSizeInterval(J)V

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getOutputFormat()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->updateMaxRecordingTime()V

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getRecordingMode()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->semSetRecordingMode(I)V

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->isSetFlipModeRequired(Lcom/sec/android/app/camera/interfaces/Resolution;I)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/samsung/android/camera/feature/Feature;->SUPPORT_SWITCH_FACING_WHILE_RECORDING:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->semSetVideoFlip(I)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->semSetRecordingMode(I)V

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getVideoFrameRate()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getRecordingMode()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_9

    const/16 v2, 0x9

    if-eq v0, v2, :cond_9

    const/16 v2, 0x8

    if-eq v0, v2, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getCaptureRate()I

    move-result v2

    int-to-double v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getVideoWidth()I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getVideoHeight()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getVideoEncodingBitrate()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getVideoEncoder()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getAudioEncodingBitrate()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getAudioChannels()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getAudioSamplingRate()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->isAudioEncodingDisabled()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->getAudioEncoder()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->updateLocationInfo()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isFilterRecordingUsingVideoMakerSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getPersistentInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsEffectRecordingPreview:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getPersistentInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_c
    :goto_5
    :try_start_5
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v3

    return-void

    :catch_2
    new-instance p0, Lcom/sec/android/app/camera/exception/MediaRecorderPrepareException;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/exception/MediaRecorderPrepareException;-><init>(I)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public prepareMultiMicZoomFocus()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->getInstance()Lcom/samsung/android/camera/mic/SemMultiMicManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->getInstance()Lcom/samsung/android/camera/mic/SemMultiMicManager;

    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getMultiMicFacing(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateOrientationForCapture()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationForCapture()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getMultiMicOrientation(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMinZoomLevel()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMaxZoomLevel()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->getInstance()Lcom/samsung/android/camera/mic/SemMultiMicManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1, p0, v2}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->initialize(IIFF)V

    :cond_2
    :goto_0
    return-void
.end method

.method public prepareQuickTakeRecording()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateCaptureInfo(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->setPreviousZoomValue(II)V

    return-void
.end method

.method public prepareVideoRecording()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "prepareVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackTorch()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTorchFlashMode(I)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_MEDIA_RECORDER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public register(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingState:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "camera.action.AUDIOFOCUS_LOSS"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "camera.action.LIMIT_RECORDING_SEAMLESS_ZOOM"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "camera.action.RECORDING_LOW_POWER_MODE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "camera.action.PREVIEW_TIMEOUT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "camera.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "camera.action.HEADSET_PLUG"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "camera.action.CALL_STATE_IDLE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "camera.action.CALL_STATE_RINGING"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "camera.action.CALL_STATE_OFFHOOK"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "camera.action.VIDEO_CAPABILITY"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "camera.action.WIFI_DISPLAY_NOT_ALLOWED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    sget-object p1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingRestrictedByCallState:Z

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCallStatus()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingRestrictedByCallState:Z

    :cond_1
    return-void
.end method

.method public releaseMediaRecorder()V
    .locals 3

    const-string v0, "RecordingManagerImpl"

    const-string v1, "releaseMediaRecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string/jumbo v1, "unregister in release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPersistentInputSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPersistentInputSurface:Landroid/view/Surface;

    :cond_1
    return-void
.end method

.method public releaseMultiMicZoomFocus()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->getInstance()Lcom/samsung/android/camera/mic/SemMultiMicManager;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->getInstance()Lcom/samsung/android/camera/mic/SemMultiMicManager;

    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->isSupported()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->getInstance()Lcom/samsung/android/camera/mic/SemMultiMicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->release()V

    :cond_1
    :goto_0
    return-void
.end method

.method public resetAfTrigger()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "resetAfTrigger"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_AUTO_FOCUS:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAeAwbLockRequired(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->unlockAeAwb()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAeLockRequired(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->unlockAe()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetAeAfAwb()V

    :cond_2
    :goto_0
    return-void
.end method

.method public resetMediaRecorder()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "resetMediaRecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderReleaseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->setEffectRecordingSurface(Landroid/view/Surface;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method restartVideoRecordingOnEsdError()V
    .locals 3

    const-string v0, "RecordingManagerImpl"

    const-string v1, "restartVideoRecordingOnEsdError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRestartingRecordingByEsdError:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CLOSE_CAMERA:Lcom/sec/android/app/camera/engine/request/RequestId;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->OPEN_CAMERA:Lcom/sec/android/app/camera/engine/request/RequestId;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_CONNECTING_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isFilterRecordingUsingVideoMakerSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_VIDEO_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_MEDIA_RECORDER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CONNECT_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_VIDEO_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public resumeVideoRecording()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "resumeVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/SoundManager;->requestAudioFocus()V

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RESUMING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->RESUME_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public setFpsRange(Landroid/util/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$yPT2Jq_M4RtrlU7CweXrgOoFy3Y;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$yPT2Jq_M4RtrlU7CweXrgOoFy3Y;-><init>(Landroid/util/Range;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public setLightConditionMode(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$NvX0UpRfRHj476NzTUZoPRC6at4;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$NvX0UpRfRHj476NzTUZoPRC6at4;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public setMultiMicZoomValue(F)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->getInstance()Lcom/samsung/android/camera/mic/SemMultiMicManager;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->getInstance()Lcom/samsung/android/camera/mic/SemMultiMicManager;

    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->isSupported()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->getInstance()Lcom/samsung/android/camera/mic/SemMultiMicManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setAudioZoomLevel(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPreviousSuperSteadyZoomValue(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousSuperSteadyZoomValue:I

    return-void
.end method

.method public setRecordingMotionSpeed(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRecordingMotionSpeed : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$nDB2pqg1Q9zRzqSp99iWV6kx2rU;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$nDB2pqg1Q9zRzqSp99iWV6kx2rU;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public setRecordingOverheatLevel(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRecordingOverheatLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance p1, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$Fcj5HrSciMOf6aU-xJsmf8LtKZ4;

    invoke-direct {p1, v0}, Lcom/sec/android/app/camera/engine/-$$Lambda$RecordingManagerImpl$Fcj5HrSciMOf6aU-xJsmf8LtKZ4;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public setRestoreTorchFlashMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSetting:Z

    return-void
.end method

.method public startAfTrigger()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "startAfTrigger"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_AUTO_FOCUS:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_AE_AF_TRIGGER_STATE_CHANGED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAeAwbLockRequired(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->lockAeAwb()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAeLockRequired(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->lockAe()V

    :cond_2
    :goto_0
    return-void
.end method

.method public startBackgroundRecording()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "startBackgroundRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STARTING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->getVibratorIntensity(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mVibratorIntensity:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v0

    const-string/jumbo v1, "video/mp4"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->createNewVideoPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mVideoFilenameWithPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_VIDEO_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_BACKGROUND_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public startSuperSlowMotionRecording(I)V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string v1, "startSuperSlowMotionRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SUPER_SLOW_MOTION_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method public startVideoRecording()V
    .locals 3

    const-string v0, "RecordingManagerImpl"

    const-string v1, "startVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/SoundManager;->requestAudioFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;->RECORDING_START:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/camera/interfaces/SoundManager;->playSound(Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getHapticFeedback()Lcom/sec/android/app/camera/interfaces/HapticManager;

    move-result-object v0

    const/16 v2, 0x26

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/HapticManager;->playHaptic(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mInitialRecordingFacing:I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getOverriddenVideoSettingType()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setOverriddenVideoSettingType(I)V

    iget v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mInitialRecordingFacing:I

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->setPreviousZoomValue(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateCaptureInfo(Z)V

    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STARTING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->updateTorchSetting()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    const-string/jumbo v1, "video/mp4"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedMediaRecorderProfile()Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getOutputFormat()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedMediaRecorderProfile()Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfile;->getOutputFormat()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getVideoMimeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->createNewVideoPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mVideoFilenameWithPath:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->createNewVideoPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mVideoFilenameWithPath:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->createNewVideoPath(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mVideoFilenameWithPath:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->updateLocationInfo()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->NOTIFY_START_VIDEO_RECORDING_PREPARED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoFilter()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoMyFilter()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getColorTuneType()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_VIDEO_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public stop()V
    .locals 3

    const-string v0, "RecordingManagerImpl"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->stopVideoRecording(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setOverriddenVideoSettingType(I)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0, v2, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->changeShootingMode(IZ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public stopBackgroundRecording()V
    .locals 2

    const-string v0, "RecordingManagerImpl"

    const-string/jumbo v1, "stopBackgroundRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_BACKGROUND_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSettingForRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->restoreTorchFlashMode()V

    :cond_0
    return-void
.end method

.method public stopVideoRecording(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopVideoRecording : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_VIDEO_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iget-boolean p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSettingForRecording:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->restoreTorchFlashMode()V

    :cond_1
    return-void
.end method

.method public stopVideoStream()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public switchFacing(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->isPauseRecordingAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "RecordingManagerImpl"

    const-string/jumbo p1, "switchFacing return --- Pause recording is not available"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->setPreviousZoomValue(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    const-wide/16 v3, 0x2

    if-ne v1, v2, :cond_2

    const-string v1, "0201"

    invoke-static {v1, v3, v4}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    goto :goto_1

    :cond_2
    const-string v1, "0244"

    invoke-static {v1, v3, v4}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    :goto_1
    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/camera/engine/request/RequestId;->PAUSE_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, p1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->changeShootingMode(IZ)Z

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_VIDEO_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    if-eqz v0, :cond_4

    sget p1, Lcom/samsung/android/camera/feature/Feature;->DELAY_TIME_TO_RESUME_WHEN_SWITCH_FACING_WHILE_RECORDING:I

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget v1, Lcom/samsung/android/camera/feature/Feature;->DELAY_TIME_TO_RESUME_WHEN_SWITCH_FACING_WHILE_RECORDING:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->RESUME_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :cond_4
    return-void
.end method

.method public unregister()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingState:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregister in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingState:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingRestrictedByCallState:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingFailedByVideoCapability:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingFailedByWifiDisplayNotAllowed:Z

    const/16 v2, 0x3e8

    iput v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mTickInterval:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRecordingTimeLimitedBySystem:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMaxRecordingTimeLimitInMs:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsEffectRecordingPreview:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsRestartingRecordingByEsdError:Z

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mTempVideoFilename:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/RecordingUtil;->cleanupFile(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mTempVideoFilename:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->RELEASE_MEDIA_RECORDER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSetting:Z

    return-void
.end method

.method public updateOrientationHint()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateOrientationForCapture()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationForCapture()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    return-void
.end method
