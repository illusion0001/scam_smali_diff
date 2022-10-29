.class Lcom/sec/android/app/camera/engine/MediaRecorderProfile;
.super Ljava/lang/Object;
.source "MediaRecorderProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;,
        Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;
    }
.end annotation


# static fields
.field static final AUDIO_BITRATE_12200:I = 0x2fa8

.field static final AUDIO_BITRATE_256000:I = 0x3e800

.field static final AUDIO_CHANNEL_1:I = 0x1

.field static final AUDIO_CHANNEL_2:I = 0x2

.field static final AUDIO_SAMPLING_48000:I = 0xbb80

.field static final AUDIO_SAMPLING_8000:I = 0x1f40

.field private static final DEFAULT_AUDIO_BITRATE:I = 0x3e800

.field private static final DEFAULT_AUDIO_CHANNEL:I = 0x2

.field private static final DEFAULT_AUDIO_FORMAT:I = 0x3

.field private static final DEFAULT_AUDIO_SAMPLING:I = 0xbb80

.field private static final DEFAULT_AUDIO_SOURCE:I = 0x5

.field private static final DEFAULT_CAPTURE_RATE:I = 0x1e

.field static final DEFAULT_DURATION_INTERVAL:I = 0x1f4

.field private static final DEFAULT_MAX_DURATION:I = -0x1

.field private static final DEFAULT_OUTPUT_FORMAT:I = 0x2

.field private static final DEFAULT_RECORDING_MODE:I = 0x0

.field private static final DEFAULT_VIDEO_FORMAT:I = 0x2

.field private static final DEFAULT_VIDEO_FRAME_RATE:I = 0x1e

.field private static final DEFAULT_VIDEO_SOURCE:I = 0x2

.field private static final EffectVideoBitrateTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;",
            ">;"
        }
    .end annotation
.end field

.field static final I_FRAME_INTERVAL_FOR_30:I = 0x1

.field private static final KB:I = 0x400

.field private static final Kb:I = 0x3e8

.field static final RECORD_AUTHOR_PARAM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaRecorderProfile"

.field static final VIDEO_FRAME_RATE_MMS:I = 0xf

.field private static final VideoBitrateTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;",
            ">;"
        }
    .end annotation
.end field

.field private static final mVideoSizeIntervalTable:Landroid/util/SparseArray;


# instance fields
.field private final mAudioChannels:I

.field private final mAudioEncoder:I

.field private final mAudioEncodingBitrate:I

.field private final mAudioSamplingRate:I

.field private final mAudioSource:I

.field private final mCaptureRate:I

.field private final mFileSizeInterval:I

.field private final mIsAudioEncodingDisabled:Z

.field private final mMaxDuration:I

.field private final mOutputFormat:I

.field private final mRecordingMode:I

.field private final mVideoEncoder:I

.field private final mVideoEncodingBitrate:I

.field private final mVideoFrameRate:I

.field private final mVideoHeight:I

.field private final mVideoSource:I

.field private final mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->VideoBitrateTable:Landroid/util/SparseArray;

    new-instance v0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$2;

    invoke-direct {v0}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->EffectVideoBitrateTable:Landroid/util/SparseArray;

    new-instance v0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$3;

    invoke-direct {v0}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$3;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoSizeIntervalTable:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->access$100(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mOutputFormat:I

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->access$200(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mMaxDuration:I

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->access$300(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mRecordingMode:I

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->access$400(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoWidth:I

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->access$500(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoHeight:I

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->access$600(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoEncoder:I

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->access$700(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoFrameRate:I

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->access$800(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoSource:I

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->access$900(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoEncodingBitrate:I

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->access$1000(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mFileSizeInterval:I

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->access$1100(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mCaptureRate:I

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->access$1200(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioEncoder:I

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->access$1300(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioEncodingBitrate:I

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->access$1400(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioChannels:I

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->access$1500(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioSamplingRate:I

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->access$1600(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioSource:I

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->access$1700(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mIsAudioEncodingDisabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;Lcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;-><init>(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)V

    return-void
.end method

.method static synthetic access$1800()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->EffectVideoBitrateTable:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1900()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->VideoBitrateTable:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2300()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoSizeIntervalTable:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method dumpProfile()V
    .locals 3

    const-string v0, "MediaRecorderProfile"

    const-string v1, "[Dump] camcorder inner profile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileFormat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mOutputFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoSource = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "videoCodec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoEncoder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "videoBitRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoEncodingBitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "videoFrameWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "videoFrameHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "videoFrameRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoFrameRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileSizeInterval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mFileSizeInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioSource = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioCodec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioEncoder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioBitRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioEncodingBitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioSampleRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioSamplingRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mMaxDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecordingMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mRecordingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mCaptureRate:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method getAudioChannels()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioChannels:I

    return p0
.end method

.method getAudioEncoder()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioEncoder:I

    return p0
.end method

.method getAudioEncodingBitrate()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioEncodingBitrate:I

    return p0
.end method

.method getAudioSamplingRate()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioSamplingRate:I

    return p0
.end method

.method getAudioSource()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mAudioSource:I

    return p0
.end method

.method getCaptureRate()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mCaptureRate:I

    return p0
.end method

.method getFileSizeInterval()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mFileSizeInterval:I

    return p0
.end method

.method getMaxDuration()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mMaxDuration:I

    return p0
.end method

.method getOutputFormat()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mOutputFormat:I

    return p0
.end method

.method getRecordingMode()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mRecordingMode:I

    return p0
.end method

.method getVideoEncoder()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoEncoder:I

    return p0
.end method

.method getVideoEncodingBitrate()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoEncodingBitrate:I

    return p0
.end method

.method getVideoFrameRate()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoFrameRate:I

    return p0
.end method

.method getVideoHeight()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoHeight:I

    return p0
.end method

.method getVideoSource()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoSource:I

    return p0
.end method

.method getVideoWidth()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mVideoWidth:I

    return p0
.end method

.method isAudioEncodingDisabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->mIsAudioEncodingDisabled:Z

    return p0
.end method
