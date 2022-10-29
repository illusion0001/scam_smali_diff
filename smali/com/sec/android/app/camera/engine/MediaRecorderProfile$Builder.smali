.class Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;
.super Ljava/lang/Object;
.source "MediaRecorderProfile.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/Engine$MediaRecorderProfileBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/MediaRecorderProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mAudioChannels:I

.field private mAudioEncoder:I

.field private mAudioEncodingBitrate:I

.field private mAudioSamplingRate:I

.field private mAudioSource:I

.field private mCaptureRate:I

.field private mFileSizeInterval:I

.field private mIsAudioEncodingDisabled:Z

.field private mMaxDuration:I

.field private mOutputFormat:I

.field private mRecordingMode:I

.field private mVideoEncoder:I

.field private mVideoEncodingBitrate:I

.field private mVideoFrameRate:I

.field private mVideoHeight:I

.field private mVideoSource:I

.field private mVideoWidth:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/Resolution;IZZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mOutputFormat:I

    iput v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mVideoEncoder:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mAudioEncoder:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mVideoWidth:I

    iput v1, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mVideoHeight:I

    const/16 v2, 0x1e

    iput v2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mVideoFrameRate:I

    iput v1, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mVideoEncodingBitrate:I

    const v3, 0x3e800

    iput v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mAudioEncodingBitrate:I

    iput v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mAudioChannels:I

    const v3, 0xbb80

    iput v3, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mAudioSamplingRate:I

    iput v1, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mFileSizeInterval:I

    iput v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mVideoSource:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mMaxDuration:I

    iput v1, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mRecordingMode:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mAudioSource:I

    iput v2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mCaptureRate:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mIsAudioEncodingDisabled:Z

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mVideoWidth:I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mVideoHeight:I

    if-eqz p3, :cond_0

    if-ge p2, v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->access$1800()Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->access$1900()Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;

    :goto_0
    if-eqz p2, :cond_3

    if-eqz p5, :cond_1

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;->access$2000(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mVideoEncodingBitrate:I

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    invoke-static {p2}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;->access$2100(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mVideoEncodingBitrate:I

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;->access$2200(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$VideoBitrate;)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mVideoEncodingBitrate:I

    :cond_3
    :goto_1
    invoke-static {}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;->access$2300()Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mFileSizeInterval:I

    iget p1, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mVideoEncodingBitrate:I

    if-eqz p1, :cond_4

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mFileSizeInterval:I

    if-eqz p0, :cond_4

    return-void

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "not found bitrate and file size interval"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mOutputFormat:I

    return p0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mFileSizeInterval:I

    return p0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mCaptureRate:I

    return p0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mAudioEncoder:I

    return p0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mAudioEncodingBitrate:I

    return p0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mAudioChannels:I

    return p0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mAudioSamplingRate:I

    return p0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mAudioSource:I

    return p0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mIsAudioEncodingDisabled:Z

    return p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mMaxDuration:I

    return p0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mRecordingMode:I

    return p0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mVideoEncoder:I

    return p0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mVideoFrameRate:I

    return p0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mVideoSource:I

    return p0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mVideoEncodingBitrate:I

    return p0
.end method


# virtual methods
.method public audioChannels(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mAudioChannels:I

    return-void
.end method

.method public audioEncoder(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mAudioEncoder:I

    return-void
.end method

.method public audioEncodingBitrate(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mAudioEncodingBitrate:I

    return-void
.end method

.method public audioSamplingRate(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mAudioSamplingRate:I

    return-void
.end method

.method public audioSource(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mAudioSource:I

    return-void
.end method

.method public build()Lcom/sec/android/app/camera/engine/MediaRecorderProfile;
    .locals 2

    new-instance v0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/engine/MediaRecorderProfile;-><init>(Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;Lcom/sec/android/app/camera/engine/MediaRecorderProfile$1;)V

    return-object v0
.end method

.method public captureRate(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mCaptureRate:I

    return-void
.end method

.method public disableAudioEncoding()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mIsAudioEncodingDisabled:Z

    return-void
.end method

.method public fileSizeInterval(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mFileSizeInterval:I

    return-void
.end method

.method public maxDuration(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mMaxDuration:I

    return-void
.end method

.method public outputFormat(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mOutputFormat:I

    return-void
.end method

.method public recordingMode(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mRecordingMode:I

    return-void
.end method

.method public videoEncoder(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mVideoEncoder:I

    return-void
.end method

.method public videoEncodingBitrate(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mVideoEncodingBitrate:I

    return-void
.end method

.method public videoFrameRate(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mVideoFrameRate:I

    return-void
.end method

.method public videoHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mVideoHeight:I

    return-void
.end method

.method public videoSource(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mVideoSource:I

    return-void
.end method

.method public videoWidth(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/MediaRecorderProfile$Builder;->mVideoWidth:I

    return-void
.end method
