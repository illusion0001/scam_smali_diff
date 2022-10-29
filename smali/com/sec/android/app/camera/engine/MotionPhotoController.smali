.class Lcom/sec/android/app/camera/engine/MotionPhotoController;
.super Ljava/lang/Object;
.source "MotionPhotoController.java"

# interfaces
.implements Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;


# static fields
.field private static final APEX_PACKAGE_VERSION_SUPPORTING_AUDIO_RECORDING:Ljava/lang/String; = "3.2.00"

.field private static final RECORDING_COMPLETE_SOUND_DURATION:I = 0x1c2

.field private static final TAG:Ljava/lang/String; = "MotionPhotoController"


# instance fields
.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private mIsAudioRecordingSupported:Z

.field private mIsEffectMode:Z

.field private mIsMotionPhotoStarted:Z

.field private mLastPreviewTimeStamp:J

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

.field private mProxy:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;

.field private final mRequestIds:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoreCompletedConditionDepot:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/util/concurrent/locks/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeStampOffset:J

.field private final mUriDepot:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mStoreCompletedConditionDepot:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mUriDepot:Landroid/util/LongSparseArray;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mRequestIds:Ljava/util/Deque;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLastPreviewTimeStamp:J

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->checkMotionPhotoFeature()V

    return-void
.end method

.method private checkMotionPhotoFeature()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.app.apex"

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/PackageUtil;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "3.2.00"

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/PackageUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mIsAudioRecordingSupported:Z

    :cond_0
    return-void
.end method

.method private getRecordingFpsFactor()I
    .locals 2

    sget p0, Lcom/samsung/android/camera/feature/Feature;->MOTION_PHOTO_RECORDING_FPS:I

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not supported motion photo recording fps : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/camera/feature/Feature;->MOTION_PHOTO_RECORDING_FPS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method


# virtual methods
.method isAudioRecordingSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mIsAudioRecordingSupported:Z

    return p0
.end method

.method isMotionPhotoEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isMotionPhotoSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMotionPhoto()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method isPreviewCallbackRequired()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->isMotionPhotoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onInfo(IIILjava/lang/Object;)V
    .locals 4

    const-string p3, "MotionPhotoController"

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInfo - what "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ext1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " data "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p2, 0x2723

    if-eq p1, p2, :cond_4

    const/16 p2, 0x2724

    if-eq p1, p2, :cond_4

    const-string p2, "id"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    :try_start_1
    move-object p1, p4

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mStoreCompletedConditionDepot:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/Condition;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/StorageUtils;->getContentUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    check-cast p4, Landroid/os/Bundle;

    const-string v3, "key-value"

    invoke-virtual {p4, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Landroid/content/ContentValues;

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p4

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mUriDepot:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2, p4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto/16 :goto_0

    :cond_0
    const-string p1, "APEX_INFO_STORE_CANCELED : storeCompletedCondition is null"

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    move-object p1, p4

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    check-cast p4, Landroid/os/Bundle;

    const-string/jumbo v0, "uri"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mStoreCompletedConditionDepot:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/Condition;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mUriDepot:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2, p4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto/16 :goto_0

    :cond_1
    const-string p1, "APEX_INFO_STORE_COMPLETED : storeCompletedCondition is null"

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mProxy:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mProxy:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mProxy:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLastPreviewTimeStamp:J

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mIsEffectMode:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getEffectController()Lcom/sec/android/app/camera/engine/EffectController;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {p2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/EffectController;->setRecordingSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {p2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->getToken()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mProxy:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;

    goto :goto_0

    :cond_3
    const-string p1, "APEX_INFO_RECORDER_STARTED : MotionPhotoComposer is released"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-boolean p1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mIsAudioRecordingSupported:Z

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getSoundManager()Lcom/sec/android/app/camera/interfaces/SoundManager;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;->MOTION_PHOTO_RECORDING_COMPLETE:Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;

    const/4 p4, 0x0

    invoke-interface {p1, p2, p4}, Lcom/sec/android/app/camera/interfaces/SoundManager;->playSound(Lcom/sec/android/app/camera/interfaces/SoundManager$SoundId;I)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getHapticFeedback()Lcom/sec/android/app/camera/interfaces/HapticManager;

    move-result-object p1

    const/16 p2, 0x30

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/interfaces/HapticManager;->playHaptic(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onInfo - process fail for callback "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x2718
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onPreviewFrame(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/MakerInterface$PreviewCallback$DataInfo;)V
    .locals 5
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/camera/core2/MakerInterface$PreviewCallback$DataInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mProxy:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/MakerInterface$PreviewCallback$DataInfo;->getTimeStamp()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLastPreviewTimeStamp:J

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mProxy:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;

    const/16 v0, 0x23

    iget-wide v1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLastPreviewTimeStamp:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-wide v3, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mTimeStampOffset:J

    sub-long/2addr v1, v3

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->queueBuffer(Ljava/nio/ByteBuffer;IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method prepareStore()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->prepareStore(Ljava/lang/Long;)V

    return-void
.end method

.method prepareStore(Ljava/lang/Long;)V
    .locals 7

    const-string v0, "MotionPhotoController"

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-nez v1, :cond_0

    const-string p1, "prepareStore : Returned, because MotionPhotoComposer is released"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-wide/16 v5, 0x3e8

    if-nez v1, :cond_2

    iget-wide v1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLastPreviewTimeStamp:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-wide v1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLastPreviewTimeStamp:J

    div-long/2addr v1, v5

    iget-wide v3, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mTimeStampOffset:J

    :goto_0
    sub-long/2addr v1, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    div-long/2addr v1, v5

    iget-wide v3, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mTimeStampOffset:J

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationForCapture()I

    move-result v3

    invoke-virtual {p1, v3, v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->store(IJ)J

    move-result-wide v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareStore : MotionPhotoComposer store id("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mRequestIds:Ljava/util/Deque;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareStore fail - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method start()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mTimeStampOffset:J

    return-void
.end method

.method startMotionPhoto()V
    .locals 9

    const-string v0, "MotionPhotoController"

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v1, "startMotionPhoto"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mIsMotionPhotoStarted:Z

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "CameraMotionPhotoComposerReferenceTag"

    invoke-static {v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Factory;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v2, p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->setOnInfoListener(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mIsEffectMode:Z

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Capability;->getAvailableEffectPreviewFpsRange()Landroid/util/Range;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mIsEffectMode:Z

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    new-array v4, v5, [I

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v6

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v1

    move-object v3, v4

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v3

    const/16 v4, 0x1e

    if-nez v3, :cond_2

    new-array v3, v5, [I

    const/4 v5, 0x7

    aput v5, v3, v6

    aput v4, v3, v1

    goto :goto_0

    :cond_2
    new-array v3, v5, [I

    const/16 v5, 0xa

    aput v5, v3, v6

    aput v4, v3, v1

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "front"

    goto :goto_1

    :cond_3
    const-string v4, "rear"

    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    new-instance v7, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    invoke-direct {v7}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v7, v8, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->setPreviewSize(II)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->setPreviewFpsRange([I)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->getRecordingFpsFactor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->setFpsFactor(I)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mIsEffectMode:Z

    invoke-virtual {v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->setEffectRecording(Z)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->setUseIntrinsicTimestamp(Z)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mIsEffectMode:Z

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v6

    :goto_2
    invoke-virtual {v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->setAllocPreviewBuffer(Z)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v2

    const-string v3, "cam-id"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSaveAsFlipped()I

    move-result v3

    if-ne v3, v1, :cond_5

    move v3, v1

    goto :goto_3

    :cond_5
    move v3, v6

    :goto_3
    invoke-virtual {v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->setSaveAsFlipped(Z)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v2

    const-string v3, "capture-heif"

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHeif()I

    move-result v4

    if-ne v4, v1, :cond_6

    goto :goto_4

    :cond_6
    move v1, v6

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v1

    const-string v2, "audio-enable"

    iget-boolean v3, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mIsAudioRecordingSupported:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v1

    const-string v2, "capture-button-sound-duration"

    const/16 v3, 0x1c2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters$Builder;->build()Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->start(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startMotionPhoto fail - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_6
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method stop()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "MotionPhotoController"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MotionPhotoController;->stopMotionPhoto()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mProxy:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mProxy:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;->release()V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mProxy:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecordingProxy;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLastPreviewTimeStamp:J

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->release()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->setOnInfoListener(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mStoreCompletedConditionDepot:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mStoreCompletedConditionDepot:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mRequestIds:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mUriDepot:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mStoreCompletedConditionDepot:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method stopMotionPhoto()V
    .locals 4

    const-string v0, "MotionPhotoController"

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string/jumbo v1, "stopMotionPhoto"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mIsMotionPhotoStarted:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mIsMotionPhotoStarted:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getEffectController()Lcom/sec/android/app/camera/engine/EffectController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/EffectController;->setRecordingSurface(Landroid/view/Surface;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->stop()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string/jumbo v1, "stopMotionPhoto : Returned because motion photo was not started"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopMotionPhoto failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method store(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9

    const-string v0, "MotionPhotoController"

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    if-nez v2, :cond_0

    const-string/jumbo p1, "store : Returned, because MotionPhotoComposer is released"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mRequestIds:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "store id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mRequestIds:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mStoreCompletedConditionDepot:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v3, v4, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "id"

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v6, "key-value"

    invoke-virtual {v5, v6, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v6, "_data"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v6, "writable-path"

    const/4 v7, 0x1

    invoke-static {p1, v7}, Lcom/sec/android/app/camera/util/StorageUtils;->replaceSDStoragePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mMotionPhotoComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {p1, v5}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->setStoreData(Landroid/os/Bundle;)V

    const-wide/16 v5, 0xa

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v5, v6, p1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "store : wait timeout"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mUriDepot:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mUriDepot:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->remove(J)V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mStoreCompletedConditionDepot:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->remove(J)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_0
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "store fail - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object p1, v1

    :goto_1
    return-object p1

    :goto_2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MotionPhotoController;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
